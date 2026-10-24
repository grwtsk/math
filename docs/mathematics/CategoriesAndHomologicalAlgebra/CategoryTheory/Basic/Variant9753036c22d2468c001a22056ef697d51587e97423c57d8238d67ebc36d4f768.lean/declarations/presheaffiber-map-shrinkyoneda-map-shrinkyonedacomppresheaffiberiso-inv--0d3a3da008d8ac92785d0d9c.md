# presheafFiber_map_shrinkYoneda_map_shrinkYonedaCompPresheafFiberIso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5ea814d-9921-9d2f-bc9b-33bb035ea3b9",
  "kind": "lemma",
  "lexical_name": "presheafFiber_map_shrinkYoneda_map_shrinkYonedaCompPresheafFiberIso_inv_app",
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
  "slug": "presheaffiber-map-shrinkyoneda-map-shrinkyonedacomppresheaffiberiso-inv--0d3a3da008d8ac92785d0d9c",
  "source": {
    "blob": "8779ecc425a08aafddbb26e9b9c238de2476061c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d3a3da008d8ac92785d0d9c13cb0f87fb0400321d8649435c46ffe2ebe9ecb1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5ea814d-9921-9d2f-bc9b-33bb035ea3b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafFiber_map_shrinkYoneda_map_shrinkYonedaCompPresheafFiberIso_inv_app
    [LocallySmall.{w} C] {X Y : C} (f : X ⟶ Y) (x : Φ.fiber.obj X) :
    Φ.presheafFiber.map (shrinkYoneda.{w}.map f)
      (Φ.shrinkYonedaCompPresheafFiberIso.inv.app X x) =
    Φ.toPresheafFiber X x (shrinkYoneda.{w}.obj Y)
      (shrinkYonedaObjObjEquiv.symm f) := by
  rw [shrinkYonedaCompPresheafFiberIso_inv_app_toPresheafFiber]
  refine (Φ.toPresheafFiber_naturality_apply (shrinkYoneda.{w}.map f) _ x
    (shrinkYonedaObjObjEquiv.symm (𝟙 X))).trans (congr_arg _ ?_)
  simpa using shrinkYoneda_map_app_shrinkYonedaObjObjEquiv_symm.{w} (𝟙 _) f

section

variable {P : Cᵒᵖ ⥤ A} {T : A}
  (φ : ∀ (X : C) (_ : Φ.fiber.obj X), P.obj (op X) ⟶ T)
  (hφ : ∀ ⦃X Y : C⦄ (f : X ⟶ Y) (x : Φ.fiber.obj X),
    P.map f.op ≫ φ X x = φ Y (Φ.fiber.map f x) := by cat_disch)

set_option backward.defeqAttrib.useBackward true in
set_option backward.privateInPublic true in
/-- Constructor for morphisms from the fiber of a presheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8779ecc425a08aafddbb26e9b9c238de2476061c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
