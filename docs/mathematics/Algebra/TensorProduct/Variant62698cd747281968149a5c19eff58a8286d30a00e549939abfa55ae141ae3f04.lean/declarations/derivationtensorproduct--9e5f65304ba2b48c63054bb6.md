# derivationTensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ec3244f5bb9c01333d8c49a48e3c2baa8957f3068c4434ed66d22317d1f6559",
  "kind": "def",
  "lexical_name": "derivationTensorProduct",
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
  "slug": "derivationtensorproduct--9e5f65304ba2b48c63054bb6",
  "source": {
    "blob": "fa403e669911d76712fff2cbbd75e35539122a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 133,
    "path": "GRWTSK/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e5f65304ba2b48c63054bb611b9bc85196df91c6a3c9ed6fbe8b24c41822887",
  "verification": {
    "reference": "docs/verification/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ec3244f5bb9c01333d8c49a48e3c2baa8957f3068c4434ed66d22317d1f6559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivationTensorProduct [h : Algebra.IsPushout R S A B] :
    Derivation S B (S ⊗[R] Ω[A⁄R]) where
  __ := h.out.lift ((TensorProduct.mk R S (Ω[A⁄R]) 1).comp (D R A).toLinearMap)
  map_one_eq_zero' := by
    rw [← (algebraMap A B).map_one]
    refine (h.out.lift_eq _ _).trans ?_
    dsimp
    rw [Derivation.map_one_eq_zero, TensorProduct.tmul_zero]
  leibniz' a b := by
    induction a using h.out.inductionOn with
    | zero => rw [map_zero, zero_smul, smul_zero, zero_add, zero_mul, map_zero]
    | smul x y e =>
      rw [smul_mul_assoc, map_smul, e, map_smul, smul_add,
        smul_comm x b, smul_assoc]
    | add b₁ b₂ e₁ e₂ => simp only [add_mul, add_smul, map_add, e₁, e₂, smul_add, add_add_add_comm]
    | tmul z =>
      dsimp
      induction b using h.out.inductionOn with
      | zero => rw [map_zero, zero_smul, smul_zero, zero_add, mul_zero, map_zero]
      | tmul =>
        simp only [AlgHom.toLinearMap_apply, IsScalarTower.coe_toAlgHom',
          algebraMap_smul, ← map_mul]
        rw [← IsScalarTower.toAlgHom_apply R, ← AlgHom.toLinearMap_apply, h.out.lift_eq,
          ← IsScalarTower.toAlgHom_apply R, ← AlgHom.toLinearMap_apply, h.out.lift_eq,
          ← IsScalarTower.toAlgHom_apply R, ← AlgHom.toLinearMap_apply, h.out.lift_eq]
        simp only [LinearMap.coe_comp, Derivation.coeFn_coe, Function.comp_apply,
          Derivation.leibniz, mk_apply, mulActionBaseChange_smul_tmul, TensorProduct.tmul_add]
      | smul _ _ e =>
        rw [mul_comm, smul_mul_assoc, map_smul, mul_comm, e,
            map_smul, smul_add, smul_comm, smul_assoc]
      | add _ _ e₁ e₂ => simp only [mul_add, add_smul, map_add, e₁, e₂, smul_add, add_add_add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa403e669911d76712fff2cbbd75e35539122a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
