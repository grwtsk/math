-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante09e25afe558f2aab3f450034c674ebb462696cf1de3c05f0b04ac5e87cb88f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e09e25afe558f2aab3f450034c674ebb462696cf1de3c05f0b04ac5e87cb88f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variante09e25afe558f2aab3f450034c674ebb462696cf1de3c05f0b04ac5e87cb88f7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e09e25afe558f2aab3f450034c674ebb462696cf1de3c05f0b04ac5e87cb88f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Tauto.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Renshaw, Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante09e25afe558f2aab3f450034c674ebb462696cf1de3c05f0b04ac5e87cb88f7

set_option aesop.check.all true

-- This is an example which is currently challenging for Lean 4 `tauto`.
example {α : Type} [LE α] (a b c : α) (x₀ x₁ x₂ : Prop)
 (this1 : x₀ → x₁ → a ≤ c)
 (this2 : x₁ → x₂ → b ≤ a)
 (this3 : x₂ → x₀ → c ≤ b) :
    ((x₀ ∧ ¬b ≤ a) ∧ x₁ ∧ ¬c ≤ b ∨
         (x₁ ∧ ¬c ≤ b) ∧ x₂ ∧ ¬a ≤ c ∨ (x₂ ∧ ¬a ≤ c) ∧ x₀ ∧ ¬b ≤ a ↔
       (x₀ ∧ x₁ ∨ x₁ ∧ x₂ ∨ x₂ ∧ x₀) ∧
         ¬(c ≤ b ∧ b ≤ a ∨ b ≤ a ∧ a ≤ c ∨ a ≤ c ∧ c ≤ b)) :=
by aesop
