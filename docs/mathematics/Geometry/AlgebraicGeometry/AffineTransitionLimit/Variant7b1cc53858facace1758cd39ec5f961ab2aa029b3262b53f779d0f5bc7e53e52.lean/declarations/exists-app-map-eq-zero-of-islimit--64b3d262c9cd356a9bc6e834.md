# exists_app_map_eq_zero_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9d7bcd0-f4b0-8615-955f-d37e5bbe7f4c",
  "kind": "lemma",
  "lexical_name": "exists_app_map_eq_zero_of_isLimit",
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
  "slug": "exists-app-map-eq-zero-of-islimit--64b3d262c9cd356a9bc6e834",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 825,
    "line": 797,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64b3d262c9cd356a9bc6e8347a9c6aa728ac62b16d7378f9b874f455143b22e3",
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

Occurrence: `result:c9d7bcd0-f4b0-8615-955f-d37e5bbe7f4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–825.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_app_map_eq_zero_of_isLimit [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    {i : I} {U : (D.obj i).Opens} (hU : IsCompact (X := D.obj i) U) (s : Γ(D.obj i, U))
    (hs : (c.π.app i).app U s = 0) :
    ∃ (j : I) (f : j ⟶ i), (D.map f).app U s = 0 := by
  have : CompactSpace ↥((opensDiagram D i U).obj (Over.mk (𝟙 i))) :=
    isCompact_iff_compactSpace.mp (by simpa)
  have H : (D.map (𝟙 _) ⁻¹ᵁ U).ι ''ᵁ ⊤ ≤ U := by simp
  obtain ⟨j, f, hf⟩ := exists_appTop_map_eq_zero_of_isLimit _ _
    (isLimitOpensCone D c hc i U) (i := .mk (𝟙 i))
    ((D.obj i).presheaf.map (homOfLE (show (D.map (𝟙 _) ⁻¹ᵁ U).ι ''ᵁ ⊤ ≤ U by simp)).op s) (by
      rw [← map_zero (c.pt.presheaf.map (homOfLE
        (show (c.π.app i ⁻¹ᵁ U).ι ''ᵁ ⊤ ≤ c.π.app i ⁻¹ᵁ U by simp)).op).hom, ← hs]
      dsimp [Scheme.Opens.toScheme_presheaf_obj]
      rw [← ConcreteCategory.comp_apply, ← ConcreteCategory.comp_apply]
      congr! 2
      simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE])
  dsimp at hf
  refine ⟨j.left, f.left, ?_⟩
  have hf' : f.left = j.hom := by simpa using Over.w f
  convert!
    congr((D.obj j.left).presheaf.map
      (homOfLE (show D.map f.left ⁻¹ᵁ U ≤ (D.map j.hom ⁻¹ᵁ U).ι ''ᵁ ⊤ by simp [hf'])).op $hf)
  · dsimp [Scheme.Opens.toScheme_presheaf_obj]
    rw [← ConcreteCategory.comp_apply, ← ConcreteCategory.comp_apply]
    congr! 2
    simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE]
  · simp

include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
