# subobjectMk_of_isColimit_eq_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e0e721beaccdf5d81a354d15322cd3f515bc8fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01be26a7-7d59-0b9e-548b-becab87a4dac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47b07e30-ec96-d5fe-c407-6a941b947584",
  "kind": "lemma",
  "lexical_name": "subobjectMk_of_isColimit_eq_iSup",
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
  "slug": "subobjectmk-of-iscolimit-eq-isup--1cae422a10f44bbcc1bcef2f",
  "source": {
    "blob": "4e0e721beaccdf5d81a354d15322cd3f515bc8fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cae422a10f44bbcc1bcef2f420d1a96889051e00bd367ea9f6aa29860b72219",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47b07e30-ec96-d5fe-c407-6a941b947584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subobjectMk_of_isColimit_eq_iSup :
    haveI := mono_of_isColimit_monoOver F hc f hf
    Subobject.mk f = ⨆ j, Subobject.mk (F.obj j).obj.hom := by
  haveI := mono_of_isColimit_monoOver F hc f hf
  apply le_antisymm
  · rw [le_iSup_iff]
    intro s H
    induction' s using Subobject.ind with Z g _
    let c' : Cocone (F ⋙ MonoOver.forget _ ⋙ Over.forget _) := Cocone.mk Z
      { app j := Subobject.ofMkLEMk _ _ (H j)
        naturality j j' f := by
          dsimp
          simpa only [← cancel_mono g, Category.assoc, Subobject.ofMkLEMk_comp,
            Category.comp_id] using MonoOver.w (F.map f) }
    exact Subobject.mk_le_mk_of_comm (hc.desc c')
      (hc.hom_ext (fun j ↦ by rw [hc.fac_assoc c' j, hf, Subobject.ofMkLEMk_comp]))
  · rw [iSup_le_iff]
    intro j
    exact Subobject.mk_le_mk_of_comm (c.ι.app j) (hf j)

end

/-- Let `X : C` be an object in a Grothendieck abelian category,
`F : J ⥤ MonoOver X` a functor from a filtered category, `c` a cocone for
the composition `F ⋙ MonoOver.forget _ : J ⥤ Over X`. We assume
that `c.pt.hom : c.pt.left ⟶ X` is a monomorphism and that the corresponding
subobject of `X` is the supremum of the subobjects given by `(F.obj j).obj.hom`,
then `c` becomes a colimit cocone after the application of
the forget functor `Over X ⥤ C`. (See also `subobjectMk_of_isColimit_eq_iSup`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0e721beaccdf5d81a354d15322cd3f515bc8fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
