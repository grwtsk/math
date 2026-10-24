# lie_e_f_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:460e7a8b-7f17-c1d9-c86e-c6694b550d36",
  "kind": "lemma",
  "lexical_name": "lie_e_f_same",
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
  "slug": "lie-e-f-same--de1e0cd36c07509ed85d5e86",
  "source": {
    "blob": "f17079d67583cd28e41ff91910667fe311e5932f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de1e0cd36c07509ed85d5e86e248cd82808be4fb8fc41071ac26edd0fecba717",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:460e7a8b-7f17-c1d9-c86e-c6694b550d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_e_f_same :
    ⁅e i, f i⁆ = h i := by
  let := P.indexNeg
  have : Module.IsReflexive R M := .of_isPerfPair P.toLinearMap
  have : IsAddTorsionFree M := .of_isTorsionFree R M
  classical
  ext (k | k) (l | l)
  · simp [e, f, h]
  · have h₁ (x : ι) : ¬ (P.root x = P.root l - P.root i ∧ k = i ∧ x = -i) := by
      simp only [not_and]
      rintro contra rfl rfl
      simp [P.ne_zero, sub_eq_add_neg] at contra
    have h₂ (x : ι) : ¬ (P.root x = P.root i + P.root l ∧ k = i ∧ x = i) := by
      simp only [not_and]
      rintro contra rfl rfl
      simp [P.ne_zero] at contra
    simp [e, f, h, h₁, h₂, -indexNeg_neg, ← ite_and]
  · simp [e, f, h]
  · rcases eq_or_ne k i with rfl | hki
    · have hx (x : ι) : ¬ (P.root x = P.root i + P.root l ∧ P.root i = P.root x - P.root i) := by
        rintro ⟨-, contra⟩
        refine P.nsmul_notMem_range_root (n := 2) (i := i) ⟨x, ?_⟩
        rwa [eq_sub_iff_add_eq, ← two_smul ℕ, eq_comm] at contra
      simp only [e, f, h, P.ne_zero, P.ne_neg, Ring.lie_def, Fintype.sum_sum_type, Matrix.sub_apply,
        Matrix.mul_apply, Matrix.fromBlocks_apply₂₁, Matrix.of_apply, Matrix.fromBlocks_apply₂₂,
        left_eq_add, zero_mul, mul_zero, ite_mul, mul_ite, ← ite_and]
      rw [Finset.sum_eq_single_of_mem i (Finset.mem_univ _) (by aesop)]
      simp [hx, eq_comm]
    rcases eq_or_ne k (-i) with rfl | hki'
    · have hx (x : ι) : ¬ (P.root x = P.root l - P.root i ∧ P.root (-i) = P.root i + P.root x) := by
        rintro ⟨-, contra⟩
        refine P.nsmul_notMem_range_root (n := 2) (i := -i) ⟨x, ?_⟩
        replace contra : P.root x = -(P.root i + P.root i) := by
          simpa [neg_eq_iff_add_eq_zero, ← add_assoc, add_eq_zero_iff_eq_neg'] using contra
        simp [contra, two_smul]
      have aux (x : ι) : ¬ P.root (-i) = P.root x - P.root i := by
        simp [P.ne_zero x, eq_comm]
      simp only [e, f, h, Ring.lie_def, Matrix.sub_apply, Matrix.mul_apply, Fintype.sum_sum_type,
        Matrix.fromBlocks_apply₂₁, Matrix.of_apply, hki, reduceIte, zero_mul, Finset.sum_const_zero,
        Matrix.fromBlocks_apply₂₂, mul_ite, ite_mul, mul_zero, ← ite_and, ite_eq_right (hx _),
        add_zero, aux, zero_sub, Matrix.diagonal_apply]
      rw [Finset.sum_eq_single_of_mem i (Finset.mem_univ _) (by aesop)]
      simp [eq_comm, apply_ite ((-·) : R → R)]
    rcases eq_or_ne k l with rfl | hkl
    · exact lie_e_f_same_aux i k hki hki'
    · simp_all [h, e, f]

attribute [local instance 100] LieRing.ofAssociativeRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17079d67583cd28e41ff91910667fe311e5932f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
