# Canonical absolute tent summation and the complete divisor tail

Parent math revision: `e3f860b73e116f8337ca051584176d561ea4f049` (draft PR #302).
Mathlib revision: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Owners: #189 / #261, under #257.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. The accompanying Lean proof scripts have not been compiled. Container and Python access failed during this increment; no executed diagnostics, automated static-check passes or local byte-hash comparisons are represented. The classical argument below is not a new prime-distribution result.

## 1. The precise missing bridge

The parent proves convergence of complete finite divisor sums along selected heights. That alone does not prove unordered summability. The new argument bounds sums of NORMS over every finite subfamily independently of contour cancellation, then supplies genuine Summable to the unchanged parent consumer.

Retain the actual subtype ZeroPoint, analytic multiplicity m(rho), absolute height gamma(rho), complete closed head H(t)={rho: gamma(rho)<=t}, and weighted count C(t). There is no numerical zero list or critical-line projection. Both height signs and all complex locations remain.

The local source theorem from #296 states, for integers j>=2,

    mass{j<gamma<=j+3} <= J_j,
    J_j = 2[log 4+3 log(j+2)]/d, d=log(6/5)>0.

## 2. Preserve the low head and count the high complement

A unit increment (j,j+1] lies inside the retained three-unit band. Exact nested-head mass accounting therefore gives

    C(j+1) <= C(j)+bandMass(j),
    C(N+2) <= C(2)+sum_(k<N) bandMass(k+2)
             <= C(2)+N J_(N+2).

Every local estimate used here has stage at least two. The bands overlap, so the last inequality is an overcount, not a claim that those bands form a disjoint partition. The first finite head C(2) is retained without a numerical estimate or a claim that it is zero.

For a real t>=2 set N=ceil(t), as an exact mathematical ceiling. Then

    t<=N, N<t+1<=2t, N+4<=4t.

Since log 4<=2 log t and log(N+4)<=log(4t)<=3 log t,

    J_(N+2) <= (22/d) log t,
    C(t) <= C(2)+(44/d)t log t.

Define the fixed numerical coefficient

    kappa = 44/log(6/5).

Subtracting the SAME complete low-head mass, using exact nested-head equality, gives

    mass{2<gamma<=t} <= kappa*t*log t, t>=2.

More strongly, for every finite subfamily S whose points have gamma>2,

    sum_(rho in S, gamma(rho)<=t) m(rho) <= kappa*t*log t.

This is the all-finite-subsets premise needed by the inverse-square theorem. It is NOT the coefficient-one count assumed by the historical generic consumer. No existing count hypothesis or budget is edited to pretend that kappa equals one. The low count cancels only because it occurs on both sides of an exact complete-head decomposition.

## 3. Complete tails by finite partial summation

The new generic adapter scales counting weights by 1/kappa inside the proof of the existing finite partial-summation theorem. It does not change actual source multiplicities or the family being summed.

For any finite S with T<gamma(rho)<=R, T>=2, retain the exact boundary term:

    sum_S m/gamma^2
      = mass(S)/R^2 + integral_T^R 2*count_S(t)/t^3 dt.

The all-point count gives

    sum_S m/gamma^2
      <= kappa*[2(log T+1)/T - (log R+2)/R]
      <= 2*kappa*(log T+1)/T.

The positive terminal mass is not discarded before integration. Its combination with the integral creates the favorable final negative term. The same bound holds for every finite S, with no enumeration or chosen ordering.

Pinned Mathlib's nonnegative finite-subset boundedness theorem then derives summability and the complete sum bound. For a dominated complete-space family, the new adapter bounds the SUM OF NORMS, not merely the norm of its sum.

## 4. Apply to the actual tent divisor

For fixed h>0 and a=x-h>1, set b=x+h. Reuse the unchanged integral-defined tent kernel M_(x,h). The actual unconditional strip location of each canonical zero and the inherited inverse-height estimate give

    |M_(x,h)(rho)| <= 4*b^2/[h*gamma(rho)^2], gamma(rho)>T>=2.

Consequently

    sum_(gamma>T) |m(rho)M_(x,h)(rho)|
      <= B_(x,h)(T)
      := 8*kappa*b^2*(log T+1)/(h*T).

The new complement theorem derives absolute summability and this complete bound. Adding the finite head H(2) derives absolute summability over ALL actual nontrivial zeros. Nothing is divided by height inside H(2); a zero-height point, were present, would be handled by its actual finite kernel value rather than the totalized value of 1/0^2.

The exact head is closed, so the complement is gamma>T. Thus every real T>=2 is allowed, including a cutoff that equals an actual zero height. This tail argument has no contour-avoidance premise.

For Z=sum'_rho m(rho)M_(x,h)(rho) and Z_T=sum_(rho in H(T)) m(rho)M_(x,h)(rho),

    |Z-Z_T| <= B_(x,h)(T),
    B_(x,h)(T) -> 0 as T->infinity, for each fixed x,h.

The budget is precisely kappa times the historical beta=1 tentTailBudget, with its normalization unchanged. It is deliberately coarse and not claimed optimal.

## 5. Discharge the selected-limit summability premise

At each fixed square stage n>=2, the previous theorem already identifies any genuinely summable canonical family with its selected contour limit. The new absolute-summability result supplies that premise, yielding

    W_n = h_n - sum'_rho m(rho)M_n(rho) + C_n.

Here W_n is the actual squareTentMangoldt, h_n=n+1/2, and C_n is the complete independently defined SIGNED trivial-zero correction. No source equality, count, summability, logarithm, quotient or decay hypothesis is an argument of the new canonical_square_source_eq_tsum application; its only inputs are n and n>=2.

A companion gives HasSum in the full finite-subset-net sense. The proof also constructs cofinality of H(T) for arbitrary real T->infinity. Absolute summability then gives the same arithmetic limit for all such cutoffs, not merely the separated sequence. No unsmoothed staircase formula or uniform-in-n conclusion is asserted.

## 6. A direct arithmetic truncation error, with evaluation error separate

The complete source identity now gives, for every T>=2,

    |W_n - [h_n-Z_(n,T)+C_n]| <= B_n(T),
    B_n(T)=8*kappa*(n+1)^4*(log T+1)/(h_n*T).

This is an arithmetic-to-divisor estimate, not the earlier finite-right-contour defect. The latter still requires its right-line truncation allowance when used on its own. The new estimate instead follows from the complete divisor identity and bounds every omitted zero contribution directly, so it does not add an unrelated right-contour error again.

For a separately certified approximation zhat to the SAME exact head,

    |Z_(n,T)-zhat|<=epsilon
      implies |W_n-[h_n-zhat+C_n]|<=B_n(T)+epsilon.

No zero enumerator, numerical evaluator, coordinate enclosure or rounding certificate is constructed. If C_n is also approximated, its complete correction error must be added separately. A finite observed list can replace H(T) only through the existing exact-membership adapter. The closed cutoff, both signs and analytic multiplicities remain required.

## 7. Verification and nonclaims

The increment contains six new Lean modules: four mathematical modules, ten source controls and one isolated import root; plus this note and a static target. The manual inventory is two definitions and 36 theorem declarations. These are unelaborated source declarations, not accepted-result counts. No prior mathematical source, public aggregate import, historical target or branch is modified.

The controls are synthetic, not numerical zeta examples. They distinguish closed cutoff membership from the strict tail, multiplicity from cardinality, distinct same-height points, positive zero-height mass from totalized inverse-height zero, omitted-record incompleteness, scaling factors, the signed correction and the first excluded square stage. They have not been executed.

Local execution access failed. No Lean/Lake invocation, installation, native evaluation, automated static parser, numerical check, local hash-comparison pass, external replay or prime certificate is claimed. Git object creation, additive comparisons and exact-head readbacks are narrower evidence. Every new and inherited proof script remains subject to elaboration/repair, exact-type and full transitive trust review.

The historical coefficient-one counting consumers are unchanged. The new coarse coefficient must be retained in downstream margin calculations. Useful certified finite evaluation and strict positive margins for all required arithmetic intervals remain separate mathematical obligations. This is not a Legendre, RH, Goldbach, twin-prime or quadratic-prime proof. No issue closure, merge, worker action or execution-hold release is part of this increment.

## Exact source suppliers

- CanonicalZeroDivisor and SeparatedContourHeights: full source locations, analytic multiplicities, complete heads and local bands.
- CubicZetaCircleBound at the parent: actual local Jensen multiplicity envelope.
- HeightCountingTail: finite partial summation with its terminal boundary.
- TentMellinKernel and TentKernelTail: actual inverse-height decay and retained normalization.
- TentSelectedResidueLimit: selected contour limit and its explicitly conditional tsum adapter.
- Pinned Mathlib Topology/Algebra/InfiniteSum/Real.lean: nonnegative finite-subset boundedness implies Summable.
- Pinned Mathlib Algebra/Order/Floor/Semiring.lean: exact natural ceiling inequalities.
