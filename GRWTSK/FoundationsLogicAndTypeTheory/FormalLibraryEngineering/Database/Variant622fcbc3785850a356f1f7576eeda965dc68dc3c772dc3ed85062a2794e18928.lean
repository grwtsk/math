-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultGetZoneRules.Variantd98db0811f32626c884f253ce54b375a0aa7a8cbd88e6ed887725de5a2946a2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d98db0811f32626c884f253ce54b375a0aa7a8cbd88e6ed887725de5a2946a2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DefaultGetZoneRules.Variantd98db0811f32626c884f253ce54b375a0aa7a8cbd88e6ed887725de5a2946a2e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d98db0811f32626c884f253ce54b375a0aa7a8cbd88e6ed887725de5a2946a2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Zoned/Database.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Zoned.Database.Basic
public import Std.Time.Zoned.Database.TZdb
public import Std.Time.Zoned.Database.Windows
public import Std.Time.DateTime
import Init.System.Platform


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultGetZoneRules.Variantd98db0811f32626c884f253ce54b375a0aa7a8cbd88e6ed887725de5a2946a2e

public section

namespace Std
namespace Time
namespace Database
open TimeZone.ZoneRules

set_option linter.all true

/--
Gets the zone rules for a specific time zone identifier, handling Windows and non-Windows platforms.
In windows it uses the current `icu.h` in Windows SDK. If it's linux or macos then it will use the `tzdata`
files.
-/
def defaultGetZoneRules (name : String) : IO TimeZone.ZoneRules := do
  if System.Platform.isWindows
    then getZoneRules WindowsDb.default name
    else getZoneRules TZdb.default name

/--
Gets the local zone rules, accounting for platform differences.
In windows it uses the current `icu.h` in Windows SDK. If it's linux or macos then it will use the `tzdata`
files.
-/
def defaultGetLocalZoneRules : IO TimeZone.ZoneRules := do
  if System.Platform.isWindows
    then getLocalZoneRules WindowsDb.default
    else getLocalZoneRules TZdb.default
