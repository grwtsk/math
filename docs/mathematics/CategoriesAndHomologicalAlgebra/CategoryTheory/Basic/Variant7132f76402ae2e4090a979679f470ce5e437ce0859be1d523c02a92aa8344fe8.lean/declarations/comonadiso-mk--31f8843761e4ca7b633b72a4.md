# ComonadIso.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07b431a298d8576910a1209081bbdf63957386438a09c171ce6c7b7c6014acb9",
  "kind": "def",
  "lexical_name": "ComonadIso.mk",
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
  "slug": "comonadiso-mk--31f8843761e4ca7b633b72a4",
  "source": {
    "blob": "33e74bca4a67007d9139c1cf31c33fa044ae5546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31f8843761e4ca7b633b72a4b5b0e191cd501500e7d23c5cbb277f12840e8ffa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07b431a298d8576910a1209081bbdf63957386438a09c171ce6c7b7c6014acb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ComonadIso.mk {M N : Comonad C} (f : (M : C ⥤ C) ≅ N)
    (f_ε : ∀ (X : C), f.hom.app X ≫ N.ε.app X = M.ε.app X := by cat_disch)
    (f_δ : ∀ (X : C), f.hom.app X ≫ N.δ.app X =
    M.δ.app X ≫ f.hom.app (M.obj X) ≫ N.map (f.hom.app X) := by cat_disch) : M ≅ N where
  hom :=
    { toNatTrans := f.hom
      app_ε := f_ε
      app_δ := f_δ }
  inv :=
    { toNatTrans := f.inv
      app_ε := fun X => by simp [← f_ε]
      app_δ := fun X => by
        rw [← NatIso.cancel_natIso_hom_left f]
        simp only [reassoc_of% (f_δ X), Iso.hom_inv_id_app_assoc, NatTrans.naturality_assoc]
        rw [← Functor.map_comp, Iso.hom_inv_id_app, Functor.map_id]
        apply (comp_id _).symm }

variable (C)

/-- The forgetful functor from the category of monads to the category of endofunctors.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33e74bca4a67007d9139c1cf31c33fa044ae5546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
