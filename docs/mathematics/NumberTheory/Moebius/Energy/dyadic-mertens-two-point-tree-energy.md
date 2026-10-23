# Zero-padded two-point Möbius tree energy

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ARITHMETIC_TREE_ENERGY_BOUND_OPEN`  
Owner: issue [#456](https://github.com/grwtsk/math/issues/456)  
Generic parent: issue [#437](https://github.com/grwtsk/math/issues/437) / draft PR [#449](https://github.com/grwtsk/math/pull/449)  
Canonical maximal-energy parent: issue [#410](https://github.com/grwtsk/math/issues/410) / draft PR [#411](https://github.com/grwtsk/math/pull/411)  
Endpoint witness: issue [#430](https://github.com/grwtsk/math/issues/430) / draft PR [#432](https://github.com/grwtsk/math/pull/432)

This increment specializes the generic finite aligned-dyadic tree comparison to the actual two-point Möbius prefixes used by the active RH-E02 maximal-energy criterion. It supplies an exact finite adapter and a named conditional arithmetic premise. It supplies no new cancellation estimate.

## 1. Exact stack binding

Direct parent:

```text
branch: research/rh-dyadic-block-maximal-437-20261021
revision: 1157501e4b52ec388bbcff8baed6563534c40c0b
tree: 31fb25be3979e6391909d82a397e29b031753a21
PR: #449
```

Candidate source commit:

```text
branch: research/rh-mobius-tree-energy-adapter-456-20261021
source commit: bb7a94b94a57f23744c0a161f3e39353548a998d
source tree: 06dffe8d7c239529dc1311446f054afaff5ec864
source path: GRWTSK/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean
source blob: d7543ec731b4ada01a010d202d5fccb3cd3a537c
```

The branch is stacked on the generic tree comparison, which is itself stacked directly on the canonical maximal-energy source. The connection-atlas and Chowla-scope branches are related documentation/formal-interface tracks but are not source dependencies here.

No existing module, public root, dependency pin, workflow, or executor is modified.

## 2. Terminal consumer

The exact RH-facing consumer remains

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy :
  SubpolynomialDyadicMaximalMertensTwoPointEnergy →
    _root_.RiemannHypothesis
```

from

```text
GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean
```

This theorem is conditional and RH-implying. It is not asserted to be RH-equivalent. The unresolved analytic/arithmetic premise remains an all-scale subpolynomial upper bound for the canonical maximal two-point prefix energy.

The current increment does not discharge that premise. It replaces the canonical maximal observable by a sufficient, richer finite tree-square observable while retaining every loss explicitly.

## 3. Actual finite source

At scale `j` and shift `h`, write

```text
Y(j) = 2^(j+1),
L(j,h) = Y(j)-h-1.
```

The repository's actual correlation prefix is

\[
C(h,N)=\sum_{0\le n<N}\mu(n+1)\mu(n+1+h),
\qquad 0\le N\le L(j,h).
\]

Define the literal zero-padded source

\[
a_{j,h}(n)=
\begin{cases}
\mu(n+1)\mu(n+1+h),&n<L(j,h),\\
0,&n\ge L(j,h).
\end{cases}
\]

The padding interval is the full dyadic interval

\[
0\le n<Y(j)=2^{j+1}.
\]

The source declarations are:

```lean
mertensTwoPointPaddedLength
paddedMertensTwoPointSequence
```

and the boundary controls are:

```lean
paddedMertensTwoPointSequence_of_lt
paddedMertensTwoPointSequence_of_length_le
mertensTwoPointPaddedLength_le_right
```

No source coefficient before the cutoff is replaced, averaged, absolutized, or reordered.

## 4. Exact prefix preservation

The first load-bearing theorem is

```lean
theorem finitePrefixSum_paddedMertensTwoPoint_eq
    {j h N : ℕ}
    (hN : N ≤ mertensTwoPointPaddedLength j h) :
    finitePrefixSum (paddedMertensTwoPointSequence j h) N =
      mertensTwoPointPrefix h N
```

The proof is a finite termwise identity. If `n<N` and `N≤L(j,h)`, then `n<L(j,h)`, so the padding conditional selects the actual Möbius product.

This step is exact. It uses no analytic continuation, limit, tail estimate, external certificate, or floating-point computation.

## 5. Canonical maximum to padded dyadic maximum

The canonical source maximum is

\[
M(j,h)=\max_{0\le N\le L(j,h)}|C(h,N)|.
\]

The generic dyadic maximum of the padded source is

\[
P(j,h)=\max_{0\le N\le Y(j)}
\left|\sum_{0\le n<N}a_{j,h}(n)\right|.
\]

The source proves

```lean
mertensTwoPointPrefixMax_le_dyadicPrefixMaximum
```

with conclusion

\[
M(j,h)\le P(j,h).
\]

Only domination is needed. The increment does not claim equality, although the literal zero padding suggests a later exact equality theorem may be available after a separate finite truncation proof.

The domination proof retains both maxima's zero prefix and the exact endpoint inequality

\[
L(j,h)\le Y(j).
\]

## 6. Per-shift tree comparison

The inherited generic theorem is

```lean
dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
```

at depth `m=j+1`. The generic depth factor is therefore

\[
m+1=(j+1)+1=j+2.
\]

Define

```lean
mertensTwoPointTreeSquareEnergy j h :=
  dyadicTreeSquareEnergy (j+1)
    (paddedMertensTwoPointSequence j h).
```

Then the source proves

```lean
mertensTwoPointPrefixMax_sq_le_treeSquareEnergy
```

or, mathematically,

\[
M(j,h)^2\le (j+2)\,T(j,h),
\]

where `T(j,h)` is the complete recursive aligned-dyadic tree-square energy of the padded source.

Every tree node contributes

\[
\left(\sum_{n\in I}a_{j,h}(n)\right)^2
\]

for an aligned dyadic block `I`. The sum occurs before squaring. No termwise absolute value is inserted.

## 7. Complete shift sum

Define

```lean
mertensTwoPointSummedTreeSquareEnergy j :=
  ∑ h ∈ Finset.Ico 1 (2^(j+1)),
    mertensTwoPointTreeSquareEnergy j h.
```

The shift range is exactly

\[
1\le h<2^{j+1}.
\]

The source proves nonnegativity of each tree energy and the complete sum, then proves

```lean
mertensTwoPointMaximalQuadraticEnergy_le_summedTreeSquareEnergy
```

with conclusion

\[
\sum_{1\le h<2^{j+1}}M(j,h)^2
\le
(j+2)\sum_{1\le h<2^{j+1}}T(j,h).
\]

The factor `j+2` is retained outside the shift sum. It is neither deleted nor silently described as negligible.

## 8. Finite and all-scale supplier interfaces

The finite budget is

```lean
def DyadicMertensTwoPointTreeEnergyBudget (j : ℕ) (B : ℝ) : Prop :=
  0 ≤ B ∧
    ((j : ℝ) + 2) * mertensTwoPointSummedTreeSquareEnergy j ≤
      B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ)
```

The source proves

```lean
dyadicMertensTwoPointMaximalEnergy_of_treeEnergyBudget
```

so this finite tree budget supplies the existing canonical maximal-energy budget with the same `B`.

The all-scale premise is

```lean
def SubpolynomialDyadicMertensTwoPointTreeEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧
    ∀ j : ℕ,
      DyadicMertensTwoPointTreeEnergyBudget j
        (A * (((2 ^ j : ℕ) : ℝ) ^ δ))
```

This is an explicit open arithmetic premise. The source proves only the conditional chain

```text
SubpolynomialDyadicMertensTwoPointTreeEnergy
  -> SubpolynomialDyadicMaximalMertensTwoPointEnergy
  -> SubpolynomialDyadicMertensShiftPacket
  -> RiemannHypothesis.
```

No witness for the first node is constructed.

## 9. Dependency graph

```text
actual Möbius products before L(j,h)
        |
        v
literal zero padding after L(j,h)
        |
        v
finitePrefixSum_paddedMertensTwoPoint_eq
        |
        v
M(j,h) <= padded dyadic prefix maximum
        |
        v
inherited generic dyadic-tree maximal theorem
        |
        v
M(j,h)^2 <= (j+2) T(j,h)
        |
        v
MaximalEnergy(j) <= (j+2) TreeSum(j)
        |
        v
TreeEnergyBudget(j,B)
        |
        v
DyadicMertensTwoPointMaximalEnergy(j,B)
        |
        v
conditional inherited RH chain
```

The new result occupies only the finite comparison edges.

## 10. Candidate comparison

Three candidates were considered for this increment.

| Candidate | Terminal relevance | Available premise | Formal risk | Speculative distance | Failure value |
|---|---:|---:|---:|---:|---:|
| Selected zero-padded source adapter | Directly supplies the canonical maximum interface | Generic tree theorem and actual prefix definitions already present | Low to medium | Zero analytic bridges | Exposes exact remaining arithmetic statistic |
| Explicit recursive-tree/double-sum identity | Improves readability and later arithmetic access | Generic recursive definition present | Medium indexing/reindexing work | Zero analytic bridges | Detects scale/block ownership errors |
| Direct subpolynomial tree-energy estimate | Would discharge the decisive supplier | No current all-scale arithmetic estimate | High analytic risk | Several open bridges | Would be decisive but is not bounded here |

The zero-padded adapter was selected because its conclusion directly inhabits the active maximal-energy interface and uses only exact finite data already present.

## 11. Proof classification

- Imported repository theorem: the generic finite dyadic-tree maximal comparison from PR #449.
- Imported repository definitions: the actual two-point prefix, canonical prefix maximum, maximal quadratic energy, and RH-facing conditional consumer from PR #411 and its stack.
- New exact finite algebra: cutoff preservation, partial-supremum domination, square monotonicity, finite shift summation, and budget composition.
- Formal wrappers: finite and all-scale tree-energy budget propositions.
- Conditional reduction: tree-energy supplier to maximal energy and RH.
- Finite computation: none used as proof.
- Analytic continuation, limits, tails, interval enclosures, external certificates, and numerical zero data: none used.

## 12. Positivity classification

The only positivity used is:

```text
mertensTwoPointPrefixMax j h >= 0,
dyadic tree square energy >= 0,
finite sum of tree square energies >= 0,
B >= 0 in a budget.
```

These are nonnegativity statements for finite real scalars and finite sums of squares.

The increment does not prove:

- strict positivity at every shift;
- positive semidefiniteness of a new kernel;
- positivity of a measure;
- trace or state positivity;
- averaged or asymptotic arithmetic positivity;
- finite-height Weil positivity;
- global RH positivity.

The positive tree observable is useful only because the finite comparison theorem transports it into the exact canonical maximum required by the next consumer.

## 13. Failure and information boundaries

The theorem does not assert that the recursive tree energy is small. A tree can retain every local fluctuation and consequently be much larger than one terminal block.

The theorem does not permit:

- deleting the `j+2` depth factor;
- replacing the half-open shift range by a fixed shift set;
- padding before the exact admissible cutoff;
- retaining nonzero coefficients after the cutoff;
- squaring coefficients before summing within a block;
- using only the root block;
- treating source-level proof text as elaboration;
- treating the conditional RH theorem as an RH proof.

The endpoint-loss witness remains consistent with this result: the tree observable deliberately retains intermediate information that the terminal endpoint loses.

## 14. Provenance

```text
Mathlib finite sums, real order, and partial suprema
  --imported by--> generic and source-specific finite proofs

PR #411 canonical Möbius maximum and RH consumer
  --consumed by--> source-specific adapter

PR #449 generic aligned-dyadic tree comparison
  --specialized by--> this increment

PR #432 terminal-information-loss witness
  --motivates--> retaining a richer local observable

grwtsk contributors mathematical direction
  --directed--> dependency and theorem selection

OpenAI ChatGPT formalization assistance
  --implemented--> source draft, note, and passive target
```

No scalar contributor weights are assigned.

## 15. Evidence states

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

No Lean/Lake/native parsing or elaboration was run. The `#print axioms` commands are unexecuted source requests. Source-file presence and exact Git binding are not kernel evidence.

## 16. RH consequence

Classification: **conditional finite comparison supplier**.

The increment supplies a reusable arithmetic interface and a conditional path to the active RH consumer. It does not discharge the all-scale tree-energy premise and therefore proves no new zero-location theorem.

## 17. Exact next obstruction

The next bounded theorem is:

> Prove that the recursive `dyadicTreeSquareEnergy m a` is exactly the double sum of `alignedDyadicBlockSum a r q ^ 2` over every `0<=r<=m` and `0<=q<2^(m-r)`, then express the padded two-point tree sum in those explicit scale/block coordinates.

After that identity, the decisive arithmetic obstruction is an all-scale subpolynomial bound for the complete summed padded block-square energy, including the explicit `j+2` cost.