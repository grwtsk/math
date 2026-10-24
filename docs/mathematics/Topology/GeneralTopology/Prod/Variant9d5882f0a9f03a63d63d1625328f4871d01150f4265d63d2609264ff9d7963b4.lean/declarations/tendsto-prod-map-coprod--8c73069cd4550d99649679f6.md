# Tendsto.prod_map_coprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf628196322ef03c5761f0c1e72a542912d06aab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:208431c4-45fc-c192-0f3d-ab64684d76b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ed57580-af2a-3331-08f4-e06f07b8c5e3",
  "kind": "theorem",
  "lexical_name": "Tendsto.prod_map_coprod",
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
  "slug": "tendsto-prod-map-coprod--8c73069cd4550d99649679f6",
  "source": {
    "blob": "cf628196322ef03c5761f0c1e72a542912d06aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c73069cd4550d99649679f68aae631502f86f937fd149e28d0d5dfa3aa5b3e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed57580-af2a-3331-08f4-e06f07b8c5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.prod_map_coprod {δ : Type*} {f : α → γ} {g : β → δ} {a : Filter α} {b : Filter β}
    {c : Filter γ} {d : Filter δ} (hf : Tendsto f a c) (hg : Tendsto g b d) :
    Tendsto (Prod.map f g) (a.coprod b) (c.coprod d) :=
  map_prod_map_coprod_le.trans (coprod_mono hf hg)
#align filter.tendsto.prod_map_coprod Filter.Tendsto.prod_map_coprod

end Coprod

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant9d5882f0a9f03a63d63d1625328f4871d01150f4265d63d2609264ff9d7963b4.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf628196322ef03c5761f0c1e72a542912d06aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
