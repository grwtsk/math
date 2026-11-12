# WPPC-v1-03: tripleTop_relations
Local author: grwtsk contributors, 2026-11-12. MSC2020 11M26 / 15A18.
Maintained source: ../WeilPrimePowerCluster.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.PrimePowerCluster.tripleTop_relations
Lean SOURCE_PROOF_CANDIDATE blob: 3de07cdc376dd2a1b5887e5802f827458c61ad95

## Literal type
~~~lean
theorem tripleTop_relations (t : ℝ) :
    tripleTop t = t * tripleRatio t + t ^ 2 ∧
      tripleTop t * tripleRatio t = 2 * t
~~~

## Proof
Let d=sqrt(t^2+8), so d^2=t^2+8 with a manifestly nonnegative radicand. Expand lambda=(t^2+t*d)/2 and beta=(d-t)/2. Then lambda=t*beta+t^2 and lambda*beta=t*(d^2-t^2)/4=2t. This works also at t=0.

## Mathematical consumer and original source
Discharges all scalar eigenvalue/eigenvector constraints for WPPC-v1-04. Prime power t=p^(-1/2) has t>0.
The source return is the signed native LowSchur.activePrimePowers,
primeWeight and CharacterWindow.twistedPrime, using SourcePrimeCorrelation
and TwistedPrimeEnergyReturn.primitiveArithmeticValue_eq_twisted_shift_ledger.
Original conductor/parity gamma and both signed zeta pole orientations
remain intact; see WeilPrimePowerCluster.md §§1–7.

## Prior art and exact comparison
The 3x3 Hermitian matrix is a finite case of the real Kac--Murdock--Szego
Toeplitz matrix K_N(t)=(t^|i-j|). Higham (Electron. J. Linear Algebra
40 (2024), §8.2) describes this matrix. Haagerup--de la Harpe,
Proc. AMS 115 (1992), Theorem 1/Proposition 1 treats the classical
nilpotent-shift numerical radius; Badea--Cassier (Adv. Math. 2002)
gives constrained von Neumann polynomial comparisons.
The local step here is application to actual prime-power weights
of Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20). This is not an originality claim.

## Status, source pin, first missing premise
Canonical source inspected at grwtsk/math main c23965a54c7483fddc69c72cbe5f12f9aa1af760.
Lean leanprover/lean4:v4.34.1; mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
The algebraic Lean script is unpublished verification evidence until
elaborated; LEAN ELABORATION, COMPLETE BUILD, FRESH KERNEL REPLAY,
TRANSITIVE AXIOM AUDIT, INDEPENDENT ANALYTICAL REVIEW and
CERTIFIED WHOLE-FORM EVALUATION: NOT_RUN. Novelty UNASSESSED.
The exact physical L2 fiber-disintegration, gauge and prime-power
arithmetic grouping are WRITTEN, not a Lean source theorem;
the signed cross-prime/gamma domination remains UNPROVED.
No research axiom, sorry, admit, shifted substitute form, or RH/GRH claim.
