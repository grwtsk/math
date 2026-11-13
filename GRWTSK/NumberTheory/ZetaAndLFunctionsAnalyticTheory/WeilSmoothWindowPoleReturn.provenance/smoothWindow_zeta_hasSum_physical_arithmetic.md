# SWPR-v1-06: smoothWindow_zeta_hasSum_physical_arithmetic

Local mathematical source byline: grwtsk contributors. 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 46C20.
Maintained file: ../WeilSmoothWindowPoleReturn.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.SmoothWindowPoleReturn.smoothWindow_zeta_hasSum_physical_arithmetic
Source blob SHA: 11bba14a232de82700aa1c23a20db8eb19bcf1be

## Literal Lean type

~~~lean
theorem smoothWindow_zeta_hasSum_physical_arithmetic
    (A : ℝ) (hA : 0 ≤ A) (f : smoothWindow A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let W := fun s : ℂ =>
      ∫ r : ℝ, correlation (f : ℝ → ℂ) r *
        Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi =>
        (zeroMultiplicity chi rho : ℂ) * W rho.1)
      (((gammaConstant 1 0 * energy (f : ℝ → ℂ) +
        (∫ r in Ioi (0 : ℝ),
          gammaCorrectionDensity 0 (f : ℝ → ℂ) r) -
        2 * ∑ n ∈ LowSchur.activePrimePowers A,
          LowSchur.primeWeight n *
            (correlation (f : ℝ → ℂ)
              (Real.log (n : ℝ))).re : ℝ) : ℂ) +
        W 0 + W 1)
~~~

## Mathematical proof

Apply the EXACT existing completed source SourcePrimeCorrelation.zeta_hasSum_physical_arithmetic to the original globally smooth compact f from smoothWindow A. SmoothWindow_admissible proves precisely canonical WeilNegativeWitness.Admissible; smoothWindow_tsupport_subset proves the precise closed support inclusion. The resulting actual HasSum retains zeroMultiplicity, all prime powers, gamma/parity and BOTH zeta pole terms W(0)+W(1).

## Original arithmetic consumer and missing links

Returns the concrete new smooth-window test domain to the ORIGINAL conductor-one analytically continued zeta zero-sum theorem, not an independent proof of its upstream candidates.
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
