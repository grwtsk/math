# mertensSquareEnergy_le_of_powerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3b31661-1482-4325-ed5c-0e14ee8c00a0",
  "kind": "theorem",
  "lexical_name": "mertensSquareEnergy_le_of_powerBound",
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
  "slug": "mertenssquareenergy-le-of-powerbound--b06e62a2860129647c6fe607",
  "source": {
    "blob": "e9d05c84f041f3bb0151e251e711a92dc6c366ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b06e62a2860129647c6fe607d7f7ac9df8dcfaf8d09b0ae584ed0dd55506ca02",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3b31661-1482-4325-ed5c-0e14ee8c00a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensSquareEnergy_le_of_powerBound {C β : ℝ}
    (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    ∀ n : ℕ, 1 ≤ n →
      mertensSquareEnergy n ≤
        (C ^ 2 + C ^ 2 / (2 * β - 1)) * (n : ℝ) ^ (2 * β - 1) := by
  intro n hn
  let α : ℝ := 2 * β - 1
  have hα0 : 0 < α := by dsimp [α]; linarith
  have hα1 : α ≤ 1 := by dsimp [α]; linarith
  have hsquare (k : ℕ) (hk : 1 ≤ k) :
      pickupMertensPrefix k ^ 2 ≤ C ^ 2 * (k : ℝ) ^ (2 * β) := by
    have hb := hM k hk
    have hsq : pickupMertensPrefix k ^ 2 ≤
        (C * (k : ℝ) ^ β) ^ 2 := by
      rw [← sq_abs]
      simpa only [pow_two] using
        mul_self_le_mul_self (abs_nonneg _) hb
    calc
      pickupMertensPrefix k ^ 2 ≤ (C * (k : ℝ) ^ β) ^ 2 := hsq
      _ = C ^ 2 * (k : ℝ) ^ (2 * β) := by
        rw [mul_pow]
        have hkpos : (0 : ℝ) < k := by exact_mod_cast hk
        rw [show ((k : ℝ) ^ β) ^ 2 = (k : ℝ) ^ (2 * β) by
          calc
            _ = ((k : ℝ) ^ β) ^ (2 : ℝ) := (Real.rpow_natCast _ 2).symm
            _ = (k : ℝ) ^ (β * 2) := (Real.rpow_mul hkpos.le β 2).symm
            _ = _ := by ring]
  have hterm (k : ℕ) (hk : 1 ≤ k) :
      pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ)) ≤
        C ^ 2 * (k : ℝ) ^ (α - 1) := by
    have hkpos : (0 : ℝ) < k := by exact_mod_cast hk
    calc
      pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ)) ≤
          (C * (k : ℝ) ^ β) ^ 2 / ((k : ℝ) * (k : ℝ)) := by
        apply div_le_div₀
        · positivity
        · have hb := hM k hk
          rw [← sq_abs]
          simpa only [pow_two] using
            mul_self_le_mul_self (abs_nonneg _) hb
        · positivity
        · gcongr
          exact_mod_cast Nat.le_succ k
      _ = C ^ 2 * (k : ℝ) ^ (α - 1) := by
        rw [mul_pow]
        have hrpow : ((k : ℝ) ^ β) ^ 2 = (k : ℝ) ^ (2 * β) := by
          calc
            _ = ((k : ℝ) ^ β) ^ (2 : ℝ) := (Real.rpow_natCast _ 2).symm
            _ = (k : ℝ) ^ (β * 2) := (Real.rpow_mul hkpos.le β 2).symm
            _ = _ := by ring
        rw [hrpow, show (k : ℝ) * (k : ℝ) = (k : ℝ) ^ (2 : ℝ) by
          rw [Real.rpow_two]; ring]
        calc
          C ^ 2 * (k : ℝ) ^ (2 * β) / (k : ℝ) ^ (2 : ℝ) =
              C ^ 2 * ((k : ℝ) ^ (2 * β) / (k : ℝ) ^ (2 : ℝ)) := by ring
          _ = C ^ 2 * (k : ℝ) ^ (2 * β - 2) := by
            rw [← Real.rpow_sub hkpos]
          _ = C ^ 2 * (k : ℝ) ^ (α - 1) := by
            dsimp [α]
            ring
  have hend : pickupMertensPrefix n ^ 2 / (n : ℝ) ≤
      C ^ 2 * (n : ℝ) ^ α := by
    have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
    calc
      pickupMertensPrefix n ^ 2 / (n : ℝ) ≤
          (C ^ 2 * (n : ℝ) ^ (2 * β)) / (n : ℝ) := by
        gcongr
        exact hsquare n hn
      _ = C ^ 2 * (n : ℝ) ^ α := by
        calc
          C ^ 2 * (n : ℝ) ^ (2 * β) / (n : ℝ) =
              C ^ 2 * ((n : ℝ) ^ (2 * β) / (n : ℝ) ^ (1 : ℝ)) := by
            rw [Real.rpow_one, mul_div_assoc]
          _ = C ^ 2 * (n : ℝ) ^ (2 * β - 1) := by
            rw [← Real.rpow_sub hnpos]
          _ = C ^ 2 * (n : ℝ) ^ α := by rfl
  have hzero : (0 : ℝ) ^ (α - 1) = 0 :=
    Real.zero_rpow (by linarith : α - 1 ≠ 0)
  have hrange :
      (∑ k ∈ Finset.range n, (k : ℝ) ^ (α - 1)) ≤
        ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (α - 1) := by
    have hmem : 0 ∈ Finset.range n :=
      Finset.mem_range.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
    rw [← Finset.sum_erase_add (Finset.range n)
      (fun k : ℕ => (k : ℝ) ^ (α - 1)) hmem]
    simp only [Nat.cast_zero, hzero, add_zero]
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro k hk
      simp only [Finset.mem_erase, Finset.mem_range] at hk
      exact Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr hk.1, hk.2.le⟩
    · intro k _ _
      exact Real.rpow_nonneg (Nat.cast_nonneg k) _
  have hhistory :
      (∑ k ∈ Finset.range n,
        pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ))) ≤
        (C ^ 2 / α) * (n : ℝ) ^ α := by
    calc
      _ ≤ ∑ k ∈ Finset.range n, C ^ 2 * (k : ℝ) ^ (α - 1) := by
        apply Finset.sum_le_sum
        intro k _hk
        by_cases hk0 : k = 0
        · subst k
          simp [pickupMertensPrefix, hzero]
        · exact hterm k (Nat.one_le_iff_ne_zero.mpr hk0)
      _ = C ^ 2 * ∑ k ∈ Finset.range n, (k : ℝ) ^ (α - 1) := by
        rw [Finset.mul_sum]
      _ ≤ C ^ 2 * ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (α - 1) :=
        mul_le_mul_of_nonneg_left hrange (sq_nonneg C)
      _ ≤ C ^ 2 * ((n : ℝ) ^ α / α) :=
        mul_le_mul_of_nonneg_left
          (sum_Icc_rpow_sub_one_le hα0 hα1 n) (sq_nonneg C)
      _ = (C ^ 2 / α) * (n : ℝ) ^ α := by ring
  unfold mertensSquareEnergy
  calc
    _ ≤ C ^ 2 * (n : ℝ) ^ α + (C ^ 2 / α) * (n : ℝ) ^ α :=
      add_le_add hend hhistory
    _ = (C ^ 2 + C ^ 2 / (2 * β - 1)) * (n : ℝ) ^ (2 * β - 1) := by
      dsimp [α]
      ring

/-- A pointwise Mertens bound between the square-root and linear scales pays
the exact positive Mertens-square energy premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9d05c84f041f3bb0151e251e711a92dc6c366ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
