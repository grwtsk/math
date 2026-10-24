# Limits.Cocone.isColimitYonedaEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b7f858a644e87b2ceabc8a76b98547dcfb3997f9fc455a4acd3f7af73ae9485",
  "kind": "def",
  "lexical_name": "Limits.Cocone.isColimitYonedaEquiv",
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
  "slug": "limits-cocone-iscolimityonedaequiv--7406d613b274b3c266bd8ba1",
  "source": {
    "blob": "b1ffa7e84fbf9402439a3d87e49728b2487cfbe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Varianta28954a202661f9479e15c586bed944d71e405a5f494cb2141c1e3869646f91a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7406d613b274b3c266bd8ba1daaa9489050b7477b6492b4385e3c0d53b6eacbe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Varianta28954a202661f9479e15c586bed944d71e405a5f494cb2141c1e3869646f91a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b7f858a644e87b2ceabc8a76b98547dcfb3997f9fc455a4acd3f7af73ae9485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Limits.Cocone.isColimitYonedaEquiv {F : J ⥤ C} (c : Cocone F) :
    IsColimit c ≃ ∀ (X : C), IsLimit ((yoneda.obj X).mapCone c.op) where
  toFun h _ := isLimitOfPreserves _ h.op
  invFun h := IsLimit.unop (yonedaJointlyReflectsLimits _ _ h)
  left_inv _ := Subsingleton.elim _ _
  right_inv _ := by ext; apply Subsingleton.elim

set_option backward.defeqAttrib.useBackward true in
/-- The cone of `F` corresponding to an element in `(F ⋙ coyoneda.obj X).sections`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Varianta28954a202661f9479e15c586bed944d71e405a5f494cb2141c1e3869646f91a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Varianta28954a202661f9479e15c586bed944d71e405a5f494cb2141c1e3869646f91a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1ffa7e84fbf9402439a3d87e49728b2487cfbe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
