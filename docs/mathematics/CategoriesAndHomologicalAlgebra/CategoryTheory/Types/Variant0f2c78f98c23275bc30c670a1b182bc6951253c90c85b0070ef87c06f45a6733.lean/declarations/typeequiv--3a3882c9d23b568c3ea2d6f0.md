# typeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:264d40605bceabb9b0ba317ca6bc95a50c02612acf05d3b41b8e6e25734a0a29",
  "kind": "def",
  "lexical_name": "typeEquiv",
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
  "slug": "typeequiv--3a3882c9d23b568c3ea2d6f0",
  "source": {
    "blob": "65430a4c42150ce9b5e4480c231a53718ecbf228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a3882c9d23b568c3ea2d6f00eaa8cdcbed206293e38450a0e894557437c820e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:264d40605bceabb9b0ba317ca6bc95a50c02612acf05d3b41b8e6e25734a0a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def typeEquiv : Type u ≌ Sheaf typesGrothendieckTopology (Type u) where
  functor := yoneda'
  inverse := sheafToPresheaf _ _ ⋙ (evaluation _ _).obj (op PUnit)
  unitIso := NatIso.ofComponents
      (fun _α => -- α ≅ PUnit ⟶ α
        { hom := fun x _ => x
          inv := fun f => f PUnit.unit
          hom_inv_id := funext fun _ => rfl
          inv_hom_id := funext fun _ => funext fun y => PUnit.casesOn y rfl })
      fun _ => rfl
  counitIso := Iso.symm <|
      NatIso.ofComponents (fun S => equivYoneda' S) (fun {S₁ S₂} f => by
        ext ⟨α⟩ s
        dsimp at s ⊢
        ext x
        exact eval_app S₁ S₂ f α s x)
  functor_unitIso_comp X := by
    ext1
    apply yonedaEquiv.injective
    dsimp [yoneda', yonedaEquiv, evalEquiv]
    erw [typesGlue_eval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant0f2c78f98c23275bc30c670a1b182bc6951253c90c85b0070ef87c06f45a6733.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65430a4c42150ce9b5e4480c231a53718ecbf228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
