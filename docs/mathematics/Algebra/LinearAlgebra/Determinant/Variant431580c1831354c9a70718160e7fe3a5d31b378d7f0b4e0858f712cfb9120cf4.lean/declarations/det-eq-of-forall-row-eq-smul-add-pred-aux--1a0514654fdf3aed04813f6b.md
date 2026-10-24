# det_eq_of_forall_row_eq_smul_add_pred_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10c8dac5-e530-cb2f-40e0-28388bef2eb4",
  "kind": "theorem",
  "lexical_name": "det_eq_of_forall_row_eq_smul_add_pred_aux",
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
  "slug": "det-eq-of-forall-row-eq-smul-add-pred-aux--1a0514654fdf3aed04813f6b",
  "source": {
    "blob": "8c536a6eaffecee5111c064aa0257798c22dc402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 523,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a0514654fdf3aed04813f6bdff5a2e1f88e0cd607eee0b493fc625e034b4ca7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10c8dac5-e530-cb2f-40e0-28388bef2eb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_of_forall_row_eq_smul_add_pred_aux {n : ℕ} (k : Fin (n + 1)) :
    ∀ (c : Fin n → R) (_hc : ∀ i : Fin n, k < i.succ → c i = 0)
      {M N : Matrix (Fin n.succ) (Fin n.succ) R} (_h0 : ∀ j, M 0 j = N 0 j)
      (_hsucc : ∀ (i : Fin n) (j), M i.succ j = N i.succ j + c i * M (Fin.castSucc i) j),
      det M = det N := by
  refine' Fin.induction _ (fun k ih => _) k <;> intro c hc M N h0 hsucc
  · congr
    ext i j
    refine' Fin.cases (h0 j) (fun i => _) i
    rw [hsucc, hc i (Fin.succ_pos _), zero_mul, add_zero]
  set M' := updateRow M k.succ (N k.succ) with hM'
  have hM : M = updateRow M' k.succ (M' k.succ + c k • M (Fin.castSucc k)) := by
    ext i j
    by_cases hi : i = k.succ
    · simp [hi, hM', hsucc, updateRow_self]
    rw [updateRow_ne hi, hM', updateRow_ne hi]
  have k_ne_succ : (Fin.castSucc k) ≠ k.succ := (Fin.castSucc_lt_succ k).ne
  have M_k : M (Fin.castSucc k) = M' (Fin.castSucc k) := (updateRow_ne k_ne_succ).symm
  rw [hM, M_k, det_updateRow_add_smul_self M' k_ne_succ.symm, ih (Function.update c k 0)]
  · intro i hi
    rw [Fin.lt_iff_val_lt_val, Fin.coe_castSucc, Fin.val_succ, Nat.lt_succ_iff] at hi
    rw [Function.update_apply]
    split_ifs with hik
    · rfl
    exact hc _ (Fin.succ_lt_succ_iff.mpr (lt_of_le_of_ne hi (Ne.symm hik)))
  · rwa [hM', updateRow_ne (Fin.succ_ne_zero _).symm]
  intro i j
  rw [Function.update_apply]
  split_ifs with hik
  · rw [zero_mul, add_zero, hM', hik, updateRow_self]
  rw [hM', updateRow_ne ((Fin.succ_injective _).ne hik), hsucc]
  by_cases hik2 : k < i
  · simp [hc i (Fin.succ_lt_succ_iff.mpr hik2)]
  rw [updateRow_ne]
  apply ne_of_lt
  rwa [Fin.lt_iff_val_lt_val, Fin.coe_castSucc, Fin.val_succ, Nat.lt_succ_iff, ← not_lt]
#align matrix.det_eq_of_forall_row_eq_smul_add_pred_aux Matrix.det_eq_of_forall_row_eq_smul_add_pred_aux

/-- If you add multiples of previous rows to the next row, the determinant doesn't change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c536a6eaffecee5111c064aa0257798c22dc402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
