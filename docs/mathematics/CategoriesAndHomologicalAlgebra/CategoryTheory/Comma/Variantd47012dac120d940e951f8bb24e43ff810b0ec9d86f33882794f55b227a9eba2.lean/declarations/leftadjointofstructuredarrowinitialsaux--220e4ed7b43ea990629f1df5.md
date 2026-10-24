# leftAdjointOfStructuredArrowInitialsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0cf4483fb20c2816fadfcc90295f2cf45006f4a99b1f6fb63a55a871a40cba4",
  "kind": "def",
  "lexical_name": "leftAdjointOfStructuredArrowInitialsAux",
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
  "slug": "leftadjointofstructuredarrowinitialsaux--220e4ed7b43ea990629f1df5",
  "source": {
    "blob": "51b363d3997a470c628558123be593bac35a35c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd47012dac120d940e951f8bb24e43ff810b0ec9d86f33882794f55b227a9eba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:220e4ed7b43ea990629f1df538852e4752997d3141fb82f50c9bbeaec803ba69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd47012dac120d940e951f8bb24e43ff810b0ec9d86f33882794f55b227a9eba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0cf4483fb20c2816fadfcc90295f2cf45006f4a99b1f6fb63a55a871a40cba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftAdjointOfStructuredArrowInitialsAux (A : C) (B : D) :
    ((⊥_ StructuredArrow A G).right ⟶ B) ≃ (A ⟶ G.obj B) where
  toFun g := (⊥_ StructuredArrow A G).hom ≫ G.map g
  invFun f := CommaMorphism.right (initial.to (StructuredArrow.mk f))
  left_inv g := by
    let B' : StructuredArrow A G := StructuredArrow.mk ((⊥_ StructuredArrow A G).hom ≫ G.map g)
    let g' : ⊥_ StructuredArrow A G ⟶ B' := StructuredArrow.homMk g rfl
    have : initial.to _ = g' := by cat_disch
    change CommaMorphism.right (initial.to B') = _
    rw [this]
    rfl
  right_inv f := by
    let B' : StructuredArrow A G := StructuredArrow.mk f
    apply (CommaMorphism.w (initial.to B')).symm.trans (Category.id_comp _)

/--
If each structured arrow category on `G` has an initial object, construct a left adjoint to `G`. It
is shown that it is a left adjoint in `adjunctionOfStructuredArrowInitials`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd47012dac120d940e951f8bb24e43ff810b0ec9d86f33882794f55b227a9eba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd47012dac120d940e951f8bb24e43ff810b0ec9d86f33882794f55b227a9eba2.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b363d3997a470c628558123be593bac35a35c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
