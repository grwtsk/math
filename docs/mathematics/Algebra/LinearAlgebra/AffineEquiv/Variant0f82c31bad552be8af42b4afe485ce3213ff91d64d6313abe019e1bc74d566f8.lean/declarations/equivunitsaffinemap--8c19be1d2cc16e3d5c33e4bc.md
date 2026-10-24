# equivUnitsAffineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc2a71e90c59919de9628de9cac3f0788089edba8555b6d9f3d4fa42bcfc010d",
  "kind": "def",
  "lexical_name": "equivUnitsAffineMap",
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
  "slug": "equivunitsaffinemap--8c19be1d2cc16e3d5c33e4bc",
  "source": {
    "blob": "3ed7a5894b52852cf14f7b3bbe96265aef05a8b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 362,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant0f82c31bad552be8af42b4afe485ce3213ff91d64d6313abe019e1bc74d566f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c19be1d2cc16e3d5c33e4bcfb90d5a9c70e9b89185563347658ca40f9ddc61a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineEquiv/Variant0f82c31bad552be8af42b4afe485ce3213ff91d64d6313abe019e1bc74d566f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc2a71e90c59919de9628de9cac3f0788089edba8555b6d9f3d4fa42bcfc010d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivUnitsAffineMap : (P₁ ≃ᵃ[k] P₁) ≃* (P₁ →ᵃ[k] P₁)ˣ where
  toFun e :=
    { val := e, inv := e.symm,
      val_inv := congr_arg toAffineMap e.symm_trans_self
      inv_val := congr_arg toAffineMap e.self_trans_symm }
  invFun u :=
    { toFun := (u : P₁ →ᵃ[k] P₁)
      invFun := (↑u⁻¹ : P₁ →ᵃ[k] P₁)
      left_inv := AffineMap.congr_fun u.inv_mul
      right_inv := AffineMap.congr_fun u.mul_inv
      linear :=
        LinearMap.GeneralLinearGroup.generalLinearEquiv _ _ <| Units.map AffineMap.linearHom u
      map_vadd' := fun _ _ => (u : P₁ →ᵃ[k] P₁).map_vadd _ _ }
  map_mul' _ _ := rfl

section

variable (e₁ : P₁ ≃ᵃ[k] P₂) (e₂ : P₃ ≃ᵃ[k] P₄)

/-- Product of two affine equivalences. The map comes from `Equiv.prodCongr` -/
@[simps linear]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineEquiv/Variant0f82c31bad552be8af42b4afe485ce3213ff91d64d6313abe019e1bc74d566f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant0f82c31bad552be8af42b4afe485ce3213ff91d64d6313abe019e1bc74d566f8.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed7a5894b52852cf14f7b3bbe96265aef05a8b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
