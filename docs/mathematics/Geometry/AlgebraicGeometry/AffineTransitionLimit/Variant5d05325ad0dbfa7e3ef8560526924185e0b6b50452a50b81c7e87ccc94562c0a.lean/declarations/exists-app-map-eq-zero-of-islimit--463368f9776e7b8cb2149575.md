# exists_app_map_eq_zero_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 789,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd93e72d-7b59-4196-f73b-b6aafcfa5e95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2f65c41-7f89-d03e-6ce9-55305dd6fb45",
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
  "slug": "exists-app-map-eq-zero-of-islimit--463368f9776e7b8cb2149575",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 789,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:463368f9776e7b8cb21495759c943140000ff708d1788044058290645a38ff78",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f65c41-7f89-d03e-6ce9-55305dd6fb45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–817.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
