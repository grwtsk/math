# BKLNW_a2_le_five_mul_of_ge_1000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 615,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97cdaf30-8f64-8e16-2fa9-76c801208071",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d5d8bb5-dcc9-51cb-b09c-8328124ad7df",
  "kind": "lemma",
  "lexical_name": "BKLNW_a2_le_five_mul_of_ge_1000",
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
  "slug": "bklnw-a2-le-five-mul-of-ge-1000--6847e4685a553df47d84b657",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 615,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6847e4685a553df47d84b65767b74b7a88c28e548cf8069916e96ba57b358c7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d5d8bb5-dcc9-51cb-b09c-8328124ad7df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BKLNW_a2_le_five_mul_of_ge_1000 (t : ℝ) (ht : t ≥ 1000) :
    BKLNW.a₂ t ≤ 5 * t := by
  -- Sketch:
  -- unfold `BKLNW.a₂` -> `Inputs.default.a₂`:
  --   `(1+α) * max (f (exp t)) (f (2^(⌊t/log 2⌋₊ + 1)))`.
  -- Bound `f x` by the number of terms:
  --   for `x ≥ 1`, each summand `x^(1/k - 1/3) ≤ 1`,
  --   hence `f x ≤ (⌊log x / log 2⌋₊ + 1)` (cast to ℝ).
  -- Use this for both `exp t` and the dyadic point; conclude
  --   `a₂ t ≤ 2 * (t / log 2 + 3)` and then `≤ 5*t` from `ht` + `norm_num`.
  have ht_nonneg : 0 ≤ t := by linarith
  have hlog2_pos : 0 < log 2 := log_pos one_lt_two
  set n : ℕ := ⌊t / log 2⌋₊

  have hf_nonneg (x : ℝ) (hx : 0 ≤ x) : 0 ≤ BKLNW.f x := by
    unfold BKLNW.f
    exact Finset.sum_nonneg (fun _ _ ↦ Real.rpow_nonneg hx _)

  have hf_le_floor_plus_one (x : ℝ) (hx : 1 ≤ x) :
      BKLNW.f x ≤ (⌊(log x) / (log 2)⌋₊ + 1 : ℝ) := by
    have hterm :
        ∀ k ∈ Finset.Icc 3 ⌊(log x) / (log 2)⌋₊, x ^ (1 / (k : ℝ) - 1 / (3 : ℝ) : ℝ) ≤ (1 : ℝ) := by
      intro k hk
      have hk3 : (3 : ℕ) ≤ k := (Finset.mem_Icc.mp hk).1
      have hk3' : (3 : ℝ) ≤ k := by exact_mod_cast hk3
      have hpow_le_zero : (1 / (k : ℝ) - 1 / (3 : ℝ) : ℝ) ≤ 0 := by
        have : (1 / (k : ℝ) : ℝ) ≤ 1 / (3 : ℝ) := by
          exact one_div_le_one_div_of_le (by norm_num) hk3'
        linarith
      have hxpow : x ^ (1 / (k : ℝ) - 1 / (3 : ℝ) : ℝ) ≤ x ^ (0 : ℝ) :=
        Real.rpow_le_rpow_of_exponent_le hx hpow_le_zero
      simpa using hxpow
    have hcard :
        Finset.card (Finset.Icc 3 ⌊(log x) / (log 2)⌋₊) ≤ ⌊(log x) / (log 2)⌋₊ + 1 := by
      calc
        Finset.card (Finset.Icc 3 ⌊(log x) / (log 2)⌋₊) ≤
            Finset.card (Finset.Icc 0 ⌊(log x) / (log 2)⌋₊) := by
              apply Finset.card_le_card
              intro m hm
              exact Finset.mem_Icc.mpr ⟨Nat.zero_le m, (Finset.mem_Icc.mp hm).2⟩
        _ = ⌊(log x) / (log 2)⌋₊ + 1 := by simp
    calc
      BKLNW.f x ≤ ∑ k ∈ Finset.Icc 3 ⌊(log x) / (log 2)⌋₊, (1 : ℝ) := by
        unfold BKLNW.f
        exact Finset.sum_le_sum hterm
      _ = (Finset.card (Finset.Icc 3 ⌊(log x) / (log 2)⌋₊) : ℝ) := by
        simp
      _ ≤ (⌊(log x) / (log 2)⌋₊ + 1 : ℝ) := by exact_mod_cast hcard

  have hexp_ge_one : (1 : ℝ) ≤ exp t := by
    have : exp (0 : ℝ) ≤ exp t := exp_le_exp_of_le ht_nonneg
    simpa using this
  have hf_exp : BKLNW.f (exp t) ≤ t / log 2 + 2 := by
    calc
      BKLNW.f (exp t) ≤ (⌊(log (exp t)) / (log 2)⌋₊ + 1 : ℝ) :=
        hf_le_floor_plus_one (exp t) hexp_ge_one
      _ = (⌊t / log 2⌋₊ + 1 : ℝ) := by simp
      _ ≤ t / log 2 + 1 := by
        nlinarith [Nat.floor_le (div_nonneg ht_nonneg hlog2_pos.le)]
      _ ≤ t / log 2 + 2 := by linarith

  have hpow_ge_one : (1 : ℝ) ≤ 2 ^ (n + 1 : ℕ) := by
    exact one_le_pow₀ (by norm_num : (1 : ℝ) ≤ 2)
  have hf_pow : BKLNW.f (2 ^ (n + 1 : ℕ)) ≤ t / log 2 + 2 := by
    have hfloor_pow : ⌊(log ((2 : ℝ) ^ (n + 1))) / (log 2)⌋₊ = n + 1 := by
      have hlog2_ne : (log 2 : ℝ) ≠ 0 := hlog2_pos.ne'
      rw [log_pow, show (((n + 1 : ℕ) : ℝ) * log 2 / log 2) = ((n + 1 : ℕ) : ℝ) by
        field_simp [hlog2_ne]]
      simpa using (Nat.floor_natCast (n + 1))
    calc
      BKLNW.f (2 ^ (n + 1 : ℕ)) ≤ (⌊(log ((2 : ℝ) ^ (n + 1))) / (log 2)⌋₊ + 1 : ℝ) :=
        hf_le_floor_plus_one ((2 : ℝ) ^ (n + 1 : ℕ)) hpow_ge_one
      _ = (n : ℝ) + 2 := by
        rw [hfloor_pow, Nat.cast_add, Nat.cast_one]
        ring
      _ ≤ t / log 2 + 2 := by
        nlinarith [Nat.floor_le (div_nonneg ht_nonneg hlog2_pos.le)]

  have hmax :
      max (BKLNW.f (exp t)) (BKLNW.f (2 ^ (⌊t / log 2⌋₊ + 1))) ≤ t / log 2 + 2 := by
    refine max_le hf_exp ?_
    simpa [n] using hf_pow

  have hfac : (1 + BKLNW.Inputs.default.α : ℝ) ≤ 2 := by
    change 1 + 1.93378e-8 * BKLNW_app.table_8_margin ≤ 2
    norm_num [BKLNW_app.table_8_margin]
  have hmax_nonneg :
      0 ≤ max (BKLNW.f (exp t)) (BKLNW.f (2 ^ (⌊t / log 2⌋₊ + 1))) := by
    exact le_trans (hf_nonneg (exp t) (by positivity)) (le_max_left _ _)

  have ha2_le : BKLNW.a₂ t ≤ 2 * (t / log 2 + 2) := by
    unfold BKLNW.a₂ BKLNW.Inputs.a₂
    calc
      (1 + BKLNW.Inputs.default.α) *
          max (BKLNW.f (exp t)) (BKLNW.f (2 ^ (⌊t / log 2⌋₊ + 1)))
          ≤ 2 * max (BKLNW.f (exp t)) (BKLNW.f (2 ^ (⌊t / log 2⌋₊ + 1))) := by
            exact mul_le_mul_of_nonneg_right hfac hmax_nonneg
      _ ≤ 2 * (t / log 2 + 2) := by gcongr

  have hcoef : (2 / log 2 : ℝ) < 3 := by
    have hlog : (2 / 3 : ℝ) < log 2 := by linarith [Real.log_two_gt_d9]
    refine (div_lt_iff₀ hlog2_pos).2 ?_
    nlinarith [hlog]
  have hlin : 2 * (t / log 2 + 2) ≤ 5 * t := by
    calc
      2 * (t / log 2 + 2) = (2 / log 2) * t + 4 := by ring
      _ ≤ 3 * t + 4 := by nlinarith [le_of_lt hcoef, ht_nonneg]
      _ ≤ 5 * t := by linarith [ht]

  exact ha2_le.trans hlin

/--
Purely numerical tail bound used at the end:
`60000 * exp (-230) ≤ 1e-5`.
This can be discharged by `interval_decide`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
