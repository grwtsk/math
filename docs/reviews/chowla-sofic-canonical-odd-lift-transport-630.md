# Canonical finite odd-lifted Liouville shift/character transport

Research date: **2026-10-22**  
Owners: `grwtsk/math#630` (finite Chowla–sofic pattern interface), `#441` (arithmetic shift/arity quantifiers).  
Direct inspected parent research head: `4995e170bcfb0ce989bdcbd2090ac009156b842f`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ODD_RESIDUAL_ESTIMATE_OPEN**.

## 1. The exact missing finite seam

The previous dyadic recurrence source
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean`
derived a genuine all-order arithmetic recurrence but indexed its
lifted products using the ORIGINAL coordinate subtype
`{h : Nat // h ∈ H}`.

The canonical finite Walsh and arithmetic source interfaces use
a DIFFERENT coordinate subtype, determined by the true shift set
`H'={2h+1 | h∈H}`. Its type is
`{j : Nat // j ∈ H'}`.

Identifying these types by cardinality alone is insufficient
to move each ordered product and to sum squares of ALL
nonempty subset correlations. This increment constructs the
missing genuine coordinate, character-subset and
summation equivalences in a separate Lean source:

`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean`

**Exact source blob:** `f0b7812e767098bf99fb9a885da9b5e05933c017`.

The result is an algebraic finite transport. It does not
construct or assume an arithmetic cancellation estimate.

## 2. Actual finite shift set and coordinate equivalence

Define

```text
oddLiftOffsets(H) := Finset.image (fun h => 2*h+1) H.
```

The function `h ↦ 2h+1` is INJECTIVE on `Nat`, so

```text
|oddLiftOffsets(H)| = |H|.
```

The source drafts the explicit equivalence

```text
oddLiftSubtypeEquiv(H) :
  {h : Nat // h∈H} ≃
  {j : Nat // j∈oddLiftOffsets(H)}
```

whose forward map sends `h` to `2h+1`.
Surjectivity is proved by the actual witness in
`Finset.mem_image`; injectivity is the elementary
linear arithmetic fact `2a+1=2b+1 ⇒ a=b`.

It then constructs the subset bijection

```text
oddLiftSubset(H) :
  Finset ({h // h∈H}) →
  Finset ({j // j∈oddLiftOffsets(H)})
```

using pinned Mathlib's `Equiv.finsetCongr`.
This preserves subset cardinality and maps the empty
subset to the empty subset. More importantly, it
provides the inverse and exact nonempty subset
membership needed to reindex the **complete**
Walsh-character energy.

No duplicate offset or character can be inserted,
even when H is empty.

## 3. Moment equality and complete energy identity

For any M≥0, source root `n` and selected
subset `S⊆H`, the raw lifted factor is

```text
lambda(n+2h+2) = lambda(n+(2h+1)+1).
```

Thus the new source `oddLiftedProduct_eq_canonical`
reindexes the WHOLE finite product across selected
coordinates using `Finset.prod_map` and the exact
shift identity. No absolute value is applied inside
the signed source product.

Summing over precisely `n=0,...,2M-1` and dividing
by `2M` gives

```text
oddLiftedMean(M,H,S)
  = liouvilleSubsetMean(
      2M, oddLiftOffsets(H), oddLiftSubset(H,S)).
```

This is an identity over rationals for all M,
including the purely algebraic `M=0` convention.
A probabilistic interpretation still requires
positive sample cardinality.

The source theorem
`oddLiftedAllOrderEnergy_eq_canonical`
reindexes the ENTIRE sum across all nonempty
subsets, using the Mathlib `Finset.sum_equiv`
interface on the lifted subset equivalence:

```text
oddLiftedAllOrderEnergy(M,H)
    = liouvilleAllOrderEnergy(2M,oddLiftOffsets(H)).
```

Both sides count exactly `2^|H|−1` nonempty
Walsh characters. This is stronger than an equality
of one selected moment, total coordinate counts,
or a comparison losing unknown multiplicities.

## 4. Canonical all-order energy and cyclic TV return

Combining the exact identity with the previous
sharp convexity estimate supplies one useful
inequality with the canonical arithmetic output:

```text
for M>0,

E_Liouville(2M,oddLiftOffsets(H))
  <= (E_Liouville(M,H)+E_oddResidual(M,H))/2.
```

The odd residual is

```text
E_oddResidual(M,H) =
  sum_(nonempty S⊆H)
    ((1/M) sum_(m=0)^(M-1)
       prod_(h∈S) lambda(2m+2h+3))².
```

It is an OPEN arithmetic supplier and may be as
large as the original energy. The factor 1/2
is exact but is not an unconditional contraction.

The final consumer
`canonicalOddLiftCyclicTV_le_source_residual`
instantiates the actual Liouville cyclic-window
total-variation theorem on the **canonical
lifted shift set** `H'=oddLiftOffsets(H)`:

```text
M>0 and max(H') < 2M
   ==>
TV(P_cyclic(lambda(1..2M),H'),U_H')
  <= max(H')/(2M)
     + 0.5*sqrt(
         (E_Liouville(M,H)+E_oddResidual(M,H))/2).
```

The strict collar condition is kept and refers
to the TRUE lifted maximum shift, not to
`max(H)`. No pointwise or summed-square
arithmetic estimate is supplied to force
either energy term toward zero.

## 5. Sharp and hostile finite cases

- **Injective shift map:** H={0,1,3} gives
  H'={1,3,7}; no duplicate offsets or lost
  powerset subsets
- **Empty shift set:** H=∅ maps to ∅, with
  no nonempty Walsh-character energy; no
  artificial odd collar or error term
- **Zero root sample:** M=0 gives exact
  rational product-mean equality under the
  denominator-zero convention, but is not
  accepted as a probability sample or a
  cyclic theorem instance
- **Sharp residual:** M=1,H={0}, H'={1}
  has `lambda(1)=1`,
  `lambda(2)=lambda(3)=-1`. Therefore
  source, odd residual and canonical lifted
  energies all equal 1. The energy inequality
  is attained with equality, and the residual
  is not negligible
- **Overlarge lifted shift:** the cyclic
  theorem may be used ONLY when
  `max(H')<2M`. Large offsets violating
  that condition are not silently truncated
  or treated as a successful approximation

The normalization, shift-map bijection,
full nonempty subset count and residual
penalty are all necessary; relaxing them
would create a false theorem.

## 6. Source inventory and evidence state

New definitions (three):

```text
oddLiftOffsets
oddLiftSubtypeEquiv
oddLiftSubset
```

New proposed theorem declarations (eleven):

```text
oddLift_injective
oddLiftOffsets_card
oddLiftSubtypeEquiv_val
oddLiftSubset_card
oddLiftSubset_empty
oddLiftSubset_eq_empty_iff
oddLiftedProduct_eq_canonical
oddLiftedMean_eq_canonical
oddLiftedAllOrderEnergy_eq_canonical
canonicalOddLiftEnergy_le_source_residual
canonicalOddLiftCyclicTV_le_source_residual
```

Passive source-locked verification target:

`verification/liouville-odd-lift-canonical-transport-630-v0.1.toml`.

This targets **12 local modules, 101 theorem heads,
44 definitions**, including all eleven predecessor
modules and their unchanged source blobs. It
requires actual Lean 4.33.0 elaboration,
exact theorem types, full transitive axiom
inspection and an independent clean-checkout
replay before accepting ANY theorem from
this dependency path.

Independent arithmetic calculations, using
`lambda(n)=(-1)^Omega(n)`, tested twelve
shift families and all `M=1,...,64`:

```text
768 finite shift/sample configurations
5824 selected subset/product/mean comparisons
768 complete nonempty energy equalities and bounds
737 admissible canonical cyclic total-variation checks
768 empty subset cases
0 discrepancies
```

The numerically evaluated cyclic inequalities used
finite floating-point arithmetic after exact-integer
moment calculation; no numerical result is presented
as infinite analytic evidence or Lean proof acceptance.

The original eleven-module source draft remains
separately auditable. No root import, dependency
pin, toolchain, executable CI configuration or
external provider source was changed.

**Remaining arithmetic frontier:** obtain genuine
uniform all-order ordinary Liouville energy
bounds for both the smaller-scale source and
the odd-affine residual, or another independently
proved cancellation mechanism. The fixed-binary
OpenAI Result 007 work does not supply these
higher-order growing-window estimates.

**Final evidence:** `SOURCE_DRAFT / NOT_RUN /
NOT_KERNEL_AUDITED / ODD_RESIDUAL_CANCELLATION_OPEN /
NO_ARITHMETIC_CONTRACTION / NO_GUE_RH_CLAIM`.

## 7. Signed interaction sharpened after canonical transport

**Follow-on research date: 2026-10-22.** The sharp
one-sided convexity estimate from section 4 is now
supplemented by a **source-drafted exact equality**
that retains the signed source/odd-residual interaction.

New separate file
`GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean`
(blob `c7b4feffad2c7f7fdfc06ba79e0f9295ad831d90`)
defines
`X(M,H)=sum_(∅≠S⊆H) (-1)^|S| C_M(S) R_M(S)`
and source-drafts

```text
4 E_lambda(2M,oddLiftOffsets H)
  = E_lambda(M,H) + E_oddResidual(M,H) + 2 X(M,H).
```

The previously proved source-draft convexity inequality
remains valid but can be strictly weaker. At
`M=2,H={1},H'={3}`, both marginal energies equal
one and `X=-1`, so canonical lifted energy is zero,
even with the strict cyclic collar satisfied.

This provides an uninhabited, explicit signed
mixed-budget supplier. It does **not** prove that
this budget tends to zero for growing arithmetic
shift sets, and hence does not solve Chowla.

The new independent thirteen-module verification
target `verification/liouville-dyadic-signed-pairing-630-v0.1.toml`
selects 108 theorem/46 definition heads while
preserving this twelve-module target unchanged.
Full research note:
`docs/reviews/chowla-sofic-dyadic-signed-pairing-630.md`.

**STATUS:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SIGNED_MIXED_CANCELLATION_OPEN / NO_GUE_RH_EDGE.
