-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromToJson.Variant4f83976d7feeed7530d5e9e10bcb7af8cd03f6fa38e67878ad2553de3e8c845b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f83976d7feeed7530d5e9e10bcb7af8cd03f6fa38e67878ad2553de3e8c845b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FromToJson.Variant4f83976d7feeed7530d5e9e10bcb7af8cd03f6fa38e67878ad2553de3e8c845b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4f83976d7feeed7530d5e9e10bcb7af8cd03f6fa38e67878ad2553de3e8c845b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Json.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/

import Mathlib.Init
import Lean.Data.Json.FromToJson

/-!
# Json serialization typeclass for `PUnit` & `Fin n` & `Subtype p`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromToJson.Variant4f83976d7feeed7530d5e9e10bcb7af8cd03f6fa38e67878ad2553de3e8c845b

universe u


namespace Lean

deriving instance FromJson, ToJson for PUnit

instance {n : Nat} : FromJson (Fin n) where
  fromJson? j := do
    let i : Nat ← fromJson? j
    if h : i < n then
      return ⟨i, h⟩
    else
      throw s!"must be less than {n}"

instance {n : Nat} : ToJson (Fin n) where
  toJson i := toJson i.val

instance {α : Type u} [FromJson α] (p : α → Prop) [DecidablePred p] : FromJson (Subtype p) where
  fromJson? j := do
    let i : α ← fromJson? j
    if h : p i then
      return ⟨i, h⟩
    else
      throw "condition does not hold"

instance {α : Type u} [ToJson α] (p : α → Prop) : ToJson (Subtype p) where
  toJson x := toJson x.val

end Lean
