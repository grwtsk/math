# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Invariance.Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fadea6450bed1f9aa5e666e839ebb420b5e2f2a4` · SHA-256 `bd9fcf31a734e6ef9f65aaa622cb7776e649ef3eb40ce3839cb4c3001f8830d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.BindAdd.Variant9def108a30aefc9df499d1725b252971ecbfc29304ca8cfef5aad239641fd78e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9def108a30aefc9df499d1725b252971ecbfc29304ca8cfef5aad239641fd78e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ProbabilityMeasures.SourceCorpus.BindAdd.Variant9def108a30aefc9df499d1725b252971ecbfc29304ca8cfef5aad239641fd78e","mathematical_subject":"Probability.ProbabilityMeasures","original_sha256":"9def108a30aefc9df499d1725b252971ecbfc29304ca8cfef5aad239641fd78e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/Kernel/Invariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying
-/
import Mathlib.Probability.Kernel.Composition.Comp

/-!
# Invariance of measures along a kernel

We say that a measure `μ` is invariant with respect to a kernel `κ` if its push-forward along the
kernel `μ.bind κ` is the same measure.

## Main definitions

* `ProbabilityTheory.Kernel.Invariant`: invariance of a given measure with respect to a kernel.

## Useful lemmas

* `ProbabilityTheory.Kernel.const_bind_eq_comp_const`, and
  `ProbabilityTheory.Kernel.comp_const_apply_eq_bind` established the relationship between
  the push-forward measure and the composition of kernels.

-/



namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.BindAdd.Variant9def108a30aefc9df499d1725b252971ecbfc29304ca8cfef5aad239641fd78e

open MeasureTheory

open scoped MeasureTheory ENNReal ProbabilityTheory

namespace ProbabilityTheory

variable {α β : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}

namespace Kernel

/-! ### Push-forward of measures along a kernel -/

@[deprecated "Use comp_add in Composition/MeasureComp" (since := "2025-02-28")]
theorem bind_add (μ ν : Measure α) (κ : Kernel α β) : (μ + ν).bind κ = μ.bind κ + ν.bind κ := by
  ext1 s hs
  rw [Measure.bind_apply hs (Kernel.aemeasurable _), lintegral_add_measure, Measure.coe_add,
    Pi.add_apply, Measure.bind_apply hs (Kernel.aemeasurable _),
    Measure.bind_apply hs (Kernel.aemeasurable _)]

@[deprecated "Use comp_smul in Composition/MeasureComp" (since := "2025-02-28")]
theorem bind_smul (κ : Kernel α β) (μ : Measure α) (r : ℝ≥0∞) : (r • μ).bind κ = r • μ.bind κ := by
  ext1 s hs
  rw [Measure.bind_apply hs (Kernel.aemeasurable _), lintegral_smul_measure, Measure.coe_smul,
    Pi.smul_apply, Measure.bind_apply hs (Kernel.aemeasurable _), smul_eq_mul]

theorem const_bind_eq_comp_const (κ : Kernel α β) (μ : Measure α) :
    const α (μ.bind κ) = κ ∘ₖ const α μ := by
  ext a s hs
  simp_rw [comp_apply' _ _ _ hs, const_apply, Measure.bind_apply hs (Kernel.aemeasurable _)]

theorem comp_const_apply_eq_bind (κ : Kernel α β) (μ : Measure α) (a : α) :
    (κ ∘ₖ const α μ) a = μ.bind κ := by
  rw [← const_apply (μ.bind κ) a, const_bind_eq_comp_const κ μ]

/-! ### Invariant measures of kernels -/


/-- A measure `μ` is invariant with respect to the kernel `κ` if the push-forward measure of `μ`
along `κ` equals `μ`. -/
def Invariant (κ : Kernel α α) (μ : Measure α) : Prop :=
  μ.bind κ = μ

variable {κ η : Kernel α α} {μ : Measure α}

theorem Invariant.def (hκ : Invariant κ μ) : μ.bind κ = μ :=
  hκ

theorem Invariant.comp_const (hκ : Invariant κ μ) : κ ∘ₖ const α μ = const α μ := by
  rw [← const_bind_eq_comp_const κ μ, hκ.def]

theorem Invariant.comp (hκ : Invariant κ μ) (hη : Invariant η μ) :
    Invariant (κ ∘ₖ η) μ := by
  rcases isEmpty_or_nonempty α with _ | hα
  · exact Subsingleton.elim _ _
  · simp_rw [Invariant, ← comp_const_apply_eq_bind (κ ∘ₖ η) μ hα.some, comp_assoc, hη.comp_const,
      hκ.comp_const, const_apply]

end Kernel

end ProbabilityTheory
```
