# SWPR-v1-08: smoothWindow_negative_full_implies_negative_nonpole

Local mathematical source byline: grwtsk contributors. 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 46C20.
Maintained file: ../WeilSmoothWindowPoleReturn.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.SmoothWindowPoleReturn.smoothWindow_negative_full_implies_negative_nonpole
Source blob SHA: 11bba14a232de82700aa1c23a20db8eb19bcf1be

## Literal Lean type

~~~lean
theorem smoothWindow_negative_full_implies_negative_nonpole
    (A : ℝ) (W : Submodule ℂ (smoothWindow A))
    [FiniteDimensional ℂ W] (nonpole : W → ℝ)
    (hnegative : ∀ w : W, w ≠ 0 →
      nonpole w + sourcePole (windowSource A W w) < 0) :
    Module.finrank ℂ W ≤
      Module.finrank ℂ (LinearMap.ker (negativeMomentOnWindow A W)) + 1 ∧
    (∀ w : LinearMap.ker (negativeMomentOnWindow A W),
      (w : W) ≠ 0 → nonpole w.1 < 0)
~~~

## Mathematical proof

For a finite-dimensional smooth supported source family whose full original signed pole-inclusive form is negative-definite, apply the preceding codimension-one source theorem and the actual sourcePole_nonneg_on_negative_kernel. The true nonpole part stays negative for all nonzero vectors in the moment kernel, which has codimension ≤1.

## Original arithmetic consumer and missing links

Quantitative input to the original zeta negative-index theorem; the local hypothesis describes a candidate negative subspace rather than assuming RH or a global sign.
This uses the genuine C_c^infinity complex source supported in [-A,A],
its actual Lebesgue integrals, real gammaConstant(1,0),
the signed native von Mangoldt primePower inventory,
the full two-orientation zeta correlation, and original zero
multiplicities. No pole-neutral restriction, weighted operator,
real-only approximation or spectral ordinate projection.
The canonical completed-source theorem remains at its prior
SOURCE_PROOF_CANDIDATE verification level.
Direct sign of the full arithmetic form and formal
Fourier/Plancherel/Bessel trace remain UNPROVED.

Sources: Connes--Consani--Moscovici, Zeta Spectral Triples
(arXiv:2511.22755v1) equations (3.19)--(3.20);
Bombieri, Remarks on Weil's quadratic functional, I
(Rend. Lincei 11, 2000); standard Mathlib finite
dimensional rank-nullity and complex smooth support.
No novelty asserted. Novelty UNASSESSED.

Inspected grwtsk/math main
e9e56bc167d7de60304074be675e79ee2fc3f979.
Lean pin leanprover/lean4:v4.34.1; mathlib pin
d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE; elaboration NOT_RUN,
full dependency build NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, whole-form numerical
certification NOT_RUN, independent review NOT_RUN.
No sorry/admit/new research axiom or RH/GRH proof.
