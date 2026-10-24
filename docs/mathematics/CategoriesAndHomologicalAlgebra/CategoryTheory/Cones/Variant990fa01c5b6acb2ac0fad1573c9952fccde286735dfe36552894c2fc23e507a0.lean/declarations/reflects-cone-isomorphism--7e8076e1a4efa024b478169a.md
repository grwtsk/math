# reflects_cone_isomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e83735ec15e7ce52a4b2f2d5ad459742a33014f3bcaf07e35fbd553523a8f7c8",
  "kind": "instance",
  "lexical_name": "reflects_cone_isomorphism",
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
  "slug": "reflects-cone-isomorphism--7e8076e1a4efa024b478169a",
  "source": {
    "blob": "5ccac092cf8f3d65d9b67c30fc878e505438f200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 516,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e8076e1a4efa024b478169a8bc4c21b82c12260f933f15a4fe423879e338d5e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e83735ec15e7ce52a4b2f2d5ad459742a33014f3bcaf07e35fbd553523a8f7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance reflects_cone_isomorphism (F : C ⥤ D) [F.ReflectsIsomorphisms] (K : J ⥤ C) :
    (functoriality K F).ReflectsIsomorphisms := by
  constructor
  intro A B f _
  have : IsIso (F.map f.hom) :=
    (forget (K ⋙ F)).map_isIso ((functoriality K F).map f)
  have := ReflectsIsomorphisms.reflects F f.hom
  apply cone_iso_of_hom_iso

end

end Cone

namespace Cones

@[deprecated (since := "2026-03-06")] alias ext := Cone.ext
@[deprecated (since := "2026-03-06")] alias eta := Cone.eta
@[deprecated (since := "2026-03-06")] alias cone_iso_of_hom_iso := Cone.cone_iso_of_hom_iso
@[deprecated (since := "2026-03-06")] alias extend := Cone.extendHom
@[deprecated (since := "2026-03-06")] alias extendId := Cone.extendId
@[deprecated (since := "2026-03-06")] alias extendComp := Cone.extendComp
@[deprecated (since := "2026-03-06")] alias extendIso := Cone.extendIso
@[deprecated (since := "2026-03-06")] alias postcompose := Cone.postcompose
@[deprecated (since := "2026-03-06")] alias postcomposeComp := Cone.postcomposeComp
@[deprecated (since := "2026-03-06")] alias postcomposeId := Cone.postcomposeId
@[deprecated (since := "2026-03-06")] alias postcomposeEquivalence := Cone.postcomposeEquivalence
@[deprecated (since := "2026-03-06")] alias whiskering := Cone.whiskering
@[deprecated (since := "2026-03-06")] alias whiskeringEquivalence := Cone.whiskeringEquivalence
@[deprecated (since := "2026-03-06")] alias equivalenceOfReindexing := Cone.equivalenceOfReindexing
@[deprecated (since := "2026-03-06")] alias forget := Cone.forget
@[deprecated (since := "2026-03-06")] alias functoriality := Cone.functoriality
@[deprecated (since := "2026-03-06")]
alias functorialityCompFunctoriality := Cone.functorialityCompFunctoriality
@[deprecated (since := "2026-03-06")] alias functoriality_full := Cone.functoriality_full
@[deprecated (since := "2026-03-06")] alias functoriality_faithful := Cone.functoriality_faithful
@[deprecated (since := "2026-03-06")]
alias functorialityEquivalence := Cone.functorialityEquivalence
@[deprecated (since := "2026-03-06")]
alias reflects_cone_isomorphism := Cone.reflects_cone_isomorphism

end Cones

namespace Cocones

@[deprecated (since := "2026-03-06")] alias ext := Cocone.ext
@[deprecated (since := "2026-03-06")] alias eta := Cocone.eta
@[deprecated (since := "2026-03-06")] alias cone_iso_of_hom_iso := Cocone.cocone_iso_of_hom_iso
@[deprecated (since := "2026-03-06")] alias extend := Cocone.extendHom
@[deprecated (since := "2026-03-06")] alias extendId := Cocone.extendId
@[deprecated (since := "2026-03-06")] alias extendComp := Cocone.extendComp
@[deprecated (since := "2026-03-06")] alias extendIso := Cocone.extendIso
@[deprecated (since := "2026-03-06")] alias postcompose := Cocone.precompose
@[deprecated (since := "2026-03-06")] alias postcomposeComp := Cocone.precomposeComp
@[deprecated (since := "2026-03-06")] alias postcomposeId := Cocone.precomposeId
@[deprecated (since := "2026-03-06")] alias postcomposeEquivalence := Cocone.precomposeEquivalence
@[deprecated (since := "2026-03-06")] alias whiskering := Cocone.whiskering
@[deprecated (since := "2026-03-06")] alias whiskeringEquivalence := Cocone.whiskeringEquivalence
@[deprecated (since := "2026-03-06")]
alias equivalenceOfReindexing := Cocone.equivalenceOfReindexing
@[deprecated (since := "2026-03-06")] alias forget := Cocone.forget
@[deprecated (since := "2026-03-06")] alias functoriality := Cocone.functoriality
@[deprecated (since := "2026-03-06")]
alias functorialityCompFunctoriality := Cocone.functorialityCompFunctoriality
@[deprecated (since := "2026-03-06")] alias functoriality_full := Cocone.functoriality_full
@[deprecated (since := "2026-03-06")] alias functoriality_faithful := Cocone.functoriality_faithful
@[deprecated (since := "2026-03-06")]
alias functorialityEquivalence := Cocone.functorialityEquivalence
@[deprecated (since := "2026-03-06")]
alias reflects_cone_isomorphism := Cocone.reflects_cocone_isomorphism

end Cocones

end Limits

namespace Functor

variable (H : C ⥤ D) {F : J ⥤ C} {G : J ⥤ C}

open CategoryTheory.Limits

/-- The image of a cone in C under a functor G : C ⥤ D is a cone in D. -/
@[to_dual (attr := implicit_reducible, simps!)
/-- The image of a cocone in C under a functor G : C ⥤ D is a cocone in D. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccac092cf8f3d65d9b67c30fc878e505438f200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
