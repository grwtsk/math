# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FiniteDecoderDraft.Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca3bacecd485693a7d80cf5a9239ef1ea80c1b96` · SHA-256 `6e9fec2f9f672c664639eedc14947613da21e9b44eb1c32831987835764e7fab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Cell.Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Cell.Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe","mathematical_subject":"Analysis.Integration","original_sha256":"b85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/decoder-audit/current-replay/FiniteDecoderDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ResolutionDraft
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Algebra.Order.Floor.Semiring


namespace GRWTSK.Analysis.RealAnalysis.Integration.Cell.Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe

set_option autoImplicit false
noncomputable section
namespace FinitePairedDecoderResearch

open MeasureTheory Set JointUniformResearch
open FormalResearch.RiemannHypothesis
open SourcePairedTailTest SourcePrimeSquareTailWork SourcePairedSquareQuadrature WeightedPrimeAbel
open scoped ENNReal Interval

def cell (h : ℝ) (j : ℕ) : Set ℝ := Ioc ((j : ℝ)*h) (((j+1 : ℕ) : ℝ)*h)

def rightSelector (h : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  ∑ j ∈ Finset.range n, (cell h j).indicator (fun _ => ((j+1 : ℕ) : ℝ)*h) u

def decodedTest (A h : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  ∑ j ∈ Finset.range n,
    (cell h j).indicator (fun _ => pairedTailTest A (((j+1 : ℕ) : ℝ)*h)) u

theorem cell_unique {h u : ℝ} (hh : 0 < h) {j k : ℕ}
    (hj : u ∈ cell h j) (hk : u ∈ cell h k) : j = k := by
  by_contra hne
  rcases lt_or_gt_of_ne hne with hlt | hlt
  · have hcast : ((j+1 : ℕ) : ℝ) ≤ (k : ℝ) := by exact_mod_cast hlt
    have hm := mul_le_mul_of_nonneg_right hcast hh.le
    exact (not_lt_of_ge (hj.2.trans hm)) hk.1
  · have hcast : ((k+1 : ℕ) : ℝ) ≤ (j : ℝ) := by exact_mod_cast hlt
    have hm := mul_le_mul_of_nonneg_right hcast hh.le
    exact (not_lt_of_ge (hk.2.trans hm)) hj.1

theorem exists_cell {h u : ℝ} (_hh : 0 < h) {n : ℕ}
    (hu : 0 < u) (hb : u ≤ (n : ℝ)*h) :
    ∃ j < n, u ∈ cell h j := by
  induction n with
  | zero => simp only [Nat.cast_zero, zero_mul] at hb; linarith
  | succ n ih =>
    by_cases hmid : u ≤ (n : ℝ)*h
    · obtain ⟨j, hj, hc⟩ := ih hmid
      exact ⟨j, Nat.lt_succ_of_lt hj, hc⟩
    · exact ⟨n, Nat.lt_succ_self n, lt_of_not_ge hmid, hb⟩

theorem rightSelector_on_cell {h u : ℝ} (hh : 0 < h) {n j : ℕ}
    (hj : j < n) (hc : u ∈ cell h j) :
    rightSelector h n u = ((j+1 : ℕ) : ℝ)*h := by
  rw [rightSelector, Finset.sum_eq_single j]
  · exact indicator_of_mem hc _
  · intro k _ hkj
    apply indicator_of_notMem
    intro hk
    exact hkj (cell_unique hh hk hc)
  · intro hn
    exact (hn (Finset.mem_range.mpr hj)).elim

theorem decodedTest_on_cell {A h u : ℝ} (hh : 0 < h) {n j : ℕ}
    (hj : j < n) (hc : u ∈ cell h j) :
    decodedTest A h n u = pairedTailTest A (((j+1 : ℕ) : ℝ)*h) := by
  rw [decodedTest, Finset.sum_eq_single j]
  · exact indicator_of_mem hc _
  · intro k _ hkj
    apply indicator_of_notMem
    intro hk
    exact hkj (cell_unique hh hk hc)
  · intro hn
    exact (hn (Finset.mem_range.mpr hj)).elim

theorem rightSelector_zero {h : ℝ} (hh : 0 ≤ h) (n : ℕ) : rightSelector h n 0 = 0 := by
  apply Finset.sum_eq_zero
  intro j _
  apply indicator_of_notMem
  intro hj
  exact (not_lt_of_ge (mul_nonneg (Nat.cast_nonneg j) hh)) hj.1

theorem rightSelector_bounds {h u : ℝ} (hh : 0 < h) (n : ℕ)
    (hu : u ∈ Icc 0 ((n : ℝ)*h)) :
    u ≤ rightSelector h n u ∧ rightSelector h n u ≤ u+h ∧
      0 ≤ rightSelector h n u ∧ rightSelector h n u ≤ (n : ℝ)*h := by
  by_cases hz : u = 0
  · subst u
    rw [rightSelector_zero hh.le]
    exact ⟨le_rfl, by simpa using hh.le, le_rfl, hu.2⟩
  · have hup : 0 < u := lt_of_le_of_ne hu.1 (Ne.symm hz)
    obtain ⟨j, hj, hc⟩ := exists_cell hh hup hu.2
    rw [rightSelector_on_cell hh hj hc]
    have hcast : ((j+1 : ℕ) : ℝ) ≤ (n : ℝ) := by exact_mod_cast hj
    have hupper := mul_le_mul_of_nonneg_right hcast hh.le
    simp only [cell, mem_Ioc] at hc
    have hstep : ((j+1 : ℕ) : ℝ)*h = (j : ℝ)*h+h := by push_cast; ring
    exact ⟨hc.2, by rw [hstep]; linarith [hc.1], hu.1.trans hc.2, hupper⟩

theorem rightSelector_dist {h u : ℝ} (hh : 0 < h) (n : ℕ)
    (hu : u ∈ Icc 0 ((n : ℝ)*h)) : |rightSelector h n u-u| ≤ h := by
  obtain ⟨hlo,hhi,_,_⟩ := rightSelector_bounds hh n hu
  rw [abs_of_nonneg (sub_nonneg.mpr hlo)]
  linarith

theorem rightSelector_upper {h : ℝ} (hh : 0 < h) (n : ℕ) :
    rightSelector h n ((n : ℝ)*h) = (n : ℝ)*h := by
  have hnonneg := mul_nonneg (Nat.cast_nonneg n) hh.le
  obtain ⟨hlo,_,_,hhi⟩ := rightSelector_bounds hh n ⟨hnonneg,le_rfl⟩
  exact le_antisymm hhi hlo

theorem decodedTest_eq_comp {A h : ℝ} (hA : 1 ≤ A) (hh : 0 < h) (n : ℕ) :
    decodedTest A h n = fun u => pairedTailTest A (rightSelector h n u) := by
  funext u
  by_cases hc : ∃ j < n, u ∈ cell h j
  · obtain ⟨j,hj,hcell⟩ := hc
    rw [decodedTest_on_cell hh hj hcell, rightSelector_on_cell hh hj hcell]
  · have hnot (j : ℕ) (hj : j ∈ Finset.range n) : u ∉ cell h j :=
      fun hmem => hc ⟨j,Finset.mem_range.mp hj,hmem⟩
    have hsel : rightSelector h n u = 0 :=
      Finset.sum_eq_zero fun j hj => indicator_of_notMem (hnot j hj) _
    have htest : decodedTest A h n u = 0 :=
      Finset.sum_eq_zero fun j hj => indicator_of_notMem (hnot j hj) _
    rw [htest,hsel,pairedTailTest_at_zero hA]

theorem rightSelector_measurable (h : ℝ) (n : ℕ) : Measurable (rightSelector h n) := by
  apply Finset.measurable_sum
  intro j _
  exact measurable_const.indicator measurableSet_Ioc

theorem decodedTest_measurable (A h : ℝ) (n : ℕ) : Measurable (decodedTest A h n) := by
  apply Finset.measurable_sum
  intro j _
  exact measurable_const.indicator measurableSet_Ioc

theorem cell_constant_integrable (h c : ℝ) (j : ℕ) :
    Integrable ((cell h j).indicator (fun _ => c)) volume := by
  apply (integrable_indicator_iff measurableSet_Ioc).mpr
  exact integrableOn_const (by simp)

theorem decodedTest_integrable (A h : ℝ) (n : ℕ) : Integrable (decodedTest A h n) volume := by
  exact integrable_finsetSum (Finset.range n) fun j _ =>
    cell_constant_integrable h (pairedTailTest A (((j+1 : ℕ) : ℝ)*h)) j

theorem cell_subset {h : ℝ} (hh : 0 ≤ h) {j n : ℕ} (hj : j < n) :
    cell h j ⊆ Ioc 0 ((n : ℝ)*h) := by
  intro u hu
  have hc : ((j+1 : ℕ) : ℝ) ≤ (n : ℝ) := by exact_mod_cast hj
  exact ⟨lt_of_le_of_lt (mul_nonneg (Nat.cast_nonneg j) hh) hu.1,
    hu.2.trans (mul_le_mul_of_nonneg_right hc hh)⟩

theorem cell_constant_integral {h : ℝ} (hh : 0 ≤ h) {j n : ℕ} (hj : j < n) (c : ℝ) :
    (∫ u in 0..(n : ℝ)*h, (cell h j).indicator (fun _ => c) u) = h*c := by
  have hs : Function.support ((cell h j).indicator (fun _ => c)) ⊆ Ioc 0 ((n : ℝ)*h) := by
    intro u hu
    apply cell_subset hh hj
    by_contra hn
    exact hu (indicator_of_notMem hn _)
  rw [intervalIntegral.integral_eq_integral_of_support_subset hs,
    integral_indicator_const c (s := cell h j) measurableSet_Ioc, smul_eq_mul, cell,
    Real.volume_real_Ioc_of_le]
  · push_cast
    ring
  · have hcast : (j : ℝ) ≤ ((j+1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ j
    exact mul_le_mul_of_nonneg_right hcast hh

theorem decodedTest_integral {h : ℝ} (hh : 0 ≤ h) (A : ℝ) (n : ℕ) :
    (∫ u in 0..(n : ℝ)*h, decodedTest A h n u) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1 : ℕ) : ℝ)*h)*h := by
  have hi : ∀ j ∈ Finset.range n,
      IntervalIntegrable ((cell h j).indicator
        (fun _ => pairedTailTest A (((j+1 : ℕ) : ℝ)*h))) volume 0 ((n : ℝ)*h) :=
    fun j _ => (cell_constant_integrable h _ j).intervalIntegrable
  change (∫ u in 0..(n : ℝ)*h, ∑ j ∈ Finset.range n,
    (cell h j).indicator (fun _ => pairedTailTest A (((j+1 : ℕ) : ℝ)*h)) u) = _
  rw [intervalIntegral.integral_finsetSum hi]
  apply Finset.sum_congr rfl
  intro j hj
  rw [cell_constant_integral hh (Finset.mem_range.mp hj)]
  ring

theorem atom_cell_identity {a b x w c : ℝ} (hab : a ≤ b) :
    w * (Ioc a b).indicator (fun _ => c) x =
      c * ((if x ≤ b then w else 0) - (if x ≤ a then w else 0)) := by
  by_cases hxa : x ≤ a
  · have hxb : x ≤ b := hxa.trans hab
    simp [hxa, hxb]
  · by_cases hxb : x ≤ b
    · have hx : x ∈ Ioc a b := ⟨lt_of_not_ge hxa, hxb⟩
      rw [indicator_of_mem hx]
      simp [hxa, hxb, mul_comm]
    · simp [hxa, hxb]

theorem prime_cell_readout {a b B : ℝ} (hab : a ≤ b) (hb : b ≤ B) (c : ℝ) :
    primeLogSum B ((Ioc a b).indicator (fun _ => c)) =
      c * (primeLogPrefix b - primeLogPrefix a) := by
  rw [primeLogPrefix_eq_steps B b hb, primeLogPrefix_eq_steps B a (hab.trans hb),
    ← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  exact atom_cell_identity hab

theorem square_cell_readout {a b B : ℝ} (hab : a ≤ b) (hb : b ≤ B) (c : ℝ) :
    (∑ p ∈ primeLogInventory (B/2), squarePrefixCoefficient p *
      (Ioc a b).indicator (fun _ => c) (2*Real.log p)) =
      c * (squarePrefix b - squarePrefix a) := by
  rw [squarePrefix_eq_steps B b hb, squarePrefix_eq_steps B a (hab.trans hb),
    ← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  exact atom_cell_identity hab

theorem prime_decoded_ledger {h : ℝ} (hh : 0 ≤ h) (A : ℝ) (n : ℕ) :
    primeLogSum ((n : ℝ)*h) (decodedTest A h n) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1 : ℕ) : ℝ)*h) *
        (primeLogPrefix (((j+1 : ℕ) : ℝ)*h) - primeLogPrefix ((j : ℝ)*h)) := by
  unfold primeLogSum decodedTest
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j hj
  have hc : ((j+1 : ℕ) : ℝ) ≤ (n : ℝ) := by exact_mod_cast Finset.mem_range.mp hj
  have hstep : (j : ℝ) ≤ ((j+1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ j
  exact prime_cell_readout (mul_le_mul_of_nonneg_right hstep hh)
    (mul_le_mul_of_nonneg_right hc hh) _

theorem square_decoded_ledger {h : ℝ} (hh : 0 ≤ h) (A : ℝ) (n : ℕ) :
    (∑ p ∈ primeLogInventory (((n : ℝ)*h)/2), squarePrefixCoefficient p *
      decodedTest A h n (2*Real.log p)) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1 : ℕ) : ℝ)*h) *
        (squarePrefix (((j+1 : ℕ) : ℝ)*h) - squarePrefix ((j : ℝ)*h)) := by
  unfold decodedTest
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j hj
  have hc : ((j+1 : ℕ) : ℝ) ≤ (n : ℝ) := by exact_mod_cast Finset.mem_range.mp hj
  have hstep : (j : ℝ) ≤ ((j+1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ j
  exact square_cell_readout (mul_le_mul_of_nonneg_right hstep hh)
    (mul_le_mul_of_nonneg_right hc hh) _

theorem complete_decoded_ledger {A h : ℝ} (hh : 0 ≤ h) (n : ℕ)
    (hgrid : (n : ℝ)*h = 2*A) :
    decodedReadout A (decodedTest A h n) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1 : ℕ) : ℝ)*h) *
        (primeLogPrefix (((j+1 : ℕ) : ℝ)*h) - primeLogPrefix ((j : ℝ)*h) +
          squarePrefix (((j+1 : ℕ) : ℝ)*h) - squarePrefix ((j : ℝ)*h) - h) := by
  have hhalf : ((n : ℝ)*h)/2 = A := by rw [hgrid]; ring
  unfold decodedReadout
  rw [← hgrid, ← hhalf, prime_decoded_ledger hh, square_decoded_ledger hh,
    decodedTest_integral hh, ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

def mesh (A : ℝ) (n : ℕ) : ℝ := 2*A/(n : ℝ)

def resolutionCount (C η A : ℝ) : ℕ :=
  max 1 (Nat.ceil (11*A*Real.exp A*(4*A+C+squarePrefixBaseline)/η))

theorem mesh_pos {A : ℝ} (hA : 1 ≤ A) {n : ℕ} (hn : 1 ≤ n) : 0 < mesh A n := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  unfold mesh
  positivity

theorem mesh_grid (A : ℝ) {n : ℕ} (hn : 1 ≤ n) : (n : ℝ)*mesh A n = 2*A := by
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (show n ≠ 0 by omega)
  unfold mesh
  field_simp

theorem mesh_decoded_ledger {A : ℝ} (hA : 1 ≤ A) {n : ℕ} (hn : 1 ≤ n) :
    decodedReadout A (decodedTest A (mesh A n) n) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1 : ℕ) : ℝ)*mesh A n) *
        (primeLogPrefix (((j+1 : ℕ) : ℝ)*mesh A n) - primeLogPrefix ((j : ℝ)*mesh A n) +
          squarePrefix (((j+1 : ℕ) : ℝ)*mesh A n) - squarePrefix ((j : ℝ)*mesh A n) -
            mesh A n) :=
  complete_decoded_ledger (mesh_pos hA hn).le n (mesh_grid A hn)

theorem resolutionCount_pos (C η A : ℝ) : 1 ≤ resolutionCount C η A := le_max_left _ _

theorem modulus_coarse {A : ℝ} (hA : 1 ≤ A) :
    Real.exp A*((1/2 : ℝ)+5/A) ≤ (11/2 : ℝ)*Real.exp A := by
  have hA0 : 0 < A := by linarith
  have h5 : 5/A ≤ (5 : ℝ) := (div_le_iff₀ hA0).mpr (by linarith)
  have h := mul_le_mul_of_nonneg_left (show (1/2 : ℝ)+5/A ≤ 11/2 by linarith)
    (Real.exp_pos A).le
  simpa only [mul_comm] using h

theorem resolution_budget {C η A : ℝ} (hC : 0 ≤ C) (hη : 0 < η) (hA : 1 ≤ A) :
    Real.exp A*((1/2 : ℝ)+5/A)*mesh A (resolutionCount C η A)*
      (4*A+C+squarePrefixBaseline) ≤ η := by
  let n := resolutionCount C η A
  have hn : 1 ≤ n := resolutionCount_pos C η A
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hceil : 11*A*Real.exp A*(4*A+C+squarePrefixBaseline)/η ≤ (n : ℝ) := by
    exact (Nat.le_ceil _).trans (by exact_mod_cast (le_max_right 1 _))
  have hcost : 11*A*Real.exp A*(4*A+C+squarePrefixBaseline) ≤ η*(n : ℝ) := by
    have hc := (div_le_iff₀ hη).mp hceil
    simpa only [mul_comm] using hc
  have hW : 0 ≤ 4*A+C+squarePrefixBaseline := by linarith [squarePrefixBaseline_nonneg]
  have hh : 0 ≤ mesh A n := (mesh_pos hA hn).le
  have hcoarse := mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right (modulus_coarse hA) hh) hW
  change Real.exp A*((1/2 : ℝ)+5/A)*mesh A n*(4*A+C+squarePrefixBaseline) ≤ η
  refine hcoarse.trans ?_
  unfold mesh
  have he : (11/2 : ℝ)*Real.exp A*(2*A/(n : ℝ))*(4*A+C+squarePrefixBaseline) =
      (11*A*Real.exp A*(4*A+C+squarePrefixBaseline))/(n : ℝ) := by ring
  rw [he]
  exact (div_le_iff₀ hn0).mpr hcost

theorem resolutionCount_monotone {C η : ℝ} (hC : 0 ≤ C) (hη : 0 < η) :
    MonotoneOn (resolutionCount C η) (Ici 1) := by
  intro A hA B _hB hAB
  change 1 ≤ A at hA
  apply max_le_max le_rfl
  apply Nat.ceil_mono
  have hWA : 0 ≤ 4*A+C+squarePrefixBaseline := by linarith [squarePrefixBaseline_nonneg, hA]
  have hA0 : 0 ≤ A := by linarith [hA]
  have hB0 : 0 ≤ B := hA0.trans hAB
  apply div_le_div_of_nonneg_right _ hη.le
  gcongr

theorem resolving_error (C : ℝ) (hC : 0 ≤ C)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {η A : ℝ} (hη : 0 < η) (hA : 1 ≤ A) :
    |decodedReadout A (decodedTest A (mesh A (resolutionCount C η A))
        (resolutionCount C η A)) - squareRemovedPairedWork A| ≤ η := by
  let n := resolutionCount C η A
  let h := mesh A n
  have hn : 1 ≤ n := resolutionCount_pos C η A
  have hh : 0 < h := mesh_pos hA hn
  have hgrid : (n : ℝ)*h = 2*A := mesh_grid A hn
  have hTmem : ∀ u ∈ Icc 0 (2*A), rightSelector h n u ∈ Icc 0 (2*A) := by
    intro u hu
    rw [← hgrid] at hu ⊢
    obtain ⟨_,_,hlo,hhi⟩ := rightSelector_bounds hh n hu
    exact ⟨hlo,hhi⟩
  have hTdist : ∀ u ∈ Icc 0 (2*A), |rightSelector h n u-u| ≤ h := by
    intro u hu
    rw [← hgrid] at hu
    exact rightSelector_dist hh n hu
  have hi : IntervalIntegrable (fun u => pairedTailTest A (rightSelector h n u))
      volume 0 (2*A) := by
    rw [← decodedTest_eq_comp hA hh n]
    exact (decodedTest_integrable A h n).intervalIntegrable
  have he := mesh_decoder_error C hC hM hA hh.le (rightSelector h n) hTmem hTdist hi
    (resolution_budget hC hη hA)
  rw [← decodedTest_eq_comp hA hh n] at he
  exact he

theorem resolving_error_unconditional :
    ∃ C : ℝ, 0 ≤ C ∧
      (∀ η : ℝ, 0 < η → MonotoneOn (resolutionCount C η) (Ici 1)) ∧
      ∀ η A : ℝ, 0 < η → 1 ≤ A →
        |decodedReadout A (decodedTest A (mesh A (resolutionCount C η A))
          (resolutionCount C η A)) - squareRemovedPairedWork A| ≤ η := by
  obtain ⟨C,hC,hM⟩ := primeLogError_uniformly_bounded
  exact ⟨C,hC,fun _ hη => resolutionCount_monotone hC hη,
    fun _ _ hη hA => resolving_error C hC hM hη hA⟩

#print axioms cell_unique
#print axioms exists_cell
#print axioms rightSelector_on_cell
#print axioms decodedTest_on_cell
#print axioms rightSelector_zero
#print axioms rightSelector_bounds
#print axioms rightSelector_dist
#print axioms rightSelector_upper
#print axioms decodedTest_eq_comp
#print axioms rightSelector_measurable
#print axioms decodedTest_measurable
#print axioms cell_constant_integrable
#print axioms decodedTest_integrable
#print axioms cell_subset
#print axioms cell_constant_integral
#print axioms decodedTest_integral
#print axioms atom_cell_identity
#print axioms prime_cell_readout
#print axioms square_cell_readout
#print axioms prime_decoded_ledger
#print axioms square_decoded_ledger
#print axioms complete_decoded_ledger
#print axioms mesh_pos
#print axioms mesh_grid
#print axioms mesh_decoded_ledger
#print axioms resolutionCount_pos
#print axioms modulus_coarse
#print axioms resolution_budget
#print axioms resolutionCount_monotone
#print axioms resolving_error
#print axioms resolving_error_unconditional

end FinitePairedDecoderResearch
```
