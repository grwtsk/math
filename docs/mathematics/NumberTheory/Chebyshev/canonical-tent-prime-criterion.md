# Canonical tent prime witnesses with a derived scaled tail

Parent: `89fdae442476890c5aaf77da6cb66bcfa45e58c1` (draft PR #303).
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Owners: #261 / #189, under #257; exact quantifiers are reused from #258.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. The Lean scripts and their
inherited dependencies have not been elaborated or kernel audited. This note
explains the mathematical implication, not a new prime-distribution estimate.
No numerical zero inventory, certified evaluator, successful spectral prime
certificate, or universal positive-margin supplier is constructed.

## 1. Unchanged sources and the complete error bound

For n >= 2, retain the normalized tent on (n^2,(n+1)^2), its radius
h_n=n+1/2, and the actual arithmetic sum W_n=`squareTentMangoldt n`.
Let C_n=`squareTrivialCorrection n` be the existing signed rational integral,
and let U_n=`squareCorrectionBudget n` be the complete proper-prime-power
upper bound. Define no replacement for these sources.

For any real cutoff T >= 2, the complete finite sum is

    Z_(n,T) = sum_(rho in heightHead(T)) m(rho) M_n(rho).

The source points are the actual canonical nontrivial zeta zeros, with full
complex coordinates, both height signs, actual analytic multiplicities and
closed height membership. No critical-line projection or numerical completeness
assumption enters the definition.

The parent supplies absolute summability, the complete identity

    W_n = h_n - sum_rho m(rho) M_n(rho) + C_n,

and the direct arithmetic truncation bound

    |W_n - [h_n-Z_(n,T)+C_n]| <= B_n(T),
    B_n(T) = 8*kappa*(n+1)^4*(log(T)+1)/(h_n*T),
    kappa = 44/log(6/5).

This budget is `canonicalTailBudget`, NOT the historical coefficient-one
`tentTailBudget`. It works even when T equals an actual zero height: that atom
is in the finite head and not in the strict-height complement. The bound
already compares with W_n, so no unrelated right-line truncation allowance
is added again. The older finite-contour defect retains its different scope.

## 2. The precise one-sided information needed

Suppose the same complete finite head and signed correction satisfy

    Re Z_(n,T) <= zUpper,       cLower <= C_n.

Taking real parts of the source-error ball gives

    h_n - zUpper + cLower - B_n(T) <= W_n.

This is `mass_lower_of_real_enclosures`. The declared margin is only a scalar
expression, not a new source or a claimed lower-bound oracle:

    canonicalPrimeMargin(n,T,zUpper,cLower)
      = h_n-zUpper+cLower-B_n(T)-U_n.

If that margin is strictly positive, W_n>U_n. The unchanged
`prime_in_square_of_tent_mass` then produces an actual natural prime p with
n^2<p<(n+1)^2. Neither endpoint is admitted. Prime-power mass is not silently
identified with prime-only mass; U_n is always subtracted.

No supplied explicit formula, infinite summability, counting theorem,
logarithmic-derivative estimate, or contour identity appears in this new
application. Those are inherited source-draft proofs, not eliminated trust
obligations. The remaining finite enclosures and strict margin must be proved.

An actual prime-free interval forces W_n<=U_n, hence every sound enclosure
of this form has margin <= 0. `prime_free_obstructs_margin` proves this
obstruction using the actual arithmetic source, not a synthetic zero model.
The criterion is sufficient, not asserted necessary: even an interval with
primes may fail a coarse mass or tail budget.

## 3. Standard complex evaluation and the derived correction floor

A certified enclosure of the same finite head,

    |Z_(n,T)-zHat| <= epsilon,

implies Re Z_(n,T)<=Re(zHat)+epsilon by |Re w|<=|w|. No separate
imaginary-part certification is needed by the one-sided consumer, although
this corollary can accept the stronger complex norm enclosure.

The inherited correction theorem supplies

    -D_n <= C_n < 0,
    D_n = h_n/[n^2*(n^4-1)].

Consequently `prime_in_square_of_canonical_tent` consumes only n>=2, T>=2,
the certified same-head evaluation and the strict inequality

    h_n-Re(zHat)-epsilon-D_n-B_n(T)-U_n > 0.

Its caller supplies neither C_n nor a correction floor. The old conditional
coefficient-one consumers remain unchanged. The new theorem does not pretend
that kappa=1.

A separate inventory adapter accepts a finite set S of actual ZeroPoint values
only after proving, for EVERY actual zero z,

    z in S iff height(z)<=T.

This gives equality with the canonical heightHead. Equal cardinality, rounded
heights, agreement on observed records, or a list without missing-zero coverage
cannot replace this condition. This is not an implementation of an interval
zero-record parser, multiplicity detector or completeness certifier.

## 4. Finite correction prefixes: keep the direction and both errors

Retain the old prefix P_(n,K)=`correctionPrefix K` and its complete bound

    0 <= P_(n,K)-C_n <= R_(n,K),
    R_(n,K)=D_n*(1/n^4)^K.

Thus P_(n,K) is an UPPER approximation to the negative complete correction.
Given a separate finite-prefix enclosure

    |P_(n,K)-cHat| <= epsilon_C,

the valid lower correction enclosure is

    cHat-epsilon_C-R_(n,K) <= C_n.

`prime_in_square_of_correction_prefix` therefore uses

    h_n-Re(zHat)-epsilon_Z+cHat-epsilon_C-R_(n,K)-B_n(T)-U_n > 0.

The nontrivial-zero tail B_n(T), included-zero evaluation error epsilon_Z,
trivial-zero correction remainder R_(n,K), and correction-prefix evaluation
error epsilon_C are distinct and appear once each. Do not subtract D_n again
in this variant; it uses the refined lower correction enclosure instead of
-D_n. An empty prefix has R_(n,0)=D_n, not zero. K, T and n index different
objects and are not identified.

## 5. Global quantifiers remain explicit

The new coverage module reuses `LegendreThrough`, `LegendreBeyond`,
`Legendre`, and `squareCount`; it defines none of them again.
For ONE fixed N>=1, its universal tail consumer requires, for EVERY n>N,
T(n)>=2, a same-head evaluation enclosure, and a strictly positive canonical
margin. These premises produce LegendreBeyond N. Only after combining them
with a separately proved complete LegendreThrough N does the wrapper yield
Legendre.

The N>=1 guard places every analytic tail stage at n>=2; n=1 belongs to the
finite prefix. The control at n=1 supplies the elementary witness p=2 but
does not extend the analytic domain. A finite sample, a density-one estimate,
fixed-n tail convergence, or nonnegative margins cannot supply the universal
strict hypothesis. No such hypothesis is established here.

## 6. Controls and verification boundary

The source controls reject dropping the counting scale, proper-power budget,
negative correction sign, finite evaluation error, or correction remainder.
They retain strict positivity, exact inventory membership, multiplicities,
the first-stage domain, and complete versus sampled interval coverage.
Synthetic scalar fixtures are not evaluations of actual zeta zeros.

The isolated import root retains the parent absolute-sum target and every
inherited acceptance obligation. Exact-head elaboration, declaration types,
all transitive imports/axioms/native dependencies, and external acceptance
remain required. Local rational diagnostics and text-level checks are not
Lean parsing, execution of these control theorems, or a kernel audit.

The next downstream work is useful certified same-head evaluation (or a
proved one-sided real upper enclosure), together with actual positive margins
at the required moving-interval quantifiers. The source implication alone
does not establish Legendre, any other Landau problem, or RH.
