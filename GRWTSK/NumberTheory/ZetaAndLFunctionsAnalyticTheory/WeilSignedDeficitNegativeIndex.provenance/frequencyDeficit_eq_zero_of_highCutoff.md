# WSDI-v1-02: frequencyDeficit_eq_zero_of_highCutoff

Local author: grwtsk contributors. Source date: 2026-11-12.
MSC2020 11M26, 11M41, 46E35.
Maintained file: ../WeilSignedDeficitNegativeIndex.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.SignedDeficitNegativeIndex.frequencyDeficit_eq_zero_of_highCutoff
Source candidate blob SHA: 5b2f39ce7fa573edeb8fc54e9f7b3f6e47468a28

## Literal theorem type

~~~lean
theorem frequencyDeficit_eq_zero_of_highCutoff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A η ξ : ℝ)
    (hcut : highFrequencyCutoff χ A η ≤ |ξ|) :
    frequencyDeficit χ A η ξ = 0
~~~

## Proof

Invoke the existing source-bound fullFrequencySymbol_ge_of_highCutoff at the exact chi,A,eta,xi. Its conclusion eta<=m forces eta-m<=0, so the positive part is exactly zero. This provides a literal finite cutoff for the source deficit, not a finite-dimensional positivity assertion.

## Source consumer, exact return, and missing steps

The written negative-index theorem uses the compact frequency support to justify tau_chi,A(eta)<infinity; exact continuity and integrability are established analytically in the companion, not inferred from this lemma alone.

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
