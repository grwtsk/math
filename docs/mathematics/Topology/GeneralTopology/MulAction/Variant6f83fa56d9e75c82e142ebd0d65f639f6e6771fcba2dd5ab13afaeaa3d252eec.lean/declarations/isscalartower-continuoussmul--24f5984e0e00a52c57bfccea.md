# IsScalarTower.continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "901971ba4a1a76c9562b661576bc87a01124e68b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:018b71ee-d05e-3f4e-8cb8-0feacc4f81ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de5c8f9c-b3c2-c9d7-fd33-25d1ee23d67f",
  "kind": "lemma",
  "lexical_name": "IsScalarTower.continuousSMul",
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
  "slug": "isscalartower-continuoussmul--24f5984e0e00a52c57bfccea",
  "source": {
    "blob": "901971ba4a1a76c9562b661576bc87a01124e68b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24f5984e0e00a52c57bfcceaf00902ce6c6438d2fe3978c7377d4a3f4d39f8cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de5c8f9c-b3c2-c9d7-fd33-25d1ee23d67f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsScalarTower.continuousSMul {M : Type*} (N : Type*) {α : Type*} [Monoid N] [SMul M N]
    [MulAction N α] [SMul M α] [IsScalarTower M N α] [TopologicalSpace M] [TopologicalSpace N]
    [TopologicalSpace α] [ContinuousSMul M N] [ContinuousSMul N α] : ContinuousSMul M α :=
  { continuous_smul := by
      suffices Continuous (fun p : M × α ↦ (p.1 • (1 : N)) • p.2) by simpa
      fun_prop }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `901971ba4a1a76c9562b661576bc87a01124e68b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
