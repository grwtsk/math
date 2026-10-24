-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Version.Variantb25c9928ba2bdeb4b5076701841680128df066e149cacd94429114259f89571d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b25c9928ba2bdeb4b5076701841680128df066e149cacd94429114259f89571d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Version.Variantb25c9928ba2bdeb4b5076701841680128df066e149cacd94429114259f89571d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b25c9928ba2bdeb4b5076701841680128df066e149cacd94429114259f89571d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Version.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
import Init.Data.ToString
public import Init.Data.String.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Version.Variantb25c9928ba2bdeb4b5076701841680128df066e149cacd94429114259f89571d

public section

/-!
# Version

This module defines `Version`, the set of HTTP protocol versions modeled by this library.

Reference: https://httpwg.org/specs/rfc9110.html#protocol.version
-/

namespace Std.Http

set_option linter.all true

/--
HTTP protocol versions modeled by this library.

Reference: https://httpwg.org/specs/rfc9110.html#protocol.version
-/
inductive Version
  /--
  `HTTP/1.0`
  -/
  | v10

  /--
  `HTTP/1.1`
  -/
  | v11

  /--
  `HTTP/2.0`
  -/
  | v20

  /--
  `HTTP/3.0`
  -/
  | v30
deriving Repr, Inhabited, BEq, DecidableEq

namespace Version

/--
Converts a pair of `Nat` to the corresponding `Version`.
-/
def ofNumber? : Nat → Nat → Option Version
  | 1, 0 => some .v10
  | 1, 1 => some .v11
  | 2, 0 => some .v20
  | 3, 0 => some .v30
  | _, _ => none

/--
Converts `String` to the corresponding `Version`.
-/
def ofString? : String → Option Version
  | "HTTP/1.0" => some .v10
  | "HTTP/1.1" => some .v11
  | "HTTP/2.0" => some .v20
  | "HTTP/3.0" => some .v30
  | _ => none

/--
Converts `String` to the corresponding `Version`, panics if invalid.
-/
def ofString! (s : String) : Version :=
  match ofString? s with
  | some v => v
  | none => panic! s!"invalid HTTP version: {s.quote}"

/--
Converts a `Version` to its corresponding major and minor numbers as a pair.
-/
def toNumber : Version → (Nat × Nat)
  | .v10 => (1, 0)
  | .v11 => (1, 1)
  | .v20 => (2, 0)
  | .v30 => (3, 0)

instance : ToString Version where
  toString
    | .v10 => "HTTP/1.0"
    | .v11 => "HTTP/1.1"
    | .v20 => "HTTP/2.0"
    | .v30 => "HTTP/3.0"

end Std.Http.Version
