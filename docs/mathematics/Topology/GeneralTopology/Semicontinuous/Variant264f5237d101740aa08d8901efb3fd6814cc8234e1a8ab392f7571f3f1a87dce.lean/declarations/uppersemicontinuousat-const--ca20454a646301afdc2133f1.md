# upperSemicontinuousAt_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5982d8fd08d39c55b13510ba505ca5d52ffffb52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 716,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc317e8b-d5db-0dcf-376a-dedff7d01d52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec8130e8-9b91-95c6-187c-1411113a3131",
  "kind": "theorem",
  "lexical_name": "upperSemicontinuousAt_const",
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
  "slug": "uppersemicontinuousat-const--ca20454a646301afdc2133f1",
  "source": {
    "blob": "5982d8fd08d39c55b13510ba505ca5d52ffffb52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 716,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca20454a646301afdc2133f1b114dcbbb9c99b34e906aea629336d3a16d3e66a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec8130e8-9b91-95c6-187c-1411113a3131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperSemicontinuousAt_const : UpperSemicontinuousAt (fun _x => z) x := fun _y hy =>
  Filter.eventually_of_forall fun _x => hy
#align upper_semicontinuous_at_const upperSemicontinuousAt_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant264f5237d101740aa08d8901efb3fd6814cc8234e1a8ab392f7571f3f1a87dce.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5982d8fd08d39c55b13510ba505ca5d52ffffb52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
