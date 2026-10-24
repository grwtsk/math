# Hom.iUnion_support_ker_openCover_map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 677,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fec917a0-35a1-7326-0064-3ce15de7b3b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef661656-e96e-b99e-a9e7-a814150f1d92",
  "kind": "lemma",
  "lexical_name": "Hom.iUnion_support_ker_openCover_map_comp",
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
  "slug": "hom-iunion-support-ker-opencover-map-comp--e7c21020cd9fea3e68034184",
  "source": {
    "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 677,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7c21020cd9fea3e680341848be2c348855b6612d83d916c25026eb45ecef85e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef661656-e96e-b99e-a9e7-a814150f1d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.iUnion_support_ker_openCover_map_comp
    (f : X.Hom Y) [QuasiCompact f] (𝒰 : X.OpenCover) [Finite 𝒰.J] :
    ⋃ i, ((𝒰.map i ≫ f).ker.support : Set Y) = f.ker.support := by
  cases isEmpty_or_nonempty 𝒰.J
  · have : IsEmpty X := Function.isEmpty 𝒰.f
    simp [ker_eq_top_of_isEmpty]
  suffices ∀ U : Y.affineOpens,
      (⋃ i, (𝒰.map i ≫ f).ker.support) ∩ U = (f.ker.support ∩ U : Set Y) by
    ext x
    obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ :=
      (isBasis_affine_open Y).exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
    simpa [hxU] using congr(x ∈ $(this ⟨U, hU⟩))
  intro U
  simp only [Set.iUnion_inter, coe_support_inter, ← f.iInf_ker_openCover_map_comp_apply 𝒰,
    Scheme.zeroLocus_iInf_of_nonempty]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce5dd422aa2b418b7a04d1ca6a8d56487a994d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
