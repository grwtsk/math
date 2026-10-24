# liftStructEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d517ac78ce6d98011fe1fa826089c528e74c98bdb5bc5296844d169caf14d58",
  "kind": "def",
  "lexical_name": "liftStructEquiv",
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
  "slug": "liftstructequiv--e84e71b2d0ea8ebd1c785014",
  "source": {
    "blob": "0cae10e8c413283257bd2cf416ace2c4de69a4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedAdjunction/Variant5f99b61fb613af9d1622a4293fc80a98a01889e70cf8d19d534916e4bdcb2e8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e84e71b2d0ea8ebd1c785014ae0b3f8b490fda384b6f065e26b061d0f6c57f07",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedAdjunction/Variant5f99b61fb613af9d1622a4293fc80a98a01889e70cf8d19d534916e4bdcb2e8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d517ac78ce6d98011fe1fa826089c528e74c98bdb5bc5296844d169caf14d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftStructEquiv (α : Arrow.mk sq₁₂.ι ⟶ Arrow.mk f₃) :
    Arrow.LiftStruct α ≃ Arrow.LiftStruct (adj₂.arrowHomEquiv sq₁₂ sq₁₃ α) where
  toFun l :=
    { l := adj₂.homEquiv l.l
      fac_left := by
        have := l.fac_left
        dsimp at this ⊢
        simp only [← adj₂.homEquiv_naturality_two, ← this,
          sq₁₂.inl_ι_assoc]
      fac_right := by
        apply sq₁₃.isPullback.hom_ext
        · have := l.fac_left
          dsimp at this ⊢
          simp only [Category.assoc, sq₁₃.π_fst, ← adj₂.homEquiv_naturality_one,
            arrowHomEquiv_apply_right_fst, Arrow.mk_left, ← this, sq₁₂.inr_ι_assoc]
        · have := l.fac_right
          dsimp at this ⊢
          simp only [Category.assoc, sq₁₃.π_snd, ← this, adj₂.homEquiv_naturality_three,
            arrowHomEquiv_apply_right_snd, Arrow.mk_right] }
  invFun l :=
    { l := adj₂.homEquiv.symm l.l
      fac_left := by
        apply sq₁₂.isPushout.hom_ext
        · have := l.fac_left
          dsimp at this ⊢
          simp only [sq₁₂.inl_ι_assoc, ← adj₂.homEquiv_symm_naturality_two,
            this, Equiv.symm_apply_apply]
        · have := l.fac_right =≫ sq₁₃.fst
          dsimp at this ⊢
          simp only [Category.assoc, sq₁₃.π_fst] at this
          simp only [sq₁₂.inr_ι_assoc, ← adj₂.homEquiv_symm_naturality_one,
            this, Equiv.symm_apply_apply, arrowHomEquiv_apply_right_fst, Arrow.mk_left]
      fac_right := by
        have := l.fac_right =≫ sq₁₃.snd
        dsimp at this ⊢
        simp only [Category.assoc, sq₁₃.π_snd, arrowHomEquiv_apply_right_snd,
          Arrow.mk_right] at this
        rw [← adj₂.homEquiv_symm_naturality_three, this,
          Equiv.symm_apply_apply] }
  left_inv _ := by aesop
  right_inv _ := by aesop

include adj₂ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedAdjunction/Variant5f99b61fb613af9d1622a4293fc80a98a01889e70cf8d19d534916e4bdcb2e8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedAdjunction/Variant5f99b61fb613af9d1622a4293fc80a98a01889e70cf8d19d534916e4bdcb2e8d.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cae10e8c413283257bd2cf416ace2c4de69a4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
