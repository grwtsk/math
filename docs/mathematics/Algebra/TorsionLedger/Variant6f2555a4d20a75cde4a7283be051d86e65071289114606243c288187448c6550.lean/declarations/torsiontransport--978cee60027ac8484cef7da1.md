# TorsionTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f3bc18b603208d91431d5cd78b51828b7e890032b733e225ce0a0b3b127be1b",
  "kind": "structure",
  "lexical_name": "TorsionTransport",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "torsiontransport--978cee60027ac8484cef7da1",
  "source": {
    "blob": "0e3d35e393e27c697bc4b51b3f4d8bba989b7110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 114,
    "path": "GRWTSK/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:978cee60027ac8484cef7da12c37a4a19a29dceb39fa948c93b7224979f8bac7",
  "verification": {
    "reference": "docs/verification/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f3bc18b603208d91431d5cd78b51828b7e890032b733e225ce0a0b3b127be1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TorsionTransport
    {sourceChain targetChain : FiniteIntegralChain}
    {sourceDegree targetDegree : Nat}
    (source : TorsionLedger sourceChain sourceDegree)
    (target : TorsionLedger targetChain targetDegree)
    {SourceTorsion : Type u}
    {TargetTorsion : Type v}
    [AddCommGroup SourceTorsion]
    [AddCommGroup TargetTorsion]
    (sourceRepresentation :
      UCTBocksteinTorsionRepresentation source SourceTorsion)
    (targetRepresentation :
      UCTBocksteinTorsionRepresentation target TargetTorsion)
    {SourcePhase : Type w}
    {TargetPhase : Type x}
    [AddCommGroup SourcePhase]
    [AddCommGroup TargetPhase]
    (sourceBockstein : SourcePhase →+ SourceTorsion)
    (targetBockstein : TargetPhase →+ TargetTorsion)
    {SourceGluing TargetGluing : Type*}
    (sourceGluing : SourceTorsion → SourceGluing)
    (targetGluing : TargetTorsion → TargetGluing) where
  phaseMap : SourcePhase →+ TargetPhase
  torsionMap : SourceTorsion →+ TargetTorsion
  coordinateMap :
    CharacterModule source.Coordinate →+
      CharacterModule target.Coordinate
  gluingMap : SourceGluing → TargetGluing
  sourceStage_lt_targetStage : source.stage < target.stage
  bocksteinNaturality :
    ∀ phase,
      targetBockstein (phaseMap phase) =
        torsionMap (sourceBockstein phase)
  coordinateNaturality :
    ∀ torsion,
      targetRepresentation.coordinates (torsionMap torsion) =
        coordinateMap (sourceRepresentation.coordinates torsion)
  gluingNaturality :
    ∀ torsion,
      targetGluing (torsionMap torsion) =
        gluingMap (sourceGluing torsion)
  invariantFactorCompatibility : Digest
  bocksteinNaturalityReceipt : ObjectAddress
  coordinateNaturalityReceipt : ObjectAddress
  gluingNaturalityReceipt : ObjectAddress
  transportReceipt : ObjectAddress

namespace TorsionTransport

variable
    {sourceChain targetChain : FiniteIntegralChain}
    {sourceDegree targetDegree : Nat}
    {source : TorsionLedger sourceChain sourceDegree}
    {target : TorsionLedger targetChain targetDegree}
    {SourceTorsion : Type u}
    {TargetTorsion : Type v}
    [AddCommGroup SourceTorsion]
    [AddCommGroup TargetTorsion]
    {sourceRepresentation :
      UCTBocksteinTorsionRepresentation source SourceTorsion}
    {targetRepresentation :
      UCTBocksteinTorsionRepresentation target TargetTorsion}
    {SourcePhase : Type w}
    {TargetPhase : Type x}
    [AddCommGroup SourcePhase]
    [AddCommGroup TargetPhase]
    {sourceBockstein : SourcePhase →+ SourceTorsion}
    {targetBockstein : TargetPhase →+ TargetTorsion}
    {SourceGluing TargetGluing : Type*}
    {sourceGluing : SourceTorsion → SourceGluing}
    {targetGluing : TargetTorsion → TargetGluing}
    (transport :
      TorsionTransport
        source target
        sourceRepresentation targetRepresentation
        sourceBockstein targetBockstein
        sourceGluing targetGluing)

/-- Every transported Bockstein class is the image of the source class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e3d35e393e27c697bc4b51b3f4d8bba989b7110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
