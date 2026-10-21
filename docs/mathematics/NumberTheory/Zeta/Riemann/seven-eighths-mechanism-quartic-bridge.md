# One-way seven-eighths theorem admission and the proof-relevant prime-quartic bridge

## Status

`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_TERMINAL_PORT_BLOCKED / EXTERNAL_MECHANISM_PORT_BLOCKED / PRIME_QUARTIC_EXTRACTION_OPEN`

This packet revises issue #463 and draft PR #464. It is stacked on the exact
head of PR #450. It changes no public aggregate import and admits no external
theorem.

The central correction is:

> Bijectivity is not a theorem-acceptance criterion. A sound one-way proof
> transport is sufficient to accept the external `7/8` theorem locally.
> Linear/topological/form equivalence belongs only to the stronger
> proof-relevant mechanism bridge.

## 1. The arithmetic scale is independent context

The PNT-free arithmetic coordinate module defines

```lean
ArithmeticLogScale := FreeAbelianGroup {p : ℕ // Nat.Prime p}
PAdicScaleFamily   := {p : ℕ // Nat.Prime p} →₀ ℤ
```

and the canonical additive equivalence

```lean
logarithmicToPAdicFamily :
  ArithmeticLogScale ≃+ PAdicScaleFamily.
```

For a selected prime `p`,

```lean
pAdicExponent p : ArithmeticLogScale →+ ℤ
pPrimaryEmbedding p : ℤ →+ ArithmeticLogScale
```

satisfy

```lean
(pAdicExponent p).comp (pPrimaryEmbedding p)
  = AddMonoidHom.id ℤ.
```

The Archimedean map is the finite sum

\[
(n_p)_p\longmapsto\sum_p n_p\log p.
\]

This layer imports no zeta theorem or external-port module. Its bijectivity is
an arithmetic coordinate theorem and is not consumed by theorem admission.

## 2. Terminal theorem admission is one-way

Write

\[
Z_\sigma :=
\forall s\in\mathbf C,\qquad
\sigma<\operatorname{Re}(s)\Longrightarrow\zeta(s)\ne0.
\]

The local proposition is

```lean
RiemannZetaZeroFreeRightHalfPlane σ.
```

The existing external-port record already requires:

```lean
review.AdmissionReady
RiemannZetaZeroFreeRightHalfPlane σ
```

as separate fields. The revised packet adds the explicit one-way transport:

```lean
structure OneWayRawHalfPlaneTransport (σ : ℝ) where
  ExternalClaim : Prop
  externalProof : ExternalClaim
  toLocal : ExternalClaim →
    RiemannZetaZeroFreeRightHalfPlane σ
```

and proves that a complete review plus this transport constructs the accepted
local port. There is no inverse, equivalence, topology, form, or arithmetic
scale field in this gate.

For the displayed OpenAI statement, the local proposition adapter is

```lean
OpenAISevenEighthsClaim →
  RiemannZetaZeroFreeRightHalfPlane (7 / 8).
```

The current source review does not supply its external proof term, clean replay,
or trust closure.

## 3. The family-level theorem is broader than the zeta endpoint

At the pinned OpenAI revision

```text
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a
```

the terminal file first proves Dirichlet-family nonvanishing and then derives
the zeta declaration. The zeta object is therefore a specialization of a
broader family-level result, not a globally bijective replacement.

The mechanism interface retains a one-way field

```lean
familyNonvanishing →
  RiemannZetaZeroFreeRightHalfPlane (7 / 8)
```

rather than postulating an inverse. A future exact retraction onto a
principal-character component can be added only with its actual source theorem.

## 4. The visible proof-relevant source chain

The pinned source inspection identifies this chain:

```text
DetectorCertifiedBands
  → FineMomentInput
  → ChosenMomentInput
  → UniformCommonProbe
  → beta ≤ 7/8
  → family nonvanishing
  → zeta nonvanishing.
```

The exact source bindings are:

```text
FinalAssemblyCertifiedBands.lean
  blob 8c7337e8f0755ba24fddab46a6630d58a32a9c86

FinalAssemblyChosenData.lean
  blob 94b7543e8076fc514b61e89efa7141831e102c03

Hecke/CommonProbe.lean
  blob 92ae82094f323d97b92ae54801e88f2c97f20187

FinalAssemblyUnconditional.lean
  blob e7c20910424837fb954796e1216f5aa453bbd5da

Nonvanishing.lean
  blob 46c67f4000906b1391a471d6e6396ac0da3c16a5
```

The unconditional assembly constructs

```lean
detector_certified_bands : DetectorCertifiedBands
```

and passes it through the certified-band and moment layers to the common-probe
and terminal theorems.

The local structure

```lean
SevenEighthsMechanismChain
```

retains each proposition and each directed proof map. The current
`ExternalMechanismReview` records only source-chain location and the existence
of the family-to-zeta specialization. Exact cross-version types, dependency
closure, trust output, clean replay, and a local mechanism adapter remain open.

A terminal `Z_(7/8)` proof does not reconstruct this chain.

## 5. Where a strong bridge belongs

A stronger mechanism comparison is placed on witness carriers, not on theorem
truth values. The packet distinguishes:

```text
ContinuousLinearEquivalence
FaithfulContinuousLinearEmbedding
ContinuousLinearQuotient
```

and combines them as the noncoercible sum

```lean
WitnessCarrierBridge Source Target.
```

The bridge may therefore be:

* a continuous linear equivalence;
* a faithful continuous linear embedding; or
* a continuous linear quotient/specialization.

The real bilinear-form layer is

```lean
RealBilinearMechanismBridge Source Target
```

with:

```text
one selected carrier-map profile
two commuting source involutions
two commuting target involutions
both intertwining equations
source and target real bilinear forms
a positive scalar c
a nonnegative defect ε(x,y)
|Q_target(Ux,Uy) - c Q_source(x,y)| ≤ ε(x,y).
```

The exact case is represented by zero defect. The complex Hermitian Weil-form
comparison remains a separate application interface; it is not silently
identified with this real quartic layer.

An arbitrary set-theoretic bijection cannot inhabit this structure.

## 6. The signed quartic endpoint is already exact

The existing source

```text
GRWTSK/Algebra/Polynomial/ConjugateQuartic.lean
```

defines

\[
H(a,t)=\operatorname{witnessTrace}(a,t)
      =-4a^2(a^2+3t^2)
\]

and proves

\[
H(a,t)\ge0\iff a=0.
\]

The four formal roots are

\[
t+ia,\quad t-ia,\quad -t+ia,\quad -t-ia,
\]

with the two commuting sign involutions retained at the witness level.

The existing zeta adapter

```text
GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean
```

proves

```lean
riemannHypothesis_iff_quadraticTraceNonnegative
```

and the exact conditional endpoint

```lean
riemannHypothesis_of_trace_extraction.
```

The revised packet imports and consumes that theorem instead of restating it.

## 7. Prime quartic extraction

For each actual nontrivial zero `s`, the new record

```lean
QuarticExtractionAtZero s
```

contains sequences

```text
W_n, weight_n, error_n
```

and a positive limit `L` satisfying

\[
W_n
=
\operatorname{weight}_n\,
H\!\left(\operatorname{Re}(s)-\frac12,\operatorname{Im}(s)\right)
+
\operatorname{error}_n,
\]

with

\[
W_n\ge0,\qquad
\operatorname{weight}_n\to L>0,\qquad
\operatorname{error}_n\to0.
\]

`PrimeQuarticExtraction` supplies this record for every nontrivial zero and
also carries a `PNTIndependentDependencyAudit`.

The theorem

```lean
riemannHypothesis_of_primeQuarticExtraction
```

is a direct adapter into the existing
`riemannHypothesis_of_trace_extraction`.

No extraction instance is constructed in this packet.

## 8. PNT independence is a dependency theorem

`PNTIndependentDependencyAudit` binds:

```text
the root declaration
the direct declaration-dependency relation
the exact reflexive-transitive closure
a predicate classifying PNT or circular zero-free suppliers
a proof that no declaration in the closure is forbidden
repository, revision, and closure digest.
```

Thus “PNT-free” is not inferred from the appearance of finite prime sums. A
future accepted extraction must certify its complete declaration closure.

The intended positive source may use exact finite prime or prime-power sums,
von Mangoldt identities, gamma/pole/trivial-zero/endpoint corrections, direct
Gram nonnegativity, and an independently proved vanishing error. It may not
import PNT, a circular zero-free theorem, a critical-line projection, or target
Weil positivity.

## 9. The detector-to-extraction arrow is split into two gates

The strong route is now:

```text
accepted detector/moment mechanism
  → DetectorToLocalWitnessBridge
  → local proof-relevant witness
  → LocalPrimeQuarticExtractor
  → PrimeQuarticExtraction.
```

`DetectorToLocalWitnessBridge` carries the continuous linear/form/symmetry
bridge and maps the actual `DetectorCertifiedBands` proof term into the local
witness carrier.

`LocalPrimeQuarticExtractor` is a separate field. Consequently, successful
mechanism transport does not automatically manufacture a nonnegative prime
form, a quartic identity, a positive limiting coefficient, or vanishing error.

The exact open theorem is therefore the construction of these two maps with
the source identities and estimates that make the composite valid.

## 10. The regional theorem supplies compactness, not tightening

A reflection-complete regional record is typed as

```lean
ReflectedRegionalZeroBound σ.
```

At `σ=7/8`, the packet proves conditionally that every nontrivial zero satisfies

\[
\left|\operatorname{Re}(s)-\frac12\right|\le\frac38.
\]

The reflected lower bound is an explicit field rather than an inference from a
name. This compact horizontal domain can support uniform estimates, but it does
not change the sign of the quartic witness and does not imply `Z_(1/2)`.

## 11. Direct and iterative threshold closure

### Direct extraction

`QuadraticExtractionAccepted` contains a complete
`PrimeQuarticExtraction`. The existing quartic criterion then proves RH
directly. No threshold iteration is required.

### Cofinal descent

A step

```lean
PrimeQuarticStep τ σ
```

contains an audited implication

```lean
Z_σ → Z_τ
```

with

```text
1/2 ≤ τ < σ.
```

`CofinalPrimeQuarticDescent` requires:

```text
σ_0 = 7/8
Z_(σ_0)
a valid step at every stage
σ_n > 1/2 for every n
for every x>1/2, some σ_n<x.
```

The final cofinality condition prevents convergence to a boundary larger than
`1/2`. The packet proves that such a tower supplies `Z_(1/2)`.

## 12. Four acceptance gates

The source types now correspond to:

```text
PORT_ACCEPTED
  PortAccepted

MECHANISM_BRIDGE_ACCEPTED
  AcceptedSevenEighthsMechanismPort
  + MechanismBridgeAccepted

QUADRATIC_EXTRACTION_ACCEPTED
  QuadraticExtractionAccepted

THRESHOLD_CLOSURE_ACCEPTED
  ThresholdClosureAccepted.
```

Only

```lean
ThresholdClosureAccepted.toRiemannHypothesis
```

has a theorem edge to canonical RH. It has two constructors:

```text
direct complete extraction
cofinal threshold descent.
```

The arithmetic scale equivalence is available as independent mathematical
context but appears in none of these acceptance records.

## Dependency graph

```text
PNT-free arithmetic scale coordinates
  └── independent reusable mathematics; no theorem-admission edge

accepted external proof + trust/replay + one-way adapter
  └── PortAccepted: Z_(7/8)

accepted detector/moment/probe chain
  └── AcceptedSevenEighthsMechanismPort
        │
        ▼
continuous linear/form/symmetry carrier map
  └── MechanismBridgeAccepted
        │
        ▼
local prime form + quartic identity + positive weight + error→0
  └── QuadraticExtractionAccepted
        │
        ├── direct all-zero extraction
        │        ▼
        │     RH
        │
        └── audited steps σ_n↓1/2 with explicit cofinality
                 ▼
              Z_(1/2)
                 ▼
                RH
```

## Verification boundary

The packet remains source-only. It requires exact-head Lean elaboration,
declaration-type reconciliation, transitive axiom review, hostile-control
replay, and an immutable receipt.

The external terminal theorem and the stronger mechanism chain require
separate clean replay, trust, dependency, and local-adapter evidence.

## Nonclaims

This packet claims no prime-number theorem, no accepted OpenAI proof, no
cross-version theorem transport, no accepted detector mechanism, no
family/zeta bijection, no concrete continuous linear mechanism bridge, no
prime-derived Gram form, no complete explicit-formula comparison, no
PNT-independent extraction audit, no Weil-form convergence, no threshold
descent, no raw zero-free theorem at `1/2`, and no proof of RH.
