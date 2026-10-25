module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeTypeIICoefficientNorms
public import Surface.Core.TypeII.BlockPacketModel
public import Surface.Core.TypeII.BlockSurgeryMassPacking
import Mathlib.Tactic

/-!
# Quantitative local alternatives for dyadic Type II blocks

This file names the analytic endpoints that a finite curvature/event
construction must produce.  The structured and diffuse terms use the exact
projections from `TypeIILocalStructure`; the separator branch carries an
actual spatial block surgery and strict natural-valued complexity decrease.

No constructor is supplied.  In particular, unsigned Wang--Zahl geometry is
not converted into signed conductor-three cancellation here.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open Surface.Core.ConductorThreeTypeIICoefficientNorms
open Surface.Core.ConductorThreeVaughanBlocks

/-- Exact dyadic interval matrix on one factor rectangle. -/
@[expose]
def typeIIBlockDyadicIntervalMatrix {N : ℕ} (B : TypeIIDyadicBlock N)
    (interval : TypeIIDyadicInterval N) : Matrix B.Left B.Right ℂ :=
  productDyadicIntervalMatrix (fun left : B.Left ↦ left.1.1)
    (fun right : B.Right ↦ right.1.1) interval

/-- Diffuse--diffuse part of the fixed arithmetic interval pairing. -/
@[expose]
def TypeIIBlockPacketModel.diffusePairing
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B)
    (interval : TypeIIDyadicInterval N) : ℂ :=
  bilinearMatrixPairing
    (model.localStructure.leftDiffuse (blockLeftEuclideanCoefficient B))
    (typeIIBlockDyadicIntervalMatrix B interval)
    (model.localStructure.rightDiffuse (blockRightEuclideanCoefficient B))

/-- Sum of the two mixed structured/diffuse pairings. -/
@[expose]
def TypeIIBlockPacketModel.mixedPairing
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B)
    (interval : TypeIIDyadicInterval N) : ℂ :=
  bilinearMatrixPairing
      (model.localStructure.leftStructured (blockLeftEuclideanCoefficient B))
      (typeIIBlockDyadicIntervalMatrix B interval)
      (model.localStructure.rightDiffuse (blockRightEuclideanCoefficient B)) +
    bilinearMatrixPairing
      (model.localStructure.leftDiffuse (blockLeftEuclideanCoefficient B))
      (typeIIBlockDyadicIntervalMatrix B interval)
      (model.localStructure.rightStructured (blockRightEuclideanCoefficient B))

/-- Structured--structured arithmetic pairing. -/
@[expose]
def TypeIIBlockPacketModel.structuredPairing
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B)
    (interval : TypeIIDyadicInterval N) : ℂ :=
  bilinearMatrixPairing
    (model.localStructure.leftStructured (blockLeftEuclideanCoefficient B))
    (typeIIBlockDyadicIntervalMatrix B interval)
    (model.localStructure.rightStructured (blockRightEuclideanCoefficient B))

/-- Quantitative diffuse compressed-pairing theorem at one block. -/
@[expose]
def TransverseDiffuseEstimate {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧ ∀ interval : TypeIIDyadicInterval N,
    ‖model.diffusePairing interval‖ ≤
      C * (N + 1 : ℝ) ^ ε *
        ‖blockLeftEuclideanCoefficient B‖ *
        ‖blockRightEuclideanCoefficient B‖

/-- Quantitative mixed almost-orthogonality theorem at one block. -/
@[expose]
def MixedCorrelationEstimate {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧ ∀ interval : TypeIIDyadicInterval N,
    ‖model.mixedPairing interval‖ ≤
      C * (N + 1 : ℝ) ^ ε *
        ‖blockLeftEuclideanCoefficient B‖ *
        ‖blockRightEuclideanCoefficient B‖

/-- Coefficient-sensitive endpoint for the polylogarithmic structured modes. -/
@[expose]
def StructuredCoefficientEstimate {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧ ∀ interval : TypeIIDyadicInterval N,
    ‖model.structuredPairing interval‖ ≤
      C * (N + 1 : ℝ) ^ ε *
        ‖blockLeftEuclideanCoefficient B‖ *
        ‖blockRightEuclideanCoefficient B‖

/-- The concrete tube geometry has a non-vacuous unsigned Wang--Zahl
certificate.  This carries no signed conclusion. -/
@[expose]
def WangZahlAdmissible {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) : Prop :=
  ∃ certificate : UnsignedWangZahlDiffuseCertificate (Sum B.Left B.Right),
    certificate.family = model.tubeGeometry

/-- Spatial separator together with a discrete event-rank decrease. -/
structure ComplexityReducingBlockSeparator
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) where
  surgery : TypeIIBlockSurgery N
    (fun x ↦ typeIIBlockCutoffMatrix B x) model.spatialCarrier
  parentComplexity : ℕ
  childComplexity : surgery.Child → ℕ
  decreases : ∀ child, childComplexity child < parentComplexity

/-- Correct four-way local theorem surface. -/
inductive TypeIILocalAlternative
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (ε C : ℝ) : Prop
  | transverseDiffuse
      (hDiffuse : TransverseDiffuseEstimate model ε C)
      (hMixed : MixedCorrelationEstimate model ε C)
  | wangZahlDiffuse
      (hGeometry : WangZahlAdmissible model)
      (hDiffuse : TransverseDiffuseEstimate model ε C)
      (hMixed : MixedCorrelationEstimate model ε C)
  | lowRankStructured
      (hStructured : StructuredCoefficientEstimate model ε C)
  | separator
      (cut : ComplexityReducingBlockSeparator model)

/-- Scale-uniform model family.  Its construction is an open geometric task. -/
structure ConductorThreeDyadicPacketRoute where
  model : ∀ (N : ℕ) (B : TypeIIDyadicBlock N),
    TypeIIBlockPacketModel N B

/-- The decisive local-alternative research theorem, stated without GRH. -/
@[expose]
def ConductorThreeTypeIILocalAlternativeTheorem
    (route : ConductorThreeDyadicPacketRoute) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ (N : ℕ) (B : TypeIIDyadicBlock N),
      TypeIILocalAlternative (route.model N B) ε C

end

end Surface.Core.TypeII

end
