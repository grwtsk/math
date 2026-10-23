# Chowla scope separation

Status: `LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`  
Owner: issue [#441](https://github.com/grwtsk/math/issues/441)  
Parent atlas: [#439](https://github.com/grwtsk/math/issues/439) / draft PR [#446](https://github.com/grwtsk/math/pull/446)  
Endpoint witness: [#430](https://github.com/grwtsk/math/issues/430) / draft PR [#432](https://github.com/grwtsk/math/pull/432)  
Finite dyadic comparison: [#433](https://github.com/grwtsk/math/issues/433) / draft PR [#436](https://github.com/grwtsk/math/pull/436)  
RH-facing maximal observable: [#410](https://github.com/grwtsk/math/issues/410) / draft PR [#411](https://github.com/grwtsk/math/pull/411)

This note records one bounded theorem layer separating five distinct claims:

1. one terminal value at one horizon;
2. every prefix below one horizon;
3. one fixed parameter at every horizon;
4. one budget uniform over a parameter range growing with the horizon;
5. the complete sum of maximal energies over that range.

The layer proves exact finite transports among claims 2, 4, and 5. It also preserves two counterexamples showing that claims 1 and 3 cannot be promoted by logic alone.

No new Chowla cancellation estimate is asserted.

## 1. Source and stack binding

Direct parent:

```text
branch: research/mobius-endpoint-connection-atlas-439-20261021
revision: 4af9bb2ba38318e9fe9be838e11cef06425e59bf
tree: 3190e620281162b8ebf2bd3f82ea0a004581e10f
```

Initial theorem commit:

```text
branch: research/mobius-chowla-scope-separation-441-20261021
revision: 303d36e0bf8f972d8e599e5286bd9169c8570ab2
tree: 6d9c250f93adfeba368a48bbb2bb3be86f204173
source path: GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean
source blob: 10e26d75c147317829e5f4f0c4007ebe23745d3d
```

The implementation is additive. It does not modify the parent atlas, endpoint witness, maximal-prefix definition, dependency pins, workflows, or public root.

## 2. Generic growing-family interface

Let `ι` index a family of real sequences

\[
a_i:\mathbb N\to\mathbb R.
\]

Let

\[
A(T,i)
\]

be an activity predicate saying that family member `i` belongs to the parameter range at horizon `T`.

The source defines:

```lean
FamilyAllPrefixBound a active B
```

with exact meaning

\[
\forall T,i,N,
A(T,i)\land N\le T
\Longrightarrow
\left|\sum_{n<N}a_i(n)\right|\le B(T).
\]

It separately defines:

```lean
FamilyPrefixMaxBound a active B
```

with exact meaning

\[
\forall T,i,
A(T,i)
\Longrightarrow
\max_{N\le T}
\left|\sum_{n<N}a_i(n)\right|\le B(T).
\]

The maximum includes the zero prefix, using the inherited `partialSups` convention.

## 3. Exact finite equivalence

The central theorem is:

```lean
familyPrefixMaxBound_iff_allPrefixBound
```

It proves

\[
\operatorname{FamilyPrefixMaxBound}(a,A,B)
\iff
\operatorname{FamilyAllPrefixBound}(a,A,B).
\]

This equivalence is finite and exact. It uses neither asymptotics nor a limiting maximal theorem.

The forward direction uses inclusion of each `N ≤ T` in the finite maximum. The reverse direction uses `partialSups_le_iff` to show that bounding every included prefix bounds the exact finite maximum.

No monotonicity of `B` is needed because both sides use the same horizon budget `B(T)`.

## 4. Two-point Möbius specialization

For the actual source

\[
a_h(n)=\mu(n+1)\mu(n+1+h),
\]

the active positive-shift range is

\[
1\le h\le R(T).
\]

The source defines:

```lean
growingShiftActive
GrowingShiftTwoPointAllPrefixBound
```

and proves:

```lean
growingShiftTwoPointMaximalBound_iff_allPrefixBound
```

Therefore the following two propositions are exactly equivalent for the same range and budget:

```text
for every active shift and every N ≤ T,
  |C(h,N)| ≤ B(T)
```

and

```text
for every active shift,
  max_(N≤T) |C(h,N)| ≤ B(T).
```

This theorem does not construct the bound `B`. It merely identifies the complete all-prefix statement with the canonical finite maximum statement.

## 5. Complete summed energy and its exact cost

The source defines the literal cardinality budget

```lean
shiftCardinalitySquareBudget range B T
```

as

\[
\#\{h:1\le h\le R(T)\}\,B(T)^2.
\]

It then proves:

```lean
summedShiftMaximalEnergyBound_of_uniformMaximal
```

Under

```text
0 ≤ B(T)
```

and a single maximal bound uniform over every active shift, one obtains

\[
\sum_{1\le h\le R(T)}
\left(\max_{N\le T}|C(h,N)|\right)^2
\le
\#\{1\le h\le R(T)\}\,B(T)^2.
\]

The proof retains the complete shift range and pays its exact cardinality. There is no claim that this cardinality-weighted budget is subpolynomial.

The companion theorem

```lean
summedShiftMaximalEnergyBound_of_allPrefix
```

composes the exact all-prefix/maximal equivalence with the same finite sum estimate.

### Relation to the RH-facing consumer

The canonical consumer in PR #411 uses a dyadic range whose size is proportional to the right endpoint and permits a corresponding endpoint factor in the energy budget. What remains open is a sufficiently small uniform arithmetic bound `B(T)`, or a sharper block-energy estimate, at every scale.

This source layer does not supply that estimate.

## 6. Actual terminal-information-loss fixture

For one horizon and one active shift, the source defines:

```lean
TerminalFamilyBoundAt
MaximalFamilyBoundAt
```

At horizon two and active singleton shift one, the actual Möbius values give

\[
C(1,2)=0.
\]

Hence:

```lean
actualShiftOneTerminalBoundAtTwo
```

proves a terminal budget of zero.

But the earlier prefix satisfies

\[
C(1,1)=-1,
\]

so the finite prefix maximum is at least one. The theorem

```lean
actualShiftOneNoZeroMaximalBoundAtTwo
```

proves that a maximal budget of zero is impossible.

The exact nonimplication is:

```lean
actualTerminalFamilyBound_doesNotImplyMaximal
```

This is a source-specific counterexample to

```text
terminal value at one horizon
  -> maximal-prefix control at that horizon.
```

The terminal premise controls only `N=T`, whereas the all-prefix equivalence controls every `N≤T`. This finite witness does not refute an eventual comparison that excludes this horizon.

## 7. Quantifier-exchange fixture

The second hostile fixture isolates the pure logical difference between

```text
forall parameter, exists a parameter-dependent constant
```

and

```text
exists one constant, forall parameters.
```

The source defines:

```lean
ParameterDependentNaturalBound
UniformParameterNaturalBound
```

with meanings

\[
\forall h\in\mathbb N\;\exists C\in\mathbb N\;(h\le C)
\]

and

\[
\exists C\in\mathbb N\;\forall h\in\mathbb N\;(h\le C).
\]

It proves the first and refutes the second. Therefore:

```lean
parameterDependent_doesNotImply_uniform
```

establishes that the quantifier exchange is invalid without a separate uniformity theorem.

This fixture is not a Möbius counterexample and carries no arithmetic conclusion. Its role is to reject a logical mutation that would turn constants depending on fixed affine forms or shifts into one constant for a growing family.

## 8. Typed edges

The module publishes the following typed relations:

```lean
pointwiseToUniformRequiresBridge
actualTerminalRefutesMaximalRecovery
growingShiftAllPrefixImpliesMaximal
growingShiftMaximalImpliesCardinalityEnergy
```

Their meanings are:

| Edge | Type | Meaning |
|---|---|---|
| parameter-dependent constants → one uniform constant | `REQUIRES` | an additional uniformity theorem is mandatory |
| actual terminal-zero family → zero maximal budget | `REFUTES_AT_SCOPE` | exact finite Möbius counterexample |
| complete all-prefix control → maximal control | `IMPLIES` | exact finite theorem |
| uniform maximal control → cardinality-weighted summed energy | `IMPLIES` | exact finite sum-of-squares estimate |

No relevance or requirement edge is traversable as a positive theorem edge under the parent atlas semantics.

## 9. Candidate comparison

Three candidate increments were considered.

### Candidate A — exact scope separation, selected

Prove the complete all-prefix/maximal equivalence, retain the exact shift-cardinality cost, and formalize both hostile counterexamples.

- terminal relevance: direct;
- premise availability: complete;
- formal risk: low;
- speculative distance: zero;
- failure value: rejects two common invalid transports.

### Candidate B — actual growing-shift Chowla estimate

Prove a nontrivial uniform bound for the actual correlations over a growing range.

- terminal relevance: maximal;
- premise availability: open analytic number theory;
- formal risk: high;
- speculative distance: substantial.

This remains the arithmetic frontier.

### Candidate C — higher-order multidimensional maximal theorem

Generalize the finite maximal comparison to arbitrary `k`-point correlation tensors.

- reusable but introduces a second dimension/order bridge;
- not required to validate the order-two scope distinctions;
- deferred to a later bounded increment.

## 10. Positivity classification

The only positivity used in the summed-energy theorem is:

```text
finitePrefixMax ≥ 0
B(T) ≥ 0
```

This permits squaring the uniform inequality before summing.

The resulting energy is a finite sum of real squares. No kernel positivity, measure positivity, positive semidefinite operator, trace/state positivity, asymptotic positivity, Weil positivity, or global RH positivity is asserted.

## 11. Literature boundary

The parent atlas already records exact source and scope data for:

- OpenAI result 007 at `openai/math` revision `1581d4cbdd69a0faf34b2089614fe2a814316a6a`;
- Tao's logarithmically averaged two-point Chowla/Elliott theorem;
- Tao–Teräväinen's higher-order correlation structure at almost all scales;
- Matomäki–Radziwiłł–Tao's averaged Chowla theorem.

This increment imports no external theorem. Its finite source statements are generic or derived from the already formalized actual Möbius witness.

The cited OpenAI fixed-affine result concerns Liouville, whereas the local witness is Möbius. No identification bridge is supplied. The exact remaining source-alignment tasks stay in issue #441. In particular, a fixed-affine-form result must not be promoted to growing-shift uniformity, and logarithmic or almost-all-scale conclusions must retain their averaging and exceptional-set scopes.

## 12. Evidence state

Established:

```text
LITERATURE_REVIEWED
SOURCE_DRAFT
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

No Lean/Lake/native execution, proof-term acceptance, generated-declaration reconciliation, transitive axiom audit, repository test, or independent replay is represented by the source text.

## 13. Failure boundaries

The theorem layer does not provide:

- a numerical or asymptotic Chowla bound;
- fixed-data-to-growing-family uniformity;
- ordinary-to-logarithmic or logarithmic-to-ordinary transport;
- exceptional-scale elimination;
- an order-two-to-order-`k` theorem;
- a subpolynomial summed maximal-energy estimate;
- a new pickup damping;
- a proof of RH.

A failure of any proposed arithmetic estimate would not invalidate the finite equivalences proved here.

## 14. Exact next obstruction

One arithmetic theorem remains nearest to the RH consumer:

> For the actual two-point Möbius sequences over every positive shift in the growing dyadic range, prove a uniform all-prefix or aligned-block-square bound strong enough that the cardinality-weighted summed maximal energy satisfies the subpolynomial budget required by PR #411.

A separate higher-order continuation may later replace the order-two source by a multidimensional correlation family, but that is not needed for the current RH path.
