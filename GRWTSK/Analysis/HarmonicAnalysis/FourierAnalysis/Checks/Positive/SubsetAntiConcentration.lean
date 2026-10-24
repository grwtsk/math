/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModBalancedExpectedLayers

/-!
# Checked downstream consumers of fixed-size subset anti-concentration

The range and prime-modulus hypotheses of source Theorem 1.3 are retained
literally. The existence statement uses the one constant uniform in all prime
moduli and all admissible fixed-size subset laws.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Checks.Positive.SubsetAntiConcentration

theorem source_range_bound {p m : ℕ} [NeZero p] (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant hp S hn hl hu z

theorem uniform_absolute_constant :
    ∃ C : ℝ, 0 < C ∧ ∀ (p : ℕ) (hp : p.Prime),
      ∀ (S : Finset (ZMod p)) (m : ℕ), 2 ≤ S.card →
        C * Real.log S.card ≤ m →
        (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card →
        ∀ z : ZMod p,
          (@GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
          1 / p + C / ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModBalancedExpectedLayers.exists_anticoncentration_constant

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Checks.Positive.SubsetAntiConcentration
