# pi_upper_specific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa82e83-a56b-818a-9347-797360bf5cfd",
  "kind": "theorem",
  "lexical_name": "pi_upper_specific",
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
  "slug": "pi-upper-specific--ce09b0b022aa998fae6e5b1b",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1964,
    "line": 1728,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce09b0b022aa998fae6e5b1b4231f7e8468cc395bafca9b8dc2e2df776cff51f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa82e83-a56b-818a-9347-797360bf5cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1728–1964.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_upper_specific : ∀ x > exₐ, pi x < x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + ((Mₐ exₐ) * x / log x ^ 6) := by
  intro x hx
  have h2xa : 2 ≤ xₐ := two_le_xₐ
  have hxa_exa : xₐ ≤ exₐ := xₐ_le_exₐ
  have hxax : xₐ ≤ x := le_trans hxa_exa (le_of_lt hx)
  have hx2 : 2 ≤ x := by linarith
  have hxapos : 0 < xₐ := xₐ_pos
  have hxpos : 0 < x := by linarith
  have hexax : exₐ ≤ x := le_of_lt hx

  have htheta : ∀ t ≥ 2, |θ t - t| * log t ^ 5 ≤ t * a t := pi_bound_abs_mul

  have ha_int : IntegrableOn (fun t ↦ a t / log t ^ 7) (Set.Icc 2 x) volume :=
    integrable_a_over_log7_piecewise x hx2

  have hpi0 :
      pi x ≤ x / log x + a x * x / log x ^ 6 + (∫ t in Set.Icc 2 x, 1 / log t ^ 2)
        + ∫ t in Set.Icc 2 x, a t / log t ^ 7 :=
    pi_upper a htheta x ha_int hx2

  have hI2 :
      ∫ t in Set.Icc 2 x, 1 / log t ^ 2 =
        x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5 + 120 * x / log x ^ 6
        - 2 * (∑ k ∈ Finset.Icc 1 5, k.factorial / log 2 ^ (k + 1)) + 720 * ∫ t in Set.Icc 2 x, 1 / log t ^ 7 :=
    log_2_expansion_t x hx2

  have hsumx :
      x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) =
        x / log x + x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5 := by
    norm_num [Finset.sum_range_succ, Nat.factorial]
    ring

  have hS_nonneg : 0 ≤ (∑ k ∈ Finset.Icc 1 5, k.factorial / log 2 ^ (k + 1)) :=
    Finset.sum_nonneg fun k _ ↦
      div_nonneg (by positivity) (pow_nonneg (log_nonneg (by norm_num)) _)

  have ha_nonneg : ∀ t ≥ 2, 0 ≤ a t := by
    intro t ht
    have hR_nonneg : 0 ≤ t * a t :=
      le_trans (mul_nonneg (abs_nonneg _)
        (pow_nonneg (log_nonneg (by linarith : (1 : ℝ) ≤ t)) 5)) (htheta t ht)
    nlinarith

  have hax_le : a x ≤ a exₐ :=
    a_mono (Set.mem_Ici.mpr hxa_exa) (Set.mem_Ici.mpr hxax) hexax

  have hJ_int : IntegrableOn (fun t : ℝ ↦ 1 / log t ^ 7) (Set.Icc 2 x) volume :=
    ContinuousOn.integrableOn_Icc (continuousOn_const.div (ContinuousOn.pow
      (continuousOn_log.mono <| by intro t ht; exact ne_of_gt (lt_of_lt_of_le (by norm_num) ht.1)) _) fun t ht ↦
      pow_ne_zero _ <| ne_of_gt <| log_pos <| by linarith [ht.1])

  have h720_int : IntegrableOn (fun t : ℝ ↦ (720 : ℝ) / log t ^ 7) (Set.Icc 2 x) volume := by
    refine (integrableOn_congr_fun ?_ measurableSet_Icc).2 (hJ_int.const_mul 720)
    intro t _
    ring

  have h_add_int : IntegrableOn (fun t : ℝ ↦ (720 : ℝ) / log t ^ 7 + a t / log t ^ 7) (Set.Icc 2 x) volume :=
    h720_int.add ha_int

  have hG_int : IntegrableOn (fun t : ℝ ↦ (720 + a t) / log t ^ 7) (Set.Icc 2 x) volume := by
    refine (integrableOn_congr_fun ?_ measurableSet_Icc).2 h_add_int
    intro t _
    ring

  have h720Ia :
      (720 : ℝ) * (∫ t in Set.Icc 2 x, 1 / log t ^ 7) + (∫ t in Set.Icc 2 x, a t / log t ^ 7)
        = ∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7 :=
    pi_upper_specific_h720Ia x ha_int

  have hsplitG :
      ∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7 =
        (∫ t in Set.Icc 2 xₐ, (720 + a t) / log t ^ 7) +
        (∫ t in Set.Icc xₐ x, (720 + a t) / log t ^ 7) :=
    integral_Icc_split_at_xa (fun t ↦ (720 + a t) / log t ^ 7) x h2xa hxax hG_int

  have htail_le :
      ∫ t in Set.Icc xₐ x, (720 + a t) / log t ^ 7 ≤
        (720 + a xₐ) * ∫ t in Set.Icc xₐ x, 1 / log t ^ 7 := by
    have htail_int : IntegrableOn (fun t : ℝ ↦ (720 + a t) / log t ^ 7) (Set.Icc xₐ x) volume :=
      hG_int.mono_set (by intro t ht; exact ⟨by linarith [h2xa, ht.1], ht.2⟩)
    have hconst_int : IntegrableOn (fun t : ℝ ↦ (720 + a xₐ) / log t ^ 7) (Set.Icc xₐ x) volume :=
      (ContinuousOn.integrableOn_Icc (continuousOn_const.div (ContinuousOn.pow
        (continuousOn_log.mono <| by intro t ht; exact ne_of_gt (lt_of_lt_of_le (by linarith [h2xa]) ht.1)) _)
        fun t ht ↦ pow_ne_zero _ <| ne_of_gt <| log_pos <| by linarith [h2xa, ht.1]))
    have hpt : ∀ t ∈ Set.Icc xₐ x, (720 + a t) / log t ^ 7 ≤ (720 + a xₐ) / log t ^ 7 := by
      intro t ht
      have hat : a t ≤ a xₐ :=
        a_mono (Set.mem_Ici.mpr le_rfl) (Set.mem_Ici.mpr ht.1) ht.1
      have hden_nonneg : 0 ≤ log t ^ 7 :=
        pow_nonneg (log_nonneg (by linarith [h2xa, ht.1])) 7
      have hnum : 720 + a t ≤ 720 + a xₐ := by linarith
      exact div_le_div_of_nonneg_right hnum hden_nonneg
    have := MeasureTheory.setIntegral_mono_on htail_int hconst_int measurableSet_Icc hpt
    have hconst_factor :
        ∫ t in Set.Icc xₐ x, (720 + a xₐ) / log t ^ 7 =
          (720 + a xₐ) * ∫ t in Set.Icc xₐ x, 1 / log t ^ 7 := by
      rw [← MeasureTheory.integral_const_mul]
      refine MeasureTheory.setIntegral_congr_fun measurableSet_Icc ?_
      intro t _
      ring
    simpa [hconst_factor] using this

  have hJtail_le :
      ∫ t in Set.Icc xₐ x, 1 / log t ^ 7 ≤ ∫ t in Set.Icc 2 x, 1 / log t ^ 7 := by
    refine MeasureTheory.setIntegral_mono_set ?_ ?_ ?_
    · exact hJ_int
    · filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Icc] with t ht
      exact one_div_nonneg.mpr (pow_nonneg (log_nonneg (by linarith [ht.1])) _)
    · exact MeasureTheory.ae_of_all _ (fun t ht ↦ ⟨by linarith [ht.1, h2xa], ht.2⟩)

  have haxa_nonneg : 0 ≤ a xₐ := ha_nonneg xₐ h2xa
  have h720axa_nonneg : 0 ≤ 720 + a xₐ := by linarith
  have h720axa_pos : 0 < 720 + a xₐ := by linarith

  have hJfull_lt :
      ∫ t in Set.Icc 2 x, 1 / log t ^ 7 <
        x / log x ^ 7 + 7 * (sqrt x / log 2 ^ 8 + 2 ^ 8 * x / log x ^ 8) :=
    log_7_int_bound x hx2

  have htail_lt :
      ∫ t in Set.Icc xₐ x, (720 + a t) / log t ^ 7 <
        (720 + a xₐ) * (x / log x ^ 7 + 7 * (sqrt x / log 2 ^ 8 + 2 ^ 8 * x / log x ^ 8)) := by
    have hm := mul_lt_mul_of_pos_left (lt_of_le_of_lt hJtail_le hJfull_lt) h720axa_pos
    grind

  have hI0_eq :
      ∫ t in Set.Icc 2 xₐ, (720 + a t) / log t ^ 7 = C₁ * xₐ / log xₐ ^ 6 := by
    have hlogxapos0 : 0 < log xₐ := log_xₐ_pos
    rw [show C₁ = log xₐ ^ 6 / xₐ * ∫ t in Set.Icc 2 xₐ, (720 + a t) / log t ^ 7 from rfl]
    field_simp [hxapos.ne', hlogxapos0.ne']

  have hlogxapos : 0 < log xₐ := log_xₐ_pos
  have hlogxpos : 0 < log x := log_pos (by linarith)
  have hlog_le : log xₐ ≤ log x := log_le_log hxapos hxax
  have hinv_log : (log x)⁻¹ ≤ (log xₐ)⁻¹ := inv_anti₀ hlogxapos hlog_le

  have hterm1 : x / log x ^ 7 ≤ x / log x ^ 6 * (1 / log xₐ) := by
    have : (1 / log x) ≤ (1 / log xₐ) := by simpa [one_div] using hinv_log
    calc
      x / log x ^ 7 = (x / log x ^ 6) * (1 / log x) := by
        field_simp [hlogxpos.ne']
      _ ≤ (x / log x ^ 6) * (1 / log xₐ) := by gcongr

  have hterm2 : 2 ^ 8 * x / log x ^ 8 ≤ x / log x ^ 6 * (2 ^ 8 / log xₐ ^ 2) := by
    have hpow2 : (log x)⁻¹ ^ 2 ≤ (log xₐ)⁻¹ ^ 2 := by
      gcongr
    have : 2 ^ 8 / log x ^ 2 ≤ 2 ^ 8 / log xₐ ^ 2 := by
      simpa [div_eq_mul_inv, pow_two, mul_assoc, mul_left_comm, mul_comm] using
        (mul_le_mul_of_nonneg_left hpow2 (by positivity : 0 ≤ (2 ^ 8 : ℝ)))
    calc
      2 ^ 8 * x / log x ^ 8 = (x / log x ^ 6) * (2 ^ 8 / log x ^ 2) := by
        field_simp [hlogxpos.ne']
      _ ≤ (x / log x ^ 6) * (2 ^ 8 / log xₐ ^ 2) := by gcongr

  have hterm3 :
      sqrt x / log 2 ^ 8 ≤ x / log x ^ 6 * (log xₐ ^ 6 / (sqrt xₐ * log 2 ^ 8)) :=
    sqrt_term_bound_xa x hxax

  have hB :
      x / log x ^ 7 + 7 * (sqrt x / log 2 ^ 8 + 2 ^ 8 * x / log x ^ 8)
        ≤ x / log x ^ 6 * B := by
    have hterm2' : 7 * 2 ^ 8 * x / log x ^ 8 ≤ x / log x ^ 6 * (7 * 2 ^ 8 / log xₐ ^ 2) := by
      have hmul := mul_le_mul_of_nonneg_left hterm2 (by positivity : 0 ≤ (7 : ℝ))
      ring_nf at hmul ⊢
      exact hmul
    have hsum12 : x / log x ^ 7 + 7 * 2 ^ 8 * x / log x ^ 8 ≤
        x / log x ^ 6 * (1 / log xₐ + 7 * 2 ^ 8 / log xₐ ^ 2) := by
      nlinarith
    calc
      x / log x ^ 7 + 7 * (sqrt x / log 2 ^ 8 + 2 ^ 8 * x / log x ^ 8)
          ≤ x / log x ^ 7 + 7 * (x / log x ^ 6 * (log xₐ ^ 6 / (sqrt xₐ * log 2 ^ 8)) + 2 ^ 8 * x / log x ^ 8) := by
        gcongr
      _ = (x / log x ^ 7 + 7 * 2 ^ 8 * x / log x ^ 8) + x / log x ^ 6 * (7 * log xₐ ^ 6 / (sqrt xₐ * log 2 ^ 8)) := by
        ring
      _ ≤ x / log x ^ 6 * (1 / log xₐ + 7 * 2 ^ 8 / log xₐ ^ 2) + x / log x ^ 6 * (7 * log xₐ ^ 6 / (sqrt xₐ * log 2 ^ 8)) := by
        gcongr
      _ = x / log x ^ 6 * B := by
        unfold B
        ring

  have hC1_nonneg : 0 ≤ C₁ := by
    unfold C₁
    refine mul_nonneg ?_ ?_
    · positivity
    · apply MeasureTheory.integral_nonneg_of_ae
      filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Icc] with t ht
      exact div_nonneg (by linarith [ha_nonneg t ht.1])
        (pow_nonneg (log_nonneg (by linarith [ht.1])) 7)

  have hratio6 : xₐ / log xₐ ^ 6 ≤ x / log x ^ 6 :=
    ratio6_bound_xa x hxax

  have hI0_le :
      ∫ t in Set.Icc 2 xₐ, (720 + a t) / log t ^ 7 ≤ C₁ * x / log x ^ 6 := by
    rw [hI0_eq]
    simpa [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using
      mul_le_mul_of_nonneg_left hratio6 hC1_nonneg

  have htail_B_lt :
      ∫ t in Set.Icc xₐ x, (720 + a t) / log t ^ 7 <
        (720 + a xₐ) * (x / log x ^ 6 * B) := by
    have htmp :
        (720 + a xₐ) * (x / log x ^ 7 + 7 * (sqrt x / log 2 ^ 8 + 2 ^ 8 * x / log x ^ 8))
          ≤ (720 + a xₐ) * (x / log x ^ 6 * B) :=
      mul_le_mul_of_nonneg_left hB h720axa_nonneg
    grind

  have hG_lt :
      ∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7 <
        C₁ * x / log x ^ 6 +
        (720 + a xₐ) * (x / log x ^ 6 * B) := by
    rw [hsplitG]
    exact add_lt_add_of_le_of_lt hI0_le htail_B_lt

  have hmain_le :
      pi x ≤ x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
        + ((120 + a exₐ) * x / log x ^ 6)
        + (∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7) :=
    pi_upper_specific_main_le x hx2 hpi0 hI2 hsumx hS_nonneg hax_le h720Ia

  have hfinal_lt :
      pi x < x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
        + (120 + a exₐ) * x / log x ^ 6
        + (C₁ * x / log x ^ 6
        + (720 + a xₐ) * (x / log x ^ 6 * B)) := by
    refine lt_of_le_of_lt hmain_le ?_
    gcongr

  have hMa_eq :
      (120 + a exₐ) * x / log x ^ 6
        + (C₁ * x / log x ^ 6 + (720 + a xₐ) * (x / log x ^ 6 * B))
      = Mₐ exₐ * x / log x ^ 6 := by
    unfold Mₐ
    ring

  linarith [hMa_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L1728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
