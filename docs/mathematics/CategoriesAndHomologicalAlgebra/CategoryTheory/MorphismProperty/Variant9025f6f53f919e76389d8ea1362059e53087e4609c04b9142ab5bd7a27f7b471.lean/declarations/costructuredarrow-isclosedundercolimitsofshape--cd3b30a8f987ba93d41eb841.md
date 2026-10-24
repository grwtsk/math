# CostructuredArrow.isClosedUnderColimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa62f092-4f20-e120-146d-46f292766709",
  "kind": "lemma",
  "lexical_name": "CostructuredArrow.isClosedUnderColimitsOfShape",
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
  "slug": "costructuredarrow-isclosedundercolimitsofshape--cd3b30a8f987ba93d41eb841",
  "source": {
    "blob": "77887bf594e7b084cdea7a9c2ef439f99b7e4463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd3b30a8f987ba93d41eb8417311e1a896842d53f07fe03aafd852c672d08881",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa62f092-4f20-e120-146d-46f292766709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CostructuredArrow.isClosedUnderColimitsOfShape {J : Type*} [Category* J]
    {P : MorphismProperty T} [P.RespectsIso] [PreservesColimitsOfShape J L] [HasColimitsOfShape J A]
    (c : ∀ (D : J ⥤ T) [HasColimit D], Cocone D)
    (hc : ∀ (D : J ⥤ T) [HasColimit D], IsColimit (c D))
    (H : ∀ (D : J ⥤ T) [HasColimit D] {X : T} (s : D ⟶ (Functor.const J).obj X),
      (∀ j, P (s.app j)) → P ((hc D).desc (Cocone.mk X s))) (X : T) :
    (P.costructuredArrowObj L (X := X)).IsClosedUnderColimitsOfShape J where
  colimitsOfShape_le Y := by
    intro ⟨d⟩
    let hd : IsColimit ((CategoryTheory.CostructuredArrow.proj L X ⋙ L).mapCocone d.cocone) :=
      isColimitOfPreserves _ d.isColimit
    have heq : Y.hom = hd.desc { pt := X, ι := { app j := (d.diag.obj j).hom } } := by
      refine hd.hom_ext fun j ↦ ?_
      simp only [IsColimit.fac]
      simp
    rw [P.costructuredArrowObj_iff, heq, ← hd.coconePointUniqueUpToIso_hom_desc (hc _),
      P.cancel_left_of_respectsIso]
    exact H _ _ d.prop_diag_obj

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77887bf594e7b084cdea7a9c2ef439f99b7e4463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
