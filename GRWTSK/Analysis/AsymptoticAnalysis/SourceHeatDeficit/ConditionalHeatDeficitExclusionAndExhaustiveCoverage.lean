import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# Conditional heat-deficit exclusion and exhaustive coverage

Distinct objects may be indexed by any type, including a countable zero inventory;
natural multiplicities are
retained in each Gaussian observation. Explicit summability is required before
an individual contribution is compared with the infinite sum. No identification
with the actual nontrivial zeros, source computation, or deficit certificate is
assumed or supplied by this module.

Research direction: grwtsk contributors. These particular generic proofs and
formal construction: OpenAI Codex, 7 October 2026.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceHeatDeficit

open Filter
open scoped Topology

noncomputable section

/-- The height-only Gaussian mass, retaining its natural multiplicity. -/
def gaussianTerm (t : ℝ) (m : ℕ) (gamma : ℝ) : ℝ :=
  (m : ℝ) * Real.exp (-t * gamma ^ 2)

/-- A nonnegative observation of displacement from the declared center. -/
def deficitTerm (t : ℝ) (m : ℕ) (delta gamma : ℝ) : ℝ :=
  gaussianTerm t m gamma * (1 - Real.exp (-t * delta ^ 2))

/-- The exact detection threshold for a closed height/displacement region. -/
def detectionThreshold (t H epsilon : ℝ) : ℝ :=
  Real.exp (-t * H ^ 2) * (1 - Real.exp (-t * epsilon ^ 2))

theorem gaussianTerm_nonneg (t : ℝ) (m : ℕ) (gamma : ℝ) :
    0 ≤ gaussianTerm t m gamma := by
  unfold gaussianTerm
  positivity

theorem deficitTerm_nonneg {t : ℝ} (ht : 0 ≤ t) (m : ℕ) (delta gamma : ℝ) :
    0 ≤ deficitTerm t m delta gamma := by
  have he : Real.exp (-t * delta ^ 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith [sq_nonneg delta])
  exact mul_nonneg (gaussianTerm_nonneg t m gamma) (sub_nonneg.mpr he)

/-- One positive-multiplicity object in the closed region pays the full threshold. -/
theorem detectionThreshold_le_term {t H epsilon delta gamma : ℝ} {m : ℕ}
    (ht : 0 ≤ t) (hH : 0 ≤ H) (hepsilon : 0 ≤ epsilon) (hm : 1 ≤ m)
    (hgamma : |gamma| ≤ H) (hdelta : epsilon ≤ |delta|) :
    detectionThreshold t H epsilon ≤ deficitTerm t m delta gamma := by
  have hgsq : gamma ^ 2 ≤ H ^ 2 := by
    simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg gamma) hH).2 hgamma
  have hdsq : epsilon ^ 2 ≤ delta ^ 2 := by
    simpa only [sq_abs] using (sq_le_sq₀ hepsilon (abs_nonneg delta)).2 hdelta
  have hheight : Real.exp (-t * H ^ 2) ≤ Real.exp (-t * gamma ^ 2) :=
    Real.exp_le_exp.mpr (by nlinarith)
  have hdisplacement :
      1 - Real.exp (-t * epsilon ^ 2) ≤ 1 - Real.exp (-t * delta ^ 2) := by
    have he := Real.exp_le_exp.mpr (show -t * delta ^ 2 ≤ -t * epsilon ^ 2 by
      nlinarith)
    linarith
  have hbase : 0 ≤ 1 - Real.exp (-t * epsilon ^ 2) := by
    apply sub_nonneg.mpr
    exact Real.exp_le_one_iff.mpr (by nlinarith [sq_nonneg epsilon])
  have hmult : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hweighted : Real.exp (-t * gamma ^ 2) ≤ gaussianTerm t m gamma := by
    unfold gaussianTerm
    nlinarith [Real.exp_pos (-t * gamma ^ 2)]
  exact mul_le_mul (hheight.trans hweighted) hdisplacement hbase
    (gaussianTerm_nonneg t m gamma)

/-- The scalar exponential remainder needed for the strip-width comparison. -/
theorem one_sub_exp_neg_le (u : ℝ) : 1 - Real.exp (-u) ≤ u := by
  have h := Real.add_one_le_exp (-u)
  linarith

/-- A displacement in the half-width strip costs at most `t/4` of its Gaussian mass. -/
theorem deficitTerm_le_quarter_gaussian {t delta : ℝ} (ht : 0 ≤ t)
    (m : ℕ) (gamma : ℝ) (hdelta : |delta| ≤ 1 / 2) :
    deficitTerm t m delta gamma ≤ (t / 4) * gaussianTerm t m gamma := by
  have hsq : delta ^ 2 ≤ (1 / 2 : ℝ) ^ 2 := by
    simpa only [sq_abs] using
      (sq_le_sq₀ (abs_nonneg delta) (by norm_num : (0 : ℝ) ≤ 1 / 2)).2 hdelta
  have hbound : 1 - Real.exp (-t * delta ^ 2) ≤ t / 4 := by
    have h := one_sub_exp_neg_le (t * delta ^ 2)
    rw [← neg_mul] at h
    nlinarith
  unfold deficitTerm
  calc
    _ ≤ gaussianTerm t m gamma * (t / 4) :=
      mul_le_mul_of_nonneg_left hbound (gaussianTerm_nonneg t m gamma)
    _ = _ := by ring

section CountableObservations

variable {ι : Type*}

/-- The infinite deficit on distinct indexed objects, with explicit multiplicities. -/
def heatDeficit (t : ℝ) (m : ι → ℕ) (delta gamma : ι → ℝ) : ℝ :=
  ∑' i, deficitTerm t (m i) (delta i) (gamma i)

/-- The associated height-only Gaussian sum. -/
def gaussianMass (t : ℝ) (m : ι → ℕ) (gamma : ι → ℝ) : ℝ :=
  ∑' i, gaussianTerm t (m i) (gamma i)

/-- Actual Gaussian summability supplies deficit summability in the half-width strip. -/
theorem deficit_summable_of_gaussian {t : ℝ} (ht : 0 ≤ t)
    (m : ι → ℕ) (delta gamma : ι → ℝ)
    (hdelta : ∀ i, |delta i| ≤ 1 / 2)
    (hmass : Summable (fun i => gaussianTerm t (m i) (gamma i))) :
    Summable (fun i => deficitTerm t (m i) (delta i) (gamma i)) := by
  exact Summable.of_nonneg_of_le
    (fun i => deficitTerm_nonneg ht (m i) (delta i) (gamma i))
    (fun i => deficitTerm_le_quarter_gaussian ht (m i) (gamma i) (hdelta i))
    (hmass.mul_left (t / 4))

/-- A summable deficit smaller than the threshold excludes the entire closed region. -/
theorem excludes_closed_region {t H epsilon : ℝ}
    (ht : 0 ≤ t) (hH : 0 ≤ H) (hepsilon : 0 ≤ epsilon)
    (m : ι → ℕ) (delta gamma : ι → ℝ) (hm : ∀ i, 1 ≤ m i)
    (hsum : Summable (fun i => deficitTerm t (m i) (delta i) (gamma i)))
    (hcertificate : heatDeficit t m delta gamma < detectionThreshold t H epsilon) :
    ∀ i, ¬(|gamma i| ≤ H ∧ epsilon ≤ |delta i|) := by
  intro i hi
  have hterm := detectionThreshold_le_term ht hH hepsilon (hm i) hi.1 hi.2
  have hsumterm : deficitTerm t (m i) (delta i) (gamma i) ≤
      heatDeficit t m delta gamma :=
    hsum.le_tsum i (fun j _ => deficitTerm_nonneg ht (m j) (delta j) (gamma j))
  exact (not_lt_of_ge (hterm.trans hsumterm)) hcertificate

/-- The whole deficit is nonnegative and at most `t/4` times the full Gaussian mass. -/
theorem heatDeficit_bounds {t : ℝ} (ht : 0 ≤ t)
    (m : ι → ℕ) (delta gamma : ι → ℝ)
    (hdelta : ∀ i, |delta i| ≤ 1 / 2)
    (hmass : Summable (fun i => gaussianTerm t (m i) (gamma i))) :
    0 ≤ heatDeficit t m delta gamma ∧
      heatDeficit t m delta gamma ≤ (t / 4) * gaussianMass t m gamma := by
  have hsum := deficit_summable_of_gaussian ht m delta gamma hdelta hmass
  constructor
  · exact tsum_nonneg (fun i => deficitTerm_nonneg ht (m i) (delta i) (gamma i))
  · unfold heatDeficit gaussianMass
    rw [← tsum_mul_left]
    exact hsum.tsum_le_tsum
      (fun i => deficitTerm_le_quarter_gaussian ht (m i) (gamma i) (hdelta i))
      (hmass.mul_left (t / 4))

/-- Heights tending to infinity and widths tending to zero cover every fixed
nonzero displacement. Monotonicity is unnecessary for this exhaustion. -/
theorem region_coverage_of_limits (H epsilon : ℕ → ℝ)
    (hheight : Tendsto H atTop atTop) (hwidth : Tendsto epsilon atTop (𝓝 0))
    (delta gamma : ℝ) (hdelta : delta ≠ 0) :
    ∃ j, |gamma| ≤ H j ∧ epsilon j ≤ |delta| := by
  have hpos : 0 < |delta| := abs_pos.mpr hdelta
  have hH : ∀ᶠ j in atTop, |gamma| ≤ H j :=
    (tendsto_atTop.1 hheight) |gamma|
  have he : ∀ᶠ j in atTop, epsilon j < |delta| :=
    hwidth.eventually (eventually_lt_nhds hpos)
  obtain ⟨j, hjH, hje⟩ := (hH.and he).exists
  exact ⟨j, hjH, hje.le⟩

/-- An actual certificate at every exhausting region excludes every nonzero
displacement. The certificates and summability remain explicit premises. -/
theorem all_displacements_zero_of_exhausting_certificates
    (m : ι → ℕ) (delta gamma : ι → ℝ) (hm : ∀ i, 1 ≤ m i)
    (t H epsilon : ℕ → ℝ) (ht : ∀ j, 0 < t j)
    (hH : ∀ j, 0 < H j) (hepsilon : ∀ j, 0 < epsilon j)
    (hheight : Tendsto H atTop atTop) (hwidth : Tendsto epsilon atTop (𝓝 0))
    (hsum : ∀ j, Summable (fun i => deficitTerm (t j) (m i) (delta i) (gamma i)))
    (hcertificate : ∀ j,
      heatDeficit (t j) m delta gamma < detectionThreshold (t j) (H j) (epsilon j)) :
    ∀ i, delta i = 0 := by
  intro i
  by_contra hdelta
  obtain ⟨j, hj⟩ := region_coverage_of_limits H epsilon hheight hwidth
    (delta i) (gamma i) hdelta
  exact excludes_closed_region (ht j).le (hH j).le (hepsilon j).le
    m delta gamma hm (hsum j) (hcertificate j) i hj

end CountableObservations

end
end FormalResearch.RiemannHypothesis.SourceHeatDeficit
