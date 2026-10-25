# Complete source: GRWTSK.Logic.ProofEvidence.EnergyInterfaceEquivalence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a036db9aeea5c468f75be9694c867b782dc206f6` · SHA-256 `4f2c21e383819a8c110339e9cea1719aff0bc0a3f650afd95c359d4250602b3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition
import GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds

/-! Semantic audit of the generic transform assembly interface.
`TransformRouteConstruction` is equivalent to literal P04: in the reverse
construction its head is the complete signed source, and tail/residual vanish.
This is a checked closure schema, not a source-exact Bessel/Mellin kernel
identification. A stronger research obligation must declare the actual kernel,
prove its source adapter, and bound its real tail and joint signed head/residue.
No witness of P04, BMID, SHRS, or RH is asserted here.
-/
noncomputable section
namespace EulerP04RH.InterfaceAudit

/-- An explicit tautological decomposition preserves every ordered Möbius term
because its head is exactly the original complete signed cross energy. -/
def identityDecomposition : ExactDecomposition where
  route := .reciprocalZeta
  rightLine := 2
  rightLine_gt_one := by norm_num
  head := fun _ T => PPNCP04.crossEnergy T
  tail := fun _ _ => 0
  residual := fun _ _ => 0
  sourceIdentity := by intros; simp

theorem identity_signed_settlement (T : ℝ) :
    signedSettlement identityDecomposition (fun _ => 1) T = PPNCP04.crossEnergy T := by
  simp [signedSettlement, identityDecomposition]

theorem identity_tail_polynomial :
    RightLineTailBound identityDecomposition (fun _ => 1) := by
  refine ⟨0, 0, le_rfl, le_rfl, ?_⟩
  intro T _
  simp [identityDecomposition]

/-- Passing the actual arithmetic theorem as the head budget supplies this
abstract interface; it does not construct a kernel or solve arithmetic. -/
theorem literal_P04_implies_transform_route (h : PPNCP04.P04) :
    TransformRouteConstruction := by
  refine ⟨identityDecomposition, fun _ => 1, ?_, identity_tail_polynomial, ?_⟩
  · exact fun _ _ => le_rfl
  · obtain ⟨C, r, hC, hr, hbound⟩ := h
    refine ⟨C, r, hC, hr, ?_⟩
    intro T hT
    rw [identity_signed_settlement]
    exact hbound T hT

/-- The existential generic interface has exactly the strength of literal P04.
Consumers must not label this equivalence a completed BMID identification. -/
theorem transform_route_iff_literal_P04 : TransformRouteConstruction ↔ PPNCP04.P04 :=
  ⟨transform_route_implies_P04, literal_P04_implies_transform_route⟩

/-- An empty abstract packet model can assign the entire signed settlement to
its error. Only the independent error budget would then do arithmetic work. -/
def emptyPacketModel (D : ExactDecomposition) (height : ℝ → ℝ) :
    PacketClosure.PacketModel ℂ where
  indices := fun _ => ∅
  vectors := fun _ _ => 0
  coefficients := fun _ _ => 0
  weights := fun _ _ => 1
  gramConstant := fun _ => 0
  error := signedSettlement D height
  positiveWeights := by intros; norm_num
  nonnegativeGram := by intros; exact le_rfl
  weightedRows := by intros; simp

theorem empty_packet_signed_return (D : ExactDecomposition) (height : ℝ → ℝ) :
    PacketClosure.SignedPacketReturn (emptyPacketModel D height) D height := by
  intro T _
  simp [emptyPacketModel]

theorem empty_packet_error_budget_iff (D : ExactDecomposition) (height : ℝ → ℝ) :
    PPNCP04.PolynomialBound (emptyPacketModel D height).error ↔
      SignedSettlementBound D height := Iff.rfl

end EulerP04RH.InterfaceAudit
#print axioms EulerP04RH.InterfaceAudit.literal_P04_implies_transform_route
#print axioms EulerP04RH.InterfaceAudit.transform_route_iff_literal_P04

#print axioms EulerP04RH.InterfaceAudit.empty_packet_signed_return
#print axioms EulerP04RH.InterfaceAudit.empty_packet_error_budget_iff
```
