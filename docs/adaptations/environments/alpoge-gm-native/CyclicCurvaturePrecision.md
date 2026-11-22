# Stable original cyclic-level curvature and affine cancellation

**Consumer:** grwtsk/math issue #1850, the genuine Level.cyc/Level.ofSub prime-power source. **Maintained candidate:** [CyclicCurvaturePrecision.lean](CyclicCurvaturePrecision.lean), isolated original Alpöge Lean 4.33.1/Mathlib 0df444a360eaa60ab8c11dca51a86af692955474, NOT the incompatible root math Lean 4.34.1. The exact source and complete mathematical proof are recorded in [CyclicPhase.md](CyclicPhase.md), equations P3–P6, and [Normalization.md](Normalization.md).

For the source Level.cyc, the true signed prime-power phase c(k) is strictly greater than 2/3, independently of RH. Its adjusted Gm value Y(k)=Gm(k)+k log k has integer curvature \(\Delta^2Y(k)=\Lambda(k)c(k)/k\). Hence the true von Mangoldt coefficient is uniquely recovered by \(\Lambda(k)=k\Delta^2Y(k)/c(k)\), k≥2. Every common affine correction ak+b vanishes exactly under the second difference; this includes the native Euler and L'/L(1,chi) correction.

Three independently certified sample errors eMinus, e0, ePlus propagate into a reconstruction error at most \((3k/2)(eMinus+2e0+ePlus)\). Since \(\Lambda(k)\ge\log2>1/2\) at genuine prime powers, and pinned Mathlib proves Real.log_two_gt_d9, source-adjusted sample errors at most 1/(48k) give the exact rational detector
\[
k\text{ prime power}\iff\Delta^2\widetilde Y(k)>1/(6k).
\]
This holds for actual original cyclic levels, not for arbitrary exceptional-character Levels where the coefficient may vanish.

The source candidate has exactly three declarations: affine_secondDifference_zero, secondDifference_abs_error, cyclic_curvature_inverse_lipschitz. The final lemma retains the exact original curvature identity as an explicit hSource premise. Establishing that source normalization and finite curvature identity **in the original isolated Lean environment** is an OPEN proof obligation; it is not disguised by the statement.

The executed [exact rational checker](../../../../scripts/verify_cyclic_level_phase_curvature.py), Git blob e507167d0b393268c382a424f2d878e71fa81851, passed 3,066 curvature inversions and 9,198 adversarial threshold checks for true character groups modulo 4,5,15, with exceptional and nonunit hostile examples. It uses rational source coefficients for algebraic testing, not verified original Gm samples.

**Formal status:** all new Lean declarations and their dependencies have elaboration, fresh kernel and transitive axiom audit **NOT_RUN**. There is no imported Alpöge Main, FinalTheorems, RH result or zeta-zero oracle. Original finite-difference theory is classical; global novelty is not claimed.
