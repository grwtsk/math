# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PolarizedGram.Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `254f1463bc3f6ddee59f37d17af44559ee34bd3d` · SHA-256 `c22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeLattice.MomentPath
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Tactic

/-!
# Polarized packet Gram data

The Boolean object in this module is only an incidence mask.  Amplitudes and
Gram entries remain complex.  An interaction certificate contains local
off-diagonal estimates, never the desired global arithmetic bound.
-/

public section

namespace Surface.Core.PrimeLattice.PolarizedGram

noncomputable section

open scoped InnerProductSpace
open Surface.Core.PrimeLattice.MomentPath

/-- Pairwise packet inner product. -/
@[expose]
def packetGram {N : ℕ} (frame : ConductorThreeCoefficientPacketFrame N)
    (left right : frame.Atom) : ℂ :=
  ⟪frame.packet left, frame.packet right⟫_ℂ

/-- Complex Gram matrix of a coefficient packet frame. -/
@[expose]
def packetGramMatrix {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    Matrix frame.Atom frame.Atom ℂ :=
  fun left right ↦ packetGram frame left right

/-- The finite-dimensional Gram operator. -/
@[expose]
def packetGramOperator {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    EuclideanSpace ℂ frame.Atom →L[ℂ] EuclideanSpace ℂ frame.Atom := by
  classical
  exact (packetGramMatrix frame).toEuclideanLin.toContinuousLinearMap

/-- Local geometric interaction evidence.  A false mask entry forces either
exact orthogonality or the supplied rapidly decaying error. -/
structure PolarizedInteractionControl {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) where
  interactionMask : frame.Atom → frame.Atom → Bool
  offDiagonalError : ℝ
  offDiagonalError_nonneg : 0 ≤ offDiagonalError
  gram_small_of_mask_false : ∀ left right,
    interactionMask left right = false →
      ‖packetGram frame left right‖ ≤ offDiagonalError

/-- Exact-disjointness specialization of the interaction certificate. -/
@[expose]
def PolarizedInteractionControl.IsExact {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame) : Prop :=
  control.offDiagonalError = 0

@[surface_novel, surface_published]
theorem gram_zero_of_interactionMask_false {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame)
    (hexact : control.IsExact) (left right : frame.Atom)
    (hmask : control.interactionMask left right = false) :
    packetGram frame left right = 0 := by
  have hnorm := control.gram_small_of_mask_false left right hmask
  rw [hexact] at hnorm
  simpa using (norm_eq_zero.mp (le_antisymm hnorm (norm_nonneg _)))

/-- Scale-uniform operator-norm conclusion sought from the signed `TT*`
argument.  This is a predicate, not an asserted theorem. -/
@[expose]
def PacketGramPowerBound
    (frame : (N : ℕ) → ConductorThreeCoefficientPacketFrame N) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ‖packetGramOperator (frame N)‖ ≤
          C * (N : ℝ) ^ epsilon

end

end Surface.Core.PrimeLattice.PolarizedGram
```
