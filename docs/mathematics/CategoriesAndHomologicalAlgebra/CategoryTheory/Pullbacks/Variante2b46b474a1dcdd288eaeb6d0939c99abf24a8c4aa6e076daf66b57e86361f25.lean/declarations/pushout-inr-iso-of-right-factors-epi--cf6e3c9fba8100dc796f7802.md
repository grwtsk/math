# pushout_inr_iso_of_right_factors_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36e748a7efa92679826e34ef24d2ac8b52bd02ac646bcedf285d5b332fc03273",
  "kind": "instance",
  "lexical_name": "pushout_inr_iso_of_right_factors_epi",
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
  "slug": "pushout-inr-iso-of-right-factors-epi--cf6e3c9fba8100dc796f7802",
  "source": {
    "blob": "f0e213a7cac9ef82a6b92e3d57f0854ef406a36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1856,
    "line": 1839,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf6e3c9fba8100dc796f7802ecbb55134e71b214421049c6b1fd245127d8328b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36e748a7efa92679826e34ef24d2ac8b52bd02ac646bcedf285d5b332fc03273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1839–1856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pushout_inr_iso_of_right_factors_epi (f : X ⟶ Y) :
    IsIso (pushout.inr : _ ⟶ pushout h (h ≫ f)) := by
  convert (congrArg IsIso (show pushout.inr ≫ _ = _ from colimit.isoColimitCocone_ι_inv
    ⟨_, pushoutIsPushoutOfEpiComp (𝟙 _) f h⟩ WalkingSpan.right)).mp
    inferInstance
  · apply (Category.comp_id _).symm
  · apply (Category.comp_id _).symm
#align category_theory.limits.pushout_inr_iso_of_right_factors_epi CategoryTheory.Limits.pushout_inr_iso_of_right_factors_epi

end PushoutLeftIso

section PushoutRightIso

open WalkingSpan

variable (f : X ⟶ Y) (g : X ⟶ Z) [IsIso g]

/-- If `f : X ⟶ Z` is iso, then `Y ⨿[X] Z ≅ Y`. This is the explicit colimit cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean#L1839).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e213a7cac9ef82a6b92e3d57f0854ef406a36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
