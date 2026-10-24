# SdivP_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668f6e396659b6f207692e888320091a765ab18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca07161a-1f5c-3bef-2c04-29ee19f06383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f80b6742-2bea-4a6e-99c4-678fc67b3405",
  "kind": "theorem",
  "lexical_name": "SdivP_mul_le",
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
  "slug": "sdivp-mul-le--edddac743fb0d05c706ce758",
  "source": {
    "blob": "668f6e396659b6f207692e888320091a765ab18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edddac743fb0d05c706ce75818c904662df3acf03ba12bb73461c030d7d18c70",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f80b6742-2bea-4a6e-99c4-678fc67b3405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SdivP_mul_le {g f : ArithmeticFunction ℝ} (hg : ∀ n, 0 ≤ g n) (hf : ∀ n, 0 ≤ f n)
    (P Q : ℕ → Prop) (R : ℕ → ℕ → Prop) [DecidablePred P] [DecidablePred Q] [∀ d, DecidablePred (R d)]
    (hsplit : ∀ d e, g d ≠ 0 → f e ≠ 0 → P (d * e) → Q d ∨ R d e) (u : ℝ) :
    SdivP (g * f) P u ≤
      (∑ d ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter Q, g d / d * Sdiv f (u - Real.log d))
      + ∑ d ∈ Ioc 0 ⌊Real.exp u⌋₊, g d / d * SdivP f (R d) (u - Real.log d) := by
  set X : ℕ := ⌊Real.exp u⌋₊ with hX
  rw [SdivP_eq_sum_ite, sum_Ioc_mul_apply g f (fun N => if P N then ((N:ℕ):ℝ)⁻¹ else 0) X]
  -- termwise bound inside the double sum
  have hterm : ∀ d ∈ Ioc 0 X, ∀ e ∈ Ioc 0 (X / d),
      g d * (f e * (if P (d * e) then (((d * e : ℕ)) : ℝ)⁻¹ else 0))
        ≤ g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if Q d then 1 else 0)))
          + g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if R d e then 1 else 0))) := by
    intro d _ e _
    have hde : (0:ℝ) ≤ (((d * e : ℕ)) : ℝ)⁻¹ := inv_nonneg.mpr (Nat.cast_nonneg _)
    have hA : 0 ≤ g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if Q d then 1 else 0))) :=
      mul_nonneg (hg d) (mul_nonneg (hf e) (mul_nonneg hde (by split_ifs <;> norm_num)))
    have hB : 0 ≤ g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if R d e then 1 else 0))) :=
      mul_nonneg (hg d) (mul_nonneg (hf e) (mul_nonneg hde (by split_ifs <;> norm_num)))
    by_cases hP : P (d * e)
    · rw [if_pos hP]
      rcases eq_or_ne (g d) 0 with hg0 | hg0
      · rw [hg0]; simp
      rcases eq_or_ne (f e) 0 with hf0 | hf0
      · rw [hf0]; simp
      rcases hsplit d e hg0 hf0 hP with hQ | hR
      · rw [if_pos hQ, mul_one]; linarith
      · rw [if_pos hR, mul_one]; linarith
    · rw [if_neg hP, mul_zero, mul_zero]; linarith
  calc ∑ d ∈ Ioc 0 X, g d * ∑ e ∈ Ioc 0 (X / d), f e * (if P (d * e) then (((d * e : ℕ)) : ℝ)⁻¹ else 0)
      ≤ ∑ d ∈ Ioc 0 X, ∑ e ∈ Ioc 0 (X / d),
          (g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if Q d then 1 else 0)))
            + g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if R d e then 1 else 0)))) := by
        refine sum_le_sum fun d hd => ?_
        rw [mul_sum]
        exact sum_le_sum fun e he => hterm d hd e he
    _ = (∑ d ∈ Ioc 0 X, ∑ e ∈ Ioc 0 (X / d), g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if Q d then 1 else 0))))
        + ∑ d ∈ Ioc 0 X, ∑ e ∈ Ioc 0 (X / d), g d * (f e * ((((d * e : ℕ)) : ℝ)⁻¹ * (if R d e then 1 else 0))) := by
        rw [← sum_add_distrib]; exact sum_congr rfl fun d _ => sum_add_distrib
    _ = (∑ d ∈ (Ioc 0 X).filter Q, g d / d * Sdiv f (u - Real.log d))
        + ∑ d ∈ Ioc 0 X, g d / d * SdivP f (R d) (u - Real.log d) := by
        congr 1
        · rw [sum_filter]
          refine sum_congr rfl fun d hd => ?_
          have hd0 : 0 < d := (mem_Ioc.mp hd).1
          split_ifs with hQ
          · unfold Sdiv
            rw [← floor_exp_div u hd0, ← hX, mul_sum]
            refine sum_congr rfl fun e _ => ?_
            rw [Nat.cast_mul, mul_inv]; ring
          · simp
        · refine sum_congr rfl fun d hd => ?_
          have hd0 : 0 < d := (mem_Ioc.mp hd).1
          rw [SdivP_eq_sum_ite, ← floor_exp_div u hd0, ← hX, mul_sum]
          refine sum_congr rfl fun e _ => ?_
          split_ifs
          · rw [Nat.cast_mul, mul_inv]; ring
          · simp

/-! ### the arithmetic inputs: proper prime powers are sparse -/

/-- the defect constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668f6e396659b6f207692e888320091a765ab18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
