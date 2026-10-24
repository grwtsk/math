# Complete source: GRWTSK.MeasureTheory.Function.Lp.CausalRestrictionBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c83c17b74b01115b239801fcb180c5c5b5ab42d` · SHA-256 `5a8c9caa47abf14f377214570adf074f5f335e0fe22b8b142e8f313956e2089d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers
import GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Function.LpSeminorm.SMul
import Mathlib.MeasureTheory.Function.LpSeminorm.TriangleInequality

/-! Literal causal cutoff identification and the source-specific energy
projection inequality. These results are independent of Plancherel. -/
noncomputable section
open MeasureTheory
namespace PPNCP04.Cutoff

def blockAction (B : Finset ℕ) (f : ℝ → ℝ) : ℝ → ℝ :=
  ASBNP04.FiniteProduct.cascade ASBNP04.FiniteProduct.primeWeight
    ASBNP04.FiniteProduct.primeDelay B.toList f

theorem shift_memLp_two (a : ℝ) {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    MemLp (ASBNP04.FiniteProduct.shift a f) 2 volume := by
  have ht : MemLp (fun u => f (u - a)) 2 volume := by
    simpa only [Function.comp_def] using
      hf.comp_measurePreserving (measurePreserving_sub_right volume a)
  have heq : ASBNP04.FiniteProduct.shift a f =
      (Set.Ici a).indicator (fun u => f (u - a)) := by
    funext u
    rfl
  rw [heq]
  exact ht.indicator measurableSet_Ici

theorem note_memLp_two (r a : ℝ) {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    MemLp (ASBNP04.FiniteProduct.note r a f) 2 volume :=
  hf.sub ((shift_memLp_two a hf).const_mul r)

theorem cascade_memLp_two (ps : List ℕ) {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    MemLp (ASBNP04.FiniteProduct.cascade ASBNP04.FiniteProduct.primeWeight
      ASBNP04.FiniteProduct.primeDelay ps f) 2 volume := by
  induction ps with
  | nil => exact hf
  | cons p ps ih => exact note_memLp_two _ _ ih

theorem windowed_block_square_integrable (P B : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (T : ℝ) :
    Integrable (fun u => blockAction B (PPNCP04.restrict T (PPNCP04.primeState P)) u ^ 2) := by
  have hs : MemLp (PPNCP04.restrict T (PPNCP04.primeState P)) 2 volume :=
    ASBNP04.FiniteProduct.restricted_source_memLp_two P hP T
  have hb := cascade_memLp_two B.toList hs
  have hi := hb.integrable_norm_pow (by decide : (2 : ℕ) ≠ 0)
  simpa only [blockAction, Real.norm_eq_abs, sq_abs] using hi

theorem restriction_energy_le_full (T : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun u => f u ^ 2)) :
    (∫ u in Set.Icc 0 T, f u ^ 2) ≤ ∫ u, f u ^ 2 :=
  integral_mono_measure Measure.restrict_le_self
    (Filter.Eventually.of_forall (fun u => sq_nonneg (f u))) hf

theorem cutoff_block_exact (P B : Finset ℕ) (T : ℝ) (hB : ∀ p ∈ B, Nat.Prime p) :
    PPNCP04.restrict T (blockAction B (PPNCP04.restrict T (PPNCP04.primeState P))) =
      PPNCP04.restrict T (blockAction B (PPNCP04.primeState P)) := by
  have hd : ∀ p ∈ B.toList, 0 ≤ ASBNP04.FiniteProduct.primeDelay p := by
    intro p hp
    exact ASBNP04.FiniteProduct.primeDelay_nonneg (hB p (Finset.mem_toList.mp hp))
  exact ASBNP04.FiniteProduct.restrict_cascade T _ _ B.toList hd (PPNCP04.primeState P)

theorem cutoff_block_energy_exact (P B : Finset ℕ) (T : ℝ) (hB : ∀ p ∈ B, Nat.Prime p) :
    (∫ u in Set.Icc 0 T, blockAction B (PPNCP04.primeState P) u ^ 2) =
      ∫ u in Set.Icc 0 T, blockAction B (PPNCP04.restrict T (PPNCP04.primeState P)) u ^ 2 := by
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  have h := congrFun (cutoff_block_exact P B T hB) u
  have hmem : 0 ≤ u ∧ u ≤ T := hu
  simp only [PPNCP04.restrict, if_pos hmem] at h
  exact congrArg (fun x : ℝ => x ^ 2) h.symm

theorem actual_cutoff_energy_bound (P B : Finset ℕ) (T : ℝ)
    (hP : ∀ p ∈ P, Nat.Prime p) (hB : ∀ p ∈ B, Nat.Prime p) (hd : Disjoint B P) :
    PPNCP04.sourceEnergy (P ∪ B) T ≤
      ∫ u, blockAction B (PPNCP04.restrict T (PPNCP04.primeState P)) u ^ 2 := by
  have hf : PPNCP04.primeState (P ∪ B) = blockAction B (PPNCP04.primeState P) := by
    change ASBNP04.FiniteProduct.primeState (P ∪ B) = _
    rw [Finset.union_comm]
    exact ASBNP04.FiniteProduct.primeState_block_factorization P B hP hB hd
  unfold PPNCP04.sourceEnergy
  rw [hf, cutoff_block_energy_exact P B T hB]
  exact restriction_energy_le_full T _ (windowed_block_square_integrable P B hP T)

/-- Literal (3.2), expressed as the whole-line complex L² energy of Q_B g. -/
theorem actual_cutoff_complex_energy_bound (P B : Finset ℕ) (T : ℝ)
    (hP : ∀ p ∈ P, Nat.Prime p) (hB : ∀ p ∈ B, Nat.Prime p) (hd : Disjoint B P) :
    PPNCP04.sourceEnergy (P ∪ B) T ≤
      ∫ u, ‖(blockAction B (PPNCP04.restrict T (PPNCP04.primeState P)) u : ℂ)‖ ^ 2 := by
  simpa only [Complex.norm_real, Real.norm_eq_abs, sq_abs] using
    actual_cutoff_energy_bound P B T hP hB hd

end PPNCP04.Cutoff
#print axioms PPNCP04.Cutoff.cutoff_block_exact
#print axioms PPNCP04.Cutoff.windowed_block_square_integrable
#print axioms PPNCP04.Cutoff.actual_cutoff_complex_energy_bound
```
