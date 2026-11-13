# SWPR-v1-07: smoothWindow_pole_nonneg_on_codimension_one_kernel

Local mathematical source byline: grwtsk contributors. 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 46C20.
Maintained file: ../WeilSmoothWindowPoleReturn.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.SmoothWindowPoleReturn.smoothWindow_pole_nonneg_on_codimension_one_kernel
Source blob SHA: 11bba14a232de82700aa1c23a20db8eb19bcf1be

## Literal Lean type

~~~lean
theorem smoothWindow_pole_nonneg_on_codimension_one_kernel
    (A : ℝ) (W : Submodule ℂ (smoothWindow A))
    [FiniteDimensional ℂ W] :
    Module.finrank ℂ W ≤
      Module.finrank ℂ (LinearMap.ker (negativeMomentOnWindow A W)) + 1 ∧
    (∀ w : LinearMap.ker (negativeMomentOnWindow A W),
      0 ≤ sourcePole (windowSource A W w.1))
~~~

## Mathematical proof

Compose two original Submodule.subtype linear maps W→smoothWindow A→(ℝ→ℂ), proving true source integrability by smoothWindow_integrable and pointwise support from membership. Apply the existing source-bound ZetaNegativeMomentCodimension.sourcePole_nonneg_on_codimension_one_kernel, which constructs Mplus−Mminus as a genuine complex-linear moment map and proves rank-nullity and the signed pole positivity on its kernel.

## Original arithmetic consumer and missing links

Eliminates the arbitrary-source-family gap for EVERY finite complex subspace of the canonical smooth supported source; does not impose pole neutrality globally.
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
