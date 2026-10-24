# Matrix.dualNumberEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bd0d566ebafb1387104b4610dd3bdf8984a1f33394eb339498a97245e64bfa8",
  "kind": "def",
  "lexical_name": "Matrix.dualNumberEquiv",
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
  "slug": "matrix-dualnumberequiv--ea1e4b34d854e2b169179538",
  "source": {
    "blob": "27ff5501e9b67bc3992a46ad5939419a2c83c8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 25,
    "path": "GRWTSK/Algebra/LinearAlgebra/DualNumber/Variantd3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea1e4b34d854e2b169179538e8411d94195c4c7add985a9e0b18cce348ef792a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DualNumber/Variantd3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bd0d566ebafb1387104b4610dd3bdf8984a1f33394eb339498a97245e64bfa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.dualNumberEquiv : Matrix n n (DualNumber R) ≃ₐ[R] DualNumber (Matrix n n R) where
  toFun A := ⟨of fun i j => (A i j).fst, of fun i j => (A i j).snd⟩
  invFun d := of fun i j => (d.fst i j, d.snd i j)
  left_inv A := Matrix.ext fun i j => TrivSqZeroExt.ext rfl rfl
  right_inv d := TrivSqZeroExt.ext (Matrix.ext fun i j => rfl) (Matrix.ext fun i j => rfl)
  map_mul' A B := by
    ext
    · dsimp [mul_apply]
      simp_rw [fst_sum]
      rfl
    · simp_rw [snd_mul, smul_eq_mul, op_smul_eq_mul]
      simp [mul_apply, snd_sum, snd_mul]
      rw [← Finset.sum_add_distrib]
  map_add' A B := TrivSqZeroExt.ext rfl rfl
  commutes' r := by
    simp_rw [algebraMap_eq_inl', algebraMap_eq_diagonal, Pi.algebraMap_def,
      Algebra.id.map_eq_self, algebraMap_eq_inl, ← diagonal_map (inl_zero R), map_apply, fst_inl,
      snd_inl]
    rfl
#align matrix.dual_number_equiv Matrix.dualNumberEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DualNumber/Variantd3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DualNumber/Variantd3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27ff5501e9b67bc3992a46ad5939419a2c83c8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
