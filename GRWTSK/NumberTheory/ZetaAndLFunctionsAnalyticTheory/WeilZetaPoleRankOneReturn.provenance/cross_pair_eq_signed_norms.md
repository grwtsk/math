# WZPR-v1-01: cross_pair_eq_signed_norms

Source author: grwtsk contributors; date: 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 46C20.
Canonical source: ../WeilZetaPoleRankOneReturn.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.ZetaPoleRankOneReturn.cross_pair_eq_signed_norms
Source-proof-candidate Git blob: e57628504e1a1dad7907dd2ee2bf51d1879a315d

## Literal theorem statement

~~~lean
theorem cross_pair_eq_signed_norms (u v : ℂ) :
    2 * (u * conj v + v * conj u).re =
      ‖u + v‖ ^ 2 - ‖u - v‖ ^ 2
~~~

## Argument

Expand the real and imaginary coordinates of the two complex norm squares. Their diagonal contributions cancel, leaving precisely twice the original pair of complex conjugated cross-products. This is a global identity for arbitrary complex coefficients, not an absolute-square substitution for the arithmetic source.

## Arithmetic source consumer

The direct source theorem WZPR-v1-02 uses this equality after invoking the native zeta_pole_correlation; it also fixes the negative pole sign for the negative-index argument.

The actual source identity is
GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.zeta_pole_correlation,
in WeilCorrelationFourier.lean, source blob
8b2afb9be022253be047c4e47cbd42d51134dee1.
It is not replaced by a positive auxiliary operator. The canonical
completed-zeta source WeilGammaPhysicalReturn.zeta_hasSum_physical_arithmetic
retains W(0)+W(1), all von Mangoldt prime powers, full gamma/parity and
multiplicities. The additional conductor-one plus/minus correlation
to the W(0)+W(1) expression follows from the exponential definitions,
and is explained in ../WeilZetaPoleRankOneReturn.md; its full
completed-zero-sum consumer is NOT newly formalized here.
For primitive nonprincipal q>1, no zeta pole may be added.
All complex coefficients and signs are retained.

## Prior art, falsification and evidence

Primary formula: A. Connes, C. Consani, H. Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1,
(3.19)--(3.20), with both pole orientations.
Related variational setting: E. Bombieri (2000),
Remarks on Weil's quadratic functional in the theory of prime numbers, I,
Rend. Lincei 11, pp.183--233.
The polarization is elementary and is not claimed novel.
Test cases: u=v gives zero negative moment; u=-v gives sharp
negative pole, and arbitrary complex phases are admitted.
No real/odd/even restriction is imposed in the theorem.

Pinned inspection: grwtsk/math/main
70a5f9fa620f863d8aa76545a90dbdd1fe2ac8ef.
Lean leanprover/lean4:v4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Evidence: SOURCE_PROOF_CANDIDATE. Elaboration NOT_RUN;
full dependency build NOT_RUN; fresh kernel replay NOT_RUN;
transitive axiom audit NOT_RUN; numerical certification NOT_RUN;
independent mathematical review NOT_RUN; novelty UNASSESSED.
No sorry/admit/new research axiom, universal positivity,
RH or primitive Dirichlet GRH.
