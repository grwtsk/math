/-
Complex real-part bound and exclusion of nonpositive integers
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

@[bound]
theorem neg_norm_le_re (z : ℂ) : -‖z‖ ≤ z.re :=
  neg_le_of_abs_le (abs_re_le_norm z)

/-- A point with positive real part is not a nonpositive integer. -/
lemma ne_neg_nat_of_re_pos {w : ℂ} (hw : 0 < w.re) : ∀ n : ℕ, w ≠ -n := by
  intro n hn
  have hre : w.re = -(n : ℝ) := by
    have := congrArg Complex.re hn
    simpa using this
  nlinarith

end Complex

end GRWTSK.Analysis.ComplexAnalysis.NormEstimates.Variant2ef3c511
