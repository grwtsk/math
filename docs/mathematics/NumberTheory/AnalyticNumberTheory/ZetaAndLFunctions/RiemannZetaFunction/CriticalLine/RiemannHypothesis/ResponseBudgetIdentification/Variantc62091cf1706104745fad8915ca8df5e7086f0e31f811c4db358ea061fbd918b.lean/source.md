# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResponseBudgetIdentification.Variantc62091cf1706104745fad8915ca8df5e7086f0e31f811c4db358ea061fbd918b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50e291b05fce0e6ef3336bdf02b92386c61938a9` · SHA-256 `c62091cf1706104745fad8915ca8df5e7086f0e31f811c4db358ea061fbd918b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence
import GRWTSK.NumberTheory.Moebius.MertensPrimitive

/-! Exact adapter to the existing grwtsk/math CCC arithmetic proposition.
The response, integer inventory, coefficients, complete Gram and both ordered
cross sums are identified. Icc/set integrals and ordered interval integrals
are compared only on nonnegative horizons. No pickup growth bound is supplied.
-/
noncomputable section
open MeasureTheory Set
namespace HSSCP04.CCCAdapter

lemma response_eq (n : ℕ) (u : ℝ) : GRWTSK.RiemannHypothesis.CCC.pickupResponse n u = PPNCP04.atom n u := rfl
lemma coefficient_eq (n : ℕ) : GRWTSK.RiemannHypothesis.CCC.moebiusReal n = PPNCP04.realMoebius n := rfl

lemma response_gram_eq {T : ℝ} (hT : 0 ≤ T) (m n : ℕ) :
    GRWTSK.RiemannHypothesis.CCC.pickupResponseGram T m n = PPNCP04.gram T m n := by
  unfold GRWTSK.RiemannHypothesis.CCC.pickupResponseGram PPNCP04.gram
  rw [intervalIntegral.integral_of_le hT, ← integral_Icc_eq_integral_Ioc]
  rfl

lemma diagonal_eq {T : ℝ} (hT : 0 ≤ T) :
    GRWTSK.RiemannHypothesis.CCC.pickupDiagonal T = PPNCP04.diagonal T := by
  simp only [GRWTSK.RiemannHypothesis.CCC.pickupDiagonal,PPNCP04.diagonal,PPNCP04.integerInventory,
    coefficient_eq,response_gram_eq hT]

lemma complete_gram_eq_energy {T : ℝ} (hT : 0 ≤ T) :
    GRWTSK.RiemannHypothesis.CCC.pickupFullGram T = PPNCP04.energy T := by
  rw [PPNCP04.energy_eq_complete_double]
  simp only [GRWTSK.RiemannHypothesis.CCC.pickupFullGram,PPNCP04.integerInventory,
    coefficient_eq,response_gram_eq hT]

/-- The native conditional ordered sum and the new erased ordered sum coincide.
The proof uses their exact complete signed Gram identities, not absolute values. -/
theorem cross_eq {T : ℝ} (hT : 0 ≤ T) :
    GRWTSK.RiemannHypothesis.CCC.pickupCross T = PPNCP04.crossEnergy T := by
  have hn := GRWTSK.RiemannHypothesis.CCC.pickup_full_gram_split T
  rw [complete_gram_eq_energy hT,diagonal_eq hT] at hn
  linarith [PPNCP04.energy_eq_diagonal_add_cross T]

/-- Exactly the existing native P04 proposition, with unchanged real quantifiers. -/
theorem native_P04_iff_literal_P04 : GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly ↔ PPNCP04.P04 := by
  constructor
  · rintro ⟨C,q,hC,hq,hbound⟩
    refine ⟨C,q,hC,hq,?_⟩
    intro T hT
    rw [← cross_eq hT]
    exact hbound T hT
  · rintro ⟨C,q,hC,hq,hbound⟩
    refine ⟨C,q,hC,hq,?_⟩
    intro T hT
    rw [cross_eq hT]
    exact hbound T hT

theorem native_P04_eq_literal_P04 : GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly = PPNCP04.P04 :=
  propext native_P04_iff_literal_P04

theorem HSS_iff_native_P04 {b : ℝ} (hb : 0 < b) : HSSCP04.HSS b ↔ GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly :=
  (HSSCP04.HSS_iff_P04 hb).trans native_P04_iff_literal_P04.symm

theorem native_P04_implies_literal_RH (h : GRWTSK.RiemannHypothesis.CCC.PickupCrossPoly) :
    _root_.RiemannHypothesis :=
  EulerP04RH.LaplaceEnergy.literal_RH_of_P04 (native_P04_iff_literal_P04.mp h)

end HSSCP04.CCCAdapter
#print axioms HSSCP04.CCCAdapter.cross_eq
#print axioms HSSCP04.CCCAdapter.native_P04_eq_literal_P04
#print axioms HSSCP04.CCCAdapter.HSS_iff_native_P04
```
