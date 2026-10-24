# exists_int_int_abs_mul_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d478bfe-f440-153f-9cc9-b675680ab076",
  "kind": "theorem",
  "lexical_name": "exists_int_int_abs_mul_sub_le",
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
  "slug": "exists-int-int-abs-mul-sub-le--fe57588c21fa02f0cd58c133",
  "source": {
    "blob": "1fefffd0d1f9f27fec2b4fbc7911a7592389611e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 103,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe57588c21fa02f0cd58c1331a58f39b0cc578e07875feab993b7abbf2a4f834",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d478bfe-f440-153f-9cc9-b675680ab076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_int_int_abs_mul_sub_le (ξ : ℝ) {n : ℕ} (n_pos : 0 < n) :
    ∃ j k : ℤ, 0 < k ∧ k ≤ n ∧ |↑k * ξ - j| ≤ 1 / (n + 1) := by
  let f : ℤ → ℤ := fun m => ⌊fract (ξ * m) * (n + 1)⌋
  have hn : 0 < (n : ℝ) + 1 := by exact_mod_cast Nat.succ_pos _
  have hfu := fun m : ℤ => mul_lt_of_lt_one_left hn <| fract_lt_one (ξ * ↑m)
  conv in |_| ≤ _ => rw [mul_comm, le_div_iff hn, ← abs_of_pos hn, ← abs_mul]
  let D := Icc (0 : ℤ) n
  by_cases H : ∃ m ∈ D, f m = n
  · obtain ⟨m, hm, hf⟩ := H
    have hf' : ((n : ℤ) : ℝ) ≤ fract (ξ * m) * (n + 1) := hf ▸ floor_le (fract (ξ * m) * (n + 1))
    have hm₀ : 0 < m := by
      have hf₀ : f 0 = 0 := by
        -- Porting note: was
        -- simp only [floor_eq_zero_iff, algebraMap.coe_zero, mul_zero, fract_zero,
        --   zero_mul, Set.left_mem_Ico, zero_lt_one]
        simp only [cast_zero, mul_zero, fract_zero, zero_mul, floor_zero]
      refine' Ne.lt_of_le (fun h => n_pos.ne _) (mem_Icc.mp hm).1
      exact_mod_cast hf₀.symm.trans (h.symm ▸ hf : f 0 = n)
    refine' ⟨⌊ξ * m⌋ + 1, m, hm₀, (mem_Icc.mp hm).2, _⟩
    rw [cast_add, ← sub_sub, sub_mul, cast_one, one_mul, abs_le]
    refine'
      ⟨le_sub_iff_add_le.mpr _, sub_le_iff_le_add.mpr <| le_of_lt <| (hfu m).trans <| lt_one_add _⟩
    simpa only [neg_add_cancel_comm_assoc] using hf'
  · -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5127): added `not_and`
    simp_rw [not_exists, not_and] at H
    have hD : (Ico (0 : ℤ) n).card < D.card := by rw [card_Icc, card_Ico]; exact lt_add_one n
    have hfu' : ∀ m, f m ≤ n := fun m => lt_add_one_iff.mp (floor_lt.mpr (by exact_mod_cast hfu m))
    have hwd : ∀ m : ℤ, m ∈ D → f m ∈ Ico (0 : ℤ) n := fun x hx =>
      mem_Ico.mpr
        ⟨floor_nonneg.mpr (mul_nonneg (fract_nonneg (ξ * x)) hn.le), Ne.lt_of_le (H x hx) (hfu' x)⟩
    have : ∃ (x : ℤ) (_ : x ∈ D) (y : ℤ) (_ : y ∈ D), x < y ∧ f x = f y := by
      obtain ⟨x, hx, y, hy, x_ne_y, hxy⟩ := exists_ne_map_eq_of_card_lt_of_maps_to hD hwd
      rcases lt_trichotomy x y with (h | h | h)
      exacts [⟨x, hx, y, hy, h, hxy⟩, False.elim (x_ne_y h), ⟨y, hy, x, hx, h, hxy.symm⟩]
    obtain ⟨x, hx, y, hy, x_lt_y, hxy⟩ := this
    refine'
      ⟨⌊ξ * y⌋ - ⌊ξ * x⌋, y - x, sub_pos_of_lt x_lt_y,
        sub_le_iff_le_add.mpr <| le_add_of_le_of_nonneg (mem_Icc.mp hy).2 (mem_Icc.mp hx).1, _⟩
    convert_to |fract (ξ * y) * (n + 1) - fract (ξ * x) * (n + 1)| ≤ 1
    · congr; push_cast; simp only [fract]; ring
    exact (abs_sub_lt_one_of_floor_eq_floor hxy.symm).le
#align real.exists_int_int_abs_mul_sub_le Real.exists_int_int_abs_mul_sub_le

/-- *Dirichlet's approximation theorem:*
For any real number `ξ` and positive natural `n`, there is a natural number `k`,
with `0 < k ≤ n` such that `|k*ξ - round(k*ξ)| ≤ 1/(n+1)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fefffd0d1f9f27fec2b4fbc7911a7592389611e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
