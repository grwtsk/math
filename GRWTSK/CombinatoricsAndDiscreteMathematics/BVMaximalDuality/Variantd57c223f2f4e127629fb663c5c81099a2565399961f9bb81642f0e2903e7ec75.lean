-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MaxPrefixNorm.Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MaxPrefixNorm.Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/PrimeLattice/BVMaximalDuality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreePacketUnsmoothing
import Mathlib.Algebra.BigOperators.Module
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Tactic

/-!
# Bounded variation and the conductor-three maximal moment

The arithmetic moment path is the sequence of exact partial sums
`conductorThreePsi x`.  Finite Abel summation identifies its maximal norm as
the operator norm controlling every discrete bounded-variation multiplier.

All results in this file are finite and unconditional.  In particular, the
module constructs no packet frame and assumes no Wang--Zahl or GRH estimate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MaxPrefixNorm.Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7

public section

namespace Surface.Core.PrimeLattice.BVMaximalDuality

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeVonMangoldt
open Surface.Core.ConductorThreePacketUnsmoothing

/-- The largest exact conductor-three partial sum through arithmetic moment
`2 * N`. -/
@[expose]
def maxPrefixNorm (N : ℕ) : ℝ :=
  (Finset.range (2 * N + 1)).sup' (by simp)
    (fun x ↦ |conductorThreePsi x|)

/-- Every partial sum in the scale window is bounded by `maxPrefixNorm`. -/
@[surface_novel, surface_published]
theorem abs_conductorThreePsi_le_maxPrefixNorm
    {N x : ℕ} (hx : x ≤ 2 * N) :
    |conductorThreePsi x| ≤ maxPrefixNorm N := by
  unfold maxPrefixNorm
  exact Finset.le_sup' (fun x ↦ |conductorThreePsi x|) (by
    simp
    omega)

/-- The maximal prefix norm is nonnegative. -/
@[surface_novel, surface_published]
theorem maxPrefixNorm_nonneg (N : ℕ) : 0 ≤ maxPrefixNorm N := by
  exact (abs_nonneg (conductorThreePsi 0)).trans
    (abs_conductorThreePsi_le_maxPrefixNorm (N := N) (x := 0) (by omega))

/-- Exact finite Abel summation for the conductor-three coefficients on the
scale window `0, ..., 2 * N`. -/
@[surface_novel, surface_published]
theorem discrete_summationByParts (N : ℕ) (weight : ℕ → ℝ) :
    conductorThreeDiscreteWeightedSum N weight =
      conductorThreePsi (2 * N) * weight (2 * N) +
        ∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1)) := by
  have hparts :
      (∑ n ∈ Finset.range (2 * N + 1),
          weight n * twistedVonMangoldtThree n) =
        weight (2 * N) * conductorThreePsi (2 * N) -
          ∑ x ∈ Finset.range (2 * N),
            (weight (x + 1) - weight x) * conductorThreePsi x := by
    simpa only [conductorThreePsi, Nat.add_sub_cancel, one_smul,
      smul_eq_mul] using
      (Finset.sum_range_by_parts weight twistedVonMangoldtThree
        (2 * N + 1))
  calc
    conductorThreeDiscreteWeightedSum N weight =
        ∑ n ∈ Finset.range (2 * N + 1),
          weight n * twistedVonMangoldtThree n := by
      unfold conductorThreeDiscreteWeightedSum
      apply Finset.sum_congr rfl
      intro n hn
      ring
    _ = weight (2 * N) * conductorThreePsi (2 * N) -
          ∑ x ∈ Finset.range (2 * N),
            (weight (x + 1) - weight x) * conductorThreePsi x := hparts
    _ = conductorThreePsi (2 * N) * weight (2 * N) +
          ∑ x ∈ Finset.range (2 * N),
            conductorThreePsi x * (weight x - weight (x + 1)) := by
      rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
      congr 1
      · ring
      · apply Finset.sum_congr rfl
        intro x hx
        ring

/-- The terminal value of a weight is bounded by its initial value plus its
total variation. -/
@[surface_novel, surface_published]
theorem abs_weight_terminal_le_cost (N : ℕ) (weight : ℕ → ℝ) :
    |weight (2 * N)| ≤ DiscretePacketWeightCost N weight := by
  have htel : weight (2 * N) =
      weight 0 + ∑ n ∈ Finset.range (2 * N), (weight (n + 1) - weight n) := by
    rw [Finset.sum_range_sub]
    ring
  rw [htel]
  calc
    |weight 0 + ∑ n ∈ Finset.range (2 * N),
        (weight (n + 1) - weight n)| ≤
        |weight 0| + |∑ n ∈ Finset.range (2 * N),
          (weight (n + 1) - weight n)| := abs_add_le _ _
    _ ≤ |weight 0| + ∑ n ∈ Finset.range (2 * N),
          |weight (n + 1) - weight n| :=
      add_le_add (le_refl _) (Finset.abs_sum_le_sum_abs _ _)
    _ = DiscretePacketWeightCost N weight := rfl

/-- Abel summation bounds every BV readout by twice its variation cost times
the maximal moment.  The factor `2` accounts for the terminal boundary term
in addition to the interior variation. -/
@[surface_novel, surface_published]
theorem weightedSum_le_two_mul_variation_mul_maxPrefix
    (N : ℕ) (weight : ℕ → ℝ) :
    |conductorThreeDiscreteWeightedSum N weight| ≤
      2 * DiscretePacketWeightCost N weight * maxPrefixNorm N := by
  rw [discrete_summationByParts]
  let M := maxPrefixNorm N
  let V := DiscretePacketWeightCost N weight
  have hM : 0 ≤ M := maxPrefixNorm_nonneg N
  have hV : 0 ≤ V := by
    unfold V DiscretePacketWeightCost
    positivity
  have hterminal : |weight (2 * N)| ≤ V :=
    abs_weight_terminal_le_cost N weight
  have hprefix : ∀ x ∈ Finset.range (2 * N),
      |conductorThreePsi x| ≤ M := by
    intro x hx
    apply abs_conductorThreePsi_le_maxPrefixNorm
    simp only [Finset.mem_range] at hx
    omega
  have hsum :
      |∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1))| ≤
        M * ∑ x ∈ Finset.range (2 * N),
          |weight (x + 1) - weight x| := by
    calc
      |∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1))| ≤
          ∑ x ∈ Finset.range (2 * N),
            |conductorThreePsi x * (weight x - weight (x + 1))| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ x ∈ Finset.range (2 * N),
            M * |weight (x + 1) - weight x| := by
        gcongr with x hx
        rw [abs_mul, abs_sub_comm]
        exact mul_le_mul_of_nonneg_right (hprefix x hx) (abs_nonneg _)
      _ = M * ∑ x ∈ Finset.range (2 * N),
            |weight (x + 1) - weight x| := by rw [Finset.mul_sum]
  calc
    |conductorThreePsi (2 * N) * weight (2 * N) +
        ∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1))| ≤
        |conductorThreePsi (2 * N) * weight (2 * N)| +
          |∑ x ∈ Finset.range (2 * N),
            conductorThreePsi x * (weight x - weight (x + 1))| :=
      abs_add_le _ _
    _ ≤ M * V + M * ∑ x ∈ Finset.range (2 * N),
          |weight (x + 1) - weight x| := by
      gcongr
      rw [abs_mul]
      exact mul_le_mul (abs_conductorThreePsi_le_maxPrefixNorm
        (N := N) (x := 2 * N) le_rfl) hterminal (abs_nonneg _) hM
    _ ≤ M * V + M * V := by
      gcongr
      unfold V DiscretePacketWeightCost
      linarith [abs_nonneg (weight 0)]
    _ = 2 * V * M := by ring

/-- The prefix cutoff has cost at most `2` at any enclosing scale.  If the
prefix reaches the end of the scale window its actual cost is `1`; otherwise
it is exactly `2`. -/
@[surface_novel, surface_published]
theorem prefixWeight_cost_le_two_at_scale
    {N x : ℕ} (hx : x ≤ 2 * N) :
    DiscretePacketWeightCost N (conductorThreePrefixWeight x) ≤ 2 := by
  have _hwindow : x < 2 * N + 1 := by omega
  unfold DiscretePacketWeightCost conductorThreePrefixWeight
  simp only [Nat.zero_le, if_true, abs_one]
  have hterm :
      (∑ n ∈ Finset.range (2 * N),
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)|) ≤ 1 := by
    have hpoint : ∀ n ∈ Finset.range (2 * N),
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)| = if n = x then 1 else 0 := by
      intro n hn
      by_cases hnx : n = x
      · subst n
        simp
      · rcases lt_or_gt_of_ne hnx with hlt | hgt
        · have hsucc : n + 1 ≤ x := by omega
          simp [hsucc, hnx, Nat.le_of_lt hlt]
        · have hnle : ¬n ≤ x := by omega
          have hsucc : ¬n + 1 ≤ x := by omega
          simp [hnle, hsucc, hnx]
    rw [Finset.sum_congr rfl hpoint]
    by_cases hmem : x ∈ Finset.range (2 * N)
    · rw [Finset.sum_eq_single x]
      · simp
      · intro b hb hbx
        simp [hbx]
      · exact fun h ↦ (h hmem).elim
    · rw [Finset.sum_eq_zero]
      · norm_num
      · intro n hn
        have hne : n ≠ x := by
          intro h
          subst n
          exact hmem hn
        simp [hne]
  linarith

/-- At any enclosing scale, the prefix multiplier still reads exactly the
requested arithmetic moment. -/
@[surface_novel, surface_published]
theorem conductorThreeDiscreteWeightedSum_prefix_at_scale
    {N x : ℕ} (hx : x ≤ 2 * N) :
    conductorThreeDiscreteWeightedSum N (conductorThreePrefixWeight x) =
      conductorThreePsi x := by
  unfold conductorThreeDiscreteWeightedSum conductorThreePrefixWeight
    conductorThreePsi
  rw [← Finset.sum_range_add_sum_Ico
    (f := fun n ↦ twistedVonMangoldtThree n *
      if n ≤ x then (1 : ℝ) else 0)
    (show x + 1 ≤ 2 * N + 1 by omega)]
  have hmain :
      (∑ n ∈ Finset.range (x + 1),
        twistedVonMangoldtThree n *
          if n ≤ x then (1 : ℝ) else 0) =
        ∑ n ∈ Finset.range (x + 1), twistedVonMangoldtThree n := by
    apply Finset.sum_congr rfl
    intro n hn
    simp only [Finset.mem_range] at hn
    simp [show n ≤ x by omega]
  rw [hmain]
  have htail :
      (∑ n ∈ Finset.Ico (x + 1) (2 * N + 1),
        twistedVonMangoldtThree n *
          if n ≤ x then (1 : ℝ) else 0) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp only [Finset.mem_Ico] at hn
    simp [show ¬n ≤ x by omega]
  rw [htail, add_zero]

/-- Uniform half-plus-epsilon control of the entire arithmetic moment path. -/
@[expose]
def ConductorThreeMaximalMomentEstimate : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        maxPrefixNorm N ≤ C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- BV control recovers the maximal moment estimate by testing the exact
prefix masks.  Combined with the next theorem, this gives the promised
equivalence up to the explicit factor `4`. -/
@[surface_novel, surface_published]
theorem bvPacketEstimate_implies_maximalMomentEstimate :
    ConductorThreeBVPacketEstimate →
      ConductorThreeMaximalMomentEstimate := by
  intro hBV epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hBV epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN
  unfold maxPrefixNorm
  apply Finset.sup'_le
  intro x hx
  have hxle : x ≤ 2 * N := by
    simp only [Finset.mem_range] at hx
    omega
  have h := hbound N (conductorThreePrefixWeight x) hN
    (prefixWeight_cost_le_two_at_scale hxle)
  rw [conductorThreeDiscreteWeightedSum_prefix_at_scale hxle] at h
  exact h

/-- A maximal-moment estimate controls every BV multiplier.  The conversion
cost is the exact absolute factor `4`: Abel summation contributes `2`, and
the normalized BV ball has radius `2`. -/
@[surface_novel, surface_published]
theorem maximalMomentEstimate_implies_bvPacketEstimate :
    ConductorThreeMaximalMomentEstimate →
      ConductorThreeBVPacketEstimate := by
  intro hmax epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hmax epsilon hepsilon
  refine ⟨4 * C, by positivity, ?_⟩
  intro N weight hN hcost
  calc
    |conductorThreeDiscreteWeightedSum N weight| ≤
        2 * DiscretePacketWeightCost N weight * maxPrefixNorm N :=
      weightedSum_le_two_mul_variation_mul_maxPrefix N weight
    _ = (2 * DiscretePacketWeightCost N weight) * maxPrefixNorm N := by
      ring
    _ ≤ 4 * (C * (N : ℝ) ^ (1 / 2 + epsilon)) := by
      exact mul_le_mul (by linarith) (hbound N hN)
        (maxPrefixNorm_nonneg N) (by positivity)
    _ = (4 * C) * (N : ℝ) ^ (1 / 2 + epsilon) := by ring

end

end Surface.Core.PrimeLattice.BVMaximalDuality
