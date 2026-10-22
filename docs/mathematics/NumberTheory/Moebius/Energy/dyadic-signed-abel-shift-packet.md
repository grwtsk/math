# Exact signed Abel presentation of the dyadic Möbius shift packet

Issue: #468. Direct parent: #461 / draft PR #465. Signed shift-packet owner:
#388. Mean-envelope owner: #397. Route owner: #334 RH-E02. Canonical target:
#15.

Evidence state: **SOURCE_DRAFT**. No Lean or Lake execution, elaboration,
kernel acceptance, trust audit, external replay, all-scale arithmetic estimate,
new damping, or RH proof is represented by this note.

## 1. Repository binding

The inspected default branch remains

```text
main revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
main tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

The exact stacked parent is draft PR #465:

```text
parent branch: research/rh-scale-max-carleson-461-20261021
parent head:   ef00d2505cf775470e570d7093a47438abda6ac5
parent tree:   dfdd6bf613c9c12222f127aecbd66f0743706042
```

The dedicated branch is

```text
research/rh-signed-abel-packet-468-20261021
```

The theorem source is bound to

```text
commit: e03145c9c54f59fffa277de35e4db2942cc04d2c
tree:   e2d5ae6067d2ded5b497407c760ba8fa97695a6d
path:   GRWTSK/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean
blob:   6c953dad99f2e410f47ee8350a6f19b729ff8df9
```

No existing source file, public aggregate import, dependency pin, workflow,
executor, or held branch is modified. The branch is stacked after PR #465 to
record why the positive majorant is being left behind, but the exact signed
representation consumes the inherited shift packet and finite prefix source.

If the parent stack changes any weight, cutoff, shift-packet, or terminal RH
interface, this branch must be reconciled before acceptance.

## 2. Terminal consumer

The exact RH-facing consumer remains

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.
  riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket :
  SubpolynomialDyadicMertensShiftPacket -> _root_.RiemannHypothesis
```

The proposition is RH-implying and conditional. No converse is asserted.

The existing signed packet at scale `j` is

```text
ShiftPacket(j)
  = sum_(1 <= h < 2^(j+1)) ShiftContribution(j,h).
```

The unresolved arithmetic premise is the all-scale bound

```text
forall delta>0, exists C_delta>=0, forall j,
  ShiftPacket(j) <= C_delta * (2^j)^delta.
```

This increment changes only the finite representation of that exact packet.
It does not prove the bound.

## 3. Why return to the signed source

The complete all-position tree energy was disposed by #460/#462 because its
singleton layer already has quadratic mass. PR #465 corrected that deterministic
failure by retaining only one maximum per scale. It proves a valid finite
majorant, but the resulting positive square source remains much stronger than
the signed packet and discards cancellation between shifts and prefix depths.

The selected increment therefore exposes the exact Abel form **before** the two
triangle inequalities used by the envelope route:

```text
absolute value of the shift sum
  <= sum of absolute values over prefix depths
  <= prefix envelope * total weight-drop mass.
```

Neither inequality is used in the new equality theorem.

## 4. Candidate-supplier comparison

Three candidates were compared.

| Candidate | Exact consumer | Strength | Formal distance | Disposition |
|---|---|---|---:|---|
| Exact signed Abel packet | inherited signed packet and RH consumer | exact equivalent representation | finite summation and endpoint identity only | selected |
| Max-per-scale positive squares | canonical maximal-prefix supplier | stronger sufficient majorant; loses cross-shift signs | already implemented in PR #465 | retained as optional majorant |
| Normalized square or variation observable | would require a proved comparison into the signed packet | potentially random-model compatible | weights, normalization, and comparison theorem not yet fixed | deferred |

The selected theorem is nearest to the terminal consumer and introduces no new
unproved analytic bridge.

## 5. Canonical signed observable

Let

```text
Y = 2^(j+1),
N(j,h) = Y - h - 1,
C_h(n) = sum_(0 <= a < n) mu(a+1)mu(a+1+h),
w_j(b) = dyadicMertensShiftWeight j b.
```

Define the forward weight drop

```text
Delta(j,h,t)
  = w_j(t+1+h) - w_j(t+2+h).
```

The source declaration is

```lean
dyadicMertensShiftWeightDrop.
```

The one-shift signed Abel contribution is

```text
AbelShift(j,h)
  = 2 * sum_(0 <= t < N(j,h))
      C_h(t+1) * Delta(j,h,t),
```

implemented as

```lean
weightedMertensDyadicShiftAbelContribution.
```

The complete packet is

```text
AbelPacket(j)
  = sum_(1 <= h < Y) AbelShift(j,h),
```

implemented as

```lean
weightedMertensDyadicSignedAbelPacket.
```

Domain: finite dyadic scale `j`, every positive shift below `Y`, and every
prefix depth below the exact shift-dependent cutoff.

Codomain: real.

Normalization: factor two, half-open shift range, previous-prefix indexing,
and the exact inherited kernel weight.

Sign convention: every prefix and every product remains signed. No absolute
value or square occurs in the observable.

## 6. Finite Abel identity

The reusable theorem is

```lean
finiteAbelPrefixIdentity
```

with statement

```text
sum_(k<N) x(k)q(k)
  = sum_(t<N) [sum_(k<t+1) x(k)] [q(t)-q(t+1)]
    + [sum_(k<N) x(k)] q(N).
```

The proof is exact finite induction. The terminal term is retained in the
statement and in the proof.

The source separately proves

```lean
finiteWeightDropTelescope
```

with

```text
sum_(t<N) [q(t)-q(t+1)] = q(0)-q(N).
```

No infinite summation, limiting process, summability theorem, or asymptotic
interchange is used.

## 7. Exact endpoint and drop mass

For an admissible shift `h<Y`, the cutoff satisfies

```text
N(j,h)+1+h = Y.
```

Therefore

```text
w_j(N(j,h)+1+h) = w_j(Y) = 0.
```

This is formalized as

```lean
dyadicMertensShiftWeight_at_cutoff.
```

The weight is antitone, so each drop is nonnegative:

```lean
dyadicMertensShiftWeightDrop_nonneg.
```

The finite drops telescope exactly:

```lean
sum_dyadicMertensShiftWeightDrop :
  sum_(t<N(j,h)) Delta(j,h,t) = w_j(h+1).
```

The inherited kernel theorems give

```text
0 <= w_j(h+1) <= 1/Y.
```

The combined source declaration is

```lean
sum_dyadicMertensShiftWeightDrop_bounds.
```

This is positivity of a finite coefficient family only. It is not positivity
of a kernel in the RH criterion, a positive-semidefinite quadratic form, a
positive trace, a positive measure on an infinite space, or positivity of the
signed packet.

## 8. Exact shiftwise equality

The existing fixed-shift contribution has the finite range form

```text
ShiftContribution(j,h)
  = 2 * sum_(a<N(j,h))
      mu(a+1)mu(a+1+h) w_j(a+1+h).
```

Applying the finite Abel identity and then using the proved terminal-zero
identity gives

```text
ShiftContribution(j,h) = AbelShift(j,h).
```

The source theorem is

```lean
weightedMertensDyadicShiftContribution_eq_abel.
```

The terminal term is not discarded by convention. It is eliminated only after
proving the exact endpoint weight is zero.

## 9. Exact packet equality

Summing the shiftwise identity over the unchanged half-open positive-shift range
gives

```text
ShiftPacket(j) = AbelPacket(j).
```

The source theorem is

```lean
weightedMertensDyadicShiftPacket_eq_signedAbelPacket.
```

This equality retains cancellation:

- between positive and negative prefix values at one shift;
- between different prefix depths;
- between distinct shifts.

It does not establish that any of those cancellations are quantitatively large.

## 10. All-scale criterion and RH path

Define

```lean
SubpolynomialDyadicSignedAbelShiftPacket
```

by

```text
forall delta>0, exists C>=0, forall j,
  AbelPacket(j) <= C * (2^j)^delta.
```

The source proves the exact equivalence

```lean
subpolynomialDyadicSignedAbelShiftPacket_iff_shiftPacket.
```

The dependency path is therefore

```text
SubpolynomialDyadicSignedAbelShiftPacket
  <-> SubpolynomialDyadicMertensShiftPacket
  -> RiemannHypothesis.
```

The terminal declaration is

```lean
riemannHypothesis_of_subpolynomialDyadicSignedAbelShiftPacket.
```

This is a conditional reduction. The first proposition remains open.

## 11. Proof classification

Imported:

- the exact dyadic shift weight and its monotonicity;
- the right-endpoint zero theorem;
- the fixed-shift range reindexing;
- the signed shift packet and conditional RH consumer.

New exact finite algebra:

- Abel summation with the terminal term;
- finite weight-drop telescope;
- cutoff endpoint identity;
- nonnegative drop and mass bounds;
- shiftwise and packet equalities;
- criterion equivalence.

Not used:

- numerical evidence;
- bounded verification;
- analytic continuation beyond inherited consumers;
- probability or random-matrix models;
- external certificates;
- an assumed Chowla, Elliott, Sarnak, Weak-Mertens, or Gonek–Hejhal theorem.

## 12. Failure cases and hostile controls

The following substitutions change or invalidate the theorem:

1. deleting the terminal term before proving `w_j(Y)=0`;
2. reversing `w_j(t+1+h)-w_j(t+2+h)`;
3. replacing `C_h(t+1)` by the terminal value `C_h(N(j,h))`;
4. inserting absolute values around one shift or the complete packet;
5. replacing the half-open positive-shift range by a fixed or truncated family;
6. changing the factor two or previous-prefix convention;
7. reading nonnegative drops as positivity of the signed packet;
8. treating exact equality as a new arithmetic upper bound.

The endpoint-information-loss witness #430 remains applicable to terminal-only
replacement. The singleton-mass witness #460 applies to complete positive
all-position square sums. Neither refutes the exact signed Abel packet.

## 13. Provenance

The provenance graph is kept separate from the proof term.

```text
grwtsk contributors
  -- mathematical direction and selected dependency path --> issue #468

existing GRWTSK RH-E02 stack
  -- defines --> dyadic shift weight, fixed-shift packet, signed packet consumer

finite Abel summation
  -- specialized exactly --> shiftwise signed-prefix representation

OpenAI ChatGPT
  -- formalization assistance --> source-draft theorem layer and packet
```

Imported Mathlib and project declarations retain their original authorship and
licenses. No numerical contributor weights are assigned.

## 14. Evidence state

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

The `#print axioms` commands in the source are unexecuted text. There has been
no parser result, elaboration, proof-term acceptance, generated/private
reconciliation, transitive axiom/native/unsafe/opaque audit, repository test,
independent replay, merge, public-root admission, or issue closure.

## 15. RH consequence and next obstruction

Classification: **exact equivalent arithmetic interface**.

The increment does not prove a new damping, zero-free region, finite-height RH,
or RH. It removes the positive-majorant detour from the immediate source and
makes the signed cancellation target explicit.

The exact next obstruction is:

> Prove an all-scale subpolynomial upper bound for
> `weightedMertensDyadicSignedAbelPacket j`, using cancellation in the signed
> prefix-depth/shift sum. Any future square, variation, spectral, or dynamical
> supplier must come with a proved comparison to this exact packet and must
> preserve the factor two, cutoff, endpoint weight, and complete shift range.
