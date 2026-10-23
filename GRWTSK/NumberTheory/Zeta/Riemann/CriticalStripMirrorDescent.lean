/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightDescent
import Mathlib.NumberTheory.LSeries.ZetaZeros

set_option autoImplicit false

/-!
# Finite zero locations and mirror-reduced height shells

This is a proof-local increment for #225/#232/#234/#208/#140. Compactness gives
finiteness of the actual zero-location set, not an effective enumeration, analytic
multiplicity data, or an accepted total-count certificate. The two proved zeta
symmetries reduce each nonzero-height shell to its open upper-right part without
projecting a zero to the critical line. Reciprocal-distance exhaustion retains its
second universal quantifier: a fixed distance from the line is insufficient.

No base-window proof, zero-free patch family, shell-extension supplier, spectral
realization, or unconditional RH result is constructed here. Source-only until replay.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

noncomputable section

/-- Actual canonical nontrivial zero locations in the complete signed-height window. -/
def windowZeroLocations (N : ℕ) : Set ℂ :=
  {z | NontrivialZetaZero z ∧ z ∈ heightWindow N}

/-- Bounded height plus the proved open critical strip gives a finite set of actual
zero locations. This is not a computable list or a multiplicity/count certificate. -/
theorem windowZeroLocations_finite (N : ℕ) : (windowZeroLocations N).Finite := by
  apply ((isCompact_closedBall (0 : ℂ) ((N : ℝ) + 1)).inter_riemannZetaZeros_finite).subset
  intro z hz
  change NontrivialZetaZero z ∧ z ∈ heightWindow N at hz
  have hstrip := hz.1.mem_critical_strip
  have him : |z.im| ≤ (N : ℝ) := by
    simpa only [heightWindow, Set.mem_ofPred_eq, ZetaCommutatorRoot.heightAt_eq_im]
      using hz.2
  refine ⟨?_, ?_⟩
  · rw [Metric.mem_closedBall, dist_zero_right]
    calc
      ‖z‖ ≤ |z.re| + |z.im| := Complex.norm_le_abs_re_add_abs_im z
      _ ≤ 1 + (N : ℝ) := add_le_add
        (by simpa only [abs_of_pos hstrip.1] using hstrip.2.le) him
      _ = (N : ℝ) + 1 := add_comm _ _
  · exact hz.1.1

/-- A proposed finite list is complete only with this equality to the actual set. -/
def CompleteWindowLocationList (N : ℕ) (S : Finset ℂ) : Prop :=
  ∀ z : ℂ, z ∈ S ↔ z ∈ windowZeroLocations N

/-- Finiteness gives classical existence of a location list, not executable certified
source data. No analytic multiplicities are present in this statement. -/
theorem exists_completeWindowLocationList (N : ℕ) :
    ∃ S : Finset ℂ, CompleteWindowLocationList N S := by
  classical
  refine ⟨(windowZeroLocations_finite N).toFinset, ?_⟩
  intro z
  simp [Set.Finite.mem_toFinset]

/-- A genuinely complete location list is sufficient for bounded location verification.
Computing or certifying completeness remains a separate obligation. -/
theorem windowRH_iff_complete_list (N : ℕ) (S : Finset ℂ)
    (hcomplete : CompleteWindowLocationList N S) :
    WindowRH N ↔ ∀ z ∈ S, z.re = 1 / 2 := by
  constructor
  · intro h z hz
    have hsource := (hcomplete z).mp hz
    exact h z hsource.2 hsource.1
  · intro h z hz hzero
    exact h z ((hcomplete z).mpr ⟨hzero, hz⟩)

@[simp] theorem root_height_zeroConjugate (z : ℂ) :
    ZetaCommutatorRoot.root.heightAt (zeroConjugate z) =
      -ZetaCommutatorRoot.root.heightAt z := by
  rw [ZetaCommutatorRoot.heightAt_eq_im, ZetaCommutatorRoot.heightAt_eq_im]
  simp [zeroConjugate]

@[simp] theorem root_height_criticalReflection (z : ℂ) :
    ZetaCommutatorRoot.root.heightAt (criticalReflection z) =
      ZetaCommutatorRoot.root.heightAt z := by
  rw [ZetaCommutatorRoot.heightAt_eq_im, ZetaCommutatorRoot.heightAt_eq_im]
  simp [criticalReflection]

/-- The upper half of the Nth shell; the strict lower endpoint excludes height zero. -/
def upperHeightShell (N : ℕ) : Set ℂ :=
  {z | (N : ℝ) < ZetaCommutatorRoot.root.heightAt z ∧
    ZetaCommutatorRoot.root.heightAt z ≤ ((N + 1 : ℕ) : ℝ)}

/-- Negative heights are carried to positive heights by the actual conjugation theorem.
This is a location statement, not a rule for halving multiplicity-weighted sums. -/
theorem shellRH_iff_upperHeightShell (N : ℕ) :
    ShellRH N ↔ RHOn (upperHeightShell N) := by
  constructor
  · intro h z hz hzero
    have hpos : 0 < ZetaCommutatorRoot.root.heightAt z :=
      (Nat.cast_nonneg N).trans_lt hz.1
    apply h z _ hzero
    change (N : ℝ) < |ZetaCommutatorRoot.root.heightAt z| ∧
      |ZetaCommutatorRoot.root.heightAt z| ≤ ((N + 1 : ℕ) : ℝ)
    simpa only [abs_of_pos hpos] using (show (N : ℝ) < ZetaCommutatorRoot.root.heightAt z ∧
      ZetaCommutatorRoot.root.heightAt z ≤ ((N + 1 : ℕ) : ℝ) from hz)
  · intro h z hz hzero
    change (N : ℝ) < |ZetaCommutatorRoot.root.heightAt z| ∧
      |ZetaCommutatorRoot.root.heightAt z| ≤ ((N + 1 : ℕ) : ℝ) at hz
    by_cases hnonneg : 0 ≤ ZetaCommutatorRoot.root.heightAt z
    · exact h z (by simpa only [upperHeightShell, Set.mem_ofPred_eq,
        abs_of_nonneg hnonneg] using hz) hzero
    · have hneg := lt_of_not_ge hnonneg
      have hupper : zeroConjugate z ∈ upperHeightShell N := by
        simpa only [upperHeightShell, Set.mem_ofPred_eq, root_height_zeroConjugate,
          abs_of_neg hneg] using hz
      have hline := h (zeroConjugate z) hupper hzero.conjugate
      simpa [zeroConjugate] using hline

/-- Strictly off-line upper-right shell. Critical-line fixed points are not excluded. -/
def upperRightHeightShell (N : ℕ) : Set ℂ :=
  {z | z ∈ upperHeightShell N ∧ (1 / 2 : ℝ) < z.re}

/-- Exclusion of canonical target zeros on a specified set, with no sampled-source
substitution. -/
def NoTargetZero (U : Set ℂ) : Prop :=
  ∀ z : ℂ, z ∈ U → ¬ NontrivialZetaZero z

/-- Critical reflection transports every off-line upper-left zero into the upper-right
shell. Its height is unchanged; its real coordinate and zero identity are not dropped. -/
theorem upperHeightShellRH_iff_right_exclusion (N : ℕ) :
    RHOn (upperHeightShell N) ↔ NoTargetZero (upperRightHeightShell N) := by
  constructor
  · intro h z hz hzero
    exact (ne_of_gt hz.2) (h z hz.1 hzero)
  · intro h z hz hzero
    by_cases hline : z.re = 1 / 2
    · exact hline
    · exfalso
      by_cases hright : (1 / 2 : ℝ) < z.re
      · exact h z ⟨hz, hright⟩ hzero
      · have hleft : z.re < 1 / 2 := by
          rcases lt_or_eq_of_le (le_of_not_gt hright) with hlt | heq
          · exact hlt
          · exact (hline heq).elim
        have hupper : criticalReflection z ∈ upperHeightShell N := by
          simpa only [upperHeightShell, Set.mem_ofPred_eq,
            root_height_criticalReflection] using hz
        have hre : (criticalReflection z).re = 1 - z.re := by
          simp [criticalReflection]
        have hrefRight : (1 / 2 : ℝ) < (criticalReflection z).re := by
          rw [hre]
          linarith
        exact h (criticalReflection z) ⟨hupper, hrefRight⟩ hzero.critical_reflection

/-- Full signed shell correctness is exactly upper-right zero exclusion. -/
theorem shellRH_iff_upperRight_exclusion (N : ℕ) :
    ShellRH N ↔ NoTargetZero (upperRightHeightShell N) :=
  (shellRH_iff_upperHeightShell N).trans (upperHeightShellRH_iff_right_exclusion N)

/-- A bounded horizontal subregion, separated both from the critical line and from
Re z = 1 (hence from the zeta pole). One reciprocal index tends to both boundaries. -/
def rightAwayShell (N m : ℕ) : Set ℂ :=
  {z | z ∈ upperRightHeightShell N ∧
    1 / ((m : ℝ) + 1) ≤ z.re - 1 / 2 ∧
    z.re ≤ 1 - 1 / ((m : ℝ) + 1)}

/-- Every patch target lies strictly to the left of the pole boundary. -/
theorem rightAwayShell_re_lt_one {N m : ℕ} {z : ℂ}
    (hz : z ∈ rightAwayShell N m) : z.re < 1 := by
  have hpos : (0 : ℝ) < 1 / ((m : ℝ) + 1) := by positivity
  linarith [hz.2.2]

/-- Both positive distances exist for a right-side target zero, by the proved critical
strip theorem. A fixed reciprocal index cannot replace the universal exhaustion. -/
theorem right_exclusion_iff_all_away (N : ℕ) :
    NoTargetZero (upperRightHeightShell N) ↔
      ∀ m : ℕ, NoTargetZero (rightAwayShell N m) := by
  constructor
  · intro h m z hz
    exact h z hz.1
  · intro h z hz hzero
    have hright : 0 < z.re - 1 / 2 := sub_pos.mpr hz.2
    have hstrip : 0 < 1 - z.re := sub_pos.mpr hzero.mem_critical_strip.2
    have hdist : 0 < min (z.re - 1 / 2) (1 - z.re) := lt_min hright hstrip
    obtain ⟨m, hm⟩ := exists_nat_one_div_lt hdist
    have hline := hm.le.trans (min_le_left (z.re - 1 / 2) (1 - z.re))
    have hpole := hm.le.trans (min_le_right (z.re - 1 / 2) (1 - z.re))
    exact h m z ⟨hz, hline, by linarith⟩ hzero

/-- The real-axis base and every upper-right separated shell jointly recover RH.
Neither the base nor any zero-free region is proved merely by this equivalence. -/
theorem base_and_rightAwayShells_iff_rh :
    (WindowRH 0 ∧ ∀ N m : ℕ, NoTargetZero (rightAwayShell N m)) ↔
      _root_.RiemannHypothesis := by
  constructor
  · rintro ⟨hbase, haway⟩
    apply rh_of_base_and_shell_extension hbase
    intro N _
    exact (shellRH_iff_upperRight_exclusion N).mpr
      ((right_exclusion_iff_all_away N).mpr (haway N))
  · intro hrh
    have h := base_and_shells_iff_rh.mpr hrh
    refine ⟨h.1, ?_⟩
    intro N
    exact (right_exclusion_iff_all_away N).mp
      ((shellRH_iff_upperRight_exclusion N).mp (h.2 N))

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
