import GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeDistribution.PrimeCounting.PrimeIntervalResponseEnergyGrowth
import GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition

/-! Actual horizon-shell growth and rejection of unsigned shell-energy control.

A proved Chebyshev prime count is distributed into 56 fixed logarithmic bins.
For every real S≥1024, one bin supplies an actual shell at a horizon within
8 log 2 of S. Its signed waveform has negative prime atoms and a fixed maturity
margin. The exact terminal-window integral therefore has exponential growth
divided by a quadratic polynomial along these controlled horizons.

The shell waveform alone has no uniform polynomial energy bound. This rejects
an unsigned route that tries to bound H separately. It does not refute the
joint signed settlement for G+H, P04, or RH; their arithmetic cancellation
remains an open producer obligation.
-/

set_option maxRecDepth 3000

noncomputable section
open scoped BigOperators
open MeasureTheory Set Filter
namespace HSSCP04.ShellObstruction
open PPNCP04

def chosenWidth : ℝ := Real.log 2/2
def binWidth : ℝ := Real.log 2/8
def binOrigin (T : ℝ) : ℝ := T-8*Real.log 2
def binHorizon (T : ℝ) (k : ℕ) : ℝ := binOrigin T+((k:ℝ)+2)*binWidth

def primeBin (T : ℝ) (k : ℕ) : Finset ℕ :=
  (BandGrowth.wideBand T).filter (fun p =>
    binOrigin T+(k:ℝ)*binWidth < Real.log (p:ℝ) ∧
    Real.log (p:ℝ) ≤ binOrigin T+((k:ℝ)+1)*binWidth)

theorem binWidth_positive : 0 < binWidth :=
  div_pos (Real.log_pos (by norm_num)) (by norm_num)

theorem chosenWidth_valid : 0 < chosenWidth ∧ chosenWidth < Real.log 2 := by
  unfold chosenWidth
  have h := Real.log_pos (show (1:ℝ)<2 by norm_num)
  constructor <;> linarith

theorem interval_has_bin {w x : ℝ} (_hw : 0 < w) (hx : 0 < x) (n : ℕ)
    (hxn : x ≤ (n:ℝ)*w) : ∃ k ∈ Finset.range n, (k:ℝ)*w < x ∧ x ≤ ((k:ℝ)+1)*w := by
  induction n with
  | zero => norm_num at hxn; linarith
  | succ n ih =>
    by_cases hn : x ≤ (n:ℝ)*w
    · obtain ⟨k,hk,hlo,hu⟩ := ih hn
      exact ⟨k,Finset.mem_range.mpr ((Finset.mem_range.mp hk).trans (Nat.lt_succ_self n)),hlo,hu⟩
    · refine ⟨n,Finset.mem_range.mpr (Nat.lt_succ_self n),lt_of_not_ge hn,?_⟩
      simpa only [Nat.cast_add,Nat.cast_one] using hxn

theorem wideBand_log_bounds {T : ℝ} {p : ℕ} (hp : p ∈ BandGrowth.wideBand T) :
    binOrigin T < Real.log (p:ℝ) ∧ Real.log (p:ℝ) ≤ binOrigin T+56*binWidth := by
  have hpp : 0 < (p:ℝ) := by exact_mod_cast (Nat.prime_of_mem_primesLE (Finset.mem_filter.mp hp).1).pos
  have hl := Real.log_lt_log (by positivity : 0 < Real.exp T/256) (Finset.mem_filter.mp hp).2
  have hu := Real.log_le_log hpp (BandGrowth.wideBand_mem_upper hp)
  have hlog256 : Real.log (256:ℝ) = 8*Real.log 2 := by
    have h := Real.log_pow (2:ℝ) 8
    norm_num at h
    exact h
  rw [Real.log_div (Real.exp_ne_zero T) (by norm_num),Real.log_exp,hlog256] at hl
  rw [Real.log_div (Real.exp_ne_zero T) (by norm_num),Real.log_exp] at hu
  constructor
  · exact hl
  · dsimp only [binOrigin,binWidth]
    linarith

theorem wideBand_bin_cover (T : ℝ) :
    BandGrowth.wideBand T ⊆ (Finset.range 56).biUnion (primeBin T) := by
  intro p hp
  have hb := wideBand_log_bounds hp
  obtain ⟨k,hk,hl,hu⟩ := interval_has_bin binWidth_positive
    (show 0 < Real.log (p:ℝ)-binOrigin T by linarith) 56 (by norm_num only [Nat.cast_ofNat]; linarith)
  exact Finset.mem_biUnion.mpr ⟨k,hk,Finset.mem_filter.mpr ⟨hp,by constructor <;> linarith⟩⟩

theorem heavy_bin_exists {T : ℝ} (hT : 1024 ≤ T) :
    ∃ k ∈ Finset.range 56, Real.exp T/(896*T) ≤ ((primeBin T k).card:ℝ) := by
  have hc := (Finset.card_le_card (wideBand_bin_cover T)).trans Finset.card_biUnion_le
  have hcR : ((BandGrowth.wideBand T).card:ℝ) ≤
      ∑ k ∈ Finset.range 56, ((primeBin T k).card:ℝ) := by exact_mod_cast hc
  by_contra h
  have heach : ∀ k ∈ Finset.range 56, ((primeBin T k).card:ℝ) < Real.exp T/(896*T) := by
    intro k hk
    apply lt_of_not_ge
    intro hl
    exact h ⟨k,hk,hl⟩
  have hs := Finset.sum_lt_sum_of_nonempty (show (Finset.range 56).Nonempty by simp) heach
  have hscale : (∑ _k ∈ Finset.range 56, Real.exp T/(896*T)) = Real.exp T/(16*T) := by
    simp only [Finset.sum_const,Finset.card_range,nsmul_eq_mul,Nat.cast_ofNat]
    ring
  rw [hscale] at hs
  linarith [BandGrowth.wideBand_count hT]

theorem binHorizon_bounds {T : ℝ} {k : ℕ} (hk : k ∈ Finset.range 56) :
    T-8*Real.log 2 ≤ binHorizon T k ∧ binHorizon T k ≤ T := by
  have hkR : (k:ℝ) ≤ 55 := by exact_mod_cast (show k ≤ 55 from Nat.le_of_lt_succ (Finset.mem_range.mp hk))
  have hk0 : 0 ≤ (k:ℝ) := Nat.cast_nonneg k
  have hl : 0 ≤ Real.log (2:ℝ) := (Real.log_pos (by norm_num)).le
  dsimp only [binHorizon,binOrigin,binWidth]
  constructor <;> nlinarith


/-- Actual signed shell energy on the declared terminal window. -/
def shellEnergy (b T : ℝ) : ℝ :=
  ∫ u in Icc (T-b) T, HorizonShell.horizonWave b T u ^ 2

def atomGain : ℝ := 2*(Real.exp (binWidth/2)-Real.exp (binWidth/4))
def terminalWidth : ℝ := binWidth/2
def growthConstant : ℝ := terminalWidth*atomGain^2/(1792:ℝ)^2

theorem atomGain_positive : 0 < atomGain := by
  have he : Real.exp (binWidth/4) < Real.exp (binWidth/2) :=
    Real.exp_lt_exp.mpr (by linarith [binWidth_positive])
  unfold atomGain
  linarith

theorem growthConstant_positive : 0 < growthConstant := by
  unfold growthConstant terminalWidth
  exact div_pos (mul_pos (div_pos binWidth_positive (by norm_num))
    (sq_pos_of_pos atomGain_positive)) (by norm_num)

theorem primeBin_upper {S : ℝ} {k p : ℕ} (hp : p ∈ primeBin S k) :
    (p : ℝ) ≤ Real.exp (binHorizon S k-binWidth) := by
  have hpr := Nat.prime_of_mem_primesLE (Finset.mem_filter.mp (Finset.mem_filter.mp hp).1).1
  have hl := (Finset.mem_filter.mp hp).2.2
  have hpp : 0 < (p : ℝ) := by exact_mod_cast hpr.pos
  apply (Real.log_le_iff_le_exp hpp).mp
  dsimp only [binHorizon]
  linarith

theorem primeBin_subset_shell (S : ℝ) (k : ℕ) :
    primeBin S k ⊆ HorizonShell.horizonShell chosenWidth (binHorizon S k) := by
  intro p hp
  have hpr := Nat.prime_of_mem_primesLE (Finset.mem_filter.mp (Finset.mem_filter.mp hp).1).1
  have hl := (Finset.mem_filter.mp hp).2.1
  have hup := primeBin_upper hp
  have hpp : 0 < (p : ℝ) := by exact_mod_cast hpr.pos
  apply HorizonShell.mem_horizonShell.mpr
  refine ⟨hpr,?_,hup.trans (Real.exp_le_exp.mpr (by linarith [binWidth_positive]))⟩
  have hlo : binHorizon S k-chosenWidth < Real.log (p : ℝ) := by
    dsimp only [binHorizon,chosenWidth,binWidth] at *
    linarith [Real.log_pos (show (1:ℝ)<2 by norm_num)]
  simpa only [Real.exp_log hpp] using Real.exp_lt_exp.mpr hlo

/-- Each counted prime has a fixed positive maturity margin at the new horizon. -/
theorem atom_tail_lower {p : ℕ} {T u : ℝ} (hp : 0 < p)
    (hupper : (p : ℝ) ≤ Real.exp (T-binWidth)) (hu : T-terminalWidth ≤ u) :
    atomGain*Real.exp (-T/2) ≤ atom p u := by
  have hpp : 0 < (p : ℝ) := by exact_mod_cast hp
  have hl : Real.log (p : ℝ) ≤ T-binWidth :=
    (Real.log_le_iff_le_exp hpp).mpr hupper
  have he : Real.log (p : ℝ) ≤ u := by
    unfold terminalWidth at hu
    linarith [binWidth_positive]
  have hinv : Real.exp (-(T-binWidth)/2) ≤ (Real.sqrt (p : ℝ))⁻¹ := by
    rw [← ASBNP04.FiniteProduct.exp_negative_half_log hpp]
    apply Real.exp_le_exp.mpr
    linarith
  have hsub : Real.exp (-u/2) ≤ Real.exp (-T/2+binWidth/4) := by
    apply Real.exp_le_exp.mpr
    unfold terminalWidth at hu
    linarith
  have hfirst : Real.exp (-(T-binWidth)/2) = Real.exp (-T/2)*Real.exp (binWidth/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hsecond : Real.exp (-T/2+binWidth/4) = Real.exp (-T/2)*Real.exp (binWidth/4) :=
    Real.exp_add _ _
  rw [hfirst] at hinv
  rw [hsecond] at hsub
  rw [atom,if_pos he]
  unfold atomGain
  nlinarith

theorem binHorizon_large {S : ℝ} (hS : 1024 ≤ S) {k : ℕ}
    (hk : k ∈ Finset.range 56) :
    chosenWidth ≤ binHorizon S k ∧ S ≤ 2*(1+binHorizon S k) := by
  have hl : Real.log (2:ℝ) ≤ 1 := by
    simpa only [show (2:ℝ)-1=1 by norm_num] using
      Real.log_le_sub_one_of_pos (show (0:ℝ)<2 by norm_num)
  have hh := binHorizon_bounds (T := S) hk
  unfold chosenWidth
  constructor <;> linarith

theorem heavy_bin_count_at_horizon {S : ℝ} (hS : 1024 ≤ S) {k : ℕ}
    (hk : k ∈ Finset.range 56)
    (hcount : Real.exp S/(896*S) ≤ ((primeBin S k).card : ℝ)) :
    Real.exp (binHorizon S k)/(1792*(1+binHorizon S k)) ≤ ((primeBin S k).card : ℝ) := by
  have hlarge := binHorizon_large hS hk
  have hT : 0 ≤ binHorizon S k := chosenWidth_valid.1.le.trans hlarge.1
  have hSpos : 0 < S := by linarith
  have hd : 0 < 896*S := by positivity
  have hd' : 0 < 1792*(1+binHorizon S k) := by positivity
  calc
    _ ≤ Real.exp (binHorizon S k)/(896*S) := by
      apply (div_le_div_iff₀ hd' hd).mpr
      exact mul_le_mul_of_nonneg_left (by linarith [hlarge.2]) (Real.exp_pos _).le
    _ ≤ Real.exp S/(896*S) :=
      (div_le_div_iff_of_pos_right hd).mpr (Real.exp_le_exp.mpr (binHorizon_bounds hk).2)
    _ ≤ _ := hcount

theorem shell_mass_lower {S : ℝ} (hS : 1024 ≤ S) {k : ℕ}
    (hk : k ∈ Finset.range 56)
    (hcount : Real.exp S/(896*S) ≤ ((primeBin S k).card : ℝ)) {u : ℝ}
    (hu : binHorizon S k-terminalWidth ≤ u) :
    atomGain*Real.exp (binHorizon S k/2)/(1792*(1+binHorizon S k)) ≤
      ∑ p ∈ HorizonShell.horizonShell chosenWidth (binHorizon S k), atom p u := by
  have hcount' := heavy_bin_count_at_horizon hS hk hcount
  have hgain : 0 ≤ atomGain*Real.exp (-binHorizon S k/2) :=
    mul_nonneg atomGain_positive.le (Real.exp_pos _).le
  have hmul := mul_le_mul_of_nonneg_right hcount' hgain
  have hs : Real.exp (binHorizon S k)*Real.exp (-binHorizon S k/2) =
      Real.exp (binHorizon S k/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = (Real.exp (binHorizon S k)/(1792*(1+binHorizon S k)))*
        (atomGain*Real.exp (-binHorizon S k/2)) := by
      symm
      calc
        _ = atomGain*(Real.exp (binHorizon S k)*Real.exp (-binHorizon S k/2))/
            (1792*(1+binHorizon S k)) := by ring
        _ = _ := by rw [hs]
    _ ≤ ((primeBin S k).card : ℝ)*(atomGain*Real.exp (-binHorizon S k/2)) := hmul
    _ = ∑ _p ∈ primeBin S k, atomGain*Real.exp (-binHorizon S k/2) := by simp
    _ ≤ ∑ p ∈ primeBin S k, atom p u := by
      apply Finset.sum_le_sum
      intro p hp
      have hpr := Nat.prime_of_mem_primesLE (Finset.mem_filter.mp (Finset.mem_filter.mp hp).1).1
      exact atom_tail_lower hpr.pos (primeBin_upper hp) hu
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg (primeBin_subset_shell S k)
      (fun p hp _ => atom_nonneg (HorizonShell.mem_horizonShell.mp hp).1.pos u)

/-- A genuine shell amplitude lower bound returns to the actual window integral. -/
theorem shellEnergy_from_amplitude {T amplitude : ℝ} (_hT : chosenWidth ≤ T)
    (hamp : 0 ≤ amplitude)
    (hneg : ∀ u ∈ Icc (T-terminalWidth) T,
      HorizonShell.horizonWave chosenWidth T u ≤ -amplitude) :
    amplitude^2*terminalWidth ≤ shellEnergy chosenWidth T := by
  have hw : 0 ≤ terminalWidth := (div_pos binWidth_positive (by norm_num)).le
  have hwb : terminalWidth ≤ chosenWidth := by
    dsimp only [terminalWidth,binWidth,chosenWidth]
    linarith [Real.log_pos (show (1:ℝ)<2 by norm_num)]
  have hi := HorizonShell.horizonWave_square_integrable chosenWidth T
  have hconst : IntegrableOn (fun _u : ℝ => amplitude^2) (Icc (T-terminalWidth) T) :=
    continuous_const.integrableOn_Icc
  calc
    _ = ∫ _u : ℝ in Icc (T-terminalWidth) T, amplitude^2 := by
      rw [setIntegral_const,Real.volume_real_Icc_of_le (by linarith)]
      simp only [smul_eq_mul]
      ring
    _ ≤ ∫ u : ℝ in Icc (T-terminalWidth) T,
        HorizonShell.horizonWave chosenWidth T u^2 := by
      apply setIntegral_mono_on hconst hi.integrableOn measurableSet_Icc
      intro u hu
      have hn := hneg u hu
      nlinarith
    _ ≤ ∫ u : ℝ in Icc (T-chosenWidth) T,
        HorizonShell.horizonWave chosenWidth T u^2 :=
      setIntegral_mono_set hi.integrableOn (Eventually.of_forall (fun _ => sq_nonneg _))
        (Eventually.of_forall (fun _ hu => ⟨by linarith [hu.1],hu.2⟩))
    _ = _ := rfl

/-- Unconditional controlled-horizon growth of the actual signed shell waveform. -/
theorem actual_horizon_shell_energy_growth {S : ℝ} (hS : 1024 ≤ S) :
    ∃ T ∈ Icc (S-8*Real.log 2) S,
      chosenWidth ≤ T ∧ growthConstant*Real.exp T/(1+T)^2 ≤ shellEnergy chosenWidth T := by
  obtain ⟨k,hk,hcount⟩ := heavy_bin_exists hS
  let T := binHorizon S k
  have hlarge : chosenWidth ≤ T := (binHorizon_large hS hk).1
  have hT : 0 ≤ T := chosenWidth_valid.1.le.trans hlarge
  let amplitude := atomGain*Real.exp (T/2)/(1792*(1+T))
  have ha : 0 ≤ amplitude := by
    dsimp only [amplitude]
    exact div_nonneg (mul_nonneg atomGain_positive.le (Real.exp_pos _).le) (by positivity)
  have hneg : ∀ u ∈ Icc (T-terminalWidth) T,
      HorizonShell.horizonWave chosenWidth T u ≤ -amplitude := by
    intro u hu
    have hwb : terminalWidth ≤ chosenWidth := by
      dsimp only [terminalWidth,binWidth,chosenWidth]
      linarith [Real.log_pos (show (1:ℝ)<2 by norm_num)]
    have hmem : u ∈ Icc 0 T := ⟨by linarith [hu.1],hu.2⟩
    rw [HorizonShell.horizonWave_eq_sum hmem]
    exact neg_le_neg (shell_mass_lower hS hk hcount hu.1)
  have hlow := shellEnergy_from_amplitude hlarge ha hneg
  have hexp : Real.exp (T/2)^2 = Real.exp T := by
    rw [pow_two,← Real.exp_add]
    congr 1
    ring
  have heq : amplitude^2*terminalWidth = growthConstant*Real.exp T/(1+T)^2 := by
    dsimp only [amplitude,growthConstant]
    rw [div_pow,mul_pow,hexp,mul_pow]
    have hden : 1+T ≠ 0 := by linarith
    field_simp [hden]
  refine ⟨T,binHorizon_bounds hk,hlarge,?_⟩
  rw [← heq]
  exact hlow

theorem exp_binOrigin (S : ℝ) : Real.exp (binOrigin S) = Real.exp S/256 := by
  have hl : Real.log (256:ℝ) = 8*Real.log 2 := by
    have h := Real.log_pow (2:ℝ) 8
    norm_num at h
    exact h
  unfold binOrigin
  rw [← hl,Real.exp_sub,Real.exp_log (by norm_num : (0:ℝ)<256)]

/-- Bounding the horizon waveform alone by a polynomial cannot settle the signed problem. -/
theorem horizon_shell_energy_not_polynomial :
    ¬PolynomialBound (shellEnergy chosenWidth) := by
  rintro ⟨C,q,hC,hq,hbound⟩
  have hlower : Obstruction.ExponentialEnergyInput
      (fun S => C*(1+S)^q) (growthConstant/256) := by
    filter_upwards [eventually_ge_atTop (1024:ℝ)] with S hS
    obtain ⟨T,hTS,hlarge,hgrowth⟩ := actual_horizon_shell_energy_growth hS
    have hT : 0 ≤ T := chosenWidth_valid.1.le.trans hlarge
    have hS0 : 0 ≤ S := by linarith
    have hST : 1+T ≤ 1+S := by linarith [hTS.2]
    have hrpow : (1+T)^q ≤ (1+S)^q :=
      Real.rpow_le_rpow (by linarith) hST hq
    have hupper : shellEnergy chosenWidth T ≤ C*(1+S)^q :=
      (hbound T hT).trans (mul_le_mul_of_nonneg_left hrpow hC)
    have hden : 0 < (1+T)^2 := sq_pos_of_pos (by linarith)
    have hcore : growthConstant*Real.exp T ≤ shellEnergy chosenWidth T*(1+T)^2 :=
      (div_le_iff₀ hden).mp hgrowth
    have hsq : (1+T)^2 ≤ (1+S)^2 := by nlinarith
    have hmul : shellEnergy chosenWidth T*(1+T)^2 ≤ C*(1+S)^q*(1+S)^2 :=
      mul_le_mul hupper hsq (sq_nonneg _) (by positivity)
    have hexp : Real.exp S/256 ≤ Real.exp T := by
      rw [← exp_binOrigin]
      exact Real.exp_le_exp.mpr hTS.1
    calc
      (growthConstant/256)*Real.exp S = growthConstant*(Real.exp S/256) := by ring
      _ ≤ growthConstant*Real.exp T :=
        mul_le_mul_of_nonneg_left hexp growthConstant_positive.le
      _ ≤ shellEnergy chosenWidth T*(1+T)^2 := hcore
      _ ≤ C*(1+S)^q*(1+S)^2 := hmul
  exact Obstruction.exponential_input_not_polynomial
    (div_pos growthConstant_positive (by norm_num)) hlower
    (Eventually.of_forall (fun _ => le_rfl))

end HSSCP04.ShellObstruction
#print axioms HSSCP04.ShellObstruction.heavy_bin_exists
#print axioms HSSCP04.ShellObstruction.actual_horizon_shell_energy_growth
#print axioms HSSCP04.ShellObstruction.horizon_shell_energy_not_polynomial
