# algHomOfLinearMapTensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f41445d2c415ef326e28453c57e484d56b56cde13131627506b9d400a45ec087",
  "kind": "def",
  "lexical_name": "algHomOfLinearMapTensorProduct",
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
  "slug": "alghomoflinearmaptensorproduct--be6af11cfaaf838e6775a189",
  "source": {
    "blob": "fca833014ac94836ce6d4e75788c5938524b3587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 513,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be6af11cfaaf838e6775a189c20ddb89f479d865442b74df3aba16374c71cc7e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f41445d2c415ef326e28453c57e484d56b56cde13131627506b9d400a45ec087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algHomOfLinearMapTensorProduct (f : A ⊗[R] B →ₗ[S] C)
    (w₁ : ∀ (a₁ a₂ : A) (b₁ b₂ : B), f ((a₁ * a₂) ⊗ₜ (b₁ * b₂)) = f (a₁ ⊗ₜ b₁) * f (a₂ ⊗ₜ b₂))
    (w₂ : ∀ r, f (algebraMap S A r ⊗ₜ[R] 1) = algebraMap S C r) : A ⊗[R] B →ₐ[S] C :=
  { f with
    map_one' := by rw [← (algebraMap S C).map_one, ← w₂, (algebraMap S A).map_one]; rfl
    map_zero' := by simp only; rw [LinearMap.toFun_eq_coe, map_zero]
    map_mul' := fun x y => by
      simp only
      rw [LinearMap.toFun_eq_coe]
      refine TensorProduct.induction_on x ?_ ?_ ?_
      · rw [zero_mul, map_zero, zero_mul]
      · intro a₁ b₁
        refine TensorProduct.induction_on y ?_ ?_ ?_
        · rw [mul_zero, map_zero, mul_zero]
        · intro a₂ b₂
          rw [tmul_mul_tmul, w₁]
        · intro x₁ x₂ h₁ h₂
          rw [mul_add, map_add, map_add, mul_add, h₁, h₂]
      · intro x₁ x₂ h₁ h₂
        rw [add_mul, map_add, map_add, add_mul, h₁, h₂]
    commutes' := fun r => by simp only; rw [LinearMap.toFun_eq_coe, algebraMap_apply, w₂] }
#align algebra.tensor_product.alg_hom_of_linear_map_tensor_product Algebra.TensorProduct.algHomOfLinearMapTensorProduct

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca833014ac94836ce6d4e75788c5938524b3587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
