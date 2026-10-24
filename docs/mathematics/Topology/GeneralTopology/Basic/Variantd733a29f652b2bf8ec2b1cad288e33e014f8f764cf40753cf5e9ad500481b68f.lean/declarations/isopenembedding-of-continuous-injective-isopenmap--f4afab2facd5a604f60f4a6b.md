# IsOpenEmbedding.of_continuous_injective_isOpenMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2bac6bbe1e7cf34c5a37ed76034237ac1d64229",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 625,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4f0c38a-3788-20ba-6030-316903cd1e48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f1431a1-c25e-cdbf-e89a-1b4ab31db2c5",
  "kind": "theorem",
  "lexical_name": "IsOpenEmbedding.of_continuous_injective_isOpenMap",
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
  "slug": "isopenembedding-of-continuous-injective-isopenmap--f4afab2facd5a604f60f4a6b",
  "source": {
    "blob": "f2bac6bbe1e7cf34c5a37ed76034237ac1d64229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 625,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4afab2facd5a604f60f4a6ba54179c7562482aa6bd88e0d8efbe6ca74536326",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f1431a1-c25e-cdbf-e89a-1b4ab31db2c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpenEmbedding.of_continuous_injective_isOpenMap
    (h₁ : Continuous f) (h₂ : Injective f) (h₃ : IsOpenMap f) : IsOpenEmbedding f := by
  simp only [isOpenEmbedding_iff_isEmbedding_isOpenMap, isEmbedding_iff, isInducing_iff_nhds, *,
    and_true]
  exact fun x =>
    le_antisymm (h₁.tendsto _).le_comap (@comap_map _ _ (𝓝 x) _ h₂ ▸ comap_mono (h₃.nhds_le _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2bac6bbe1e7cf34c5a37ed76034237ac1d64229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
