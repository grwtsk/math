# Checked finite Mellin families

Owner #194; consumers #189/#209/#261. Additive source extension of draft #274.
Parent: `91f3ddbd5cf8c5dd143315567ef95f12c312d912`.
Parent tree: `2826d4843bb20b87e756e1c3d3cb0d228e3ffc85`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** Proof candidates are not accepted
Lean declarations or qualified executable code. No originality claim is made.
All previous sources and acceptance obligations are preserved.

## 1. One interval evaluator is not yet a finite-family evaluator

The parent supplies a pure rational uniform-grid checker for the original kernel

    F_(a,b)(z) = integral_a^b exp((z-1)log(t)) dt.

Its error contains mesh, full density-node uncertainty, and the checked arithmetic
of the weighted sample sum. It neither chooses a parameter family nor proves that
an external family is a complete zero inventory.

The new owner takes an EXTERNAL ordered finite list of records

    (key_j, center_j, multiplicity_j), j=0,...,J-1,

with natural keys, rational complex centers, and positive natural multiplicities.
The interval endpoints a,b are also external and identical for every record. An
evaluation record contains a matching key, a positive cell count N_j, and the
parent's complete interval trace. Different members may use different resolutions.

The family checker requires 1<a<=b, unique external keys, exactly J evaluation
records, matching keys in every position, positive multiplicities, and successful
parent checks at EVERY external center and the SAME external endpoints. There is
no zero-weight shortcut and no deduplication by center or imaginary height.

Keys are finite data identities, NOT proofs of analytic provenance. Distinct keys
at equal centers are permitted and both contributions remain. Assigning different
keys to duplicate descriptions of one actual zero would still require a separate
source-to-record bijection to justify a zeta interpretation. The checker proves a
bound for the literal external list, not the truth of labels or claimed completeness.

## 2. Values and errors both carry the multiplicity

Write V_j for the output of the j-th accepted interval trace and E_j for its full
computed error. The inherited theorem gives

    |F_(a,b)(center_j)-V_j| <= E_j.

The new checker computes the external term list m_j V_j by named rational complex
multiplication. It also computes

    E_local = sum_j m_j E_j.

A second use of the existing RationalFiniteSum checker validates exactly J+1 outer
accumulator values and J arithmetic radii, zero initialization, and EVERY update

    |A_(j+1)-(A_j+m_j V_j)| <= r_j.

The squared Euclidean ball test includes both complex components and nonnegative
radii. Comparison is to the exact weighted product, so rounded multiplication and
addition must both fit its radius. Missing records cannot be supplied by default
accessors; extra records are rejected too.

Finite triangle inequalities and the inherited sum-trace theorem yield

    |sum_j m_j F_(a,b)(center_j)-A_J|
      <= E_local + sum_j r_j = E_family.

The Boolean check has no separate assumed local norm bound, final sum error, or
integral approximation premise: the earlier finite checks supply those arguments.
`checkWithin` additionally requires an external epsilon>=0 and E_family<=epsilon.
Its proof candidate returns the requested error for the original kernel sum.

Each E_j already contains the member's internal quadrature accumulation error.
The r_j are a different level: accumulation ACROSS member outputs. Neither level
replaces the other. Even if complex values cancel, absolute error allowances add;
no independence, randomness, or square-root-of-count rule is asserted.

`checked_local_charge_le` bounds the allowance consumed by a successful requested
precision. It is not a lower bound on actual numerical error. A rejected sufficient
check proves neither inaccuracy nor an analytic counterexample.

## 3. Constructed acceptance

`withExactAccumulation` constructs every outer rational prefix sum with zero outer
arithmetic radii. It is accepted for every correctly aligned family of valid local
interval evaluations. `referenceEvaluations` goes further: it constructs each
member's interval trace using the parent's reference evaluator and caller-selected
finite cell counts and per-node resolutions.

`reference_checked` targets acceptance for every external family with unique keys,
positive multiplicities, admitted horizontal coordinates and valid per-node log
scale/Taylor guards. It does not assume a passing family witness already exists.
No automatic scale selection, target-tolerance completeness, resource bound or
practical-runtime guarantee is attached to this finite construction.

At parameter one on [2,3], two records with different keys and multiplicities 2,3
produce the exact output 5 at zero error. Equal centers do not collapse the sum.
A rounded imaginary outer update of 1/10 is retained: the full family passes a
1/10 tolerance but fails 1/20 even when all local integrals are exact.

For the nonconstant parameter zero on [2,3], reuse the parent's one-cell example:

    V = 7921/16384,
    E_interval = 205905/262144.

Two records with multiplicities 2,3 therefore give

    A = 39605/16384,
    E_family = 1029525/262144 < 4.

The family passes tolerance 4 but fails 4/5, despite each separate interval
passing 4/5. The target is 5 log(3/2); its actual error can be far below this
conservative allowance. None of these parameters is asserted to be a zeta zero.

The empty external list has target zero and an exact empty-sum trace, with one
zero accumulator record. This is valid empty FINITE-sum evaluation, not a theorem
that a canonical finite-height head is empty or that an omitted divisor is zero.

## 4. Coordinate enclosures are a separate mathematical adapter

The rational checker evaluates the exact rational centers. For actual parameters
rho_j, separately proved bounds

    Re(rho_j), Re(center_j) <= beta_j,
    |rho_j-center_j| <= radius_j

allow the existing coupled-kernel sensitivity theorem to supply

    E_coordinates = sum_j m_j C_(a,b,beta_j) radius_j,
    C_(a,b,beta) = (b-a) log(b) max(a^(beta-1),b^(beta-1)).

`check_enclosed_sound` composes this derived same-family bound with the checked
family evaluation to return E_coordinates+E_family. It retains actual horizontal
coordinates and precisely the same multiplicities and indices. The coordinate
premises are NOT checked by the rational center evaluator, and this analytic
adapter's real-valued sensitivity allowance is not a newly rational-certified value.

No included-coordinate error was inside E_family, so adding it here does not
charge it twice. Wrong or missing records, changed multiplicities, or the entire
omitted tail cannot be represented as coordinate perturbations.

## 5. Scope and acceptance

The owner is GRWTSK.Analysis.Complex.RationalMellinFamily with a separate controls
module and an isolated root QuadraticIntervalRationalFamilyCore. The static target
inherits the exact committed uniform-quadrature target and all its predecessor
obligations. The earlier local nonuniform-partition proposal is not applied over
this different committed implementation at the same path.

Still required: pinned elaboration and repairs, exact public types and generated
structure/decision declarations, full inherited import/axiom reconciliation and
independent acceptance. Auxiliary Python models do not execute the Lean checker.
No parser, operational resource limit, code-generation/runtime qualification,
finite-zero database, canonical-divisor bijection, or rounded-node transfer is
provided. Large rational numerators and lists can still exceed practical resources.

This is the original interval kernel, NOT the distinct triangular transform. The
next adapter must identify its precise tent weights and normalization before any
consumer changes observable. Complete arithmetic-source normalization, actual
zero/multiplicity/height coverage, useful omitted-divisor tails and uniformly
strict prime margins remain independent. No conjecture or trust status is promoted.
