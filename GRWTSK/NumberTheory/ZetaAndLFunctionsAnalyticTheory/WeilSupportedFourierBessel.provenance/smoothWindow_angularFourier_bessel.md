# WFB-v1-05: smoothWindow_angularFourier_bessel

Local attribution: grwtsk contributors (2026-11-12). MSC2020 11M26, 42A38, 46E35.
Maintained source: ../WeilSupportedFourierBessel.lean
Fully qualified declaration: GRWTSK.NumberTheory.WeilQuadraticForm.SupportedFourierBessel.smoothWindow_angularFourier_bessel
Source Git blob SHA: 21dd7c232bd814c0a76a44d866a031a42dde7530

## Exact declaration

~~~lean
theorem smoothWindow_angularFourier_bessel
    {ι : Type*} (s : Finset ι) (A ξ : ℝ) (hA : 0 ≤ A)
    (f : ι → SmoothWindowPoleReturn.smoothWindow A)
    (horth : Orthonormal ℂ
      (fun i => (smoothWindow_memLp A (f i)).toLp (f i : ℝ → ℂ))) :
    (∑ i ∈ s, ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) ≤ 2 * A
~~~

## Analytical proof and assumptions

The pinned Orthonormal.sum_inner_products_le on true L² source vectors, together with complex inner conjugate symmetry and the 2A window-phase norm, proves ∑|F_i(ξ)|²≤2A for EVERY real ξ.

## Arithmetic consumer and return

Discharges the previously external pointwise Bessel bound in the source negative-index trace.

The original complex smoothWindow A source, its exact Lebesgue Fourier
integral, complete signed FullFrequencyTail.fullFrequencySymbol and
SignedDeficitNegativeIndex.frequencyDeficit are retained.
No pole is neutralized: the conductor-one zeta source has BOTH
signed orientations W(0)+W(1), separate from the nonprincipal case.
Missing full primitive Fourier/Plancherel statement correspondence
and per-negative-test lower bound remain open, not new research axioms.

Dated prior art: pinned mathlib Orthonormal.sum_inner_products_le,
L2.inner_def, memLp_indicator_iff_restrict, Real.volume_Icc at
d13f23b723b8a846827a245b89c10fc7d3f11612.
Bombieri, Remarks on Weil's quadratic functional, I (2000),
Rendiconti Lincei 11, pp.183-233; Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1 (3.19)-(3.20).
Classical Hilbert/Fourier adaptation; novelty UNASSESSED.

Inspected math/main f94754aaf09a83dc693665e330dd4ea32943abda.
Lean leanprover/lean4:v4.34.1. SOURCE_PROOF_CANDIDATE:
elaboration NOT_RUN, full dependency build NOT_RUN, fresh kernel
replay NOT_RUN, transitive axiom audit NOT_RUN,
numerical certification NOT_RUN, independent review NOT_RUN.
No sorry/admit/new research axiom, universal sign, RH or GRH.
