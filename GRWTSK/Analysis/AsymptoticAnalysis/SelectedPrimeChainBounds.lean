import GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds
import GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy

/-! Weaker sign-preserving replacement: pay only the transitions on a declared
complete source chain. It imposes no amortized inequality on unrelated subsets.
The source-derived reserve and these selected transition bounds remain inputs.
-/
noncomputable section
namespace EulerP04RH.ChainOnlyAS
open PPNCP04

/-- Uniform constants and reserve; one admissible complete chain per real horizon. -/
def Construction : Prop :=
  ∃ (A : ReserveFunctional) (C q η : ℝ), 0 ≤ C ∧ 0 ≤ q ∧ 0 < η ∧
    ∀ T : ℝ, 0 ≤ T → ∃ chain : CompletionChain T,
      (∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η) ∧
      ∀ j, potential A (chain.states (j+1)) T ≤
        Real.exp (C*harmonicMass (chain.blocks j))*potential A (chain.states j) T+
        C*harmonicMass (chain.blocks j)*(1+T)^q

/-- Conditional conversion from the old stronger interface retains bookkeeping. -/
theorem universal_with_complete_chains_implies_replacement
    (A : ReserveFunctional) (C q η : ℝ) (hAS : ASObligation A C q η)
    (chains : ∀ T : ℝ, 0 ≤ T → ∃ chain : CompletionChain T,
      ∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η) : Construction := by
  refine ⟨A,C,q,η,hAS.1,hAS.2.1,hAS.2.2.1,?_⟩
  intro T hT
  obtain ⟨chain,hadmissible⟩ := chains T hT
  refine ⟨chain,hadmissible,?_⟩
  intro j
  rw [chain.next j]
  exact hAS.2.2.2 T (chain.states j) (chain.blocks j) (hadmissible j)

/-- The actual prime-harmonic theorem supplies the cumulative logarithmic cost. -/
def completion (A : ReserveFunctional) (C q η C_M T : ℝ)
    (hC : 0 ≤ C) (hM : 0 ≤ C_M) (hprime : ASClosure.PrimeHarmonicEstimate C_M)
    (hT : 0 ≤ T) (bc : ASClosure.BudgetedChain T η)
    (steps : ∀ j, potential A (bc.chain.states (j+1)) T ≤
      Real.exp (C*harmonicMass (bc.chain.blocks j))*potential A (bc.chain.states j) T+
      C*harmonicMass (bc.chain.blocks j)*(1+T)^q) :
    AmortizedCompletion T (4+A.initialConstant) (C*C_M)
      (A.initialExponent+1) (q+1) (C*C_M) (C*C_M*Real.log 2) where
  chain := bc.chain
  reserve := fun P => A.value P T
  reserveNonnegative := fun P => A.nonnegative P T
  cost := fun j => C*harmonicMass (bc.chain.blocks j)
  debit := fun j => (C*(1+T)^q)*harmonicMass (bc.chain.blocks j)
  costNonnegative := fun j => mul_nonneg hC (ASClosure.harmonicMass_nonnegative _)
  debitNonnegative := fun j => mul_nonneg (by positivity) (ASClosure.harmonicMass_nonnegative _)
  initialBudget := ASClosure.initial_potential_bound A hT
  step := by
    intro j
    simpa only [potential,mul_assoc,mul_left_comm,mul_comm] using steps j
  costBudget := ASClosure.cost_budget hT hC hM hprime bc
  debitBudget := ASClosure.debit_budget hT hC hM hprime bc

/-- The replacement is sufficient for literal all-real ordered P04. -/
theorem construction_implies_literal_P04 (constructed : Construction) : P04 := by
  obtain ⟨A,C,q,η,hC,hq,_hη,chains⟩ := constructed
  obtain ⟨C_M,hM,hPrime⟩ := PrimeHarmonicLog.prime_harmonic_logarithmic_estimate
  have hprime : ASClosure.PrimeHarmonicEstimate C_M := by
    intro T hT
    simpa only [harmonicMass,PPNC.harmonicMass,Obstruction.harmonicMass,one_div] using hPrime T hT
  apply amortized_completion_implies_P04
    (C₀ := 4+A.initialConstant) (C₁ := C*C_M)
    (a := A.initialExponent+1) (q := q+1)
    (d := C*C_M) (H := C*C_M*Real.log 2)
  · linarith [A.initialConstant_nonneg]
  · exact mul_nonneg hC hM
  · linarith [A.initialExponent_nonneg]
  · linarith
  · exact mul_nonneg hC hM
  · intro T hT
    obtain ⟨chain,hadmissible,hsteps⟩ := chains T hT
    let bc := OriginalClosure.budgetedChain chain hadmissible
    exact ⟨completion A C q η C_M T hC hM hprime hT bc hsteps⟩

theorem construction_implies_literal_RH (constructed : Construction) :
    _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04 (construction_implies_literal_P04 constructed)

end EulerP04RH.ChainOnlyAS

#print axioms EulerP04RH.ChainOnlyAS.construction_implies_literal_P04
#print axioms EulerP04RH.ChainOnlyAS.construction_implies_literal_RH
