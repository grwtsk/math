# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.RefinementCountermodels.Variant7664e964cbc1ee5a657af141dcf141e52a70b61499f508aaa6b0517426131272

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b4ce00fceb97a408d24780ae790ea72ab6c3bf9` · SHA-256 `c6e746f339380c4d43368a0222e343d170960ebf4f19ddc235d1c07cc34901be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.NoUniformReadoutBound.Variantb1c2b239df7ed4c19196d900434efec20254c7451d2b540e1cd720347314d671","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1c2b239df7ed4c19196d900434efec20254c7451d2b540e1cd720347314d671","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NoUniformReadoutBound.Variantb1c2b239df7ed4c19196d900434efec20254c7451d2b540e1cd720347314d671","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b1c2b239df7ed4c19196d900434efec20254c7451d2b540e1cd720347314d671","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/primary-delta-index-retrieved-b246bcb45ff5/primary-deltas/source/b1/b1c2b239df7ed4c19196d900434efec20254c7451d2b540e1cd720347314d671/RefinementCountermodels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic

/-!
Exact auxiliary countermodels for proposed refinement-to-budget inferences.
These are not trajectories or counterexamples of the arithmetic source.
grwtsk contributors: direction, theorem selection and evaluation.
Codex: formalization and checks.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.NoUniformReadoutBound.Variantb1c2b239df7ed4c19196d900434efec20254c7451d2b540e1cd720347314d671

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

#print axioms no_uniform_readout_bound
#print axioms zero_cycle_unbounded_prefix

end FormalResearch.QuantumLanglands.RefinementCountermodels
```
