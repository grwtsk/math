# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.RefinementCountermodels.Variant68896b822b3471b9f84b7307f5270307a029942dea7d81744158685406197ef9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d5cac1e2b626126931cc4d9f3293d10a450fc83` · SHA-256 `8aa689c7b286c5e653ecbfeaa6a61eeee604809b0f2d6b089d2679d57dc476de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.NoUniformReadoutBound.Variantdf3f3f91e44344987ab8e7614576ad22e6c5a3100d3eb577742a8133819f2c94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df3f3f91e44344987ab8e7614576ad22e6c5a3100d3eb577742a8133819f2c94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NoUniformReadoutBound.Variantdf3f3f91e44344987ab8e7614576ad22e6c5a3100d3eb577742a8133819f2c94","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"df3f3f91e44344987ab8e7614576ad22e6c5a3100d3eb577742a8133819f2c94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/QuantumLanglands/RefinementCountermodels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic

/-!
Exact auxiliary countermodels for proposed refinement-to-budget inferences.
These are not trajectories or counterexamples of the arithmetic source.
grwtsk contributors: direction, theorem selection and evaluation.
Codex: formalization and checks.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.NoUniformReadoutBound.Variantdf3f3f91e44344987ab8e7614576ad22e6c5a3100d3eb577742a8133819f2c94

namespace FormalResearch.QuantumLanglands.RefinementCountermodels

/-- A fixed one-dimensional weight-zero object can carry the scale-dependent
readout A. Weight bounds alone therefore supply no uniform numerical bound. -/
theorem no_uniform_readout_bound :
    ¬ ∃ C : ℝ, ∀ A : ℝ, 1 ≤ A → A ≤ C := by
  rintro ⟨C, hC⟩
  have h := hC (max 1 (C + 1)) (le_max_left _ _)
  have hg : C < max 1 (C + 1) :=
    lt_of_lt_of_le (lt_add_one C) (le_max_right _ _)
  exact (not_le_of_gt hg) h

/-- Every cycle of this two-edge fixture has total cost zero, while its first
edge can have arbitrary positive cost. The complete endpoint budget matters. -/
theorem zero_cycle_unbounded_prefix :
    (∀ A : ℝ, A + (-A) = 0) ∧
      ¬ ∃ C : ℝ, ∀ A : ℝ, 1 ≤ A → A ≤ C := by
  exact ⟨fun _ => add_neg_cancel _, no_uniform_readout_bound⟩

/-- Acyclicity supplies no uniform bound on the number of unit-cost edges.
The path with n edges has total n and no directed cycle. -/
theorem no_uniform_chain_length : ¬ ∃ K : ℕ, ∀ n : ℕ, n ≤ K := by
  rintro ⟨K, hK⟩
  exact (Nat.not_succ_le_self K) (hK (K + 1))

/-- Invertible scalar charts can have arbitrarily badly conditioned inverses.
This is an auxiliary family, without an arithmetic-source admission. -/
theorem chart_inverse (A : ℝ) (hA : 1 ≤ A) :
    1 / A ≠ 0 ∧ (1 / A)⁻¹ = A := by
  have hpos : 0 < A := lt_of_lt_of_le zero_lt_one hA
  constructor
  · exact one_div_ne_zero hpos.ne'
  · simp only [one_div, inv_inv]

theorem no_uniform_inverse_chart_bound :
    (∀ A : ℝ, 1 ≤ A → 1 / A ≠ 0 ∧ (1 / A)⁻¹ = A) ∧
      ¬ ∃ C : ℝ, ∀ A : ℝ, 1 ≤ A → A ≤ C :=
  ⟨chart_inverse, no_uniform_readout_bound⟩

#print axioms no_uniform_readout_bound
#print axioms zero_cycle_unbounded_prefix
#print axioms no_uniform_chain_length
#print axioms chart_inverse
#print axioms no_uniform_inverse_chart_bound

end FormalResearch.QuantumLanglands.RefinementCountermodels
```
