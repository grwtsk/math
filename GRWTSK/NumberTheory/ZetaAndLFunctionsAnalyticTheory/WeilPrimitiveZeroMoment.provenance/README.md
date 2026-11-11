# The correlation consumer on the actual primitive zero divisor

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilPrimitiveZeroMoment.lean](../WeilPrimitiveZeroMoment.lean).
Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`. Coordination math#1801, scope comment 6807961220.
Base `fce314b591c1c453dc0a432004a62b0add7921f1`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Source: 67 lines, 3318 bytes, one public theorem.
Git blob `bd369e32bb84f7ef4c8f4eaea7b56ccd902e362c`; SHA-256 `17422497a604d9e8cf069a4b98794757f0f0269876ef675c7a48a6466a577bb0`.

The unconditional source work is in [DirichletZeroMultiplicity](../DirichletZeroMultiplicity.provenance/README.md):
actual analytic orders are finite and positive, and actual primitive-source height windows
are finite, including the principal conductor-one zeta case. This module is the consuming
conditional adapter, not a second proof of that work or an independent review.

For primitive chi, nonnegative D,L and EVERY H>=2 assume the genuine multiplicity count
heightCount_chi(H)<=D*H*(log H+L). Let f be in the unchanged canonical Admissible class,
with topological support in [-A,A], A>=0, and k>=1. The new theorem concludes

    Summable over actual strip zeros rho of
      norm(m_chi(rho) * integral_R correlation(f,r)*exp(I*zrho*r) dr),
    zrho = -I*(rho-1/2).

No arbitrary zero locations or supplied multiplicity map remains in this statement.
The quantitative all-height hypothesis, however, is not discharged.

The proof applies heightCount_le_iff to obtain the all-finite-subsets estimate. It derives
|Im(zrho)|<=1/2 from the original coordinate lemma and uses Re(zrho)=Im(rho) only to
translate the COUNT cutoff. The spectral arguments and norms remain fully complex.
The original correlation and its existing Fourier return remain

    C_f(r)=integral conj(f(t))*f(t+r) dt,
    transform(C_f)(z)=F_f(z)*conj(F_f(conj z)).

The latter is not replaced by abs(F_f(z))^2 off the real axis. Feeding the actual locations,
natural analytic multiplicities (cast to real), and the proved strip bound to the existing
summable_norm_correlation_of_height_count gives the conclusion. The last cast simplification
identifies the real-to-complex cast with the direct natural-to-complex cast. This is not
an identification with the full arithmetic Weil value.

Exact canonical consumer: [WeilCorrelationMoment.lean](https://github.com/grwtsk/math/blob/fce314b591c1c453dc0a432004a62b0add7921f1/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationMoment.lean),
blob `ab532a6b1345b299c67a0eb18ce7b50ff093d402`; declarations
`GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.summable_norm_correlation_of_height_count`
and `GRWTSK.NumberTheory.WeilNegativeWitness.spectralCoordinate_radius_bounds_of_strip`.
The source identity/domain is the unchanged WeilNegativeWitness.lean, blob
`abd27c24bfac7422baa4c2482ae71e684b558ff0`. Companion records identify all primary Mathlib
order, continuation, nonvanishing, finite-set and zeta sources and their authors/licenses.
No direct paper-formalization or novelty assertion; novelty UNASSESSED.

RP-OC-01 receives actual-source qualitative divisor data; RP-OC-02 has a precise conditional
source-correlation application. A receives provenance, not formal admission; B receives a
well-defined actual count, not its required growth theorem. RP-OC-03--10, C--F and the four
realization extensions receive no new completed result. No program is complete.

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review, arithmetic
certification and repository-wide checks NOT_RUN. Source-text checks are not formal verification.
The core README records unexecuted commands and the current canonical skill blocker. No
runner or workflow was dispatched. Actual-source H log H counting, the full pole-inclusive
arithmetic explicit formula, positivity, and the varying-test cost/tail margin remain OPEN.
