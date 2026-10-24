# continuousOn_Ioc_extendFrom_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58b59a7bbc8645082c50f53e5c41b66b353ebfeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe9e175-45ef-6aa5-7c34-c4057f025421",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:198f03b1-8891-af3f-f1a8-1de6064da955",
  "kind": "theorem",
  "lexical_name": "continuousOn_Ioc_extendFrom_Ioo",
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
  "slug": "continuouson-ioc-extendfrom-ioo--a93bd2a7f0aeeb9468416025",
  "source": {
    "blob": "58b59a7bbc8645082c50f53e5c41b66b353ebfeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a93bd2a7f0aeeb9468416025c3539b10ead26b23a2d1de68244408271a6b3eac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:198f03b1-8891-af3f-f1a8-1de6064da955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_Ioc_extendFrom_Ioo [TopologicalSpace α] [LinearOrder α] [DenselyOrdered α]
    [OrderTopology α] [TopologicalSpace β] [RegularSpace β] {f : α → β} {a b : α} {lb : β}
    (hab : a < b) (hf : ContinuousOn f (Ioo a b)) (hb : Tendsto f (𝓝[<] b) (𝓝 lb)) :
    ContinuousOn (extendFrom (Ioo a b) f) (Ioc a b) := by
  have := @continuousOn_Ico_extendFrom_Ioo αᵒᵈ _ _ _ _ _ _ _ f _ _ lb hab
  erw [Ico_toDual, Ioi_toDual, Ioo_toDual] at this
  exact this hf hb
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b59a7bbc8645082c50f53e5c41b66b353ebfeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
