# Exact dyadic all-order Liouville recurrence with an independently exposed odd-root energy

Research date: **2026-10-22**  
Owners: `grwtsk/math#630` (finite Chowla–sofic Walsh path), `#441` (arithmetic order and shift quantifiers).  
Direct source parent before this increment: `e85c3fe10cac688f782ff52a95fe9f67d5870687`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ODD_RESIDUAL_CANCELLATION_OPEN**.

## 1. Bounded mathematical mission

The previous source
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean`
identified ALL ordinary finite Liouville subset correlations with the
exact finite Boolean Walsh coefficients. This new arithmetic result asks
what complete multiplicativity **actually supplies** when the selected
shift set is lifted dyadically.

The new source is
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean`,
at blob `0c8813fd24fb5be3bcc0ea0ded8ab79d231505c2`.

It directly imports the previous actual Liouville/Walsh source,
not the pinned external OpenAI Result 007 fixed-two-point solution.
The formal source is independently selectable with the ten earlier
modules, remaining excluded from the public `GRWTSK.lean` root.

The result is a finite identity plus a bounded two-supplier
comparison. No analytic cancellation is imported or asserted.

## 2. Exact shift indexing and the two root parities

Let `H : Finset Nat` be the selected set of nonnegative offsets,
and let `S : Finset {h : Nat // h∈H}` be ANY selected coordinate
subset, including the empty set. Write

```text
B_M(S) = (1/M) sum_(m=0)^(M-1)
           prod_(h∈S) lambda(m+h+1).

L_(2M)(S) = (1/(2M)) sum_(n=0)^(2M-1)
           prod_(h∈S) lambda(n+2h+2).

R_M(S) = (1/M) sum_(m=0)^(M-1)
           prod_(h∈S) lambda(2m+2h+3).
```

The lifted offset is **`2h+1`** because the shifted original
positive-index source evaluates `lambda(n+(2h+1)+1)`.

Complete multiplicativity of the **actual** Mathlib Liouville
function gives, for EVERY `h∈S`,

```text
lambda(2m+2h+2) = -lambda(m+h+1).
```

Therefore, at every even root `n=2m`,

```text
prod_(h∈S) lambda(2m+2h+2)
  = (-1)^|S| * prod_(h∈S) lambda(m+h+1).
```

At every odd root `n=2m+1`, however, the argument
`2m+2h+3` is odd and the exact product remains the
separately named residual. It must **NOT** be set to zero
or identified with the even branch.

The finite even/odd reindexing is exact:
`n=0,...,2M-1` equals the disjoint pairs
`2m,2m+1` for `m=0,...,M-1`. No terminal root,
coefficient, or factor is dropped.

For `M>0`, the full identity is

```text
L_(2M)(S) = ((-1)^|S| B_M(S) + R_M(S))/2.
```

When `S=empty`, all three normalized means are exactly 1
for `M>0`. The empty subset is intentionally excluded from
the squared energies, not falsely claimed to cancel.

When `M=0`, the rational finite-sum convention is zero.
No empirical distribution or probabilistic normalization at
zero is claimed.

## 3. New complete nonempty-character energy comparison

For the same selected coordinate subtype of H, define

```text
E_lifted(M,H) =
    sum_(nonempty S⊆H) L_(2M)(S)^2.

E_source(M,H) =
    sum_(nonempty S⊆H) B_M(S)^2
    = liouvilleAllOrderEnergy(M,H).

E_residual(M,H) =
    sum_(nonempty S⊆H) R_M(S)^2.
```

Each sum contains **exactly `2^|H|-1` terms**.
For any rationals a,b,

```text
((a+b)/2)^2 <= (a²+b²)/2,
```

because the gap is `(a-b)²/4 >= 0`.
With `a=(-1)^|S| B_M(S)`, its square is exactly
`B_M(S)^2`. Sum this inequality over EVERY nonempty
subset, retaining source/residual multiplicities:

```text
E_lifted(M,H)
   <= (E_source(M,H) + E_residual(M,H))/2.
```

This is **sharp**, not a proof of contraction. For
`H={0}`, `S={0}`, `M=1`:
`lambda(1)=+1`, `lambda(2)=-1`,
`lambda(3)=-1`. Thus `B=+1`,
`R=-1` and `L=-1`. All three energies equal 1,
so the inequality is attained with equality.
The odd residual need not be small.

The source also drafts a conditional implication

```text
E_source(M,H) <= epsilon
and E_residual(M,H) <= delta
    ==> E_lifted(M,H) <= (epsilon+delta)/2.
```

The two hypotheses are **separate**. No arithmetic supplier
inhabits either one in this increment.

## 4. The actual next typed obstruction

The new `oddLiftedAllOrderEnergy(M,H)` is indexed by the
**original subtype of H**, with shift evaluations `2h+1`.

The existing canonical `liouvilleAllOrderEnergy(2M,H')`
instead uses the subtype of a supplied finite set `H'`.
To identify them for `H'={2h+1 | h∈H}`, a distinct
finite injective image/subtype equivalence is required,
including an explicit bijection on all subsets and
preservation of their cardinalities and coefficients.

**This reindexing theorem has NOT been source-drafted yet.**
The present source is a correct finite algebraic recurrence
by definition of its lifted coordinates, but does not claim
a kernel-proved direct equation between the two different
finite subtype types.

Beyond such reindexing, a truly useful growing-window
Chowla theorem must bound the **odd residual** and smaller
arithmetic source energy, with the required all-orders,
shift ranges and uniformity at the ordinary averaging
scale. The literature's fixed-binary Result 007 does
not by itself provide those estimates.

No recursive contraction follows merely from complete
multiplicativity. In particular, neither a dyadic
fixed-point argument nor a hypothetical entropy or
sofic analogy proves the higher-order arithmetic input.

## 5. Exact proof declarations, scope and independent checks

New source definitions (eight):

```text
ordinaryProductTerm
oddLiftedProductTerm
oddResidualProductTerm
oddLiftedMean
oddResidualMean
OddResidualEnvelope
oddLiftedAllOrderEnergy
oddResidualAllOrderEnergy
```

New source theorem heads (ten):

```text
oddLiftedProduct_evenRoot
oddLiftedProduct_oddRoot
rational_evenOdd_sum
oddLifted_sum_split
oddLiftedMean_half_source_plus_residual
oddLiftedMean_abs_le_source_add_residual
oddLiftedMean_le_of_two_suppliers
oddLiftedMean_sq_le_source_residual_average
oddLiftedAllOrderEnergy_le_source_add_residual
oddLiftedAllOrderEnergy_le_of_two_bounds
```

The passive independent target
`verification/liouville-odd-lift-dyadic-recurrence-630-v0.1.toml`
has **eleven selected modules, 90 theorem heads and
41 definition heads**, preserving the previous 10-module
actual Liouville/Walsh target and its exact source SHA.

Independent exact-integer checking used 12 shift families
(including `H=empty`) and `M=1,...,64`:

- 768 complete shift/sample configurations;
- 5,824 raw subset products, normalized recurrences
  and absolute-value estimates;
- 768 full nonempty energy comparisons;
- 768 empty-subset normalization checks;
- 4,703 cases in which an odd-residual nonempty
  coefficient was **nonzero**.

There were **zero** finite discrepancies. These are
non-kernel checks of the written arithmetic identities
and do not validate Lean proof terms or infinite
analytic cancellation.

The next acceptance process must actually elaborate the
entire selected dependency chain under pinned Lean 4.33.0
and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`,
print all exact theorem types, audit every transitive axiom
and independently replay the bound sources. No external
provider-patch execution, CI qualification, public root
import or merge has occurred.

**Evidence: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
NO_ODD_RESIDUAL_DECAY / NO_DYADIC_CONTRACTION /
CANONICAL_SHIFT_IMAGE_TRANSPORT_OPEN / ALL_ORDER_CHOWLA_OPEN /
GUE_AND_RH_NONCLAIMS.**


## 6. Subsequent exact shift-image and full subset transport

**Follow-on source-only increment, 2026-10-22.**
The finite type/character seam described as OPEN
in section 4 has now been **source-drafted**, while
still awaiting actual Lean compilation and trust replay.

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean`
(blob `f0b7812e767098bf99fb9a885da9b5e05933c017`)
constructs

```text
H' = Finset.image (fun h => 2*h+1) H,

{h // h∈H} ≃ {j // j∈H'},

Finset ({h // h∈H}) ≃ Finset ({j // j∈H'}).
```

The lift is injective, preserves all selected
subset cardinalities and the empty/nonempty
Walsh-character distinction, and reindexes
each signed Liouville source product. It
source-drafts the exact canonical identity

```text
oddLiftedAllOrderEnergy(M,H)
 = liouvilleAllOrderEnergy(2M,H').
```

It consequently converts the previous inequality
into the fully canonical arithmetic supplier result

```text
E_lambda(2M,H')
 <= [E_lambda(M,H)+E_oddResidual(M,H)]/2
```

for M>0, with no loss of shift identities,
sum terms or factors. The canonical cyclic
TV consumer keeps its strict lifted-collar
hypothesis `max(H')<2M`.

Its own passive 12-module target,
`verification/liouville-odd-lift-canonical-transport-630-v0.1.toml`,
inventories 101 theorem and 44 definition
heads. Full review:
`docs/reviews/chowla-sofic-canonical-odd-lift-transport-630.md`.

**Only the FINITE TYPE seam advanced**: the
genuinely arithmetic higher-order odd-residual
cancellation supplier is still open.
No Lean/Lake/kernel/replay was performed;
the previous sharp M=1,H={0} counterexample
still demonstrates noncontraction.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CANONICAL_SOURCE_TRANSPORT_DRAFTED /
ODD_RESIDUAL_CANCELLATION_OPEN.**

## 7. Exact signed dyadic covariance rather than unsigned convexity alone

A new, independent downstream source
`LiouvilleDyadicSignedPairing.lean`
(blob `c7b4feffad2c7f7fdfc06ba79e0f9295ad831d90`)
retains all Walsh subset indices and the
original dyadic parity `(-1)^|S|`. It source-drafts

```text
4 E_lifted =
    E_source + E_oddResidual
      + 2 sum_(nonempty S⊆H) (-1)^|S| C_S R_S.
```

This is an exact refinement of the one-sided
convexity bound from section 3. At `M=2,H={1}`
the two component energies equal one and their
signed pairing equals minus one, making the
lifted energy zero. At `M=1,H={0}`
the signed pairing is plus one and the
lifted energy equals one.

The mixed pairing may be negative; it is not
an independently nonnegative energy. Its
conditional budget must be separately proved.
An exact antipodal-pattern collision formula
is explained in the new mathematical note at
`docs/reviews/chowla-sofic-dyadic-signed-pairing-630.md`
but remains PAPER ONLY, not a Lean theorem.

The separate passive thirteen-module target
has 108 theorem and 46 definition declarations,
all awaiting clean source/kernel replay.

**STATUS:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SIGNED_MIXED_ESTIMATE_OPEN / NO_ARITHMETIC_CANCELLATION.
