# boundary_identified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fada495239ce8cc9d2cee3080c72f18a8c166511",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b8df985-6ca0-6d3a-e2fa-8d955fc884c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1fec984-0cf4-f1b0-fb56-a5e88d8b92a3",
  "kind": "theorem",
  "lexical_name": "boundary_identified",
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
  "slug": "boundary-identified--539d4dbc7afb2020ca3696ae",
  "source": {
    "blob": "fada495239ce8cc9d2cee3080c72f18a8c166511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 411,
    "path": "GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:539d4dbc7afb2020ca3696ae82bfee77e85a9e48ef0e5ca22225432ab498c7d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1fec984-0cf4-f1b0-fb56-a5e88d8b92a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_identified
    (data : FixedSurgeryData Exterior CapIndex Cap)
    (index : CapIndex) (point : data.Boundary index) :
    data.exteriorPoint (data.exteriorBoundary index point) =
      data.capPoint index (data.capBoundary index point) := by
  exact
    Quotient.sound
      (Relation.EqvGen.rel _ _
        (.identify index point))

/--
A pseudometric admitted by the gluing: it is dominated by the original
metric on every unchanged piece.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fada495239ce8cc9d2cee3080c72f18a8c166511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
