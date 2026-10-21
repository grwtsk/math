# Source-bound detector trace for the seven-eighths mechanism

## Status

`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_MECHANISM_PORT_BLOCKED / LOCAL_TRACE_BRIDGE_OPEN`

This increment advances issue #463 and draft PR #464 on parent commit
`72f3d792ac76fd90431f5257f87f701d7c405ca8`, tree
`0cc22d01b780062306dafa37237a153f1b46e623`.

It does not admit the external theorem or mechanism. It tightens the local type
boundary so that a proof-relevant continuation consumes every visible stage of
the pinned detector/moment/probe chain and is bound to the same source artifact
as the accepted terminal theorem.

## 1. The terminal endpoint forgets the mechanism

The terminal proposition

```text
RiemannZetaZeroFreeRightHalfPlane (7 / 8)
```

contains no detector, moment, common-probe, beta-bound, or family-level witness.
The control theorem

```lean
terminal_endpoint_does_not_recover_arbitrary_internal_evidence
```

uses the already proved raw zero-free theorem at threshold `1` to reject a
uniform rule that would recover an arbitrary internal proposition from a
terminal zero-free theorem. This is a logical separation control, not a claim
about impossibility of every specially constructed inverse.

A successful continuation therefore requires additional proof-relevant source
data; it cannot project those data from the terminal endpoint alone.

## 2. Materialized mechanism trace

For a supplied `SevenEighthsMechanismChain`, define

```lean
structure SevenEighthsMechanismTrace
    (chain : SevenEighthsMechanismChain) where
  detector : chain.detectorCertifiedBands
  fine : chain.fineMomentInput
  chosen : chain.chosenMomentInput
  probe : chain.uniformCommonProbe
  betaBound : chain.betaAtMostSevenEighths
  family : chain.familyNonvanishing
  zeta : RiemannZetaZeroFreeRightHalfPlane (7 / 8)
```

The constructor

```lean
SevenEighthsMechanismChain.trace
```

follows every directed edge from `chain.detector`. Its terminal field is
definitionally the existing `chain.toZeta` theorem.

The trace lives in `Type`, rather than being replaced by a single conjunction
or the terminal proposition. A later source-bound witness constructor can
therefore accept the complete trace as its input.

This does not make the external OpenAI proof terms locally available. It only
specifies the exact local shape required after replay, trust review, type
alignment, and adaptation.

## 3. Exact source alignment

The generic `AcceptedSevenEighthsMechanismPort` already requires:

```text
accepted terminal port
admission-ready mechanism review
complete local mechanism chain
agreement of the chain terminal theorem with the accepted terminal theorem.
```

The new OpenAI-specific alignment adds:

```lean
structure OpenAIMechanismSourceAlignment
    (accepted : AcceptedSevenEighthsMechanismPort) : Prop
```

and requires equality of:

```text
mechanism review source = pinned OpenAI mechanism source
terminal review repository = mechanism repository
terminal review revision = mechanism revision
terminal source path = pinned terminal path
terminal source blob = pinned terminal blob
terminal declaration = pinned zeta-specialization declaration.
```

The wrapper

```lean
SourceBoundAcceptedSevenEighthsMechanismPort
```

therefore cannot be inhabited merely by combining an accepted terminal theorem
with an unrelated mechanism review.

The theorem

```lean
SourceBoundAcceptedSevenEighthsMechanismPort.trace_zeta_eq_terminal
```

preserves the previously required theorem-term agreement after the complete
trace is materialized.

## 4. The local witness map now consumes the whole trace

The earlier abstract bridge accepted a constructor from only the initial
detector proposition. The strengthened interface is:

```lean
structure MechanismTraceToLocalWitnessBridge
    (accepted : SourceBoundAcceptedSevenEighthsMechanismPort)
    (Source Local : Type*) where
  forms : RealBilinearMechanismBridge Source Local
  sourceWitness :
    SevenEighthsMechanismTrace accepted.accepted.chain -> Source
```

The resulting local witness is

```text
carrierMap (sourceWitness accepted.trace).
```

Thus a local detector-to-quartic program may use the certified-band, fine
moment, chosen moment, common probe, beta-bound, family, and terminal evidence
together. The map still must satisfy the already typed linear, topological,
involution, and bilinear-form obligations.

The new gate

```lean
SourceBoundMechanismBridgeAccepted
```

requires both the pinned accepted mechanism and this trace-consuming bridge.
It reaches `QuadraticExtractionAccepted` only through a separately supplied
`LocalPrimeQuarticExtractor`.

## 5. What remains open

This increment supplies no inhabitant of any acceptance structure. The next
mathematical obligation is still an actual source-specific map

```text
pinned DetectorCertifiedBands/moment/probe trace
  -> declared source carrier
  -> local carrier
  -> PrimeQuarticExtraction,
```

with:

```text
exact source identity
noncircular prime or prime-power construction
both involution intertwiners
form comparison with positive scale
complete named residual ledger
positive limiting quartic coefficient
error tending to zero
transitive PNT/circularity dependency audit.
```

In particular, materializing the trace does not prove that the OpenAI mechanism
has the required linear carrier, does not select a Weil test space, and does not
construct a nonnegative prime form.

## Verification boundary

Required verification remains:

```text
exact-head Lean elaboration
exact declaration-type reconciliation
transitive import and axiom audit
hostile-control replay
clean pinned external mechanism replay
immutable source-bound receipt.
```

No public aggregate import is changed. No external theorem, accepted mechanism,
local trace bridge, prime quartic extraction, threshold closure, or RH proof is
claimed.
