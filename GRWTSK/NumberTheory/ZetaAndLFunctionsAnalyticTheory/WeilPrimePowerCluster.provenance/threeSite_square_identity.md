# WPPC-v1-01: threeSite_square_identity
Local author: grwtsk contributors, 2026-11-12. MSC2020 11M26 / 15A18.
Maintained source: ../WeilPrimePowerCluster.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.PrimePowerCluster.threeSite_square_identity
Lean SOURCE_PROOF_CANDIDATE blob: 3de07cdc376dd2a1b5887e5802f827458c61ad95

## Literal type
~~~lean
theorem threeSite_square_identity (t lam beta : ℝ)
    (hlam : lam = t * beta + t ^ 2)
    (hbeta : lam * beta = 2 * t) (x y z : ℂ) :
    lam * tripleMass x y z - tripleResponse t x y z =
      (lam / 2) *
        (‖(beta : ℂ) * x - y‖ ^ 2 +
         ‖(beta : ℂ) * z - y‖ ^ 2) +
        t ^ 2 * ‖x - z‖ ^ 2
~~~

## Proof
Expand the three genuine complex norm squares with the antilinear-first real part. The x/z diagonal coefficient is lam*beta^2/2+t^2=lam by the two scalar relations; the y coefficient is lam, the x-y/z-y mixed coefficient is lam*beta=2t, and the x-z coefficient is 2t^2. Thus the equality is literal complex algebra with all cross terms. It neither assumes positive entries nor identifies a new arithmetic source.

## Mathematical consumer and original source
Consumed by WPPC-v1-02; physically integrated on the exact three-site fibers for p and p² in the WRITTEN WeilPrimePowerCluster.md §4.
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
