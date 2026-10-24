# Complete source: GRWTSK.Analysis.Asymptotics.DisjointPrimeChainBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `251102665590ff9a533578fd068bedbd933252a1` · SHA-256 `16cc45aaa4792d01c34dfa8b802649142304d4e28e417f8592a9c82a9d628145`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds
import GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound

/-!
Generic closure with the actual all-horizon prime-harmonic estimate discharged.
The source reserve, the AS inequality, and complete admissible prime chains are
the remaining explicit inputs.  Complete disjoint bookkeeping automatically
supplies the harmonic mass budget; no extra arithmetic estimate is presumed.
-/

noncomputable section

namespace PPNCP04.OriginalClosure

theorem harmonicMass_union (P B : Finset ℕ) (h : Disjoint P B) :
    harmonicMass (P ∪ B) = harmonicMass P + harmonicMass B := by
  exact Finset.sum_union h

/-- Every prefix uses exactly the harmonic mass of its declared source state. -/
theorem completion_prefix_mass {T : ℝ} (chain : CompletionChain T) (n : ℕ) :
    Cost.prefixSum (fun j => harmonicMass (chain.blocks j)) n =
      harmonicMass (chain.states n) := by
  induction n with
  | zero => simp [Cost.prefixSum, chain.initial, harmonicMass, PPNC.harmonicMass]
  | succ n ih =>
      rw [Cost.prefixSum_succ, ih, chain.next n, harmonicMass_union _ _ (chain.disjoint n)]

/-- A complete chain spends precisely the full prime-harmonic mass. -/
theorem completion_total_mass {T : ℝ} (chain : CompletionChain T) :
    Cost.prefixSum (fun j => harmonicMass (chain.blocks j)) chain.length =
      harmonicMass (primeInventory T) := by
  rw [completion_prefix_mass chain, chain.terminal]

/-- The mass budget is a theorem, not a separately imposed certificate field. -/
def budgetedChain {T η : ℝ} (chain : CompletionChain T)
    (admissible : ∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η) :
    ASClosure.BudgetedChain T η where
  chain := chain
  admissible := admissible
  massBudget := (completion_total_mass chain).le

/-- The original uniform AS hypothesis closes to the literal ordered P04 target.
This theorem supplies the prime-harmonic bound internally.  It does not supply
an arithmetic reserve or the AS estimate.
-/
theorem AS_with_complete_admissible_chains_implies_P04
    (A : ReserveFunctional) (C q η : ℝ) (hAS : ASObligation A C q η)
    (chains : ∀ T : ℝ, 0 ≤ T → ∃ chain : CompletionChain T,
      ∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η) : P04 := by
  obtain ⟨C_M, hM, hprime⟩ :=
    PrimeHarmonicLog.prime_harmonic_logarithmic_estimate
  apply ASClosure.AS_implies_literal_P04 A C q η C_M hAS hM
  · intro T hT
    simpa only [harmonicMass, PPNC.harmonicMass,
      Obstruction.harmonicMass, one_div] using hprime T hT
  · intro T hT
    obtain ⟨chain, hadmissible⟩ := chains T hT
    exact ⟨budgetedChain chain hadmissible⟩

end PPNCP04.OriginalClosure

#print axioms PPNCP04.OriginalClosure.completion_prefix_mass
#print axioms PPNCP04.OriginalClosure.completion_total_mass
#print axioms PPNCP04.OriginalClosure.AS_with_complete_admissible_chains_implies_P04
```
