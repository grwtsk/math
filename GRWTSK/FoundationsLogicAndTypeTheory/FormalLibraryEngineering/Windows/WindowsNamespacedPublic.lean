-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WindowsDb.Variant1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.WindowsDb.Variant1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Zoned/Database/Windows.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.Data.SInt.Basic
public import Std.Time.Zoned.Database.Basic
import Init.While


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WindowsDb.Variant1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e

public section

namespace Std
namespace Time
namespace Database

set_option linter.all true

namespace Windows

/--
Fetches the next timezone transition for a given timezone identifier and timestamp.
-/
@[extern "lean_windows_get_next_transition"]
opaque getNextTransition : @&String → Int64 → Bool → IO (Option (Int64 × TimeZone))

/--
Fetches the timezone at a timestamp.
-/
@[extern "lean_get_windows_local_timezone_id_at"]
opaque getLocalTimeZoneIdentifierAt : Int64 → IO String

/--
Retrieves the timezone rules, including all transitions, for a given timezone identifier.
-/
def getZoneRules (id : String) : IO TimeZone.ZoneRules := do
  let mut start := -2147483648
  let mut transitions : Array TimeZone.Transition := #[]

  let mut initialLocalTimeType ←
    if let some res := ← Windows.getNextTransition id start true
      then pure (toLocalTime res.snd)
      else throw (IO.userError "cannot find first transition in zone rules")

  while true do
    let result ← Windows.getNextTransition id start false

    if let some res := result then
      transitions := transitions.push { time := Second.Offset.ofInt start.toInt, localTimeType := toLocalTime res.snd }

      -- Avoid zone rules for more than year 3000
      if res.fst ≤ start ∨ res.fst >= 32503690800 then
        break

      start := res.fst
    else
      break

  return { transitions, initialLocalTimeType }

  where
    toLocalTime (res : TimeZone) : TimeZone.LocalTimeType :=
      {
        gmtOffset := res.offset,
        abbreviation := res.abbreviation,
        identifier := res.name,
        isDst := res.isDST,
        wall := .wall,
        utLocal := .local
      }

end Windows

/--
Represents a Time Zone Database that we get from ICU available on Windows SDK.
-/
structure WindowsDb where

namespace WindowsDb
open TimeZone

/--
Returns a default `WindowsDb` instance.
-/
@[inline]
def default : WindowsDb := {}

instance : Std.Time.Database WindowsDb where
  getZoneRules _ id := Windows.getZoneRules id
  getLocalZoneRules _ := Windows.getZoneRules =<< Windows.getLocalTimeZoneIdentifierAt (-2147483648)
