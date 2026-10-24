# DenseRange.iUnion_uniformity_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef169b1cee415481d609f5882d80f61e629ae56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7860888-1f23-80df-6b69-6e49119e7892",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbc89649-d617-c53b-4178-f9b280f0c863",
  "kind": "lemma",
  "lexical_name": "DenseRange.iUnion_uniformity_ball",
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
  "slug": "denserange-iunion-uniformity-ball--e216893e366e68e6a099598c",
  "source": {
    "blob": "2ef169b1cee415481d609f5882d80f61e629ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e216893e366e68e6a099598c6e9d616ccabf0fb38b30d4f188adbe4560d54447",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc89649-d617-c53b-4178-f9b280f0c863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DenseRange.iUnion_uniformity_ball {ι : Type*} {xs : ι → α}
    (xs_dense : DenseRange xs) {U : Set (α × α)} (hU : U ∈ uniformity α) :
    ⋃ i, UniformSpace.ball (xs i) U = univ := by
  rw [← biUnion_range (f := xs) (g := fun x ↦ UniformSpace.ball x U)]
  exact Dense.biUnion_uniformity_ball xs_dense hU

/-!
### Uniformity bases
-/

/-- Open elements of `𝓤 α` form a basis of `𝓤 α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef169b1cee415481d609f5882d80f61e629ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
