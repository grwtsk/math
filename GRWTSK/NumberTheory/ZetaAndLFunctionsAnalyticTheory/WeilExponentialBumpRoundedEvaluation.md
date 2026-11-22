# Signed scalar-enclosed endpoints for the original bump

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020 11M26; secondary 11M41, 65G20.
Source: [WeilExponentialBumpRoundedEvaluation.lean](WeilExponentialBumpRoundedEvaluation.lean).
Supplier: [WeilRationalGammaConstant](WeilRationalGammaConstant.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801#issuecomment-6996611345).

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED.
Lean parsing, elaboration, exact exported types, builds, fresh kernel replay,
transitive axiom audit, certified source computation and independent review
NOT_RUN. Publication does not promote the inherited providers' evidence.

## Unchanged target and quantified domain

Keep the original real odd smooth test

    f_T(t)=t*expNegInvGlue(T^2-t^2),    g_T=liftReal(f_T),

and the SAME `primitiveArithmeticValue(chi,hprim,hnon,T,g_T)` for every positive
modulus, primitive NONPRINCIPAL character chi, and T>0. No replacement positive
form or adjusted character is used. Write Q for this source value.

EBR-1 retains every premise of EBS-1: m>0; adjacent physical cells covering
[-T,T]; whole-lag cells covering [2^(-m),2m]; exact interior sample-order and
kernel-order checks; binomial certificates for actual logarithmic lags; and all
original signed primes. The new finite inventory S must satisfy

    S = activePrimePowers T.

This is equality, not subset inclusion. The canonical name is historical: the
set includes EVERY integer n>=2 with n<exp(2T), including zero-weight composites.
Only the von Mangoldt coefficient decides whether a label contributes. No
rounded cutoff or unproved prime-only list replaces it. Existing concurrent
inventory theorems may supply this premise where their exact conditions match;
this module does not run an inventory generator or supply it for arbitrary T.

Additional data: harmonic index h>0; gamma logarithm order NG; certified rational
pi interval 1<=pL<=pi<=pU; weight-log orders LW(n); positive square-root
resolutions DW(n); complex phase centers z(n); and ACTUAL full-complex enclosures

    |chi(n)-z(n)| <= ez(n)                  for every n in S.

No phase-error theorem or numerical approximation is assumed merely from a
character being named. For rational complex centers, a rectangular real/imaginary
certificate can imply a disk bound via |v|<=|Re(v)|+|Im(v)|. That elementary
component-to-disk implication is not a new public declaration here.

## Complete primary analytical argument

### Existing actual prime-weight provider

Reuse `RationalPrimeWeights` at the live inspection pin. For every n>=1 and
DW>0, it supplies rational numbers w0,ew,W such that

    |primeWeight(n)-w0|<=ew,       0<=primeWeight(n)<=W,

where primeWeight(n)=vonMangoldt(n)/sqrt(n) is the ORIGINAL coefficient.
The provider uses minFac(n) on the prime-power branch, exact integer square
comparisons, and the maintained finite logarithm series. In particular
vonMangoldt(p^k)=log p, not log(p^k); all powers remain present with their correct
weights. On the non-prime-power branch the weight, center and radius are zero.
The provider is reused, not reimplemented or assigned new verification evidence.

### Weighted full-complex phase error (RBC-1)

Define the central signed coefficient and radius by

    d_n = w0_n * conj(z_n),
    ed_n = ew_n + |w0_n|*ez_n.

The exact decomposition is

    w_n*conj(chi_n)-w0_n*conj(z_n)
      = (w_n-w0_n)*conj(chi_n) + w0_n*conj(chi_n-z_n).

Since |chi_n|<=1 for the actual Dirichlet character, the triangle inequality
gives |w_n*conj(chi_n)-d_n|<=ed_n. No cross term is omitted: the decomposition
uses the EXACT bounded chi_n in the first term and the APPROXIMATE weight in
the second. This differs from a formula using two independent approximate-factor
magnitudes that would require an additional product radius.

Both conjugations are essential. Off-real character values are not replaced
by real parts, signs, unit absolute values, or positive weights in the center.

### Complete signed prime sum (RBC-2)

Let A_n be any complex finite correlation estimates. From the coefficient
bounds, multiplication by |A_n| and taking real parts give

    |P_chi(A)-P0| <= 2 sum_{n in S} ed_n*|A_n|,
    P0 = 2 sum_{n in S} Re(d_n*A_n).

Here P_chi is precisely the original `twistedPrime`. The proof uses its literal
finite sum, not a new character form. All original labels are retained. Only
uncertainty is majorized; P0 itself remains signed.

### Gamma constant and propagation to the old error

RGC-4 derives rational c0,ec from h,NG and the certified pi endpoints:

    ec>=0,         |gammaConstant(q,parity chi)-c0|<=ec.

Put c=the actual gammaConstant and mu=Re(a0), where a0 is the existing zero-lag
sample. Keep the old nonnegative mass radius e0 and correlation radii e_n.
Their nonnegativity is DERIVED from the actual old correlation enclosures,
not supplied as extra unproved positivity assumptions.

Then

    |c*mu-c0*mu| <= ec*|mu|,
    |c|*e0 <= (|c0|+ec)*e0,
    2 sum w_n*e_n <= 2 sum W_n*e_n.

The product contribution ec*e0 is present in (|c0|+ec)*e0. It cannot in general
be discarded. The existing source error was |c|*e0+2 sum w_n*e_n, so these are
outward comparisons for its actual uncertainty, not a change of arithmetic value.

### Exact source return (EBR-1)

The inherited EBS-1 gives

    c*mu+Glo-P_chi(A)-Eold <= Q
      <= c*mu+Gup-P_chi(A)+Delta_T(m)+Eold,

where Glo,Gup are the existing finite whole-cell gamma sums and

    Delta_T(m)=(3/4)(2T+1)(1+4T^2)^2*4^(-m)+(64/3)T^3*2^(-m).

Define the fully scalar-enclosed total error

    Enew = ec*|mu| + (|c0|+ec)*e0
             + 2 sum_{n in S} [W_n*e_n + ed_n*|A_n|].

Adding the two-sided center errors and enlarging Eold proves

    c0*mu+Glo-P0-Enew <= Q
      <= c0*mu+Gup-P0+Delta_T(m)+Enew.               (EBR-1)

Both omitted gamma regions remain charged in Delta. They are nonnegative, so
no omission cost is subtracted from the lower endpoint. The upper endpoint MUST
pay it. All estimates concern the same Q, test, support, character and parity.
No zero-location, multiplicity or zero-count oracle enters this arithmetic route.

The output contains NO exact gammaConstant or primeWeight scalar evaluation.
For rational T, physical/lag data, log brackets, phase centers/radii and pi
endpoints, and a supplied exact inventory, it consists of finite rational
operations. Bump samples are real rationals embedded in C, so their product
norms reduce to rational absolute values. This is an analytical identification
of finite expressions, NOT an implemented rational assembler or proof of a
particular run's rounding. EBR-1 also permits exact real/complex data.

To report rational numeric endpoints A,B, a caller must evaluate outward:
A<=the displayed lower endpoint and the displayed upper endpoint<=B. The result
A<=Q<=B follows by transitivity. No approximate total is silently treated as an
exact finite sum. No evaluated endpoints or sign certificate are supplied here.

## Precision and falsification

This increment supplies the gamma interval, reuses the actual prime-weight
intervals, and composes their complete product errors. It does not establish a
simultaneous precision schedule as support, conductor or lag window increases.
The singular near-zero kernel still requires physical and lag-cell errors to
shrink compatibly with eta. Vanishing Delta alone is not total convergence.

Written hostile checks:

1. If c0=0, ec=1, mu=0, e0=1, the admissible scalar choice c=E=1 has cE=1.
   Omitting ec*e0 would falsely assign zero mass-product error. This is a
   synthetic control of the algebra, not an L-function sample.
2. If chi=i, z=-i, w=w0=1, then the weighted coefficient error is 2. A correct
   weight interval alone cannot certify a phase error of zero.
3. If d=i and A=i, Re(d*A)=-1 although |d*A|=1. Replacing the signed center by
   an absolute value changes the arithmetic expression.
4. A subset S misses labels regardless of how accurately retained values are
   evaluated. The inventory equality cannot be replaced by inclusion.
5. A fixed pi interval leaves residual gamma error; a fixed harmonic index
   leaves an Euler-constant error. Increasing only the log truncation is not
   arbitrary precision.

An alternative product decomposition could use an exact energy upper bound
and actual correlation-energy bounds to charge coefficient uncertainty before
sampling. That might improve constants when a sample center is large, but
requires a different complete comparison. It is not implemented or claimed as
independent review. The present proof deliberately composes EBS-1 and preserves
its source and error accounting.

## Individual declaration provenance

All records: version 1, 2026-11-18, SOURCE_PROOF_CANDIDATE; novelty UNASSESSED;
all formal execution and independent review NOT_RUN.

Prefix `GRWTSK.NumberTheory.WeilQuadraticForm.RoundedCoefficients`:

**RBC-1 `coefficient_error`.** All positive moduli and Dirichlet characters,
n>=1, DW>0, arbitrary log order and complex phase certificate. Uses the exact
existing `RationalPrimeWeights.center_error` and `norm_character_le_one`.
Consumer: EBR-1. Complete complex factor proof above. No new weight model.

**RBC-2 `abs_twistedPrime_sub_coefficients_le`.** Every original finite active
inventory, arbitrary complex A,d, and coefficient-error table satisfying the
actual coefficient bounds. Direct finite sum/real-part/norm inequality applied
to the canonical twistedPrime. Consumer: EBR-1; no positivity assumption.

Prefix `GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`:

**EBR-1 `primitiveArithmeticValue_oddExpBump_rounded_enclosure`.** Every positive
modulus, primitive nonprincipal chi, T>0, m>0, ALL physical/lag/sample/log/kernel
conditions of EBS-1, exact finite inventory equality, h>0, certified pi interval,
positive per-label root resolutions, and actual phase-error certificates. The
original target and complete calculation are above. No premise asserts a sign
or an enclosure of Q itself. Its existing analytical admission and quadrature
providers are applied rather than re-assumed.

Conductor-one zeta and both applicable pole orientations remain outside this
consumer. The gamma supplier itself permits q=1, but that does not prove a
pole-inclusive arithmetic return. Determining-test coverage and universal
all-character/all-window signed lower bounds remain open. No RH/GRH proof,
actual off-line zero, or new equivalence is asserted.

## Source observations and reproducibility

Inspection pin: grwtsk/math `7c183c31ebc4ed393e1ecef385479b8370ae8768`.
Compared the complete changes since iteration 10 before choosing providers:
concurrent rational prime weights and logarithms are reused, not duplicated.

* `WeilRationalPrimeWeights.lean`, blob `973510bc0ec6a01a8db3c2c1e2f6c870559476c8`:
  `weight_enclosure`, `center_error`, `radius_nonneg`, plus its actual
  minFac/integer-square-root definitions. Local provider, not a new imported
  paper formalization. Its prior evidence is unchanged.
* `WeilExponentialBumpScalarEvaluation.lean`, blob
  `fafbf6f4f60c6d3d7891029d92e89e525256ae70`: EBS-1, reopened in full.
* `WeilCorrelationCellEvaluation.lean`, blob
  `58f7365bf978e42bf21ba1043415626f90512b21`: original primeCorrelationError and
  whole-line/cell conventions, plus its finite-sum error proof.
* `WeilConductorFrontier.lean`, blob
  `ac9bf37f07ef22d7ca75b918baeea3161df028b7`: exact primeWeight, activePrimePowers,
  twistedPrime and character-norm theorem. No convention is changed.

Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Mathematical prerequisites also
include the existing source-local paper provenance of the canonical Weil form;
this increment is a local scalar-error consequence, not another explicit formula.
No external source code is copied. Indexed search was incomplete and proves no
absence; novelty remains UNASSESSED.

No verified local proof skill or Lean/lake executable was available. The
canonical proof-automation skill returned 404 at Noe
`b0be41adc8b0bf76f9735b3c2793faf7f80862c3`; no dependent execution was launched.
The exact-source verification obligations, static-check command/results,
publication reconciliation, file identities and main readback are recorded in
#1801. Static checks are not a Lean parser or numerical certification.
