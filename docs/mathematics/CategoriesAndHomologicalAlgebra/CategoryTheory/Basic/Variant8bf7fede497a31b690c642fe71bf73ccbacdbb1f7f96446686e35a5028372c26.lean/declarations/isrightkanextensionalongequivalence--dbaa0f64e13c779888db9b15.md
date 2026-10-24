# isRightKanExtensionAlongEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b08fc95b4fd73d0a4c8899a47c9dd09db42ae56dc5c5a6f9b1221b6bbb4fe9c",
  "kind": "instance",
  "lexical_name": "isRightKanExtensionAlongEquivalence",
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
  "slug": "isrightkanextensionalongequivalence--dbaa0f64e13c779888db9b15",
  "source": {
    "blob": "d0ad33cbd18f31a52a9f9a31e5294af4f952f5da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 972,
    "line": 961,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbaa0f64e13c779888db9b155ff4117ac875b0208082549ea9cc14993b9ea4f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b08fc95b4fd73d0a4c8899a47c9dd09db42ae56dc5c5a6f9b1221b6bbb4fe9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–972.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isRightKanExtensionAlongEquivalence (α : L.functor ⋙ F₁ ≅ F₀) :
    F₁.IsRightKanExtension α.hom := by
  refine ⟨⟨?_⟩⟩
  apply RightExtension.isUniversalPostcomp₁Equiv
    (G := L.functor) L.functor.leftUnitor F₀ _ |>.invFun
  refine IsTerminal.ofUniqueHom
    (fun y ↦ CostructuredArrow.homMk <| y.left.leftUnitor.inv ≫ y.hom ≫ α.inv) ?_
  intro y m
  ext x
  simpa using congr_app m.w x =≫ α.inv.app x

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ad33cbd18f31a52a9f9a31e5294af4f952f5da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
