# Complete source: GRWTSK.Analysis.Asymptotics.PrimeMassPotentialBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9305ad5575f1e86d3109712e26845bda583a4b2` · SHA-256 `bb2cd398909a34ef632acbc86bac404b6ff94258b52176442eee660cf5ef8e8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts
import GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence
import GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds
import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification

/-!
Conditional closure of the original AS interface to the literal P04 statement.
The source reserve, its AS inequality, the complete prime-block chains, and
the all-horizon logarithmic prime-harmonic bound are explicit inputs.
This file constructs the finite amortized certificate; it does not construct
the arithmetic reserve or assert the AS inequality.
-/

noncomputable section

namespace PPNCP04.ASClosure

/-- Bookkeeping and mass budget required of a realized complete chain. -/
structure BudgetedChain (T η : ℝ) where
  chain : CompletionChain T
  admissible : ∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η
  massBudget : Cost.prefixSum (fun j => harmonicMass (chain.blocks j)) chain.length ≤
    harmonicMass (primeInventory T)

/-- A separately named all-horizon arithmetic input; no proof is presumed. -/
def PrimeHarmonicEstimate (C_M : ℝ) : Prop :=
  ∀ T : ℝ, 0 ≤ T → harmonicMass (primeInventory T) ≤ C_M * Real.log (2 + T)

theorem harmonicMass_nonnegative (B : Finset ℕ) : 0 ≤ harmonicMass B := by
  unfold harmonicMass PPNC.harmonicMass
  exact Finset.sum_nonneg (fun p _ => inv_nonneg.mpr (Nat.cast_nonneg p))

theorem prefixSum_const_mul (c : ℝ) (w : ℕ → ℝ) (n : ℕ) :
    Cost.prefixSum (fun j => c * w j) n = c * Cost.prefixSum w n := by
  induction n with
  | zero => simp [Cost.prefixSum]
  | succ n ih => simp only [Cost.prefixSum_succ, ih, mul_add]

theorem log_horizon_subadditive {T : ℝ} (hT : 0 ≤ T) :
    Real.log (2 + T) ≤ Real.log 2 + Real.log (1 + T) := by
  have hle := Real.log_le_log (by linarith : 0 < 2 + T)
    (show 2 + T ≤ 2 * (1 + T) by linarith)
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) (by linarith : 1 + T ≠ 0)] at hle
  exact hle

theorem log_horizon_linear {T : ℝ} (hT : 0 ≤ T) :
    Real.log (2 + T) ≤ 1 + T := by
  have h := Real.log_le_sub_one_of_pos (by linarith : 0 < 2 + T)
  linarith

theorem initial_potential_bound (A : ReserveFunctional) {T : ℝ} (hT : 0 ≤ T) :
    sourceEnergy ∅ T + A.value ∅ T ≤
      (4 + A.initialConstant) * (1 + T) ^ (A.initialExponent + 1) := by
  have hb : 1 ≤ 1 + T := by linarith
  have hApow : (1 + T) ^ A.initialExponent ≤
      (1 + T) ^ (A.initialExponent + 1) :=
    Real.rpow_le_rpow_of_exponent_le hb (by linarith)
  have hone : 1 + T ≤ (1 + T) ^ (A.initialExponent + 1) := by
    have h := Real.rpow_le_rpow_of_exponent_le hb
      (show (1 : ℝ) ≤ A.initialExponent + 1 by linarith [A.initialExponent_nonneg])
    simpa only [Real.rpow_one] using h
  have he : sourceEnergy ∅ T ≤ 4 * (1 + T) ^ (A.initialExponent + 1) :=
    (sourceEnergy_empty_bound hT).trans
      (mul_le_mul_of_nonneg_left ((by linarith : T ≤ 1 + T).trans hone) (by norm_num))
  have ha := (A.initialBudget T hT).trans
    (mul_le_mul_of_nonneg_left hApow A.initialConstant_nonneg)
  calc
    sourceEnergy ∅ T + A.value ∅ T ≤
        4 * (1 + T) ^ (A.initialExponent + 1) +
          A.initialConstant * (1 + T) ^ (A.initialExponent + 1) := add_le_add he ha
    _ = (4 + A.initialConstant) * (1 + T) ^ (A.initialExponent + 1) := by ring

theorem cost_budget {T η C C_M : ℝ} (hT : 0 ≤ T) (hC : 0 ≤ C)
    (hM : 0 ≤ C_M) (hprime : PrimeHarmonicEstimate C_M) (bc : BudgetedChain T η) :
    Cost.prefixSum (fun j => C * harmonicMass (bc.chain.blocks j)) bc.chain.length ≤
      (C * C_M) * Real.log (1 + T) + C * C_M * Real.log 2 := by
  rw [prefixSum_const_mul]
  calc
    C * Cost.prefixSum (fun j => harmonicMass (bc.chain.blocks j)) bc.chain.length ≤
        C * harmonicMass (primeInventory T) := mul_le_mul_of_nonneg_left bc.massBudget hC
    _ ≤ C * (C_M * Real.log (2 + T)) := mul_le_mul_of_nonneg_left (hprime T hT) hC
    _ ≤ C * (C_M * (Real.log 2 + Real.log (1 + T))) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left (log_horizon_subadditive hT) hM) hC
    _ = (C * C_M) * Real.log (1 + T) + C * C_M * Real.log 2 := by ring

theorem debit_budget {T η C q C_M : ℝ} (hT : 0 ≤ T) (hC : 0 ≤ C)
    (hM : 0 ≤ C_M) (hprime : PrimeHarmonicEstimate C_M) (bc : BudgetedChain T η) :
    Cost.prefixSum (fun j => (C * (1 + T) ^ q) * harmonicMass (bc.chain.blocks j))
      bc.chain.length ≤ (C * C_M) * (1 + T) ^ (q + 1) := by
  have hcq : 0 ≤ C * (1 + T) ^ q := by positivity
  rw [prefixSum_const_mul]
  calc
    (C * (1 + T) ^ q) *
        Cost.prefixSum (fun j => harmonicMass (bc.chain.blocks j)) bc.chain.length ≤
        (C * (1 + T) ^ q) * harmonicMass (primeInventory T) :=
      mul_le_mul_of_nonneg_left bc.massBudget hcq
    _ ≤ (C * (1 + T) ^ q) * (C_M * Real.log (2 + T)) :=
      mul_le_mul_of_nonneg_left (hprime T hT) hcq
    _ ≤ (C * (1 + T) ^ q) * (C_M * (1 + T)) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left (log_horizon_linear hT) hM) hcq
    _ = (C * C_M) * (1 + T) ^ (q + 1) := by
      rw [Real.rpow_add (by linarith : 0 < 1 + T), Real.rpow_one]
      ring

/-- Construction of the actual finite amortized completion from declared inputs. -/
def completionFromAS (A : ReserveFunctional) (C q η C_M T : ℝ)
    (hAS : ASObligation A C q η) (hM : 0 ≤ C_M)
    (hprime : PrimeHarmonicEstimate C_M) (hT : 0 ≤ T) (bc : BudgetedChain T η) :
    AmortizedCompletion T (4 + A.initialConstant) (C * C_M)
      (A.initialExponent + 1) (q + 1) (C * C_M) (C * C_M * Real.log 2) where
  chain := bc.chain
  reserve := fun P => A.value P T
  reserveNonnegative := fun P => A.nonnegative P T
  cost := fun j => C * harmonicMass (bc.chain.blocks j)
  debit := fun j => (C * (1 + T) ^ q) * harmonicMass (bc.chain.blocks j)
  costNonnegative := fun j => mul_nonneg hAS.1 (harmonicMass_nonnegative _)
  debitNonnegative := fun j => mul_nonneg
    (by have hC := hAS.1; positivity) (harmonicMass_nonnegative _)
  initialBudget := initial_potential_bound A hT
  step := by
    intro j
    rw [bc.chain.next j]
    have h := hAS.2.2.2 T (bc.chain.states j) (bc.chain.blocks j) (bc.admissible j)
    simpa only [potential, mul_assoc, mul_left_comm, mul_comm] using h
  costBudget := cost_budget hT hAS.1 hM hprime bc
  debitBudget := debit_budget hT hAS.1 hM hprime bc

/-- Generic AS closure with the literal complete ordered off-diagonal as conclusion.
All unsupplied arithmetic and reserve hypotheses remain visible theorem arguments.
-/
theorem AS_implies_literal_P04 (A : ReserveFunctional) (C q η C_M : ℝ)
    (hAS : ASObligation A C q η) (hM : 0 ≤ C_M)
    (hprime : PrimeHarmonicEstimate C_M)
    (chains : ∀ T : ℝ, 0 ≤ T → Nonempty (BudgetedChain T η)) : P04 := by
  apply amortized_completion_implies_P04
    (C₀ := 4 + A.initialConstant) (C₁ := C * C_M)
    (a := A.initialExponent + 1) (q := q + 1)
    (d := C * C_M) (H := C * C_M * Real.log 2)
  · linarith [A.initialConstant_nonneg]
  · exact mul_nonneg hAS.1 hM
  · linarith [A.initialExponent_nonneg]
  · linarith [hAS.2.1]
  · exact mul_nonneg hAS.1 hM
  · intro T hT
    obtain ⟨bc⟩ := chains T hT
    exact ⟨completionFromAS A C q η C_M T hAS hM hprime hT bc⟩

end PPNCP04.ASClosure

#print axioms PPNCP04.ASClosure.initial_potential_bound
#print axioms PPNCP04.ASClosure.completionFromAS
#print axioms PPNCP04.ASClosure.AS_implies_literal_P04
```
