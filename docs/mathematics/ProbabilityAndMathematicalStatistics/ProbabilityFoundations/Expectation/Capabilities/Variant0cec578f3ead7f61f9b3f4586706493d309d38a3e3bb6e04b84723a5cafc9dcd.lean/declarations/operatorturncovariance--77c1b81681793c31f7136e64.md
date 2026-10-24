# OperatorTurnCovariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2acdfefd09348305ab051ccf7eb15afe7dfb0363b6490d52f756b6ec7adb722c",
  "kind": "structure",
  "lexical_name": "OperatorTurnCovariance",
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
  "slug": "operatorturncovariance--77c1b81681793c31f7136e64",
  "source": {
    "blob": "b6ed82a82c393517144842b2afe4cbf4dc496668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 172,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77c1b81681793c31f7136e640d901f6d5943ded648d42cc8c0859115290cce3b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2acdfefd09348305ab051ccf7eb15afe7dfb0363b6490d52f756b6ec7adb722c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OperatorTurnCovariance
    {I : Type*} [Fintype I]
    {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]
    {Operator State Unitary : Type*}
    (turn : I ≃ I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (operatorSemantics : OperatorSemantics Operator State)
    (unitarySemantics : UnitaryTransportSemantics Operator State Unitary)
    extends FamilyTurnCovariance turn packets where
  realization : ∀ i, OperatorRealization (packets i) operatorSemantics
  unitary : ∀ _, Unitary
  unitaryEvidence : ∀ i, unitarySemantics.isUnitary (unitary i)
  operatorCovariant : ∀ i,
    unitarySemantics.operatorConjugate (unitary i)
      (realization i).operator (realization (turn i)).operator
  stateCovariant : ∀ i,
    unitarySemantics.stateConjugate (unitary i)
      (realization i).state (realization (turn i)).state

end BitMatrix.Spectral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ed82a82c393517144842b2afe4cbf4dc496668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
