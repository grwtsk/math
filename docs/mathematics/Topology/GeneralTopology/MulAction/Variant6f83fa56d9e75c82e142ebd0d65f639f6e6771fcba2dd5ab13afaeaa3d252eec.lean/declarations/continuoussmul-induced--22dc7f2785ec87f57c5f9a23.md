# ContinuousSMul.induced

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
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41129157-be29-c3ae-e9d8-aeeead7395c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54e0ed1d-49e8-ba86-d285-89040d326dab",
  "kind": "theorem",
  "lexical_name": "ContinuousSMul.induced",
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
  "slug": "continuoussmul-induced--22dc7f2785ec87f57c5f9a23",
  "source": {
    "blob": "901971ba4a1a76c9562b661576bc87a01124e68b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22dc7f2785ec87f57c5f9a2315944136ffc07ff2520d8d290b1df9ad3fc61186",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e0ed1d-49e8-ba86-d285-89040d326dab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousSMul.induced {R : Type*} {α : Type*} {β : Type*} {F : Type*} [FunLike F α β]
    [Semiring R] [AddCommMonoid α] [AddCommMonoid β] [Module R α] [Module R β]
    [TopologicalSpace R] [LinearMapClass F R α β] [tβ : TopologicalSpace β] [ContinuousSMul R β]
    (f : F) : @ContinuousSMul R α _ _ (tβ.induced f) := by
  let tα := tβ.induced f
  refine ⟨continuous_induced_rng.2 ?_⟩
  simp only [Function.comp_def, map_smul]
  fun_prop

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variant6f83fa56d9e75c82e142ebd0d65f639f6e6771fcba2dd5ab13afaeaa3d252eec.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `901971ba4a1a76c9562b661576bc87a01124e68b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
