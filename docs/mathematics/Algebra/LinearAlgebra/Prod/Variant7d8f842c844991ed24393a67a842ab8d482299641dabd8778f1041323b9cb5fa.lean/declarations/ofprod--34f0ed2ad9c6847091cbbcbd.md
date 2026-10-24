# ofProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13dff67ff36bc68b9d137f7feb27d8a5047da708116dc3344398135e31a158cd",
  "kind": "def",
  "lexical_name": "ofProd",
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
  "slug": "ofprod--34f0ed2ad9c6847091cbbcbd",
  "source": {
    "blob": "cd9d4dbc7052f5061108ee79fd93087978e19766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34f0ed2ad9c6847091cbbcbd72a4c981914792c496268144040f7ec62a6e3248",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13dff67ff36bc68b9d137f7feb27d8a5047da708116dc3344398135e31a158cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofProd : CliffordAlgebra (Q₁.prod Q₂) →ₐ[R] (evenOdd Q₁ ᵍ⊗[R] evenOdd Q₂) :=
  lift _ ⟨
    LinearMap.coprod
      ((GradedTensorProduct.includeLeft (evenOdd Q₁) (evenOdd Q₂)).toLinearMap
          ∘ₗ (evenOdd Q₁ 1).subtype ∘ₗ (ι Q₁).codRestrict _ (ι_mem_evenOdd_one Q₁))
      ((GradedTensorProduct.includeRight (evenOdd Q₁) (evenOdd Q₂)).toLinearMap
          ∘ₗ (evenOdd Q₂ 1).subtype ∘ₗ (ι Q₂).codRestrict _ (ι_mem_evenOdd_one Q₂)),
    fun m => by
      simp_rw [LinearMap.coprod_apply, LinearMap.coe_comp, Function.comp_apply,
        AlgHom.toLinearMap_apply, QuadraticMap.prod_apply, Submodule.coe_subtype,
        GradedTensorProduct.includeLeft_apply, GradedTensorProduct.includeRight_apply, map_add,
        add_mul, mul_add, GradedTensorProduct.algebraMap_def,
        GradedTensorProduct.tmul_one_mul_one_tmul, GradedTensorProduct.tmul_one_mul_coe_tmul,
        GradedTensorProduct.tmul_coe_mul_one_tmul, GradedTensorProduct.tmul_coe_mul_coe_tmul,
        LinearMap.codRestrict_apply, one_mul, uzpow_one, Units.neg_smul, one_smul, ι_sq_scalar,
        mul_one, ← GradedTensorProduct.algebraMap_def, ← GradedTensorProduct.algebraMap_def']
      abel⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9d4dbc7052f5061108ee79fd93087978e19766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
