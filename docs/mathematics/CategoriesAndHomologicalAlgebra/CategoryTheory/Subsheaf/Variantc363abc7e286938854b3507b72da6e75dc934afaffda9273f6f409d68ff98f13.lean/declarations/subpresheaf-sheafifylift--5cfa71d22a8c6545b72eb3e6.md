# Subpresheaf.sheafifyLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:939f92884a11b0dfb44df8b397661d8645e6d7dc6921835a79e7a4be7de90899",
  "kind": "def",
  "lexical_name": "Subpresheaf.sheafifyLift",
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
  "slug": "subpresheaf-sheafifylift--5cfa71d22a8c6545b72eb3e6",
  "source": {
    "blob": "e973cc1676dbcf324f097fd0e9c1d41c34ed9476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cfa71d22a8c6545b72eb3e6d31d71fc25c9bd2697db8e42011093e6cdc12e63",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:939f92884a11b0dfb44df8b397661d8645e6d7dc6921835a79e7a4be7de90899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Subpresheaf.sheafifyLift (f : G.toPresheaf ⟶ F') (h : Presieve.IsSheaf J F') :
    (G.sheafify J).toPresheaf ⟶ F' where
  app _ s := (h (G.sieveOfSection s.1) s.prop).amalgamate
    (_) ((G.family_of_elements_compatible s.1).compPresheafMap f)
  naturality := by
    intro U V i
    ext s
    apply (h _ ((Subpresheaf.sheafify J G).toPresheaf.map i s).prop).isSeparatedFor.ext
    intro W j hj
    refine (Presieve.IsSheafFor.valid_glue (h _ ((G.sheafify J).toPresheaf.map i s).2)
      ((G.family_of_elements_compatible _).compPresheafMap _) _ hj).trans ?_
    dsimp
    conv_rhs => rw [← FunctorToTypes.map_comp_apply]
    change _ = F'.map (j ≫ i.unop).op _
    refine Eq.trans ?_ (Presieve.IsSheafFor.valid_glue (h _ s.2)
      ((G.family_of_elements_compatible s.1).compPresheafMap f) (j ≫ i.unop) ?_).symm
    · dsimp [Presieve.FamilyOfElements.compPresheafMap]
      exact congr_arg _ (Subtype.ext (FunctorToTypes.map_comp_apply _ _ _ _).symm)
    · dsimp [Presieve.FamilyOfElements.compPresheafMap] at hj ⊢
      rwa [FunctorToTypes.map_comp_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e973cc1676dbcf324f097fd0e9c1d41c34ed9476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
