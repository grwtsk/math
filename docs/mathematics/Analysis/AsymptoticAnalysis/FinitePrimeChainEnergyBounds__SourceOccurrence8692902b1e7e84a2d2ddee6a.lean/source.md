# Complete source: GRWTSK.Analysis.Asymptotics.FinitePrimeChainEnergyBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52e0059d6f22783e7695e655955045203e164476` · SHA-256 `754d324a708a591fd44174a61f1f3bb45ffa0bb7e50351422b97aead2ddf0550`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion
import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification
import GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence

/-! A conditional theorem with the literal P04 proposition as conclusion.
Only a declared full-prime completion chain is required, so this also records
the weaker replacement for an unnecessarily universal all-subsets interface.
No construction of such a reserve/chain estimate is asserted here.
-/
noncomputable section
namespace PPNCP04

/-- Source states and complete prime-block bookkeeping for one real scale. -/
structure CompletionChain (T : ℝ) where
  length : ℕ
  states : ℕ → Finset ℕ
  blocks : ℕ → Finset ℕ
  initial : states 0 = ∅
  terminal : states length = primeInventory T
  contained : ∀ j, states j ⊆ primeInventory T
  blocksContained : ∀ j, blocks j ⊆ primeInventory T
  disjoint : ∀ j, Disjoint (states j) (blocks j)
  next : ∀ j, states (j+1) = states j ∪ blocks j

/-- Every analytic bound is a proof field, rather than an unchecked assertion.
The additive ledger may already include coverage, packet, and return errors. -/
structure AmortizedCompletion (T C₀ C₁ a q d H : ℝ) where
  chain : CompletionChain T
  reserve : Finset ℕ → ℝ
  reserveNonnegative : ∀ P, 0 ≤ reserve P
  cost : ℕ → ℝ
  debit : ℕ → ℝ
  costNonnegative : ∀ j, 0 ≤ cost j
  debitNonnegative : ∀ j, 0 ≤ debit j
  initialBudget : sourceEnergy ∅ T+reserve ∅ ≤ C₀*(1+T)^a
  step : ∀ j,
    sourceEnergy (chain.states (j+1)) T+reserve (chain.states (j+1)) ≤
      Real.exp (cost j)*(sourceEnergy (chain.states j) T+reserve (chain.states j))+
      debit j
  costBudget : Cost.prefixSum cost chain.length ≤ d*Real.log (1+T)+H
  debitBudget : Cost.prefixSum debit chain.length ≤ C₁*(1+T)^q

theorem completion_energy_bound {T C₀ C₁ a q d H : ℝ}
    (hT : 0 ≤ T) (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (ha : 0 ≤ a) (hq : 0 ≤ q)
    (cert : AmortizedCompletion T C₀ C₁ a q d H) :
    energy T ≤ (Real.exp H*(C₀+C₁))*(1+T)^(d+a+q) := by
  let φ := fun j => sourceEnergy (cert.chain.states j) T+cert.reserve (cert.chain.states j)
  have hit := Cost.generalized_iteration φ cert.cost cert.debit
    cert.costNonnegative cert.debitNonnegative cert.step cert.chain.length
  have hinit : φ 0 ≤ C₀*(1+T)^a := by
    simpa [φ, cert.chain.initial] using cert.initialBudget
  have hbase : 1 ≤ 1+T := by linarith
  have haPow : (1+T)^a ≤ (1+T)^(a+q) :=
    Real.rpow_le_rpow_of_exponent_le hbase (by linarith)
  have hqPow : (1+T)^q ≤ (1+T)^(a+q) :=
    Real.rpow_le_rpow_of_exponent_le hbase (by linarith)
  have hbudget : φ 0+Cost.prefixSum cert.debit cert.chain.length ≤
      (C₀+C₁)*(1+T)^(a+q) := by
    calc
      _ ≤ C₀*(1+T)^a+C₁*(1+T)^q := add_le_add hinit cert.debitBudget
      _ ≤ C₀*(1+T)^(a+q)+C₁*(1+T)^(a+q) :=
        add_le_add (mul_le_mul_of_nonneg_left haPow hC₀)
          (mul_le_mul_of_nonneg_left hqPow hC₁)
      _ = _ := by ring
  have hexp := Cost.exp_cost_polynomial hT cert.costBudget
  have htail : 0 ≤ (C₀+C₁)*(1+T)^(a+q) := by positivity
  have hreturn : energy T ≤ φ cert.chain.length := by
    dsimp [φ]
    rw [cert.chain.terminal, sourceEnergy_completed]
    exact le_add_of_nonneg_right (cert.reserveNonnegative _)
  calc
    energy T ≤ φ cert.chain.length := hreturn
    _ ≤ Real.exp (Cost.prefixSum cert.cost cert.chain.length)*
        (φ 0+Cost.prefixSum cert.debit cert.chain.length) := hit
    _ ≤ Real.exp (Cost.prefixSum cert.cost cert.chain.length)*
        ((C₀+C₁)*(1+T)^(a+q)) :=
      mul_le_mul_of_nonneg_left hbudget (Real.exp_pos _).le
    _ ≤ (Real.exp H*(1+T)^d)*((C₀+C₁)*(1+T)^(a+q)) :=
      mul_le_mul_of_nonneg_right hexp htail
    _ = (Real.exp H*(C₀+C₁))*(1+T)^(d+a+q) := by
      simp only [Real.rpow_add (by linarith : 0 < 1+T)]
      ring

theorem amortized_completion_implies_P04 {C₀ C₁ a q d H : ℝ}
    (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁) (ha : 0 ≤ a) (hq : 0 ≤ q) (hd : 0 ≤ d)
    (certificates : ∀ T : ℝ, 0 ≤ T →
      Nonempty (AmortizedCompletion T C₀ C₁ a q d H)) : P04 := by
  apply energy_polynomial_implies_P04
  refine ⟨Real.exp H*(C₀+C₁), d+a+q, by positivity, by linarith, ?_⟩
  intro T hT
  obtain ⟨cert⟩ := certificates T hT
  exact completion_energy_bound hT hC₀ hC₁ ha hq cert

end PPNCP04

#print axioms PPNCP04.completion_energy_bound
#print axioms PPNCP04.amortized_completion_implies_P04
```
