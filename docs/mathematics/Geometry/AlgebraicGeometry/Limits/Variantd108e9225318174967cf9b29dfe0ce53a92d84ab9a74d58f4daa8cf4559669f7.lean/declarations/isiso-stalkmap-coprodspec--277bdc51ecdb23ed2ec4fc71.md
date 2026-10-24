# isIso_stalkMap_coprodSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c5507bcef5900f1cbd60ad35ee429a73aa3f631",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59f5b679-f8c7-f9b7-f632-9fbc64ce28a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e75ee634-97e9-4b7e-03cc-ecfdcbc92b78",
  "kind": "lemma",
  "lexical_name": "isIso_stalkMap_coprodSpec",
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
  "slug": "isiso-stalkmap-coprodspec--277bdc51ecdb23ed2ec4fc71",
  "source": {
    "blob": "6c5507bcef5900f1cbd60ad35ee429a73aa3f631",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 529,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:277bdc51ecdb23ed2ec4fc717b81696c57b2a453493907498730fa4648741dd2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e75ee634-97e9-4b7e-03cc-ecfdcbc92b78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_stalkMap_coprodSpec (x) :
    IsIso ((coprodSpec R S).stalkMap x) := by
  obtain ⟨x | x, rfl⟩ := (coprodMk _ _).surjective x
  · have := Scheme.Hom.stalkMap_comp coprod.inl (coprodSpec R S) x
    rw [← IsIso.comp_inv_eq,
      Scheme.Hom.stalkMap_congr_hom _ (Spec.map _) (coprodSpec_inl R S)] at this
    rw [coprodMk_inl, ← this]
    let := (RingHom.fst R S).toAlgebra
    have : IsOpenImmersion (Spec.map (CommRingCat.ofHom (RingHom.fst R S))) :=
      IsOpenImmersion.of_isLocalization (1, 0)
    infer_instance
  · have := Scheme.Hom.stalkMap_comp coprod.inr (coprodSpec R S) x
    rw [← IsIso.comp_inv_eq,
      Scheme.Hom.stalkMap_congr_hom _ (Spec.map _) (coprodSpec_inr R S)] at this
    rw [coprodMk_inr, ← this]
    let := (RingHom.snd R S).toAlgebra
    have : IsOpenImmersion (Spec.map (CommRingCat.ofHom (RingHom.snd R S))) :=
      IsOpenImmersion.of_isLocalization (0, 1)
    infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c5507bcef5900f1cbd60ad35ee429a73aa3f631` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
