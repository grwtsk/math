-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalMkComplex.Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CardinalMkComplex.Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265","mathematical_subject":"Logic.SetTheory","original_sha256":"1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Complex/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Real.Cardinality

/-!
# The cardinality of the complex numbers

This file shows that the complex numbers have cardinality continuum, i.e. `#ℂ = 𝔠`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalMkComplex.Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265

open Cardinal Set

open Cardinal

/-- The cardinality of the complex numbers, as a type. -/
@[simp]
theorem Cardinal.mk_complex : #ℂ = 𝔠 := by
  rw [mk_congr Complex.equivRealProd, mk_prod, lift_id, mk_real, continuum_mul_self]

@[deprecated Cardinal.mk_complex (since := "2025-03-13")] alias mk_complex := Cardinal.mk_complex

/-- The cardinality of the complex numbers, as a set. -/
theorem Cardinal.mk_univ_complex : #(Set.univ : Set ℂ) = 𝔠 := by rw [mk_univ, mk_complex]

@[deprecated Cardinal.mk_univ_complex (since := "2025-03-13")]
alias mk_univ_complex := Cardinal.mk_univ_complex

/-- The complex numbers are not countable. -/
theorem not_countable_complex : ¬(Set.univ : Set ℂ).Countable := by
  rw [← le_aleph0_iff_set_countable, not_le, Cardinal.mk_univ_complex]
  apply cantor
