# eventually_zero_of_frequently_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e753c81350bb40e2349beb527280533ec39af843",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc13e30b-c139-e88c-c572-73e749f46f70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9424e555-3578-1d87-16fc-b63640fcda1c",
  "kind": "lemma",
  "lexical_name": "eventually_zero_of_frequently_zero",
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
  "slug": "eventually-zero-of-frequently-zero--e2afd84e236af69e7c1c9e33",
  "source": {
    "blob": "e753c81350bb40e2349beb527280533ec39af843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 89,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2afd84e236af69e7c1c9e33958a12e31c236d562d39832e27c15e97e240452f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9424e555-3578-1d87-16fc-b63640fcda1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_zero_of_frequently_zero (hf : GrowsPolynomially f) (hf' : ∃ᶠ x in atTop, f x = 0) :
    ∀ᶠ x in atTop, f x = 0 := by
  obtain ⟨c₁, hc₁_mem, c₂, hc₂_mem, hf⟩ := hf (1 / 2) (by norm_num)
  rw [frequently_atTop] at hf'
  filter_upwards [eventually_forall_ge_atTop.mpr hf, eventually_gt_atTop 0] with x hx hx_pos
  obtain ⟨x₀, hx₀_ge, hx₀⟩ := hf' (max x 1)
  have x₀_pos := calc
    0 < 1 := by norm_num
    _ ≤ x₀ := le_of_max_le_right hx₀_ge
  have hmain : ∀ (m : ℕ) (z : ℝ), x ≤ z →
      z ∈ Set.Icc ((2 : ℝ) ^ (-(m : ℤ) - 1) * x₀) ((2 : ℝ) ^ (-(m : ℤ)) * x₀) → f z = 0 := by
    intro m
    induction m with
    | zero =>
      simp only [CharP.cast_eq_zero, neg_zero, zero_sub, zpow_zero, one_mul] at *
      specialize hx x₀ (le_of_max_le_left hx₀_ge)
      simp only [hx₀, mul_zero, Set.Icc_self, Set.mem_singleton_iff] at hx
      refine fun z _ hz => hx _ ?_
      simp only [zpow_neg, zpow_one] at hz
      simp only [one_div, hz]
    | succ k ih =>
      intro z hxz hz
      simp only [Nat.cast_add, Nat.cast_one] at *
      have hx' : x ≤ (2 : ℝ) ^ (-(k : ℤ) - 1) * x₀ := by
        calc x ≤ z := hxz
          _ ≤ _ := by simp only [neg_add, ← sub_eq_add_neg] at hz; exact hz.2
      specialize hx ((2 : ℝ) ^ (-(k : ℤ) - 1) * x₀) hx' z
      specialize ih ((2 : ℝ) ^ (-(k : ℤ) - 1) * x₀) hx' ?ineq
      case ineq =>
        rw [Set.left_mem_Icc]
        gcongr
        · norm_num
        · lia
      simp only [ih, mul_zero, Set.Icc_self, Set.mem_singleton_iff] at hx
      refine hx ⟨?lb₁, ?ub₁⟩
      case lb₁ =>
        rw [one_div, ← zpow_neg_one, ← mul_assoc, ← zpow_add₀ (by norm_num)]
        have h₁ : (-1 : ℤ) + (-k - 1) = -k - 2 := by ring
        have h₂ : -(k + (1 : ℤ)) - 1 = -k - 2 := by ring
        rw [h₁]
        rw [h₂] at hz
        exact hz.1
      case ub₁ =>
        have := hz.2
        simp only [neg_add, ← sub_eq_add_neg] at this
        exact this
  refine hmain ⌊-logb 2 (x / x₀)⌋₊ x le_rfl ⟨?lb, ?ub⟩
  case lb =>
    rw [← le_div_iff₀ x₀_pos]
    refine (logb_le_logb (b := 2) (by norm_num) (zpow_pos (by norm_num) _)
      (by positivity)).mp ?_
    rw [← rpow_intCast, logb_rpow (by norm_num) (by norm_num), ← neg_le_neg_iff]
    simp only [Int.cast_sub, Int.cast_neg, Int.cast_natCast, Int.cast_one, neg_sub, sub_neg_eq_add]
    calc -logb 2 (x / x₀) ≤ ⌈-logb 2 (x / x₀)⌉₊ := Nat.le_ceil (-logb 2 (x / x₀))
         _ ≤ _ := by rw [add_comm]; exact_mod_cast Nat.ceil_le_floor_add_one _
  case ub =>
    rw [← div_le_iff₀ x₀_pos]
    refine (logb_le_logb (b := 2) (by norm_num) (by positivity)
      (zpow_pos (by norm_num) _)).mp ?_
    rw [← rpow_intCast, logb_rpow (by norm_num) (by norm_num), ← neg_le_neg_iff]
    simp only [Int.cast_neg, Int.cast_natCast, neg_neg]
    have : 0 ≤ -logb 2 (x / x₀) := by
      rw [neg_nonneg]
      refine logb_nonpos (by norm_num) (by positivity) ?_
      rw [div_le_one x₀_pos]
      exact le_of_max_le_left hx₀_ge
    exact_mod_cast Nat.floor_le this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e753c81350bb40e2349beb527280533ec39af843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
