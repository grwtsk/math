# algEquivOfLinearEquivTripleTensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd2bbbc3489ca930d612d72e0ca79554c9252f06eca1bdb8ccbdb910651cafa6",
  "kind": "def",
  "lexical_name": "algEquivOfLinearEquivTripleTensorProduct",
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
  "slug": "algequivoflinearequivtripletensorproduct--0f83317b470b62598d9500d8",
  "source": {
    "blob": "ec57b0a0b2341c84532324e3f23cdb5a18a123d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 552,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f83317b470b62598d9500d89f0fc8097b32753ea7e7c797cf26117d7cd2be11",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd2bbbc3489ca930d612d72e0ca79554c9252f06eca1bdb8ccbdb910651cafa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algEquivOfLinearEquivTripleTensorProduct (f : (A ⊗[R] B) ⊗[R] C ≃ₗ[R] D)
    (w₁ :
      ∀ (a₁ a₂ : A) (b₁ b₂ : B) (c₁ c₂ : C),
        f ((a₁ * a₂) ⊗ₜ (b₁ * b₂) ⊗ₜ (c₁ * c₂)) = f (a₁ ⊗ₜ b₁ ⊗ₜ c₁) * f (a₂ ⊗ₜ b₂ ⊗ₜ c₂))
    (w₂ : ∀ r, f (((algebraMap R A) r ⊗ₜ[R] (1 : B)) ⊗ₜ[R] (1 : C)) = (algebraMap R D) r) :
    (A ⊗[R] B) ⊗[R] C ≃ₐ[R] D :=
-- porting note : build the whole algebra isomorphism times out, so I propose to define the version
-- of tensoring three rings in terms of the version tensoring with two rings
algEquivOfLinearEquivTensorProduct f (fun x₁ x₂ c₁ c₂ => by
  refine TensorProduct.induction_on x₁ ?_ ?_ ?_ <;>
  refine TensorProduct.induction_on x₂ ?_ ?_ ?_ <;>
  simp only [zero_tmul, tmul_zero, tmul_mul_tmul, map_zero, zero_mul, mul_zero, mul_add, add_mul,
    map_add, add_tmul, tmul_add, w₁] <;>
  try
    intros
    trivial
  · intros ab₁ ab₂ h₁ h₂ a b
    rw [h₁, h₂]
  · intros a b ab₁ ab₂ h₁ h₂
    rw [h₁, h₂]
  · intros ab₁ ab₂ _ _ x y hx hy
    rw [add_add_add_comm, hx, hy, add_add_add_comm])
  w₂
#align algebra.tensor_product.alg_equiv_of_linear_equiv_triple_tensor_product Algebra.TensorProduct.algEquivOfLinearEquivTripleTensorProduct

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec57b0a0b2341c84532324e3f23cdb5a18a123d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
