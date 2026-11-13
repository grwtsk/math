# WFB-v1-02: windowPhase_energy

Local attribution: grwtsk contributors (2026-11-12). MSC2020 11M26, 42A38, 46E35.
Maintained source: ../WeilSupportedFourierBessel.lean
Fully qualified declaration: GRWTSK.NumberTheory.WeilQuadraticForm.SupportedFourierBessel.windowPhase_energy
Source Git blob SHA: 21dd7c232bd814c0a76a44d866a031a42dde7530

## Exact declaration

~~~lean
theorem windowPhase_energy (A ξ : ℝ) (hA : 0 ≤ A) :
    energy (windowPhase A ξ) = 2 * A
~~~

## Analytical proof and assumptions

The pointwise squared norm is exactly indicator_[−A,A](1). Its actual Lebesgue integral is the physical interval length 2A (for A>=0).

## Arithmetic consumer and return

Exact 2A Hilbert norm paid in the original Bessel estimate.

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
