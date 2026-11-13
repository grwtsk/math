# WSDI-v1-01: frequencyDeficit_nonneg

Local author: grwtsk contributors. Source date: 2026-11-12.
MSC2020 11M26, 11M41, 46E35.
Maintained file: ../WeilSignedDeficitNegativeIndex.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.SignedDeficitNegativeIndex.frequencyDeficit_nonneg
Source candidate blob SHA: 5b2f39ce7fa573edeb8fc54e9f7b3f6e47468a28

## Literal theorem type

~~~lean
theorem frequencyDeficit_nonneg {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A η ξ : ℝ) :
    0 ≤ frequencyDeficit χ A η ξ
~~~

## Proof

Unfold frequencyDeficit as max(eta-fullFrequencySymbol,0) and use max>=0. The original signed m_chi,A is left untouched; no positivity assertion is made about m itself.

## Source consumer, exact return, and missing steps

The positive part of the ACTUAL signed fullFrequencySymbol used in the complete negative-index proof; integrates with a nonnegative weight and all original complex phases.

The native source is the analytically continued primitive Dirichlet
Weil arithmetic expression with original character phases,
LowSchur.activePrimePowers, the full gamma/parity/conductor,
and, for conductor-one zeta, both actual pole orientations.
The source multiplier is FullFrequencyTail.fullFrequencySymbol,
not an auxiliary spectral model. This theorem is used in
the complete written source proof WeilSignedDeficitNegativeIndex.md.
No real/even/odd restriction, finite-window-to-all-window
assertion, zero-ordinate projection, or nonprincipal
instantiation at conductor one is introduced.

## Primary references and verification boundary

E. Bombieri (2000), Remarks on Weil's quadratic functional
in the theory of prime numbers, I, Rendiconti Lincei 11,
pp.183--233, introduction pp.183--185 and variational
negative-eigenvalue analysis. This is a classical
Fourier/Bessel/trace consequence, not claimed novel.
A. Connes, C. Consani and H. Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20), full source
normalizations. Native imported source:
WeilFullFrequencyTail.lean at inspected grwtsk/math
main 83f3cdac0bb22ad41c745710d29cf79a1f1ec4de.
Pins: Lean leanprover/lean4:v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

SOURCE_PROOF_CANDIDATE. Lean elaboration NOT_RUN,
complete dependency build NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, numerical certification NOT_RUN,
independent mathematical review NOT_RUN. Novelty UNASSESSED.
No sorry, admit, new research axiom, universal positivity or RH/GRH.
