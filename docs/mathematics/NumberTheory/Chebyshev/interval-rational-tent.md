# Direct checked quadrature of the normalized tent transform

Owner #194; exact observable/source consumers #189/#261 under #257.
Additive extension of draft #274, parent
`fead56eef4bc244a8119d4c8bce5ceef8028410c`, tree
`9fea668f3baaeace0d419a41232fa0ab6709b4f2`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The Lean scripts are proof
candidates, not elaborated declarations or qualified executable code. The
written elementary derivations below do not replace pinned elaboration and
independent transitive trust review. No novelty claim is made.

## 1. Same density, a genuinely different observable

The original interval evaluator targets

    F_(a,b)(z) = integral_a^b exp((z-1)log(t)) dt.

The existing normalized tent is

    w_(x,h)(t) = max(0,1-|t-x|/h),
    M_(x,h)(z) = integral_(x-h)^(x+h) w_(x,h)(t) exp((z-1)log(t)) dt.

The maintained `TentMellinKernel.tentKernel` defines M by an exact affine
combination of four interval integrals. Its `tentKernel_eq_split_integral`
identifies this definition with the two weighted affine-piece integrals. We
reuse that object and theorem. We do not define a polynomial as the target
transform or relabel the unweighted interval result.

The authored increment included `TentWeight.lean` and `TentMellinKernel.lean`
at their historical Git blob identities from #275, also unchanged at source
head #284, `971bc70e7c4227b6551eea5b214cb9dbf6b38572`. Those revisions
record historical provenance before compatibility repairs. The passive targets
bind the maintained source blobs and retain the original pins in comments.
Their mathematical ownership, exact hypotheses and pending acceptance remain.

There is an important domain obstruction to a naive four-check adapter. The
four-integral formula contains F(z+1). The rational node checker accepts only
Re(z)<=1. For a center with real part 1/2, z+1 has real part 3/2; an existing
check cannot simply be invoked there. The new rule integrates the tent weight
exactly and samples the unchanged density at z. It never numerically shifts z,
projects it onto the critical line, or removes the old domain check.

## 2. Positive integrated cell masses

Let h>0, a=x-h>1, b=x+h, and N>0 be the number of cells IN EACH HALF. Put d=h/N.
The 2N density sample points are the exact rational midpoints

    t_Li = a+(i+1/2)d,
    t_Ri = x+(i+1/2)d,             0<=i<N.

On each cell the tent is affine. Its integrated mass is exactly

    mu_Li = d*(i+1/2)/N,
    mu_Ri = d*(1-(i+1/2)/N).

All masses are nonnegative (indeed positive at admitted indices). They are not
independently supplied weights. Both sides use the same external x,h,N. Every
cell contributes and the midpoint kink is a cell boundary, not crossed by a
claimed single affine formula. Exact finite algebra gives

    mu_Li+mu_Ri = d,
    sum_i mu_Li + sum_i mu_Ri = h.

Thus constant density yields the radius h, not diameter 2h, at every resolution.
The original tent's zero endpoint weights do not justify dropping these positive
cell masses. These are integrated weights, not endpoint samples of the tent.

## 3. Derive discretization before adding sample uncertainty

The existing spatial-derivative theorem for the ORIGINAL density gives

    |f'_z(t)| <= q,    q=|Re(z)-1|+|Im(z)|,

on t>1 and Re(z)<=2. The analytic quadrature statement uses this explicit
half-plane. The rational checker retains the stricter Re(z)<=1 required by its
logarithm/exponential node supplier; no broader computable-domain claim follows.

For a cell [u,v] with midpoint m and a nonnegative affine weight W,

    |f_z(t)-f_z(m)| <= q*(v-u)/2.

Integrating W exactly, with mu=integral_u^v W(t)dt, gives

    |integral_u^v W(t)f_z(t)dt - mu*f_z(m)| <= mu*q*(v-u)/2.

For a proved sample enclosure |f_z(m)-V|<=E, positivity supplies

    |integral_u^v W(t)f_z(t)dt - mu*V| <= mu*(q*(v-u)/2+E).

The source derives integrability, the midpoint-distance estimate, the affine
mass formula, and the complete finite interval partition. It does not assume
an integral-error certificate. Specializing the two affine halves, summing,
and using their total mass h gives

    |M_(x,h)(z) - sum_i mu_Li V_Li - sum_i mu_Ri V_Ri|
      <= q*h^2/(2N) + sum_i mu_Li E_Li + sum_i mu_Ri E_Ri.

This is a conservative first-order estimate, not a sharp second-order theorem
for smooth midpoint quadrature. Its derivation uses only the density's first
spatial derivative. No derivative of the tent across the kink is assumed.
At z=1, q=0, so the discretization allowance is exactly zero.

## 4. Finite rational checker and outer accumulation

`RationalTentQuadrature` takes external rational x,h,z and natural N. It checks
h>0, x-h>1, N>0, Re(z)<=1, exactly N left samples and N right samples, and invokes
`RationalMellinNode.check` at EVERY constructed midpoint with the unchanged z.
The existing node check recomputes the logarithm center/radius and actual input
exponent. Its complete seed, squaring, shape, domain and sign checks persist.

The exact term order is all left weighted outputs followed by all right weighted
outputs. `RationalFiniteSum.check` is reused on these 2N recomputed complex terms.
It requires 2N+1 accumulator values, 2N radii, zero initialization, and every
local comparison with the exact weighted term. Rounded multiplication and
addition must both be covered. The imaginary component remains in the Euclidean
squared-ball comparison. Missing records or negative radii cannot pass by using
defaulted accessors.

The total output allowance is computed in rational arithmetic:

    E_total = q*h^2/(2N)
              + sum_i mu_Li E_Li + sum_i mu_Ri E_Ri
              + sum_j r_j.

The correctness candidate is

    check(z,x,h,N,trace)=true ==> |tentKernel(x,h,z)-A_(2N)|<=E_total.

`checkWithin` also checks an externally requested nonnegative epsilon against
this entire allowance. It does not accept the final error as metadata. Inner
node arithmetic is already inside E_Li,E_Ri; the r_j are the distinct outer
weighted accumulation errors. Shared uncertainty is not declared independent.

`referenceTrace` constructs both complete midpoint-sample lists with the existing
exact node constructor and every exact weighted prefix sum. `reference_checked`
targets acceptance for every admitted geometry and resolutions satisfying the
literal per-node logarithm and Taylor guards; it does not assume a passing
witness. No target-precision completeness or practical resource guarantee is
claimed. The analytic source includes z=0 and z=-1 without singular quotients.

## 5. Nonvacuity and scope controls

At x=3,h=1,N=1,z=1 the nodes are 5/2 and 7/2, and both masses are 1/2. The exact
trace gives output 1 at zero allowance. The unweighted integral on [2,4] is 2,
so the source has an explicit control distinguishing the two observables.

For z=0 with logarithm scale 1, one cell in each log grid, one exponential
squaring and three Taylor terms, the exact rational source quantities are

    left log center/radius: 39/40, 11/40;
    right log center/radius: 75/56, 23/56;
    output: 138886839793/393379840000;
    total allowance: 30450085893789473/30840979456000000 < 1.

Each density node accepts tolerance 3/4, but the complete tent check rejects
3/4 and accepts 1. The mesh charge 1/2 has not been erased. A failed sufficient
check does not imply that the actual error exceeds the requested tolerance.
The composed analytic example targets the true integral at z=0; no totalized
0/0 quotient substitutes for it.

Other controls reject zero/negative geometry, zero N, a forbidden real part,
missing half records, the wrong diameter normalization, a false intermediate
accumulator with the correct final answer, negative radii and negative tolerances.
A rounded imaginary output of 1/10 is retained rather than discarded. These
are elementary-function controls, not zero records or prime certificates.

## 6. Remaining interfaces and acceptance

The new source targets ONE tent transform. It does not change the existing
`RationalMellinFamily`, which still evaluates the original interval kernel.
A canonical tent-family application must bind every tent evaluation to exactly
the required record/key, center, true multiplicity and source inventory, then
check its outer family accumulation and separately propagate coordinate errors.
The earlier interval-family theorem cannot be silently renamed for this purpose.

Still required: exact-head Lean elaboration/repairs, inherited and new public
types, generated/decision declarations, complete transitive import/axiom review,
and independent acceptance. Auxiliary rational and mpmath models do not execute
these Lean declarations. No parser, compiler output, arithmetic library, worker
or deployed evaluator is qualified by these source files.

The mesh allowance grows as q*h^2/N. Fixed N is not sufficient at arbitrary
stage or height. Numerical precision and integer/list/bit-size resource policies
remain separate. Exact rational inputs are not rounded-node transfer theorems.
The unrelated global contour/source work keeps its own identities and estimates.
Complete divisor coverage, omitted tails and uniformly strict arithmetic margins
are not supplied here. No new prime-distribution, Legendre or RH result is claimed.
