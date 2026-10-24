# endEquivSectionsFibers_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0e5f930-02ca-34e7-09be-adebf8fcd92c",
  "kind": "lemma",
  "lexical_name": "endEquivSectionsFibers_π",
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
  "slug": "endequivsectionsfibers--26e13b1855c48e4fa70194cd",
  "source": {
    "blob": "653bf9d4c5cc3d31c9e3f91af36c6071f6f70cbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e13b1855c48e4fa70194cd0f4c653245eaeb60e909ee19b34d803a521d6e88",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0e5f930-02ca-34e7-09be-adebf8fcd92c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma endEquivSectionsFibers_π (f : End F) (A : PointedGaloisObject F) :
    (endEquivSectionsFibers F f).val A = f.app A A.pt := by
  dsimp [endEquivSectionsFibers, Types.sectionsEquiv]
  erw [Types.limitEquivSections_apply]
  simp only [colimitCoyonedaHomIsoLimit'_π_apply, incl_obj, comp_obj, FintypeCat.incl_obj, op_obj,
    FunctorToTypes.comp]
  change (((FullyFaithful.whiskeringRight (FullyFaithful.ofFullyFaithful
      FintypeCat.incl) C).homEquiv) f).app A
    (((colimit.ι _ _) ≫ (colimit.isoColimitCocone ⟨cocone F, isColimit F⟩).hom).app
      A _) = f.app A A.pt
  simp
  rfl

/-- Functorial isomorphism `Aut A ≅ F.obj A` for Galois objects `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653bf9d4c5cc3d31c9e3f91af36c6071f6f70cbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
