/-
Complex unit-reflection norm bounds and nondegeneracy
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
This captured Mathlib-path extension has unresolved origin and priority; no exact upstream-only or project-original classification is inferred.
-/
module

public import Mathlib.Analysis.Complex.Norm

/-!
# Norm estimates for complex analysis

Elementary norm estimates used in Cartan-style product bounds and Gamma/zeta growth arguments.
-/

public section

noncomputable section

open Complex

namespace GRWTSK.Analysis.ComplexAnalysis.NormEstimates.Variant2ef3c511

namespace Complex

variable {z : ℂ}

/-- `‖z - 1‖ ≤ 1 + ‖z‖`. -/
lemma norm_sub_one_le_one_add_norm (z : ℂ) : ‖z - 1‖ ≤ 1 + ‖z‖ := by
  have hone : ‖(1 : ℂ)‖ = (1 : ℝ) := by simpa using Complex.norm_natCast 1
  simpa [hone, add_comm] using norm_sub_le z (1 : ℂ)

/-- `‖1 - z‖ ≤ 1 + ‖z‖`. -/
lemma norm_one_sub_le_one_add_norm (z : ℂ) : ‖1 - z‖ ≤ 1 + ‖z‖ := by
  have hone : ‖(1 : ℂ)‖ = (1 : ℝ) := by simpa using Complex.norm_natCast 1
  simpa [hone] using norm_sub_le (1 : ℂ) z

/-- If `3 < ‖z‖`, then `1 ≤ ‖1 - z‖`; the constant leaves the margin needed in the
Cartan-product estimates. -/
lemma one_le_norm_one_sub_of_norm_gt_three {z : ℂ} (hz : 3 < ‖z‖) : (1 : ℝ) ≤ ‖1 - z‖ := by
  have hge : (‖z‖ - 1 : ℝ) ≤ ‖1 - z‖ := by
    have hone : ‖(1 : ℂ)‖ = (1 : ℝ) := by simpa using Complex.norm_natCast 1
    have h := norm_sub_norm_le z (1 : ℂ)
    rw [hone, norm_sub_rev] at h
    linarith
  linarith

/-- The reflected point `1 - z` is not `1` if `z` is nonzero. -/
lemma one_sub_ne_one_of_norm_pos {z : ℂ} (hz : 0 < ‖z‖) : 1 - z ≠ 1 := by
  intro h
  exact hz.ne' (by simpa using sub_eq_self.mp h)

end Complex

end GRWTSK.Analysis.ComplexAnalysis.NormEstimates.Variant2ef3c511
