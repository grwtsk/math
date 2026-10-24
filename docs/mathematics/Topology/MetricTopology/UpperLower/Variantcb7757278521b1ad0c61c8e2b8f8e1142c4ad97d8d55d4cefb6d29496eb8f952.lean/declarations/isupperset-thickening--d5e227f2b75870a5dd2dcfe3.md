# IsUpperSet.thickening'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7196a77596cfbb093e46d72701ec038fc8c1c658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e619e131-33aa-3d76-2df1-06fd213135a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39d46b6c-7a0b-33c8-99fa-320399c9dbab",
  "kind": "theorem",
  "lexical_name": "IsUpperSet.thickening'",
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
  "slug": "isupperset-thickening--d5e227f2b75870a5dd2dcfe3",
  "source": {
    "blob": "7196a77596cfbb093e46d72701ec038fc8c1c658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e227f2b75870a5dd2dcfe3f3805dd1ee660d86fcb51893a6a2443e983de1e4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d46b6c-7a0b-33c8-99fa-320399c9dbab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsUpperSet.thickening' (hs : IsUpperSet s) (ε : ℝ) :
    IsUpperSet (thickening ε s) := by
  rw [← ball_mul_one]
  exact hs.mul_left
#align is_upper_set.thickening' IsUpperSet.thickening'
#align is_upper_set.thickening IsUpperSet.thickening

@[to_additive IsLowerSet.thickening]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7196a77596cfbb093e46d72701ec038fc8c1c658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
