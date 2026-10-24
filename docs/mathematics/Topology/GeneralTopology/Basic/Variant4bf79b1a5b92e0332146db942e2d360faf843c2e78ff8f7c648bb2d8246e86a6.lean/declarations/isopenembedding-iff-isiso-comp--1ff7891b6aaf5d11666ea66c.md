# isOpenEmbedding_iff_isIso_comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60d4ea68db3eb7744c905a12f6ccdcc9e80f846f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aac36903-c9a2-3c26-55ed-d75a27d3dc32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4b86006-e45a-0180-3842-2219ae40fa06",
  "kind": "theorem",
  "lexical_name": "isOpenEmbedding_iff_isIso_comp'",
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
  "slug": "isopenembedding-iff-isiso-comp--1ff7891b6aaf5d11666ea66c",
  "source": {
    "blob": "60d4ea68db3eb7744c905a12f6ccdcc9e80f846f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ff7891b6aaf5d11666ea66cb0808f410c282a6a5bf0455f30f5be3d3e431293",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b86006-e45a-0180-3842-2219ae40fa06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenEmbedding_iff_isIso_comp' {X Y Z : TopCat} (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso f] :
    IsOpenEmbedding (g ∘ f) ↔ IsOpenEmbedding g := by
  simp only [← Functor.map_comp]
  exact isOpenEmbedding_iff_isIso_comp f g

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4bf79b1a5b92e0332146db942e2d360faf843c2e78ff8f7c648bb2d8246e86a6.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60d4ea68db3eb7744c905a12f6ccdcc9e80f846f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
