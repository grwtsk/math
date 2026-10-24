# Complete source: GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d06250307b20e2128de77d7c864657ce4054ee8` · SHA-256 `347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition
import GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds

/-! BGP plus coefficient and return budgets implies the native signed settlement.
Every source adapter is explicit; no packet model for the Möbius head is supplied.
-/
noncomputable section
open scoped BigOperators
namespace EulerP04RH.PacketClosure

structure PacketModel (E : Type*) [NormedAddCommGroup E] [InnerProductSpace ℂ E] where
  indices : ℝ → Finset ℕ
  vectors : ℝ → ℕ → E
  coefficients : ℝ → ℕ → ℂ
  weights : ℝ → ℕ → ℝ
  gramConstant : ℝ → ℝ
  error : ℝ → ℝ
  positiveWeights : ∀ T : ℝ, 0 ≤ T → ∀ j ∈ indices T, 0 < weights T j
  nonnegativeGram : ∀ T : ℝ, 0 ≤ T → 0 ≤ gramConstant T
  weightedRows : ∀ T : ℝ, 0 ≤ T → ∀ j ∈ indices T,
    ∑ k ∈ indices T, ‖inner ℂ (vectors T j) (vectors T k)‖ * weights T k ≤
      gramConstant T * weights T j

def coefficientBudget {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : PacketModel E) (T : ℝ) : ℝ :=
  ∑ j ∈ model.indices T, ‖model.coefficients T j‖ ^ 2

/-- The source return controls the signed head and all residues jointly.
It must be proved for the actual decomposition, with all normalization losses. -/
def SignedPacketReturn {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : PacketModel E) (D : ExactDecomposition) (height : ℝ → ℝ) : Prop :=
  ∀ T : ℝ, 0 ≤ T → signedSettlement D height T ≤
    ‖∑ j ∈ model.indices T, model.coefficients T j • model.vectors T j‖ ^ 2 + model.error T

theorem polynomial_packet_budgets_imply_settlement {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : PacketModel E) (D : ExactDecomposition) (height : ℝ → ℝ)
    (sourceReturn : SignedPacketReturn model D height)
    (gramBudget : PPNCP04.PolynomialBound model.gramConstant)
    (coeffBudget : PPNCP04.PolynomialBound (coefficientBudget model))
    (errorBudget : PPNCP04.PolynomialBound model.error) : SignedSettlementBound D height := by
  obtain ⟨C_G,r_G,hCG,hrG,hGram⟩ := gramBudget
  obtain ⟨C_A,r_A,hCA,hrA,hCoeff⟩ := coeffBudget
  obtain ⟨C_E,r_E,hCE,hrE,hErr⟩ := errorBudget
  refine ⟨C_G*C_A+C_E,max (r_G+r_A) r_E,by positivity,
    (add_nonneg hrG hrA).trans (le_max_left _ _),?_⟩
  intro T hT
  have hc : 0 ≤ coefficientBudget model T := Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have hSynth := WeightedGram.synthesis_of_weighted_gram_rows
    (model.indices T) (model.vectors T) (model.coefficients T) (model.weights T)
    (model.positiveWeights T hT) (model.weightedRows T hT)
  have hprod : model.gramConstant T*coefficientBudget model T ≤
      C_G*C_A*(1+T)^(r_G+r_A) := by
    calc
      _ ≤ (C_G*(1+T)^r_G)*(C_A*(1+T)^r_A) :=
        mul_le_mul (hGram T hT) (hCoeff T hT) hc (by positivity)
      _ = _ := by rw [Real.rpow_add (by linarith : 0 < 1+T)]; ring
  have hb : 1 ≤ 1+T := by linarith
  have hgp := Real.rpow_le_rpow_of_exponent_le hb (le_max_left (r_G+r_A) r_E)
  have hep := Real.rpow_le_rpow_of_exponent_le hb (le_max_right (r_G+r_A) r_E)
  calc
    signedSettlement D height T ≤
        model.gramConstant T*coefficientBudget model T+model.error T :=
      (sourceReturn T hT).trans (add_le_add hSynth le_rfl)
    _ ≤ C_G*C_A*(1+T)^(r_G+r_A)+C_E*(1+T)^r_E := add_le_add hprod (hErr T hT)
    _ ≤ C_G*C_A*(1+T)^(max (r_G+r_A) r_E)+C_E*(1+T)^(max (r_G+r_A) r_E) :=
      add_le_add (mul_le_mul_of_nonneg_left hgp (by positivity))
        (mul_le_mul_of_nonneg_left hep hCE)
    _ = _ := by ring

/-- BGP closes P04 only after actual reconstruction, coefficient, error, and tail budgets. -/
theorem packet_route_implies_literal_P04 {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : PacketModel E) (D : ExactDecomposition) (height : ℝ → ℝ)
    (height_valid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (tailBudget : RightLineTailBound D height)
    (sourceReturn : SignedPacketReturn model D height)
    (gramBudget : PPNCP04.PolynomialBound model.gramConstant)
    (coeffBudget : PPNCP04.PolynomialBound (coefficientBudget model))
    (errorBudget : PPNCP04.PolynomialBound model.error) : PPNCP04.P04 :=
  assembly_implies_literal_P04 D height height_valid tailBudget
    (polynomial_packet_budgets_imply_settlement model D height sourceReturn gramBudget coeffBudget errorBudget)

end EulerP04RH.PacketClosure

#print axioms EulerP04RH.PacketClosure.polynomial_packet_budgets_imply_settlement
#print axioms EulerP04RH.PacketClosure.packet_route_implies_literal_P04
```
