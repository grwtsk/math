# isColimitMapCoconeOfSubobjectMkEqISup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f00095656657d2996b01c7b4d4ef1c94db802fa94eae9d81fbb188ffeea14572",
  "kind": "def",
  "lexical_name": "isColimitMapCoconeOfSubobjectMkEqISup",
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
  "slug": "iscolimitmapcoconeofsubobjectmkeqisup--e384eccd918c0af820de1a1c",
  "source": {
    "blob": "4e0e721beaccdf5d81a354d15322cd3f515bc8fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e384eccd918c0af820de1a1cd856e36678ab2fcba21bdfdd4aed09a9671a0b4c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f00095656657d2996b01c7b4d4ef1c94db802fa94eae9d81fbb188ffeea14572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitMapCoconeOfSubobjectMkEqISup
    [IsFiltered J] (c : Cocone (F ⋙ MonoOver.forget _)) [Mono c.pt.hom]
    (h : Subobject.mk c.pt.hom = ⨆ j, Subobject.mk (F.obj j).obj.hom) :
    IsColimit ((Over.forget _).mapCocone c) := by
  let f : colimit (F ⋙ MonoOver.forget X ⋙ Over.forget X) ⟶ X :=
    colimit.desc _ (Cocone.mk X
      { app j := (F.obj j).obj.hom
        naturality {j j'} g := by simp [MonoOver.forget] })
  haveI := mono_of_isColimit_monoOver F (colimit.isColimit _) f (by simp [f])
  have := subobjectMk_of_isColimit_eq_iSup F (colimit.isColimit _) f (by simp [f])
  rw [← h] at this
  refine IsColimit.ofIsoColimit (colimit.isColimit _)
    (Cocones.ext (Subobject.isoOfMkEqMk _ _ this) (fun j ↦ ?_))
  rw [← cancel_mono (c.pt.hom)]
  dsimp
  rw [Category.assoc, Subobject.ofMkLEMk_comp, Over.w]
  apply colimit.ι_desc

/-- If `C` is a Grothendieck abelian category, `X : C`, if `F : J ⥤ MonoOver X` is a
functor from a `κ`-filtered category `J` with `κ` a regular cardinal such
that `HasCardinalLT (Subobject X) κ`, and if the colimit of `F` (computed in `C`)
maps epimorphically onto `X`, then there exists `j : J` such that `(F.obj j).obj.hom`
is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0e721beaccdf5d81a354d15322cd3f515bc8fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
