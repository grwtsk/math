# toModuleCatFromModuleCatLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ac0f6de28cba41894f657c20b3521c3c582ae1b7cfa99705970cb4291b89a70",
  "kind": "def",
  "lexical_name": "toModuleCatFromModuleCatLinearEquiv",
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
  "slug": "tomodulecatfrommodulecatlinearequiv--a38f5335fe833b99ccab10f8",
  "source": {
    "blob": "7af8934071ad3b5dcba8143edbfc7f938cbf47af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a38f5335fe833b99ccab10f89c8be05ad4faf9e9579655f651fb1295a515dc1d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ac0f6de28cba41894f657c20b3521c3c582ae1b7cfa99705970cb4291b89a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toModuleCatFromModuleCatLinearEquiv (M : ModuleCat (Matrix ι ι R)) (j : ι) :
    letI := Module.compHom M (Matrix.scalar (α := R) ι)
    haveI := MatrixModCat.isScalarTower_toModuleCat
    M ≃ₗ[Matrix ι ι R] (ι → MatrixModCat.toModuleCatObj R M j) where
  toFun m i := ⟨single j i (1 : R) • m, single j i (1 : R) • m, by
    simp [← mul_smul]⟩
  map_add' _ _ := by ext; simp
  map_smul' x m := funext fun i ↦ Subtype.ext <| by
    let := Module.compHom M (Matrix.scalar (α := R) ι)
    have := MatrixModCat.isScalarTower_toModuleCat R M
    simp only [← mul_smul, RingHom.id_apply, Module.smul_apply,
      AddSubmonoidClass.coe_finsetSum, SetLike.val_smul, ← smul_assoc, ← Finset.sum_smul]
    congr
    ext i1 j1
    simp only [mul_apply, smul_single, smul_eq_mul, mul_one, sum_apply]
    rw [Finset.sum_eq_single_of_mem (a := i) (by simp) (fun b _ hb ↦ by simp [single, Ne.symm hb])]
    simp only [single_apply, and_true, ite_mul, one_mul, zero_mul]
    split_ifs with h <;> simp [h]
  invFun m := ∑ i, single i j (1 : R) • m i
  left_inv m := by simp [← mul_smul, ← Finset.sum_smul, sum_single_one]
  right_inv v := by
    dsimp
    ext i
    simp only [Finset.smul_sum]
    rw [Finset.sum_eq_single i (fun b _ hb ↦ by
      simp [← mul_smul, single_mul_single_of_ne _ _ _ _ hb.symm]) (by simp)]
    obtain ⟨y, hy⟩ := by simpa [-SetLike.coe_mem] using (v i).2
    simp [← mul_smul, ← hy]

set_option backward.isDefEq.respectTransparency false in
/-- The natural isomorphism showing that `toMatrixModCat` is the right inverse of `toModuleCat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af8934071ad3b5dcba8143edbfc7f938cbf47af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
