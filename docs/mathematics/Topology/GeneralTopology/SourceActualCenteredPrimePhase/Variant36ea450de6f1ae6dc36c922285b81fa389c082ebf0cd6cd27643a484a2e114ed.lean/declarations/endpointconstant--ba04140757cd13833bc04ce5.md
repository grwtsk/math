# endpointConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7db0010d456777116f202a1047d3baad2c3bc4a8b898276ae6acec101cff2b1d",
  "kind": "def",
  "lexical_name": "endpointConstant",
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
  "slug": "endpointconstant--ba04140757cd13833bc04ce5",
  "source": {
    "blob": "9e3b06d4de211d131d32762cc744d281fe43d3af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba04140757cd13833bc04ce599bc3b96a578c06c1f6be9a978cdd2c4d4fc03a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7db0010d456777116f202a1047d3baad2c3bc4a8b898276ae6acec101cff2b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def endpointConstant (c : ℝ) : ℝ :=
  (204288 : ℝ) ^ 2 / (4096 / 109395) * (1 + c ^ 2) * (1 + (c - 1) ^ 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e3b06d4de211d131d32762cc744d281fe43d3af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
