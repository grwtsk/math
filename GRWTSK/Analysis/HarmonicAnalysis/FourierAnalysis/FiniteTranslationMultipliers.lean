import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimePhaseMultiplierBounds
import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification

/-! Exact finite prime-block Fourier multiplier for integrable ordinary and causal
source states. Plancherel's raw-integral/L² identification is not asserted here. -/
noncomputable section
open scoped BigOperators
open MeasureTheory
namespace PPNCP04.FourierBlock

def ordinaryNote (p : ℕ) (g : ℝ → ℂ) (u : ℝ) : ℂ :=
  g u - (PPNC.primeWeight p : ℂ) * PPNC.timeTranslate (Real.log (p : ℝ)) g u
def ordinaryCascade (ps : List ℕ) (g : ℝ → ℂ) : ℝ → ℂ :=
  ps.foldr ordinaryNote g
def ordinaryBlock (B : Finset ℕ) (g : ℝ → ℂ) : ℝ → ℂ :=
  ordinaryCascade B.toList g

theorem translate_integrable (a : ℝ) {g : ℝ → ℂ} (hg : Integrable g) :
    Integrable (PPNC.timeTranslate a g) := by
  exact hg.comp_sub_right a

theorem rawFourier_const_mul (r : ℂ) (g : ℝ → ℂ) (ξ : ℝ) :
    PPNC.rawFourier (fun u => r * g u) ξ = r * PPNC.rawFourier g ξ := by
  have hfun : (fun u => r * g u) = r • g := by funext u; rfl
  rw [hfun]
  simpa only [PPNC.rawFourier, Pi.smul_apply, smul_eq_mul] using congrFun
    (Fourier.fourierIntegral_const_smul Real.fourierChar volume g r) (ξ / (2 * Real.pi))

theorem rawFourier_add {g h : ℝ → ℂ} (hg : Integrable g) (hh : Integrable h) (ξ : ℝ) :
    PPNC.rawFourier (fun u => g u + h u) ξ = PPNC.rawFourier g ξ + PPNC.rawFourier h ξ := by
  have heq := VectorFourier.fourierIntegral_add (L := LinearMap.mul ℝ ℝ)
    Real.continuous_fourierChar (continuous_fst.mul continuous_snd) hg hh
  exact congrFun heq (ξ / (2 * Real.pi))

theorem rawFourier_sub {g h : ℝ → ℂ} (hg : Integrable g) (hh : Integrable h) (ξ : ℝ) :
    PPNC.rawFourier (fun u => g u - h u) ξ = PPNC.rawFourier g ξ - PPNC.rawFourier h ξ := by
  have hneg : Integrable (fun u => (-1 : ℂ) * h u) := hh.const_mul (-1)
  have had := rawFourier_add hg hneg ξ
  rw [rawFourier_const_mul] at had
  simpa only [neg_one_mul, sub_eq_add_neg] using had

theorem ordinaryNote_integrable (p : ℕ) {g : ℝ → ℂ} (hg : Integrable g) :
    Integrable (ordinaryNote p g) :=
  hg.sub ((translate_integrable _ hg).const_mul _)

theorem ordinaryCascade_integrable (ps : List ℕ) {g : ℝ → ℂ} (hg : Integrable g) :
    Integrable (ordinaryCascade ps g) := by
  induction ps with
  | nil => exact hg
  | cons p ps ih => exact ordinaryNote_integrable p ih

theorem rawFourier_ordinaryNote (p : ℕ) {g : ℝ → ℂ} (hg : Integrable g) (ξ : ℝ) :
    PPNC.rawFourier (ordinaryNote p g) ξ =
      (1 - (PPNC.primeWeight p : ℂ) * PPNC.primePhase p ξ) * PPNC.rawFourier g ξ := by
  change PPNC.rawFourier (fun u => g u - (PPNC.primeWeight p : ℂ) *
    PPNC.timeTranslate (Real.log (p : ℝ)) g u) ξ = _
  rw [rawFourier_sub hg ((translate_integrable _ hg).const_mul _),
    rawFourier_const_mul, PPNC.rawFourier_translate]
  simp only [PPNC.primePhase]
  ring

theorem rawFourier_ordinaryCascade (ps : List ℕ) {g : ℝ → ℂ} (hg : Integrable g) (ξ : ℝ) :
    PPNC.rawFourier (ordinaryCascade ps g) ξ =
      (ps.map (fun p => 1 - (PPNC.primeWeight p : ℂ) * PPNC.primePhase p ξ)).prod *
        PPNC.rawFourier g ξ := by
  induction ps with
  | nil => simp [ordinaryCascade]
  | cons p ps ih =>
    change PPNC.rawFourier (ordinaryNote p (ordinaryCascade ps g)) ξ = _
    rw [rawFourier_ordinaryNote p (ordinaryCascade_integrable ps hg), ih]
    simp only [List.map_cons, List.prod_cons]
    ring

theorem rawFourier_ordinaryBlock (B : Finset ℕ) {g : ℝ → ℂ} (hg : Integrable g) (ξ : ℝ) :
    PPNC.rawFourier (ordinaryBlock B g) ξ =
      PPNC.blockMultiplier B ξ * PPNC.rawFourier g ξ := by
  unfold ordinaryBlock
  rw [rawFourier_ordinaryCascade B.toList hg, Finset.prod_map_toList]
  rfl

theorem realCascade_causal (ps : List ℕ) (hps : ∀ p ∈ ps, Nat.Prime p)
    (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0) :
    ∀ u < 0, ASBNP04.FiniteProduct.cascade ASBNP04.FiniteProduct.primeWeight
      ASBNP04.FiniteProduct.primeDelay ps f u = 0 := by
  induction ps with
  | nil => exact hf
  | cons p ps ih =>
    have hp : Nat.Prime p := hps p (by simp)
    have hps' : ∀ q ∈ ps, Nat.Prime q := fun q hq => hps q (by simp [hq])
    intro u hu
    have hdelay := ASBNP04.FiniteProduct.primeDelay_nonneg hp
    have hcut : ¬ ASBNP04.FiniteProduct.primeDelay p ≤ u := by linarith
    simpa only [ASBNP04.FiniteProduct.cascade, List.foldr_cons,
      ASBNP04.FiniteProduct.note, ASBNP04.FiniteProduct.shift,
      if_neg hcut, mul_zero, sub_zero] using ih hps' u hu

theorem ordinaryNote_realBridge (p : ℕ) (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0) :
    ordinaryNote p (fun u => (f u : ℂ)) =
      fun u => (ASBNP04.FiniteProduct.note (ASBNP04.FiniteProduct.primeWeight p)
        (ASBNP04.FiniteProduct.primeDelay p) f u : ℂ) := by
  funext u
  by_cases hcut : Real.log (p : ℝ) ≤ u
  · dsimp only [ordinaryNote, PPNC.timeTranslate, ASBNP04.FiniteProduct.note]
    rw [ASBNP04.FiniteProduct.shift,
      if_pos (show ASBNP04.FiniteProduct.primeDelay p ≤ u from hcut)]
    simp only [ASBNP04.FiniteProduct.primeDelay, ASBNP04.FiniteProduct.primeWeight,
      PPNC.primeWeight, Complex.ofReal_sub, Complex.ofReal_mul]
  · have hz := hf (u - Real.log (p : ℝ)) (by linarith)
    simp only [ordinaryNote, PPNC.timeTranslate, ASBNP04.FiniteProduct.note,
      ASBNP04.FiniteProduct.shift, ASBNP04.FiniteProduct.primeDelay,
      if_neg hcut, hz, Complex.ofReal_zero, mul_zero, sub_zero]

theorem ordinaryCascade_realBridge (ps : List ℕ) (hps : ∀ p ∈ ps, Nat.Prime p)
    (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0) :
    ordinaryCascade ps (fun u => (f u : ℂ)) = fun u =>
      (ASBNP04.FiniteProduct.cascade ASBNP04.FiniteProduct.primeWeight
        ASBNP04.FiniteProduct.primeDelay ps f u : ℂ) := by
  induction ps with
  | nil => rfl
  | cons p ps ih =>
    have hps' : ∀ q ∈ ps, Nat.Prime q := fun q hq => hps q (by simp [hq])
    change ordinaryNote p (ordinaryCascade ps (fun u => (f u : ℂ))) = _
    rw [ih hps']
    exact ordinaryNote_realBridge p _ (realCascade_causal ps hps' f hf)

theorem rawFourier_causal_primeBlock (B : Finset ℕ) (hB : ∀ p ∈ B, Nat.Prime p)
    (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0)
    (hi : Integrable (fun u => (f u : ℂ))) (ξ : ℝ) :
    PPNC.rawFourier (fun u =>
      (ASBNP04.FiniteProduct.cascade ASBNP04.FiniteProduct.primeWeight
        ASBNP04.FiniteProduct.primeDelay B.toList f u : ℂ)) ξ =
      PPNC.blockMultiplier B ξ * PPNC.rawFourier (fun u => (f u : ℂ)) ξ := by
  have heq := ordinaryCascade_realBridge B.toList (by simpa only [Finset.mem_toList] using hB) f hf
  have h := rawFourier_ordinaryBlock B hi ξ
  simpa only [ordinaryBlock, heq] using h

theorem primeState_continuous (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    Continuous (PPNCP04.primeState P) := by
  have heq : PPNCP04.primeState P = fun u => ∑ U ∈ P.powerset,
      (ArithmeticFunction.moebius (ASBNP04.FiniteProduct.primeProduct U) : ℝ) *
        PPNCP04.atom (ASBNP04.FiniteProduct.primeProduct U) u := by
    funext u
    exact ASBNP04.FiniteProduct.primeState_exact P hP u
  rw [heq]
  apply continuous_finsetSum
  intro U hU
  have hpr : ∀ p ∈ U, Nat.Prime p := fun p hp => hP p ((Finset.mem_powerset.mp hU) hp)
  exact continuous_const.mul
    (PPNCP04.atom_continuous (ASBNP04.FiniteProduct.primeProduct_positive U hpr))

def windowedState (P : Finset ℕ) (T : ℝ) (u : ℝ) : ℂ :=
  (PPNCP04.restrict T (PPNCP04.primeState P) u : ℂ)

theorem windowedState_integrable (P : Finset ℕ) (T : ℝ) (hP : ∀ p ∈ P, Nat.Prime p) :
    Integrable (windowedState P T) := by
  have hi : IntegrableOn (fun u => (PPNCP04.primeState P u : ℂ)) (Set.Icc 0 T) :=
    (Complex.continuous_ofReal.comp (primeState_continuous P hP)).integrableOn_Icc
  have heq : windowedState P T = (Set.Icc 0 T).indicator
      (fun u => (PPNCP04.primeState P u : ℂ)) := by
    funext u
    by_cases hu : 0 ≤ u ∧ u ≤ T <;>
      simp [windowedState, PPNCP04.restrict, Set.indicator, hu]
  rw [heq]
  exact (integrable_indicator_iff measurableSet_Icc).mpr hi

theorem windowedState_causal (P : Finset ℕ) (T : ℝ) :
    ∀ u < 0, PPNCP04.restrict T (PPNCP04.primeState P) u = 0 := by
  intro u hu
  have hcut : ¬ (0 ≤ u ∧ u ≤ T) := by intro h; linarith [h.1]
  simp only [PPNCP04.restrict, if_neg hcut]

theorem rawFourier_windowed_primeBlock (P B : Finset ℕ) (T ξ : ℝ)
    (hP : ∀ p ∈ P, Nat.Prime p) (hB : ∀ p ∈ B, Nat.Prime p) :
    PPNC.rawFourier (fun u =>
      (ASBNP04.FiniteProduct.cascade ASBNP04.FiniteProduct.primeWeight
        ASBNP04.FiniteProduct.primeDelay B.toList
        (PPNCP04.restrict T (PPNCP04.primeState P)) u : ℂ)) ξ =
      PPNC.blockMultiplier B ξ * PPNC.rawFourier (windowedState P T) ξ := by
  exact rawFourier_causal_primeBlock B hB _ (windowedState_causal P T)
    (windowedState_integrable P T hP) ξ

end PPNCP04.FourierBlock

#print axioms PPNCP04.FourierBlock.rawFourier_ordinaryBlock
#print axioms PPNCP04.FourierBlock.rawFourier_causal_primeBlock
#print axioms PPNCP04.FourierBlock.windowedState_integrable
#print axioms PPNCP04.FourierBlock.rawFourier_windowed_primeBlock
