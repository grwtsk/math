# From the complete square-interval correction to actual prime witnesses

Mathematical owner: #261. Source suppliers: #189/#256. Finite-budget consumer:
#209. Counting and target definitions: #258/#264. Existing witness bridge: #265.

This is a source-only integration, not a replay or acceptance report. It is
based on #265 at `fd4e098e1635718de8e4da25c8b18430e0509d32`, including #264 at
`22779757b74805f887509d353b65322ac9c03b1a`. Five mathematical owner files from
#256 at `7a73b34707889205a8b9af7bdd01e12383bc1679` are included with identical
paths and Git blobs. They are the finite square budget, quadratic endpoints,
power occupancy, higher prime powers, and higher-prime-power source owners.
The complex kernel is not needed for this arithmetic integration and is not
imported. No existing branch is changed by constructing this separate draft.

All imported and new declarations remain **NOT_RUN / NOT_KERNEL_AUDITED**.
The following arguments describe the mathematics and the Lean source candidates,
not what a compiler or an independent reviewer has accepted. Mathlib remains
pinned to `db584cd6d46c92f209a44c0f1c829460d327499d`.

## 1. Reconcile the source, not the labels

Write Psi_n for #256's actual `QuadraticIntervals.squareIncrement n`, and
Theta_n for its `HigherPrimePowerSource.squarePrimeIncrement n`. The latter is
independently the difference of Mathlib's theta at the integer squares.

There are two independently constructed proper-power corrections:

    P_pair(n) = sum_(k=2)^K_n sum_(prime p, n^2<p^k<=(n+1)^2) log p,
    P_integer(a,b) = sum_(a<m<=b, not Prime m) Lambda(m),
    K_n = floor(2 log(n+1)/log 2).

The first belongs to #256, with complete exponent coverage and prime-base
uniqueness. The second belongs to #265, with the exact Mangoldt support theorem.
They must not be identified by their names, numerical agreement or broad purpose.

For n>=1 the two existing source decompositions, after only cast normalization,
are

    Psi_n = Theta_n + P_pair(n),
    Psi_n = Theta_n + P_integer(n^2,(n+1)^2).

Subtracting the same Theta_n derives their equality. `proper_mass_eq_higher_mass`
contains this argument; neither correction is redefined as a discrepancy. The
covering-cutoff theorem also transfers: any K>=K_n gives exactly the same mass.
The condition K>=K_n cannot be removed to make an arbitrary prefix complete.

The upper square is still included in both corrections. If n+1 is prime, its
contribution log(n+1) remains charged. In particular the logarithmic weight is
that of the prime base, not of its square.

## 2. Supply the correction bound already required by the count consumer

The sole new definition is the finite scalar budget

    U_n = 2 log(n+1) sum_(k=2)^K_n 1/k.

The inherited occupancy theorem and the identity above give

    0 <= P_integer(n^2,(n+1)^2) <= U_n
      <= 2 log(n+1) log K_n,    n>=1.

The harmonic sum is retained instead of immediately replacing it by log K_n.
This is a valid explicit upper bound; no optimality or novelty is asserted.
The logarithmic envelope is useful for subsequent growth estimates, but the
finite consumer can use the smaller harmonic quantity itself.

This removes the caller-supplied correction inequality from #265's margin
consumer. It does not remove or prove the approximation or strict-margin
hypotheses.

## 3. The terminal object is the existing actual prime count

#264's `ConfigurationCounts.squareCount n` counts exactly the natural primes
p satisfying n^2<p<(n+1)^2. No new count or terminal conjecture is defined here.
#265 proves the required nonprime-square endpoint conversion and positive-log
weight equivalence. Their specialization is

    Theta_n > 0  iff  squareCount n > 0.

Now assume, for the same stage n>=1 and actual source,

    |Psi_n-A_n| <= epsilon_n,
    A_n-epsilon_n-U_n > 0.

Then

    Theta_n = Psi_n-P_integer(n^2,(n+1)^2)
            >= A_n-epsilon_n-U_n > 0.

The new consumer returns `squareCount n > 0`; the existing count theorem then
returns an actual prime with both strict endpoints. A positive weighted
prime-power reading alone is not the conclusion of this theorem.

A second consumer permits two independently proved errors meeting at one exact
intermediate value M_n:

    |Psi_n-M_n| <= e_source,
    |M_n-A_n| <= e_eval.

The total is e_source+e_eval by the triangle inequality. Neither error is
assumed zero; a missing source, tail or numerical enclosure is an absent premise.
This theorem does not construct the intermediate value or an evaluation method.

For the global target the existing `LegendreThrough N` prefix is combined with
both hypotheses for EVERY n>N. These are all-input quantifiers, not a sampled
family, an average, or a stage-dependent choice of the starting cutoff.
`legendre_of_prefix_and_budget_margins` is a conditional implication to the
already defined Landau proposition, not a proof of that proposition.

## 4. Distinguish a finite exception budget from zero exceptions

Let S be a finite set of positive square stages and define the actual bad set

    B = {n in S : squareCount n = 0}.

Assume H<=2n+1 and U_n<=U throughout S, with H-U>=0. On B the prime-only mass is
zero, so

    e_n = Psi_n-(2n+1) = P_pair(n)-(2n+1) <= -(H-U).

Using the inherited finite square-budget theorem yields

    #B (H-U)^2 <= sum_(n in S) e_n^2.

Unlike an abstract bad-set predicate, this B is defined by the actual prime
count. The finite no-exception theorem then has the stronger hypotheses

    H-U>0,
    sum_(n in S) e_n^2 < (H-U)^2.

If B were nonempty, its integer cardinality would be at least one, contradicting
that strict inequality. Hence every stage in S has a prime witness. Equality
at the threshold is insufficient: one zero-output scalar example consumes
exactly one exception's squared cost. The explicit control is algebraic, not a
claim that a prime-free positive square interval has been found.

On a dyadic block, an o(N^3) budget with a margin of order N would give only
o(N) exceptions. To force none by this argument requires a bound below the
single-exception threshold, of order N^2, at that finite block. Neither error
estimate is established here. No asymptotic transfer theorem is newly supplied.

## 5. Integration scope and remaining obligations

The new owner is `GRWTSK.NumberTheory.Chebyshev.SquarePrimeBudget`; the isolated
root is `GRWTSK.Interfaces.LegendreSquareBudget`. The static target is
`docs/verification/Interfaces/LegendreSquareBudget/legendre-square-budget-v0.1.toml`. It binds the source snapshots
and every selected owner/root/control module, and requires all public elaborated
types plus the full transitive dependency/trust closure. Source hashes and
required names are not elaborated signatures or replay evidence.

The existing #264/#265 source files and targets are inherited unchanged. Five
selected #256 owners are reused byte-for-byte, not recreated under aliases or
moved into a new taxonomy. The minimal imported slice excludes #256's complex
kernel, old import roots, documentation and target files. The new target does
not claim to replay or accept those unselected modules.

Still required: exact-head elaboration and any repairs, independent transitive
trust review, complete replay of selected controls, and any actual analytic or
numerical approximation supplier. A zero-based supplier must still identify
the complete source normalization and every zero/multiplicity/enclosure/tail
term before it can satisfy an approximation hypothesis here. An integral tail
for a different Mellin representation is not an omitted-zero-divisor tail.
Source-specific rounding or unsmoothing errors cannot be omitted.

The harmonic correction bound is now connected to the actual count consumer
at source level. Complete approximation error and uniform strict margins remain
separate obligations. No RH assumption is needed by this finite arithmetic
interface, and no RH or unconditional Legendre conclusion is produced.
