# CommShift₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dee3f94f4958725938a418715f9bdeb677038f5796af2c0ae493676a9d79eb25",
  "kind": "class",
  "lexical_name": "CommShift₂",
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
  "slug": "commshift--ce163c33cddfebcb9bc14f03",
  "source": {
    "blob": "a90ea844557101b1f3b5fe3093f7b8e213bbc5f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce163c33cddfebcb9bc14f0321210bbe02c18e1c81a9cab1799fa32c03a4e17b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dee3f94f4958725938a418715f9bdeb677038f5796af2c0ae493676a9d79eb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CommShift₂ {M : Type*} [AddCommMonoid M] [HasShift C₁ M] [HasShift C₂ M] [HasShift D M]
    (G : C₁ ⥤ C₂ ⥤ D) (h : CommShift₂Setup D M) where
  commShiftObj (X₁ : C₁) : (G.obj X₁).CommShift M := by infer_instance
  commShift_map {X₁ Y₁ : C₁} (f : X₁ ⟶ Y₁) : NatTrans.CommShift (G.map f) M := by infer_instance
  commShiftFlipObj (X₂ : C₂) : (G.flip.obj X₂).CommShift M := by infer_instance
  commShift_flip_map {X₂ Y₂ : C₂} (g : X₂ ⟶ Y₂) : NatTrans.CommShift (G.flip.map g) M := by
    infer_instance
  comm (G h) (X₁ : C₁) (X₂ : C₂) (m n : M) :
    ((G.obj (X₁⟦m⟧)).commShiftIso n).hom.app X₂ ≫
      (((G.flip.obj X₂).commShiftIso m).hom.app X₁)⟦n⟧' =
        ((G.flip.obj (X₂⟦n⟧)).commShiftIso m).hom.app X₁ ≫
          (((G.obj X₁).commShiftIso n).hom.app X₂)⟦m⟧' ≫
            (shiftComm ((G.obj X₁).obj X₂) m n).inv ≫ (h.ε m n).val.app _

/-- This alias for `Functor.CommShift₂.comm` allows to use the dot notation. -/
alias commShift₂_comm := CommShift₂.comm

attribute [reassoc] commShift₂_comm

/-- A bifunctor `G : C₁ ⥤ C₂ ⥤ D` commutes with the shifts by `ℤ` if all functors
`G.obj X₁` and `G.flip X₂` are equipped with `Functor.CommShift` structures, in a way
that is natural in `X₁` and `X₂`, and that these isomorphisms for the shift by `p`
on the first variable and the shift by `q` on the second variable commute up
to the sign `(-1) ^ (p * q)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90ea844557101b1f3b5fe3093f7b8e213bbc5f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
