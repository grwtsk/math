# setOf_liouvilleWith_subset_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ba1433-d993-af20-ac8d-e0ef470f01d4",
  "kind": "theorem",
  "lexical_name": "setOf_liouvilleWith_subset_aux",
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
  "slug": "setof-liouvillewith-subset-aux--1793e3988d0968e150f7c422",
  "source": {
    "blob": "ee8ae8a1fabc0f32cac04892d151119f494417bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 44,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1793e3988d0968e150f7c42212c107640018a47b29716b42a80e0acb8580e04d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ba1433-d993-af20-ac8d-e0ef470f01d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setOf_liouvilleWith_subset_aux :
    { x : ℝ | ∃ p > 2, LiouvilleWith p x } ⊆
      ⋃ m : ℤ, (· + (m : ℝ)) ⁻¹' ⋃ n > (0 : ℕ),
        { x : ℝ | ∃ᶠ b : ℕ in atTop, ∃ a ∈ Finset.Icc (0 : ℤ) b,
          |x - (a : ℤ) / b| < 1 / (b : ℝ) ^ (2 + 1 / n : ℝ) } := by
  rintro x ⟨p, hp, hxp⟩
  rcases exists_nat_one_div_lt (sub_pos.2 hp) with ⟨n, hn⟩
  rw [lt_sub_iff_add_lt'] at hn
  suffices ∀ y : ℝ, LiouvilleWith p y → y ∈ Ico (0 : ℝ) 1 → ∃ᶠ b : ℕ in atTop,
      ∃ a ∈ Finset.Icc (0 : ℤ) b, |y - a / b| < 1 / (b : ℝ) ^ (2 + 1 / (n + 1 : ℕ) : ℝ) by
    simp only [mem_iUnion, mem_preimage]
    have hx : x + ↑(-⌊x⌋) ∈ Ico (0 : ℝ) 1 := by
      simp only [Int.floor_le, Int.lt_floor_add_one, add_neg_lt_iff_le_add', zero_add, and_self_iff,
        mem_Ico, Int.cast_neg, le_add_neg_iff_add_le]
    refine' ⟨-⌊x⌋, n + 1, n.succ_pos, this _ (hxp.add_int _) hx⟩
  clear hxp x; intro x hxp hx01
  refine' ((hxp.frequently_lt_rpow_neg hn).and_eventually (eventually_ge_atTop 1)).mono _
  rintro b ⟨⟨a, -, hlt⟩, hb⟩
  rw [rpow_neg b.cast_nonneg, ← one_div, ← Nat.cast_succ] at hlt
  refine' ⟨a, _, hlt⟩
  replace hb : (1 : ℝ) ≤ b; exact Nat.one_le_cast.2 hb
  have hb0 : (0 : ℝ) < b := zero_lt_one.trans_le hb
  replace hlt : |x - a / b| < 1 / b
  · refine' hlt.trans_le (one_div_le_one_div_of_le hb0 _)
    calc
      (b : ℝ) = (b : ℝ) ^ (1 : ℝ) := (rpow_one _).symm
      _ ≤ (b : ℝ) ^ (2 + 1 / (n + 1 : ℕ) : ℝ) :=
        rpow_le_rpow_of_exponent_le hb (one_le_two.trans ?_)
    simpa using n.cast_add_one_pos.le
  rw [sub_div' _ _ _ hb0.ne', abs_div, abs_of_pos hb0, div_lt_div_right hb0, abs_sub_lt_iff,
    sub_lt_iff_lt_add, sub_lt_iff_lt_add, ← sub_lt_iff_lt_add'] at hlt
  rw [Finset.mem_Icc, ← Int.lt_add_one_iff, ← Int.lt_add_one_iff, ← neg_lt_iff_pos_add, add_comm, ←
    @Int.cast_lt ℝ, ← @Int.cast_lt ℝ]
  push_cast
  refine' ⟨lt_of_le_of_lt _ hlt.1, hlt.2.trans_le _⟩
  · simp only [mul_nonneg hx01.left b.cast_nonneg, neg_le_sub_iff_le_add, le_add_iff_nonneg_left]
  · rw [add_le_add_iff_left]
    exact mul_le_of_le_one_left hb0.le hx01.2.le
#align set_of_liouville_with_subset_aux setOf_liouvilleWith_subset_aux

/-- The set of numbers satisfying the Liouville condition with some exponent `p > 2` has Lebesgue
measure zero. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant79adc698fdc0dbc5328424476a460fc90a767b394273f667cd3706ffdfdd4c75.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8ae8a1fabc0f32cac04892d151119f494417bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
