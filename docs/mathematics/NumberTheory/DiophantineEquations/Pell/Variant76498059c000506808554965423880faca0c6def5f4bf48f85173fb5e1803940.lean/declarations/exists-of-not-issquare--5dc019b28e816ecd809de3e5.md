# exists_of_not_isSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddbd49f3-fb5a-0ce7-1c6a-85e42710b286",
  "kind": "theorem",
  "lexical_name": "exists_of_not_isSquare",
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
  "slug": "exists-of-not-issquare--5dc019b28e816ecd809de3e5",
  "source": {
    "blob": "91c03851fa8c4a2b26e030fb2f66e8da20a71f30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 377,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dc019b28e816ecd809de3e5b620e43bff4f6884d34f832996e7fe5d0f7c58f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddbd49f3-fb5a-0ce7-1c6a-85e42710b286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_not_isSquare (h₀ : 0 < d) (hd : ¬IsSquare d) :
    ∃ x y : ℤ, x ^ 2 - d * y ^ 2 = 1 ∧ y ≠ 0 := by
  let ξ : ℝ := sqrt d
  have hξ : Irrational ξ := by
    refine' irrational_nrt_of_notint_nrt 2 d (sq_sqrt <| Int.cast_nonneg.mpr h₀.le) _ two_pos
    rintro ⟨x, hx⟩
    refine' hd ⟨x, @Int.cast_injective ℝ _ _ d (x * x) _⟩
    rw [← sq_sqrt <| Int.cast_nonneg.mpr h₀.le, Int.cast_mul, ← hx, sq]
  obtain ⟨M, hM₁⟩ := exists_int_gt (2 * |ξ| + 1)
  have hM : {q : ℚ | |q.1 ^ 2 - d * (q.2 : ℤ) ^ 2| < M}.Infinite := by
    refine' Infinite.mono (fun q h => _) (infinite_rat_abs_sub_lt_one_div_den_sq_of_irrational hξ)
    have h0 : 0 < (q.2 : ℝ) ^ 2 := pow_pos (Nat.cast_pos.mpr q.pos) 2
    have h1 : (q.num : ℝ) / (q.den : ℝ) = q := by exact_mod_cast q.num_div_den
    rw [mem_setOf, abs_sub_comm, ← @Int.cast_lt ℝ, ← div_lt_div_right (abs_pos_of_pos h0)]
    push_cast
    rw [← abs_div, abs_sq, sub_div, mul_div_cancel _ h0.ne', ← div_pow, h1, ←
      sq_sqrt (Int.cast_pos.mpr h₀).le, sq_sub_sq, abs_mul, ← mul_one_div]
    refine' mul_lt_mul'' (((abs_add ξ q).trans _).trans_lt hM₁) h (abs_nonneg _) (abs_nonneg _)
    rw [two_mul, add_assoc, add_le_add_iff_left, ← sub_le_iff_le_add']
    rw [mem_setOf, abs_sub_comm] at h
    refine' (abs_sub_abs_le_abs_sub (q : ℝ) ξ).trans (h.le.trans _)
    rw [div_le_one h0, one_le_sq_iff_one_le_abs, Nat.abs_cast, Nat.one_le_cast]
    exact q.pos
  obtain ⟨m, hm⟩ : ∃ m : ℤ, {q : ℚ | q.1 ^ 2 - d * (q.den : ℤ) ^ 2 = m}.Infinite := by
    contrapose! hM
    simp only [not_infinite] at hM ⊢
    refine' (congr_arg _ (ext fun x => _)).mp (Finite.biUnion (finite_Ioo (-M) M) fun m _ => hM m)
    simp only [abs_lt, mem_setOf, mem_Ioo, mem_iUnion, exists_prop, exists_eq_right']
  have hm₀ : m ≠ 0 := by
    rintro rfl
    obtain ⟨q, hq⟩ := hm.nonempty
    rw [mem_setOf, sub_eq_zero, mul_comm] at hq
    obtain ⟨a, ha⟩ := (Int.pow_dvd_pow_iff two_pos).mp ⟨d, hq⟩
    rw [ha, mul_pow, mul_right_inj' (pow_pos (Int.coe_nat_pos.mpr q.pos) 2).ne'] at hq
    exact hd ⟨a, sq a ▸ hq.symm⟩
  haveI := neZero_iff.mpr (Int.natAbs_ne_zero.mpr hm₀)
  let f : ℚ → ZMod m.natAbs × ZMod m.natAbs := fun q => (q.num, q.den)
  obtain ⟨q₁, h₁ : q₁.num ^ 2 - d * (q₁.den : ℤ) ^ 2 = m,
      q₂, h₂ : q₂.num ^ 2 - d * (q₂.den : ℤ) ^ 2 = m, hne, hqf⟩ :=
    hm.exists_ne_map_eq_of_mapsTo (mapsTo_univ f _) finite_univ
  obtain ⟨hq1 : (q₁.num : ZMod m.natAbs) = q₂.num, hq2 : (q₁.den : ZMod m.natAbs) = q₂.den⟩ :=
    Prod.ext_iff.mp hqf
  have hd₁ : m ∣ q₁.num * q₂.num - d * (q₁.den * q₂.den) := by
    rw [← Int.natAbs_dvd, ← ZMod.int_cast_zmod_eq_zero_iff_dvd]
    push_cast
    rw [hq1, hq2, ← sq, ← sq]
    norm_cast
    rw [ZMod.int_cast_zmod_eq_zero_iff_dvd, Int.natAbs_dvd, Nat.cast_pow, ← h₂]
  have hd₂ : m ∣ q₁.num * q₂.den - q₂.num * q₁.den := by
    rw [← Int.natAbs_dvd, ← ZMod.int_cast_eq_int_cast_iff_dvd_sub]
    push_cast
    rw [hq1, hq2]
  replace hm₀ : (m : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hm₀
  refine' ⟨(q₁.num * q₂.num - d * (q₁.den * q₂.den)) / m, (q₁.num * q₂.den - q₂.num * q₁.den) / m,
      _, _⟩
  · qify [hd₁, hd₂]
    field_simp [hm₀]
    norm_cast
    conv_rhs =>
      rw [sq]
      congr
      · rw [← h₁]
      · rw [← h₂]
    push_cast
    ring
  · qify [hd₂]
    refine' div_ne_zero_iff.mpr ⟨_, hm₀⟩
    exact_mod_cast mt sub_eq_zero.mp (mt Rat.eq_iff_mul_eq_mul.mpr hne)
#align pell.exists_of_not_is_square Pell.exists_of_not_isSquare

/-- If `d` is a positive integer, then there is a nontrivial solution
to the Pell equation `x^2 - d*y^2 = 1` if and only if `d` is not a square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c03851fa8c4a2b26e030fb2f66e8da20a71f30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
