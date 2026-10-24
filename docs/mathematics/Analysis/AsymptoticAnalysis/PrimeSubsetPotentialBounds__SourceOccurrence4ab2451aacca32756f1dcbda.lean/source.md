# Complete source: GRWTSK.Analysis.Asymptotics.PrimeSubsetPotentialBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a75c268fe2e095f5faa49f0dbfa6cc5212d4b623` · SHA-256 `5eacd205e808e04c7d613aaa417c52ee47b58902644bedda8e070b2e75b1cec4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds

/-! Universal AS forces polynomial energy for every prime subset whose singleton
harmonic masses obey the block cap. The proof inserts actual signed prime notes
one at a time, and uses only the unconditional prime-harmonic budget.
This does not assert universal AS, a high-prime energy lower bound, or a
refutation until an actual-source lower-bound producer is supplied.
-/
noncomputable section
open scoped BigOperators
namespace EulerP04RH.ASSubsetClosure
open PPNCP04

theorem harmonicMass_subset {P Q : Finset ℕ} (h : P ⊆ Q) :
    harmonicMass P ≤ harmonicMass Q := by
  apply Finset.sum_le_sum_of_subset_of_nonneg h
  intro p _ _
  exact inv_nonneg.mpr (Nat.cast_nonneg p)

/-- Exact finite AS iteration on an arbitrary eligible source subset. -/
theorem subset_potential_bound (A : ReserveFunctional) (C q η T : ℝ)
    (hAS : ASObligation A C q η) (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : P ⊆ primeInventory T)
    (hsmall : ∀ p ∈ P, (p : ℝ)⁻¹ ≤ η) :
    potential A P T ≤ Real.exp (C*harmonicMass P)*
      (potential A ∅ T+C*harmonicMass P*(1+T)^q) := by
  classical
  have hrec : ∀ P : Finset ℕ, P ⊆ primeInventory T →
      (∀ p ∈ P, (p : ℝ)⁻¹ ≤ η) →
      potential A P T ≤ Real.exp (C*harmonicMass P)*
        (potential A ∅ T+C*harmonicMass P*(1+T)^q) := by
    intro P
    induction P using Finset.induction_on with
    | empty =>
      intro _ _
      simp [harmonicMass, PPNC.harmonicMass]
    | @insert p P hp ih =>
      intro hP hsmall
      have hsub : P ⊆ primeInventory T :=
        fun x hx => hP (Finset.mem_insert_of_mem hx)
      have hsm : ∀ x ∈ P, (x : ℝ)⁻¹ ≤ η :=
        fun x hx => hsmall x (Finset.mem_insert_of_mem hx)
      have hstep := hAS.2.2.2 T P {p} (show AdmissibleBlock P {p} T η from
        { scale_nonneg := hT
          previous_primes := hsub
          block_primes := by
            intro x hx
            have he : x = p := Finset.mem_singleton.mp hx
            subst x
            exact hP (Finset.mem_insert_self p P)
          disjoint := Finset.disjoint_singleton_right.mpr hp
          upper_mass := by
            simpa [harmonicMass, PPNC.harmonicMass] using
              hsmall p (Finset.mem_insert_self p P) })
      have hi := ih hsub hsm
      have hmass : harmonicMass (insert p P) = harmonicMass P+(p:ℝ)⁻¹ := by
        simp only [harmonicMass, PPNC.harmonicMass, Finset.sum_insert hp]
        ring
      have hinsert : P ∪ {p} = insert p P := by ext x; simp
      rw [hinsert] at hstep
      simp only [harmonicMass, PPNC.harmonicMass, Finset.sum_singleton] at hstep
      have htotal : 0 ≤ C*harmonicMass (insert p P) :=
        mul_nonneg hAS.1 (ASClosure.harmonicMass_nonnegative _)
      have hone : 1 ≤ Real.exp (C*harmonicMass (insert p P)) :=
        Real.one_le_exp_iff.mpr htotal
      have hdebit : 0 ≤ C*(p:ℝ)⁻¹*(1+T)^q := by
        have hC := hAS.1
        positivity
      have hpay : C*(p:ℝ)⁻¹*(1+T)^q ≤
          Real.exp (C*harmonicMass (insert p P))*(C*(p:ℝ)⁻¹*(1+T)^q) := by
        exact le_mul_of_one_le_left hdebit hone
      have hexp : Real.exp (C*(p:ℝ)⁻¹)*Real.exp (C*harmonicMass P) =
          Real.exp (C*harmonicMass (insert p P)) := by
        rw [← Real.exp_add, hmass]
        congr 1
        ring
      calc
        potential A (insert p P) T ≤ Real.exp (C*(p:ℝ)⁻¹)*potential A P T+
            C*(p:ℝ)⁻¹*(1+T)^q := hstep
        _ ≤ Real.exp (C*(p:ℝ)⁻¹)*(Real.exp (C*harmonicMass P)*
            (potential A ∅ T+C*harmonicMass P*(1+T)^q))+
            C*(p:ℝ)⁻¹*(1+T)^q :=
          add_le_add (mul_le_mul_of_nonneg_left hi (Real.exp_pos _).le) le_rfl
        _ = Real.exp (C*harmonicMass (insert p P))*
            (potential A ∅ T+C*harmonicMass P*(1+T)^q)+
            C*(p:ℝ)⁻¹*(1+T)^q := by rw [← mul_assoc, hexp]
        _ ≤ Real.exp (C*harmonicMass (insert p P))*
            (potential A ∅ T+C*harmonicMass P*(1+T)^q)+
            Real.exp (C*harmonicMass (insert p P))*(C*(p:ℝ)⁻¹*(1+T)^q) :=
          add_le_add le_rfl hpay
        _ = Real.exp (C*harmonicMass (insert p P))*
            (potential A ∅ T+C*harmonicMass (insert p P)*(1+T)^q) := by
          rw [hmass]
          ring
  exact hrec P hP hsmall

/-- Universal AS supplies one uniform polynomial budget for all eligible
prime subsets, even when a complete inventory controller cannot obey η. -/
theorem AS_implies_uniform_subset_polynomial (A : ReserveFunctional) (C q η : ℝ)
    (hAS : ASObligation A C q η) :
    ∃ K R : ℝ, 0 ≤ K ∧ 0 ≤ R ∧
      ∀ T : ℝ, 0 ≤ T → ∀ P : Finset ℕ, P ⊆ primeInventory T →
        (∀ p ∈ P, (p:ℝ)⁻¹ ≤ η) → sourceEnergy P T ≤ K*(1+T)^R := by
  obtain ⟨M, hM, hprime⟩ := PrimeHarmonicLog.prime_harmonic_logarithmic_estimate
  let d := C*M
  let H := C*M*Real.log 2
  let a := A.initialExponent+1
  let b := q+1
  let K := Real.exp H*(4+A.initialConstant+C*M)
  let R := d+a+b
  have hd : 0 ≤ d := mul_nonneg hAS.1 hM
  have ha : 0 ≤ a := by dsimp [a]; linarith [A.initialExponent_nonneg]
  have hb : 0 ≤ b := by dsimp [b]; linarith [hAS.2.1]
  refine ⟨K,R,?_,?_,?_⟩
  · dsimp [K]
    have hC := hAS.1
    have hA := A.initialConstant_nonneg
    positivity
  · exact add_nonneg (add_nonneg hd ha) hb
  · intro T hT P hP hsmall
    have hbase : 1 ≤ 1+T := by linarith
    have hmass : harmonicMass P ≤ M*Real.log (2+T) := by
      have hp := hprime T hT
      have hp' : harmonicMass (primeInventory T) ≤ M*Real.log (2+T) := by
        simpa only [harmonicMass, PPNC.harmonicMass, Obstruction.harmonicMass, one_div] using hp
      exact (harmonicMass_subset hP).trans hp'
    have hcost : C*harmonicMass P ≤ d*Real.log (1+T)+H := by
      calc
        _ ≤ C*(M*Real.log (2+T)) := mul_le_mul_of_nonneg_left hmass hAS.1
        _ ≤ C*(M*(Real.log 2+Real.log (1+T))) :=
          mul_le_mul_of_nonneg_left
            (mul_le_mul_of_nonneg_left (ASClosure.log_horizon_subadditive hT) hM) hAS.1
        _ = _ := by dsimp [d,H]; ring
    have he := Cost.exp_cost_polynomial hT hcost
    have hinit : potential A ∅ T ≤ (4+A.initialConstant)*(1+T)^a :=
      ASClosure.initial_potential_bound A hT
    have hdebit : C*harmonicMass P*(1+T)^q ≤ (C*M)*(1+T)^b := by
      calc
        _ ≤ C*(M*Real.log (2+T))*(1+T)^q :=
          mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hmass hAS.1) (by positivity)
        _ ≤ C*(M*(1+T))*(1+T)^q :=
          mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_left
              (mul_le_mul_of_nonneg_left (ASClosure.log_horizon_linear hT) hM) hAS.1)
            (by positivity)
        _ = _ := by
          dsimp [b]
          rw [Real.rpow_add (by linarith : 0 < 1+T), Real.rpow_one]
          ring
    have hpA := Real.rpow_le_rpow_of_exponent_le hbase (show a ≤ a+b by linarith)
    have hpB := Real.rpow_le_rpow_of_exponent_le hbase (show b ≤ a+b by linarith)
    have hinput : potential A ∅ T+C*harmonicMass P*(1+T)^q ≤
        (4+A.initialConstant+C*M)*(1+T)^(a+b) := by
      have h1 := hinit.trans (mul_le_mul_of_nonneg_left hpA
        (by linarith [A.initialConstant_nonneg]))
      have h2 := hdebit.trans (mul_le_mul_of_nonneg_left hpB (mul_nonneg hAS.1 hM))
      calc
        _ ≤ (4+A.initialConstant)*(1+T)^(a+b)+(C*M)*(1+T)^(a+b) := add_le_add h1 h2
        _ = _ := by ring
    have hinput0 : 0 ≤ potential A ∅ T+C*harmonicMass P*(1+T)^q := by
      apply add_nonneg
      · exact add_nonneg (sourceEnergy_nonneg _ _) (A.nonnegative _ _)
      · exact mul_nonneg (mul_nonneg hAS.1 (ASClosure.harmonicMass_nonnegative _)) (by positivity)
    calc
      sourceEnergy P T ≤ potential A P T := le_add_of_nonneg_right (A.nonnegative _ _)
      _ ≤ Real.exp (C*harmonicMass P)*(potential A ∅ T+C*harmonicMass P*(1+T)^q) :=
        subset_potential_bound A C q η T hAS hT P hP hsmall
      _ ≤ (Real.exp H*(1+T)^d)*((4+A.initialConstant+C*M)*(1+T)^(a+b)) :=
        mul_le_mul he hinput hinput0 (by positivity)
      _ = K*(1+T)^R := by
        dsimp [K,R]
        simp only [Real.rpow_add (by linarith : 0 < 1+T)]
        ring

/-- Every actual high-prime band is an inventory subset, independently of scale. -/
theorem primeBand_subset_inventory (a T : ℝ) :
    Obstruction.primeBand a T ⊆ primeInventory T := by
  intro p hp
  have hmem := (Finset.mem_filter.mp hp).1
  have hprime := Nat.prime_of_mem_primesLE hmem
  have hpupper : (p : ℝ) ≤ Real.exp T/2 :=
    (Nat.le_floor_iff (by positivity : 0 ≤ Real.exp T/2)).mp
      (Nat.le_of_mem_primesLE hmem)
  apply Finset.mem_filter.mpr
  refine ⟨mem_integerInventory.mpr ⟨hprime.one_le, ?_⟩, hprime⟩
  linarith [Real.exp_pos T]

/-- The actual three-quarter band obeys every positive singleton mass cap
eventually. This does not require a Mertens/PNT block-mass lower estimate. -/
theorem threeQuarterBand_eventually_eligible {η : ℝ} (hη : 0 < η) :
    ∀ᶠ T : ℝ in Filter.atTop, 0 ≤ T ∧
      (∀ p ∈ Obstruction.primeBand (3/4) T, (p:ℝ)⁻¹ ≤ η) := by
  filter_upwards [Filter.eventually_ge_atTop (0 : ℝ),
    Filter.eventually_ge_atTop ((4/3)*Real.log (η⁻¹))] with T hT hTlog
  refine ⟨hT, ?_⟩
  intro p hp
  have he : η⁻¹ ≤ Real.exp ((3/4)*T) := by
    rw [← Real.exp_log (inv_pos.mpr hη)]
    apply Real.exp_le_exp.mpr
    nlinarith
  have hplower := Obstruction.primeBand_mem_lower hp
  have hp0 : 0 < (p:ℝ) := (Real.exp_pos _).trans hplower
  have hinv : (p:ℝ)⁻¹ ≤ (η⁻¹)⁻¹ :=
    (inv_le_inv₀ hp0 (inv_pos.mpr hη)).mpr (he.trans hplower.le)
  simpa only [inv_inv] using hinv

/-- Direct eventual polynomial budget for the exact high-prime source.
An independent exponential lower producer can consume this in a contradiction. -/
theorem AS_implies_threeQuarterBand_eventual_polynomial
    (A : ReserveFunctional) (C q η : ℝ) (hAS : ASObligation A C q η) :
    ∃ K R : ℝ, 0 ≤ K ∧ 0 ≤ R ∧
      ∀ᶠ T : ℝ in Filter.atTop,
        sourceEnergy (Obstruction.primeBand (3/4) T) T ≤ K*(1+T)^R := by
  obtain ⟨K, R, hK, hR, hbound⟩ := AS_implies_uniform_subset_polynomial A C q η hAS
  refine ⟨K, R, hK, hR, ?_⟩
  filter_upwards [threeQuarterBand_eventually_eligible hAS.2.2.1] with T hT
  exact hbound T hT.1 _ (primeBand_subset_inventory _ _) hT.2

end EulerP04RH.ASSubsetClosure
#print axioms EulerP04RH.ASSubsetClosure.subset_potential_bound
#print axioms EulerP04RH.ASSubsetClosure.AS_implies_uniform_subset_polynomial

#print axioms EulerP04RH.ASSubsetClosure.threeQuarterBand_eventually_eligible
#print axioms EulerP04RH.ASSubsetClosure.AS_implies_threeQuarterBand_eventual_polynomial
```
