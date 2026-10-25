# observedCorpus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfcd311265586a32230fe56fcd8c805bd6cff0cf787ce41a0ec8c54bc497f1a4",
  "kind": "def",
  "lexical_name": "observedCorpus",
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
  "slug": "observedcorpus--fa105c6ca76d47543018325d",
  "source": {
    "blob": "525cc2ed09059030164dae6a3c9f26ab2cb1b72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceNetworkSurgeryConformanceMain/Variant87d4906d53b166b166511ec2dae05930cd8279e9b9b27fd8de3e0e7ca3cbe95f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa105c6ca76d47543018325d52e67b92e660b7b98ff29da72592efdf46e21e84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceNetworkSurgeryConformanceMain/Variant87d4906d53b166b166511ec2dae05930cd8279e9b9b27fd8de3e0e7ca3cbe95f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfcd311265586a32230fe56fcd8c805bd6cff0cf787ce41a0ec8c54bc497f1a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def observedCorpus : Json :=
  Json.mkObj [
    ("schema", toJson schema),
    ("assurance", toJson "goldenVectors"),
    ("exposesProposition", toJson false),
    ("permitsSourceWrite", toJson false),
    ("rounding", toJson [Json.mkObj [
      ("numerator", toJson "1"),
      ("denominator", toJson "2"),
      ("maximumIndex", toJson "3"),
      ("inbound", toJson (inboundRound scaledPositiveHalfAtThree)),
      ("outbound", toJson (outboundRound scaledPositiveHalfAtThree))]]),
    ("signedRounding", toJson [
      signedRoundingObservation "-3" "2" signedNegativeHalf,
      signedRoundingObservation "1" "3" signedOneThird,
      signedRoundingObservation "1" "2" signedPositiveHalf,
      signedRoundingObservation "2" "3" signedTwoThirds]),
    ("phaseEdges", toJson [
      phaseEdgeObservation "intentPrepared" "proposalVerified" true,
      phaseEdgeObservation "selectionDrafted" "committed" false]),
    ("balancedLedger", Json.mkObj [
      ("hash", toJson
        "64f60ee8f676680531e5e846753d72d05f3e144e26975128b0f74ffefa90fac2"),
      ("residualCount", toJson ownershipResidualCount)]),
    ("rejectionPrecedenceVector", toJson rejectionPrecedenceVector),
    ("patchPathOrdering", toJson patchPathOrdering)
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceNetworkSurgeryConformanceMain/Variant87d4906d53b166b166511ec2dae05930cd8279e9b9b27fd8de3e0e7ca3cbe95f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceNetworkSurgeryConformanceMain/Variant87d4906d53b166b166511ec2dae05930cd8279e9b9b27fd8de3e0e7ca3cbe95f.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525cc2ed09059030164dae6a3c9f26ab2cb1b72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
