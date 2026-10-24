# leftRegularTensorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6152e838d4e8ade3b35422958731efd89e54583262cf946c1e7b4247f8ac0650",
  "kind": "def",
  "lexical_name": "leftRegularTensorIso",
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
  "slug": "leftregulartensoriso--5ad904be1f80416a4241c5ed",
  "source": {
    "blob": "c1e67ade8b33756b1d96e3d238f011bb9ef7d6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ad904be1f80416a4241c5ed49131dca228406e20c123cae6fb5212466feddc8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6152e838d4e8ade3b35422958731efd89e54583262cf946c1e7b4247f8ac0650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftRegularTensorIso (G : Type u) [Group G] (X : Action (Type u) G) :
    leftRegular G ⊗ X ≅ leftRegular G ⊗ Action.mk X.V 1 where
  hom :=
    { hom := fun g => ⟨g.1, (X.ρ (g.1⁻¹ : G) g.2 : X.V)⟩
      comm := fun (g : G) => by
        funext ⟨(x₁ : G), (x₂ : X.V)⟩
        refine Prod.ext rfl ?_
        change (X.ρ ((g * x₁)⁻¹ : G) * X.ρ g) x₂ = X.ρ _ _
        rw [mul_inv_rev, ← X.ρ.map_mul, inv_mul_cancel_right] }
  inv :=
    { hom := fun g => ⟨g.1, X.ρ g.1 g.2⟩
      comm := fun (g : G) => by
        funext ⟨(x₁ : G), (x₂ : X.V)⟩
        refine Prod.ext rfl ?_
        simp [leftRegular] }
  hom_inv_id := by
    apply Hom.ext
    funext x
    refine Prod.ext rfl ?_
    change (X.ρ x.1 * X.ρ (x.1⁻¹ : G)) x.2 = x.2
    rw [← X.ρ.map_mul, mul_inv_cancel, X.ρ.map_one, End.one_def, types_id_apply]
  inv_hom_id := by
    apply Hom.ext
    funext x
    refine Prod.ext rfl ?_
    change (X.ρ (x.1⁻¹ : G) * X.ρ x.1) x.2 = x.2
    rw [← X.ρ.map_mul, inv_mul_cancel, X.ρ.map_one, End.one_def, types_id_apply]

/-- The natural isomorphism of `G`-sets `Gⁿ⁺¹ ≅ G × Gⁿ`, where `G` acts by left multiplication on
each factor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e67ade8b33756b1d96e3d238f011bb9ef7d6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
