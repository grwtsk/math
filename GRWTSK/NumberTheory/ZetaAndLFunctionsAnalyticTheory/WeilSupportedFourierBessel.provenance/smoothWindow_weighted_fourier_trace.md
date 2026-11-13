# WFB-v1-06: smoothWindow_weighted_fourier_trace

Local attribution: grwtsk contributors (2026-11-12). MSC2020 11M26, 42A38, 46E35.
Maintained source: ../WeilSupportedFourierBessel.lean
Fully qualified declaration: GRWTSK.NumberTheory.WeilQuadraticForm.SupportedFourierBessel.smoothWindow_weighted_fourier_trace
Source Git blob SHA: 21dd7c232bd814c0a76a44d866a031a42dde7530

## Exact declaration

~~~lean
theorem smoothWindow_weighted_fourier_trace
    {ι : Type*} (s : Finset ι) (A : ℝ) (hA : 0 ≤ A)
    (f : ι → SmoothWindowPoleReturn.smoothWindow A)
    (horth : Orthonormal ℂ
      (fun i => (smoothWindow_memLp A (f i)).toLp (f i : ℝ → ℂ)))
    (w : ℝ → ℝ)
    (hw : Integrable w volume)
    (hwu : ∀ i ∈ s, Integrable
      (fun ξ : ℝ => w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) volume)
    (hw0 : ∀ᵐ ξ : ℝ ∂volume, 0 ≤ w ξ) :
    (∑ i ∈ s, ∫ ξ : ℝ,
        w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) ≤
      (2 * A) * (∫ ξ : ℝ, w ξ)
~~~

## Analytical proof and assumptions

Multiply the genuine source Bessel inequality by a nonnegative integrable weight, interchange only the FINITE sum under explicit product-integrability hypotheses, and integrate on the whole real-frequency line.

## Arithmetic consumer and return

Produces the unconditional upper trace estimate; no per-test Weil sign is assumed.

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
