# Scheme.exists_isOpenCover_and_isAffine_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da2b3653-6a3c-6507-a2bc-4e4c3b2689da",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_isOpenCover_and_isAffine_of_finite",
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
  "slug": "scheme-exists-isopencover-and-isaffine-of-finite--f5b98bb622e197802e29cf48",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1104,
    "line": 1080,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5b98bb622e197802e29cf48b6922c8bdb9eb22cdce44d4f557b25d148a0bfd0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da2b3653-6a3c-6507-a2bc-4e4c3b2689da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.exists_isOpenCover_and_isAffine_of_finite [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)] [∀ (i : I), CompactSpace (D.obj i)]
    [∀ (i : I), QuasiSeparatedSpace (D.obj i)]
    {J : Type*} [Finite J] (U : J → c.pt.Opens) (hU : IsOpenCover U)
    (hU' : ∀ i, IsAffineOpen (U i)) :
    ∃ (i : I) (V : J → (D.obj i).Opens),
      IsOpenCover V ∧ ∀ j, IsAffineOpen (V j) ∧ U j = c.π.app i ⁻¹ᵁ (V j) := by
  classical
  choose j V hV hVU using fun k ↦ exists_isAffineOpen_preimage_eq D c hc (U k) (hU' k)
  cases nonempty_fintype J
  obtain ⟨i, fi⟩ := IsCofiltered.inf_objs_exists (Finset.univ.image j)
  replace fi : ∀ k, i ⟶ j k := fun k ↦ (fi (by simp)).some
  obtain ⟨k, fkj, e⟩ := exists_map_eq_top D c hc (⨆ (k), D.map (fi k) ⁻¹ᵁ V k) (by
    simp_rw [Hom.preimage_iSup, ← Hom.comp_preimage, c.w, hVU]
    exact hU)
  refine ⟨k, fun x ↦ D.map (fkj ≫ fi x) ⁻¹ᵁ V _, ?_, fun k ↦ ⟨(hV k).preimage _, ?_⟩⟩
  · refine top_le_iff.mp (e.symm.trans_le ?_)
    simp_rw [Hom.preimage_iSup, ← Hom.comp_preimage, ← D.map_comp]
    simp
  · rw [← hVU, ← Hom.comp_preimage, c.w]

open TopologicalSpace in
include hc in
/-- Suppose `{ Xᵢ }` is an inverse system of qcqs schemes with affine transition maps.
Then any affine open cover of `lim Xᵢ` comes from a finite level. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
