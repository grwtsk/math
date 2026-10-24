# Complete source: GRWTSK.NumberTheory.Moebius.CenteredAnchorResidualEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b6da1bebc73d9802cdd9d11177ddacdb2b09f05` · SHA-256 `257de5b8bd0b850ced7ac07cc9389f9552d0be69cc19569b5f9e1b05f7f3db0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Moebius.CorrectedAnchorSourceBridge

/-! # Full centered residual energy retained in the anchor bridge
These are unconditional norm-comparison estimates. They do not provide
RH-scale residual decay or a lower frame for the obstructed full family. -/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

theorem centeredSource_energy_le_anchor_and_debt (X : ℕ) :
    canonicalFourFamilyAmbientSourceEnergy X (canonicalFourFamilyCenteredData X) ≤
      2*canonicalFourFamilyAmbientSourceEnergy X (anchorLift X (correctedAnchorSource X)) +
      2*canonicalFourFamilyAmbientSourceEnergy X (centeredAnchorDebt X) := by
  unfold canonicalFourFamilyAmbientSourceEnergy
  calc
    _ ≤ ∑ F : CanonicalFourFamily, ∑ c ∈ Finset.range (2*X+1),
        (2*(anchorLift X (correctedAnchorSource X) F c)^2 +
         2*(centeredAnchorDebt X F c)^2) := by
      apply Finset.sum_le_sum
      intro F _
      apply Finset.sum_le_sum
      intro c _
      rw [centeredSource_eq_anchor_add_debt X F c]
      nlinarith [sq_nonneg (anchorLift X (correctedAnchorSource X) F c-centeredAnchorDebt X F c)]
    _ = _ := by simp_rw [Finset.sum_add_distrib, ← Finset.mul_sum]

theorem centeredAnchorDebt_energy_ten_ge_one :
    1 ≤ canonicalFourFamilyAmbientSourceEnergy 10 (centeredAnchorDebt 10) := by
  have hc : (10:ℕ) ∈ Finset.range (2*10+1) := by decide
  have hinner := Finset.single_le_sum (fun c (_ : c ∈ Finset.range (2*10+1)) =>
    sq_nonneg (centeredAnchorDebt 10 (true,false) c)) hc
  have houter := Finset.single_le_sum
    (fun F (_ : F ∈ (Finset.univ : Finset CanonicalFourFamily)) =>
      Finset.sum_nonneg (fun c _ => sq_nonneg (centeredAnchorDebt 10 F c)))
    (Finset.mem_univ (true,false))
  rw [centeredAnchorDebt_ten, one_pow] at hinner
  exact hinner.trans houter
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
