# pullbackSpecIso'_symmetry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98db2853159f11822039f1a58bba251900d0f540",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b4a9362-c3a6-9072-c027-c7e1ad629a7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9db08a9-3e16-a82a-8ec5-61c7adb9915f",
  "kind": "lemma",
  "lexical_name": "pullbackSpecIso'_symmetry",
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
  "slug": "pullbackspeciso-symmetry--9874f04a7836402215590fdd",
  "source": {
    "blob": "98db2853159f11822039f1a58bba251900d0f540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 360,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9874f04a7836402215590fdd06d0fd069f10bb01a3027311586967c8599c6314",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9db08a9-3e16-a82a-8ec5-61c7adb9915f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackSpecIso'_symmetry [Algebra R T] :
    (pullbackSymmetry .. ≪≫ pullbackSpecIso' R S T).hom =
      (pullbackSpecIso' ..).hom ≫
      Spec.map (CommRingCat.ofHom (Algebra.TensorProduct.comm R S T)) := by
  simp_rw [Iso.trans_hom, ← Iso.eq_comp_inv, Category.assoc, ← Iso.inv_comp_eq]
  ext
  · have : (RingHomClass.toRingHom (Algebra.TensorProduct.comm R S T)).comp
      Algebra.TensorProduct.includeLeftRingHom =
      RingHomClass.toRingHom Algebra.TensorProduct.includeRight := rfl
    rw [Category.assoc, pullbackSymmetry_hom_comp_fst]
    simp only [pullbackSpecIso', specOverSpec_over, pullbackSpecIso_inv_snd, Category.assoc,
      pullbackSpecIso_inv_fst, ← Spec.map_comp, ← CommRingCat.ofHom_comp, this]
  have : (RingHomClass.toRingHom (Algebra.TensorProduct.comm R S T)).comp
      (RingHomClass.toRingHom Algebra.TensorProduct.includeRight) =
      Algebra.TensorProduct.includeLeftRingHom := rfl
  rw [Category.assoc, pullbackSymmetry_hom_comp_snd]
  simp only [pullbackSpecIso', specOverSpec_over, pullbackSpecIso_inv_fst, Category.assoc,
    pullbackSpecIso_inv_snd, ← Spec.map_comp, ← CommRingCat.ofHom_comp, this]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98db2853159f11822039f1a58bba251900d0f540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
