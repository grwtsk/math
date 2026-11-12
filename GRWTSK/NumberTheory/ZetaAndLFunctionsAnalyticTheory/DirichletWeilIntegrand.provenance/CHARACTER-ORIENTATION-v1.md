# Character orientation correction — version 1

Local attribution: grwtsk contributors. Date: 2026-11-11.
Coordination: math#1801, correction comment 6812703103.
Inspection source: 9faf3baa8307ffe27c78db2821945ecb7062ed05.
Novelty UNASSESSED. Independent review NOT_RUN.

## Exact pre-existing meanings

`CharacterWindow.twistedPrime` in CharacterWeilWindowBounds.lean (blob
668ff53ae7c8a905ef5b6d827517ba8cb1142558) uses

    2 sum_n primeWeight(n) Re(conj(chi(n))*C_f(log n)).

Its original prose uses the minus-sign Fourier convention. The subsequent
WeilContourWeight source (blob aa53350b401764c081a0559833d7f840a5ecc847) uses

    W_f(s)=integral C_f(r) exp((s-1/2)r)dr,
    F_f(z)=integral f(t)exp(i*z*t)dt,
    C_f(r)=integral conj(f(t))*f(t+r)dt.

In this plus convention, the right-line term of the actual L(chi,s) has coefficient
chi(n)*C_f(log n), and the reflected term has chi inverse(n)*C_f(-log n).
For a complex character these do not produce the canonical same-chi prime term.

## Corrected correspondence; no source-definition migration

The complete analytical proof in [README.md](README.md) returns to the UNCHANGED
canonical arithmetic value at chi inverse. It can instead retain the original
character and reflect the test/weight: W_f(1-rho). The functional equation preserves
multiplicity under rho -> 1-rho and exchanges chi with chi inverse. Inversion
preserves the primitive conductor and parity. Zeta and real characters are fixed
by inversion; their formulas are unaffected, and both zeta poles remain.

The Lean candidate `twistedPrime_inverse_eq_plus_phase` supplies the exact finite
phase identification; `primitiveArithmeticValue_dual_orientation` supplies the
actual definition-level return, deriving the inverse's primitive/nonprincipal
metadata. They do not assert the finite contour or limiting explicit formula.

No existing file, declaration, arithmetic target, historical receipt or claim ID
has been rewritten. Earlier prose suggesting the same-character, same-test
arithmetic equality in the plus convention is withdrawn in favor of this versioned
correspondence. Earlier conditional `hsource` consumers are still conditional;
this record does not make a false instance of that hypothesis true.

## Falsification on admissible tests

The README gives a primitive quartic character modulo 5 with chi(2)=i and an
admissible modulated smooth bump whose correlation at log 2 is i times a strictly
positive real number. With (log 2)/2<A<(log 3)/2 only n=2 contributes. The two
phase conventions give opposite nonzero prime terms. This is an obstruction to
that intermediate identification, not a counterexample to RH or GRH.

Formal status of all new Lean bodies remains SOURCE_PROOF_CANDIDATE; elaboration,
fresh kernel replay and transitive axiom auditing NOT_RUN. The written smooth-bump
counterexample and zero-reflection transfer have not been encoded as new Lean
construction or multiplicity-bijection declarations in this increment.
