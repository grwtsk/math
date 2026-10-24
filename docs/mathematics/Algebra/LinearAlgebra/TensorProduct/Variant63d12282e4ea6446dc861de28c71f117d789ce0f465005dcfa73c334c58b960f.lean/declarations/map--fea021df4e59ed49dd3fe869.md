# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d02fa1f7c0254a0bd94ffeaf8d6ce6f48515d26f222319b0249d1a19e9f6317b",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--fea021df4e59ed49dd3fe869",
  "source": {
    "blob": "6ccdaf001a6adc160cb13ab277b0d9bbe149c2d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fea021df4e59ed49dd3fe86997550540d92ee3b6929c9e5ebeed300c060b67c2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d02fa1f7c0254a0bd94ffeaf8d6ce6f48515d26f222319b0249d1a19e9f6317b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def map (f : M →ₗ⁅R,L⁆ P) (g : N →ₗ⁅R,L⁆ Q) : M ⊗[R] N →ₗ⁅R,L⁆ P ⊗[R] Q :=
  { map (f : M →ₗ[R] P) (g : N →ₗ[R] Q) with
    map_lie' := fun {x t} => by
      simp only [LinearMap.toFun_eq_coe]
      refine' t.induction_on _ _ _
      · simp only [LinearMap.map_zero, lie_zero]
      · intro m n
        simp only [LieModuleHom.coe_toLinearMap, lie_tmul_right, LieModuleHom.map_lie, map_tmul,
          LinearMap.map_add]
      · intro t₁ t₂ ht₁ ht₂; simp only [ht₁, ht₂, lie_add, LinearMap.map_add] }
#align tensor_product.lie_module.map TensorProduct.LieModule.map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ccdaf001a6adc160cb13ab277b0d9bbe149c2d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
