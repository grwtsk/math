-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variantcf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Json.Variantcf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Json.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
 Copyright (c) 2022 E.W.Ayers. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: E.W.Ayers, Mario Carneiro
-/

import Lean.Data.Json
import Std.Lean.Float


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variantcf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb

open Lean

instance : OfScientific JsonNumber where
  ofScientific mantissa exponentSign decimalExponent :=
    if exponentSign then
      { mantissa := mantissa, exponent := decimalExponent }
    else
      { mantissa := (mantissa * 10 ^ decimalExponent : Nat), exponent := 0 }

instance : Neg JsonNumber where
  neg jn := ⟨-jn.mantissa, jn.exponent⟩

instance : ToJson Float where
  toJson x :=
    match x.toRatParts' with
    | none => Json.null
    | some (n, d) =>
      if d < 0 then
        Json.num { mantissa := n * (5^d.natAbs : Nat), exponent := d.natAbs }
      else
        Json.num { mantissa := n * (2^d.natAbs : Nat), exponent := 0 }
