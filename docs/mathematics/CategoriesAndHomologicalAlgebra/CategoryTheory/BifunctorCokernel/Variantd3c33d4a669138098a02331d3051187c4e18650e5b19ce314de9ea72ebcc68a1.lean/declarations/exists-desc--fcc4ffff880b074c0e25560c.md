# exists_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4d0b34c1cf78a62980831736e99deaae0bec609",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3c33d4a669138098a02331d3051187c4e18650e5b19ce314de9ea72ebcc68a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8864c89f-b9b6-1349-8411-acc878559831",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04ed65eb-834e-a814-9546-376c08dad7d7",
  "kind": "lemma",
  "lexical_name": "exists_desc",
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
  "slug": "exists-desc--fcc4ffff880b074c0e25560c",
  "source": {
    "blob": "c4d0b34c1cf78a62980831736e99deaae0bec609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variantd3c33d4a669138098a02331d3051187c4e18650e5b19ce314de9ea72ebcc68a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc4ffff880b074c0e25560c198e6f3328121584277bdd2f565678f53496890e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variantd3c33d4a669138098a02331d3051187c4e18650e5b19ce314de9ea72ebcc68a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04ed65eb-834e-a814-9546-376c08dad7d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_desc (s : CokernelCofork (coprod.desc ((F.map f₁).app Y₂) ((F.obj Y₁).map f₂))) :
    ∃ (l : (F.obj c₁.pt).obj c₂.pt ⟶ s.pt),
      (F.map c₁.π).app Y₂ ≫ (F.obj c₁.pt).map c₂.π ≫ l = s.π := by
  obtain ⟨l, hl⟩ := Cofork.IsColimit.desc' (mapIsColimit _ hc₁ (F.flip.obj Y₂)) s.π (by
    have := coprod.inl ≫= s.condition
    rw [coprod.inl_desc_assoc, comp_zero] at this
    rwa [zero_comp])
  obtain ⟨l', hl'⟩ := Cofork.IsColimit.desc' (mapIsColimit _ hc₂ (F.obj c₁.pt)) l (by
    have := coprod.inr ≫= s.condition
    rw [coprod.inr_desc_assoc, ← dsimp% hl, NatTrans.naturality_assoc, comp_zero] at this
    apply Cofork.IsColimit.hom_ext (mapIsColimit _ hc₁ (F.flip.obj X₂))
    rwa [zero_comp, comp_zero])
  exact ⟨l', by cat_disch⟩

end isColimitMapBifunctor

variable [HasBinaryCoproduct ((F.obj X₁).obj Y₂) ((F.obj Y₁).obj X₂)]
  [PreservesColimit (parallelPair f₁ 0) (F.flip.obj X₂)]

set_option backward.defeqAttrib.useBackward true in
open isColimitMapBifunctor in
/-- Let `c₁` (resp. `c₂`) be a colimit cokernel cofork for a morphism `f₁ : X₁ ⟶ Y₁`
in a category `C₁` (resp. `f₂ : X₂ ⟶ Y₂` in `C₂`). If `F : C₁ ⥤ C₂ ⥤ C` is a bifunctor,
then `(F.obj c₁.pt).obj c₂.pt` identifies to the cokernel of the morphism
`(F.obj X₁).obj Y₂ ⨿ (F.obj Y₁).obj X₂ ⟶ (F.obj Y₁).obj Y₂`
when the cokernel of `f₁` is preserved by `F.obj c₁.pt` and the cokernel of `f₂`
is preserved by `F.flip.obj X₁` and `F.flip.obj Y₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variantd3c33d4a669138098a02331d3051187c4e18650e5b19ce314de9ea72ebcc68a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variantd3c33d4a669138098a02331d3051187c4e18650e5b19ce314de9ea72ebcc68a1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d0b34c1cf78a62980831736e99deaae0bec609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
