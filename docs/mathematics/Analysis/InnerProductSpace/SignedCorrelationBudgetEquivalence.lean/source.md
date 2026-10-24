# Complete source: GRWTSK.Analysis.InnerProductSpace.SignedCorrelationBudgetEquivalence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48e0ed3b3549c09af34f7190d5467009c331a22a` · SHA-256 `8d7c0e00458c9fa0b20aa2e9a8b3e27fe67b4e7dc1670d526264700911824ef8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity
import GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth

/-! Exact signed-correlation reformulation and rejection of an unsigned budget.
This exposes the arithmetic producer that remains open. The component energies
are never individually declared polynomial. The horizon obstruction is on a
controlled set of real horizons, not merely an undocumented subsequence. -/
noncomputable section
namespace HSSCP04.Settlement
open PPNCP04 HorizonShell ShellObstruction

def SignedCorrelationBudget (b : ℝ) : Prop :=
  ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧ ∀ T : ℝ, b ≤ T →
    signedCorrelation b T ≤ C*(1+T)^q-matureEnergy b T-horizonEnergy b T

theorem signedCorrelationBudget_iff_HSS {b : ℝ} (hb : PinnedShellWidth b) :
    SignedCorrelationBudget b ↔ HSS b := by
  constructor
  · rintro ⟨C,q,hC,hq,h⟩
    refine ⟨C,q,hC,hq,fun T hT => ?_⟩
    linarith [h T hT,settlement_ledger hb hT]
  · rintro ⟨C,q,hC,hq,h⟩
    refine ⟨C,q,hC,hq,fun T hT => ?_⟩
    linarith [h T hT,settlement_ledger hb hT]

/-- Exact mathematical failure of the positive-energy shortcut. -/
theorem unsigned_settlement_budget_refuted :
    ¬PolynomialBound (fun T => matureEnergy chosenWidth T+
      horizonEnergy chosenWidth T+|signedCorrelation chosenWidth T|) := by
  rintro ⟨C,q,hC,hq,h⟩
  apply horizon_shell_energy_not_polynomial
  refine ⟨C,q,hC,hq,fun T hT => ?_⟩
  exact (unsigned_replacement_dominates_shell chosenWidth T).trans (h T hT)

/-- Conditional settlement forces the mature component to match an exponential
shell, up to the same polynomial residual. This asserts no mature upper bound. -/
theorem HSS_requires_mature_matching (hHSS : HSS chosenWidth) :
    ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧ ∀ S : ℝ, 1024 ≤ S →
      ∃ T ∈ Set.Icc (S-8*Real.log 2) S, chosenWidth ≤ T ∧
        growthConstant*Real.exp T/(1+T)^2/2-C*(1+T)^q ≤
          matureEnergy chosenWidth T := by
  obtain ⟨C,q,hC,hq,h⟩ := hHSS
  refine ⟨C,q,hC,hq,fun S hS => ?_⟩
  obtain ⟨T,hTS,hT,hgrowth⟩ := actual_horizon_shell_energy_growth hS
  refine ⟨T,hTS,hT,?_⟩
  have hm := mature_lower_from_residual chosenWidth_valid hT (h T hT)
  change growthConstant*Real.exp T/(1+T)^2 ≤ horizonEnergy chosenWidth T at hgrowth
  linarith

end HSSCP04.Settlement
#print axioms HSSCP04.Settlement.signedCorrelationBudget_iff_HSS
#print axioms HSSCP04.Settlement.unsigned_settlement_budget_refuted
#print axioms HSSCP04.Settlement.HSS_requires_mature_matching
```
