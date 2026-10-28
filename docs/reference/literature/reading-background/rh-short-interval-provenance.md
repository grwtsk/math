# RH to short-interval prime counts

Local mathematical attribution: grwtsk contributors.

## Source identity and scope

Source commit: `2a9415e901e82aa2f5031ac9ba3b5be9e584b7ca` in grwtsk/math.
Complete tree: `4a2ed67586e73da79adc50ffb1eafa8cd18b5615`.
Parent: `7cb6aedb8b6b1df1c738fbca28d0203545450748`.
Three additive files; no root-import, dependency, or existing-source change:

- `GRWTSK/NumberTheory/Chebyshev/ShortIntervalPrimeCount.lean`, blob `03dd07c75c4c2273850ea249d50e60db83a15961`.
- `GRWTSK/NumberTheory/Chebyshev/RHShortIntervalCount.lean`, blob `4753302b9232399ce77682a01a20d676efd5aee0`.
- `GRWTSK/NumberTheory/Chebyshev/SharpShortIntervalCount.lean`, blob `8d3d4f290cadb1a94e4d610c2fa11a728e35f10f`.

The 40 identifiers (10 definitions, 30 theorem scripts) are a lexical source
inventory, not an elaborated census. All new proofs are SOURCE_PROOF_CANDIDATE.
Compilation, fresh kernel replay and transitive axiom auditing: NOT_RUN.

## Complete coarse implication at source level

`GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount.many_primes_of_RH`
takes canonical `_root_.RiemannHypothesis` as its only mathematical hypothesis
and concludes that some fixed B,X>0 satisfy, for every real x>=X,

    sqrt(x) < #{p prime : x < p <= x+B*sqrt(x)*log(x)}.

The literal prime-window membership, proper-power subtraction and complete
canonical tent formula are supplied, not passed as additional premises.
Companion theorems in that same namespace are `prime_in_short_interval_of_RH`,
`consecutive_prime_gap_of_RH`, `many_primes_dyadic_of_RH`, and
`many_primes_of_dyadicBirthBound`. The last uses the unchanged upstream
DyadicBirthBound-to-RH implication without supplying that arithmetic witness.

Let M=heightCount(2), the actual both-sign analytic-multiplicity count, and
K=44/log(6/5), the existing coarse Jensen coefficient. Pinned Mathlib constructs
C>=0 with psi(y)-theta(y)<=C*sqrt(y). The proof chooses

    B=M+100*K+2*C+4,  X=exp(2*max(1,8*B)).

This B is nonoptimal and source-defined, not an evaluated numerical constant.
For t>=max(1,8*B), put e=exp(t), a=e^2, h=B*t*e, center x=a+h,
right endpoint b=a+2*h, and zero cutoff T=a/h. The elementary inequality
exp(t)>=t^2/4 ensures 2*h<=a. RH gives a low-zero kernel bound 2*h/e;
the retained low head and actual high count cost at most (M+4*K)*t*e.
The complete omitted inverse-square tail costs at most 96*K*t*e. Proper powers
cost at most 2*C*t*e, the signed rational correction is >=-1, and log(b)<=3*t.
A count <=e would give weighted mass <=3*t*e, contradicting the complete
source lower bound >=4*t*e-1. Substitution t=log(a)/2 covers every large real a.
Both zero signs and multiplicities remain. The main term is h, not 2*h.

## Sharp constants: exact remaining proof, not an additional conjecture

The original written argument gives constants 1+epsilon and 3+epsilon.
These are not yet derived from RH in Lean by this increment. The proposition
`GRWTSK.NumberTheory.Chebyshev.SharpShortIntervalCount.SharpZeroAllowance`
is defined, not asserted or axiomatized:

    forall A>1, eta>0, eventually in real t,
      norm(zeroContribution(exp(t)^2+A*t*exp(t),A*t*exp(t)))
        <= (1+eta)*t*exp(t).

The source proves `sharpLowerCount_of_zero_allowance`, including the explicit
choice eta=(A-1-2*c)/(2*(3+c)), the already supplied power correction, the
finite margins, and the conversion to real endpoints. It obtains a strict
count >c*sqrt(x) whenever A>1,c>=0,2*c<A-1. The declarations
`many_primes_three_epsilon` and `prime_one_epsilon` retain that exact allowance
as an argument. `SharpRHAnalyticReturn` merely defines RH->SharpZeroAllowance;
there is no proof declaration for it here.

The missing Lean analytic proof is sharp Riemann-von Mangoldt weighted
summation for the actual tent, compact approximation by
K(v)=(sin(v/2)/(v/2))^2, and integral_0^infinity K=pi. The correct both-sign
leading coefficient must be retained. The existing coarse complete tail
already pays the high-frequency part by O(K/L), so no sharper tail constant
is required. Fix L first, then take the outer scale large, then let L grow.
No repository-wide absence claim is made about these analytic ingredients.

## Paper attribution and classification

Adrian Dudek, *On the Riemann Hypothesis and the Difference Between Primes*,
arXiv:1402.6417v2, 20 May 2014 (v1: 26 February 2014).
Stable source: https://arxiv.org/abs/1402.6417v2 .
The RH-conditional 1+epsilon and 3+epsilon results and the tent/explicit-formula
method are the cited research correspondence. No complete paper theorem is
imported as a Lean axiom. No new prime-gap record or historical influence is
claimed.

Relevant fully qualified declarations include:

- `GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount.mangoldtTent_split`
- `GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount.mangoldtTent_explicit`
- `GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount.exists_uniform_proper_power_constant`
- `GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount.prime_count_master_bound`
- `GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount.rh_zeroContribution_bound`
- `GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount.many_primes_of_RH`
- `GRWTSK.NumberTheory.Chebyshev.SharpShortIntervalCount.sharpLowerCount_of_zero_allowance`
- `GRWTSK.NumberTheory.Chebyshev.SharpShortIntervalCount.many_primes_three_epsilon`
- `GRWTSK.NumberTheory.Chebyshev.SharpShortIntervalCount.prime_one_epsilon`

Imported mathematics: the existing GRWTSK canonical contour/tent, analytic
zero divisor, Jensen counting and tail results, and Mathlib Chebyshev and
real/complex analysis. Upstream authorship/licenses are preserved.
Kernel-verified new bridges: NONE claimed. Source proof candidates: the 30
new scripts. Conditional interfaces: finite margin helpers and the sharp
actual-series allowance. Finite evidence: external diagnostics only; no
asymptotic evidence or native acceptance. Analogies used as proof: NONE.
Unresolved: complete native acceptance, the RH-to-sharp-allowance proof, and
the original arithmetic witness when using the DyadicBirthBound wrapper.

The central paper-to-formalization-references.md is preserved byte-for-byte.
Its cross-reference to this additive entry remains pending; this supplement
does not purport to have updated the central index.

## Verification

Lean: leanprover/lean4:v4.33.0. Mathlib:
`db584cd6d46c92f209a44c0f1c829460d327499d`. All package pins unchanged.
The full 40-declaration roster, immutable blobs, hashes, commands, finite
checks and rejection criteria are in
`docs/verification/NumberTheory/Chebyshev/RHShortIntervals/verification.toml`.

Required commands, all NOT_RUN with exit UNAVAILABLE:

    lake build --wfail GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount GRWTSK.NumberTheory.Chebyshev.SharpShortIntervalCount
    lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/Chebyshev/ShortIntervalPrimeCount.lean
    lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/Chebyshev/RHShortIntervalCount.lean
    lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/Chebyshev/SharpShortIntervalCount.lean
    lake env leanchecker --help

Resolve the supported fresh-check command from the pinned checker. Audit the
full imported/private/generated/opaque closure and exact hypotheses, not only
wrappers. Reject sorryAx, research axioms, unauthorized native/unsafe logical
trust, omitted closure, altered source and promotion of the sharp claims.
Operational runners/results/receipts stay outside math. No remote dispatch or
durable Noeaaeue receipt is claimed. Historical acceptance stays at its old scope.
