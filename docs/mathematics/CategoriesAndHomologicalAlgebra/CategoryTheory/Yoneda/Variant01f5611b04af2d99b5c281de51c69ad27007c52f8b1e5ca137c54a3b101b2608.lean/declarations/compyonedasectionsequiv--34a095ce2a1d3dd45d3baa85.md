# compYonedaSectionsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23234c8ea75ed189c0ef361b1285850b437881c0583d0d53487194ff31a53f9f",
  "kind": "def",
  "lexical_name": "compYonedaSectionsEquiv",
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
  "slug": "compyonedasectionsequiv--34a095ce2a1d3dd45d3baa85",
  "source": {
    "blob": "613c4903bde33166d6458780196815ce0d4f9039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant01f5611b04af2d99b5c281de51c69ad27007c52f8b1e5ca137c54a3b101b2608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34a095ce2a1d3dd45d3baa85ef2fe60e90254c3c84510d5108d590174a3977ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant01f5611b04af2d99b5c281de51c69ad27007c52f8b1e5ca137c54a3b101b2608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23234c8ea75ed189c0ef361b1285850b437881c0583d0d53487194ff31a53f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compYonedaSectionsEquiv (F : J ⥤ Cᵒᵖ) (X : C) :
    (F ⋙ yoneda.obj X).sections ≃ ((const J).obj (op X) ⟶ F) where
  toFun s :=
    { app := fun j => (s.val j).op
      naturality := fun j j' f => by
        dsimp
        rw [Category.id_comp]
        exact Quiver.Hom.unop_inj (s.property f).symm }
  invFun τ := ⟨fun j => (τ.app j).unop,
    fun {j j'} f => Quiver.Hom.op_inj (by simpa using! (τ.naturality f).symm)⟩

end

variable {J : Type v} [SmallCategory J] {C : Type u} [Category.{v} C]

set_option backward.defeqAttrib.useBackward true in
attribute [local simp←] comp_apply in
set_option backward.isDefEq.respectTransparency false in
/-- A cone on `F` with cone point `X` is the same as an element of `lim Hom(X, F·)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant01f5611b04af2d99b5c281de51c69ad27007c52f8b1e5ca137c54a3b101b2608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant01f5611b04af2d99b5c281de51c69ad27007c52f8b1e5ca137c54a3b101b2608.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `613c4903bde33166d6458780196815ce0d4f9039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
