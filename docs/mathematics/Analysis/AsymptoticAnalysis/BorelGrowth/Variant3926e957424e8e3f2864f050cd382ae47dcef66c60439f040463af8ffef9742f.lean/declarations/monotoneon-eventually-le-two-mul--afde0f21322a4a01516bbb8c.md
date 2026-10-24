# MonotoneOn.eventually_le_two_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efb3334c-079a-934e-7f13-7d76fa2a2d48",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.eventually_le_two_mul'",
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
  "slug": "monotoneon-eventually-le-two-mul--afde0f21322a4a01516bbb8c",
  "source": {
    "blob": "24bda5b6e7d28692adcbff7c552b0220cd93a07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 60,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afde0f21322a4a01516bbb8c3818ce0e290bd2dd04e39a85f335ba3b34ce9030",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efb3334c-079a-934e-7f13-7d76fa2a2d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem MonotoneOn.eventually_le_two_mul' {S : ℝ → ℝ} {a : ℝ}
    (h₁ : MonotoneOn S (Set.Ici a)) (h₂ : 0 < S a) :
    ∀ᶠ r in volume.cofinite ⊓ atTop, S (r + (S r)⁻¹) ≤ 2 * S r := by
  classical
  -- The exceptional set `E` and its dyadic slices `En n`
  set E := {r | a ≤ r ∧ 2 * S r < S (r + (S r)⁻¹)} with hE_def
  set En := fun n ↦ {r ∈ E | 2 ^ n * S a ≤ S r ∧ S r < 2 ^ (n + 1) * S a}
    with hEn_def
  have hS_pos : ∀ r ∈ Ici a, 0 < S r := fun r hr ↦ h₂.trans_le (h₁ self_mem_Ici hr hr)
  -- The slices cover `E`
  have hcov : E ⊆ ⋃ n, En n := by
    intro r hr
    have h₃ : S a ≤ S r := h₁ self_mem_Ici hr.1 hr.1
    have h₄ : ∃ n : ℕ, S r < 2 ^ (n + 1) * S a := by
      obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt (S r / S a) one_lt_two
      exact ⟨n, ((div_lt_iff₀ h₂).1 hn).trans_le
        (mul_le_mul_of_nonneg_right (pow_le_pow_right₀ one_le_two n.le_succ) h₂.le)⟩
    refine mem_iUnion.2 ⟨Nat.find h₄, hr, ?_, Nat.find_spec h₄⟩
    rcases Nat.eq_zero_or_pos (Nat.find h₄) with h₅ | h₅
    · simpa [h₅] using h₃
    · have h₆ := Nat.find_min h₄ (Nat.sub_lt h₅ one_pos)
      rw [show Nat.find h₄ - 1 + 1 = Nat.find h₄ by omega] at h₆
      exact not_lt.1 h₆
  -- Two points of a slice are at distance at most `(2 ^ n * S a)⁻¹`
  have hkey {n : ℕ} {x y : ℝ} (hx : x ∈ En n) (hy : y ∈ En n) : y - x ≤ (2 ^ n * S a)⁻¹ := by
    obtain ⟨⟨h₁x, h₂x⟩, h₃x, -⟩ := hx
    obtain ⟨⟨h₁y, -⟩, -, h₄y⟩ := hy
    -- `y` lies strictly below `x + (S x)⁻¹`…
    have h₆ : y < x + (S x)⁻¹ := by
      by_contra h₆
      have h₇ : S (x + (S x)⁻¹) ≤ S y := by
        apply h₁ _ h₁y (not_lt.1 h₆)
        exact mem_Ici.2 (h₁x.trans (le_add_of_nonneg_right (inv_nonneg.2 (hS_pos x h₁x).le)))
      have h₈ : (2 : ℝ) ^ (n + 1) * S a = 2 * (2 ^ n * S a) := by ring
      linarith
    -- …and `(S x)⁻¹` is at most `(2 ^ n * S a)⁻¹`
    have h₇ : (S x)⁻¹ ≤ ((2 : ℝ) ^ n * S a)⁻¹ := inv_anti₀ (by positivity) h₃x
    linarith
  -- Hence each slice has diameter at most `(2 ^ n * S a)⁻¹`…
  have hdiam (n : ℕ) : Metric.ediam (En n) ≤ ENNReal.ofReal ((2 ^ n * S a)⁻¹) := by
    apply Metric.ediam_le
    intro x hx y hy
    rw [edist_le_ofReal (by positivity)]
    rcases le_total x y with h | h
    · rw [Real.dist_eq, abs_of_nonpos (by linarith), neg_sub]
      exact hkey hx hy
    · rw [Real.dist_eq, abs_of_nonneg (by linarith)]
      exact hkey hy hx
  -- …and `E` has finite volume
  have hvol : volume E < ⊤ := by
    have hsum : Summable fun n ↦ ((2 : ℝ) ^ n * S a)⁻¹ := by
      simp only [mul_inv, ← inv_pow]
      exact (summable_geometric_of_lt_one (r := 2⁻¹) (by norm_num) (by norm_num)).mul_right _
    have h₃ : ∑' n : ℕ, ENNReal.ofReal (((2 : ℝ) ^ n * S a)⁻¹) = ENNReal.ofReal (2 * (S a)⁻¹) := by
      rw [← ENNReal.ofReal_tsum_of_nonneg (f := fun n ↦ ((2 : ℝ) ^ n * S a)⁻¹)
        (fun n ↦ by positivity) hsum]
      congr 1
      simp only [mul_inv, ← inv_pow]
      rw [tsum_mul_right, tsum_geometric_inv_two]
    calc volume E
        ≤ ∑' n, volume (En n) := le_trans (measure_mono hcov) (measure_iUnion_le En)
      _ ≤ ∑' n : ℕ, ENNReal.ofReal (((2 : ℝ) ^ n * S a)⁻¹) :=
          ENNReal.tsum_le_tsum fun n ↦ le_trans (Real.volume_le_diam (En n)) (hdiam n)
      _ = ENNReal.ofReal (2 * (S a)⁻¹) := h₃
      _ < ⊤ := ENNReal.ofReal_lt_top
  -- Conclusion
  have hEc : Eᶜ ∈ volume.cofinite := by
    rw [Measure.mem_cofinite, compl_compl]
    exact hvol
  filter_upwards [mem_inf_of_left hEc, mem_inf_of_right (eventually_ge_atTop a)]
    with r h₃r h₄r
  by_contra h₅
  exact h₃r ⟨h₄r, not_le.1 h₅⟩

/--
**Borel's Growth Lemma**: if `S : ℝ → ℝ` is monotone on `Set.Ici a` and is non-negative at `a`, then
the inequality `S (r + (S r)⁻¹) ≤ 2 * S r` holds for all sufficiently large `r` outside a set of
finite Lebesgue measure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24bda5b6e7d28692adcbff7c552b0220cd93a07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
