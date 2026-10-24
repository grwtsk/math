# resultant_add_mul_monomial_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5887fb3-b1a6-ad36-97cc-1657e2809476",
  "kind": "lemma",
  "lexical_name": "resultant_add_mul_monomial_right",
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
  "slug": "resultant-add-mul-monomial-right--e3078f6f17a4c9c9d0f2c59e",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 195,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3078f6f17a4c9c9d0f2c59ef3dffb1ba10e934c9979e32a6698d197a6359493",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5887fb3-b1a6-ad36-97cc-1657e2809476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma resultant_add_mul_monomial_right (hk : k + m ≤ n) (hf : f.natDegree ≤ m) :
    resultant f (g + f * monomial k r) m n = resultant f g m n := by
  obtain rfl | hm := eq_or_ne m 0
  · obtain ⟨q, rfl⟩ := natDegree_eq_zero.mp (le_zero_iff.mp hf); simp
  let M₁ := f.sylvester (g + f * monomial k r) m n
  let M₂ := f.sylvester g m n
  let M (i : ℕ) : Matrix (Fin (m + n)) (Fin (m + n)) R :=
    .of fun j₁ j₂ ↦ if j₂.1 < i then M₁ j₁ j₂ else M₂ j₁ j₂
  have (i : ℕ) (hi : i ≤ m) : (M i).det = M₂.det := by
    induction i with
    | zero => simp [M]; rfl
    | succ i IH =>
      rw [← IH (by lia), ← Matrix.det_updateCol_add_smul_self (i := ⟨i, by lia⟩)
        (j := ⟨i + k + m, by lia⟩) (c := -r) (M (i + 1)) (by simp; lia)]
      congr 1
      ext j₁ j₂
      simp only [Matrix.of_apply, lt_add_iff_pos_right, zero_lt_one, ↓reduceIte, add_assoc,
        add_lt_add_iff_left, Nat.lt_one_iff, Nat.add_eq_zero_iff, hm, and_false, smul_eq_mul,
        Matrix.updateCol_apply, Fin.ext_iff, M, M₂, neg_mul, ← sub_eq_add_neg]
      obtain rfl | h := eq_or_ne ↑j₂ i
      · simp only [↓reduceIte, sylvester, Set.mem_Icc, coeff_add, Fin.eta, Matrix.of_apply,
          lt_self_iff_false, M₁]
        induction j₂ using Fin.addCases with
        | left j₂ =>
          dsimp at hi
          have : Fin.mk (n := m + n) (↑j₂ + (k + m)) (by lia) = .natAdd m ⟨j₂ + k, by lia⟩ :=
            Fin.ext (by simp; lia)
          simp only [Fin.addCases_left, Fin.val_castAdd, this, Fin.addCases_right, mul_ite,
            mul_zero, ← C_mul_X_pow_eq_monomial, ← mul_assoc, coeff_mul_X_pow', ite_add_zero,
            coeff_mul_C, add_assoc, add_eq_left, ← ite_and, ← mul_comm r, tsub_add_eq_tsub_tsub,
            add_sub_assoc, sub_eq_zero]
          split_ifs with h₁ h₂ h₂ <;> try rfl
          · rw [coeff_eq_zero_of_natDegree_lt, mul_zero]
            exact hf.trans_lt (by lia)
          · lia
        | right i =>
          simp only [Fin.val_natAdd] at hi
          have : Fin.mk (n := m + n) (m + ↑i + (k + m)) (by lia) =
              Fin.natAdd m ⟨↑i + (k + m), by lia⟩ := Fin.ext (by simp; lia)
          simp only [Fin.addCases_right, Fin.val_natAdd, sub_eq_self, this]
          rw [ite_eq_right, mul_zero]
          lia
      lia
  rw [resultant, resultant, ← this m le_rfl]
  congr 1
  ext i j
  induction j using Fin.addCases <;> simp [M, sylvester, M₁, M₂]

set_option backward.defeqAttrib.useBackward true in
/-- `Res(f, g + fp) = Res(f, g)` if `deg f + deg p ≤ deg g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
