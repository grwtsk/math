# integral_Iic_I'_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dde38d84-ab2d-fbe7-a58b-a0200bc6b419",
  "kind": "lemma",
  "lexical_name": "integral_Iic_I'_eq",
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
  "slug": "integral-iic-i-eq--1d59a5b17bf8a81093b1fff6",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 810,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d59a5b17bf8a81093b1fff64dada39e1c9b9651fd21f075e78c3b4f110d1de3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dde38d84-ab2d-fbe7-a58b-a0200bc6b419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 810–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_Iic_I'_eq {T σ : ℝ} (hT : 0 < T) (hσ : σ ≠ 1) (x : ℝ) (hx : 1 ≤ x) :
    (2 * π * (x ^ (1 - σ) : ℝ) / T) * ∫ y in Set.Iic (-T * log x / (2 * π)), I' ((2 * π * (σ - 1)) / T) y =
      if σ < 1 then 1 / (1 - σ) else 0 := by
  let lambda := (2 * π * (σ - 1)) / T
  let u0 := -T * log x / (2 * π)
  have hu0 : u0 ≤ 0 := by
    dsimp [u0]; rw [neg_mul, neg_div]
    exact neg_nonpos.mpr (div_nonneg (mul_nonneg hT.le (log_nonneg hx)) (by positivity))
  by_cases hσ_lt : σ < 1
  · simp only [hσ_lt, ite_true]
    have hlambda_neg : lambda < 0 :=
      div_neg_of_neg_of_pos (mul_neg_of_pos_of_neg (by positivity) (sub_neg_of_lt hσ_lt)) hT
    rw [integral_Iic_I'_of_neg hlambda_neg hu0]
    have h_exp_val : Real.exp (-lambda * u0) = x ^ (σ - 1) := by
      rw [Real.rpow_def_of_pos (by linarith [hx])]
      congr 1; dsimp [lambda, u0]; field_simp [hT.ne', Real.pi_pos.ne']
    rw [h_exp_val]
    have h_final : (2 * π * x ^ (1 - σ) / T) * (x ^ (σ - 1) / (-lambda)) = 1 / (1 - σ) := by
      dsimp [lambda]; field_simp [hT.ne', Real.pi_pos.ne', (sub_pos.mpr hσ_lt).ne']
      rw [mul_assoc, ← Real.rpow_add (by linarith [hx])]
      ring_nf; rw [Real.rpow_zero, add_comm, ← sub_eq_add_neg]
      field_simp [sub_ne_zero.mpr hσ]
    exact h_final
  · have hσ_gt : 1 < σ := lt_of_le_of_ne (not_lt.mp hσ_lt) hσ.symm
    have hlambda_pos : 0 < lambda :=
      div_pos (mul_pos (by positivity) (sub_pos.mpr (by linarith [hσ_gt]))) hT
    rw [MeasureTheory.integral_eq_zero_of_ae (I'_ae_zero_of_pos hlambda_pos hu0)]
    simp only [hσ_lt, ite_false, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
