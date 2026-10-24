# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Spectral.Variant46d3b00c43713f1815c9996b41941494c41912fab7381edbadd8dabda7d26d55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `042b83876c925ca69df09f7278246dec946ad146` · SHA-256 `46d3b00c43713f1815c9996b41941494c41912fab7381edbadd8dabda7d26d55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Kernel.Adadic
import Surface.Boolean.Cube.EdgeRelaxation
import Surface.Boolean.Cube.BooleanNetwork

namespace Surface.Kernel

open Surface.Boolean

universe u

/-!
Spectral and density bridges for adadic kernel admission.

This module provides two implementation paths:

1. BooleanNetwork spectral transform:
   a Walsh-style transform of Boolean transition matrices.  For a transition
   matrix `A : BoolMatrix (2^n) (2^n)`, the spectral numerator is

     ∑ₓ ∑ᵧ χ_S(x) A[x,y] χ_T(y),

   and the coefficient is stored as a dyadic value with denominator `2^n`.

2. EdgeRelaxation integration:
   a three-row ε-density vector is embedded into the 7-bit adadic layout by
   stratum:

   * topological cover bits receive the left density;
   * arithmetic core bits receive the center density;
   * control-flow bits receive the right density.

The resulting bridge lets the kernel-admission ledger carry both crisp bitstream
frames and fuzzy ε-relaxed analytic payloads.
-/

/-- Local dyadic rational used for spectral coefficients. -/
structure Adadic.Spectral.Dyadic where
  numerator : Int
  exponent : Nat
deriving Repr, DecidableEq

/-- Denominator of a dyadic rational. -/
def Adadic.Spectral.Dyadic.denominator
    (q : Adadic.Spectral.Dyadic) :
    Nat :=
  2 ^ q.exponent

/-- Integer-valued finite matrix used by the spectral transform. -/
abbrev Adadic.Spectral.IntMatrix (rows cols : Nat) :=
  Fin rows → Fin cols → Int

/-- Read an integer matrix entry. -/
def Adadic.Spectral.IntMatrix.entry
    (A : Adadic.Spectral.IntMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Int :=
  A i j

/-- Convert a Boolean value to `0` or `1`. -/
def Adadic.Spectral.intOfBool : Bool → Int
  | false => 0
  | true => 1

/-- Convert a Boolean matrix to an integer `0/1` matrix. -/
def Adadic.Spectral.IntMatrix.ofBool
    (A : BoolMatrix rows cols) :
    Adadic.Spectral.IntMatrix rows cols :=
  fun i j => Adadic.Spectral.intOfBool (A i j)

/-- Sum over `Fin n`. -/
def Adadic.Spectral.finSum
    (n : Nat)
    (f : Fin n → Int) :
    Int :=
  Cube.ListTools.sumInt
    ((List.finRange n).map f)

/--
Walsh character indexed by a finite frequency.

Both `frequency` and `sample` are interpreted as points of the Boolean
hypercube in standard index order.
-/
def Adadic.Spectral.character
    (n : Nat)
    (frequency sample : Fin (2 ^ n)) :
    Int :=
  Cube.ListTools.prodInt
    ((List.finRange n).map
      (fun i =>
        match
          (Cube.Hypercube.pointOfIndex n frequency.val i),
          (Cube.Hypercube.pointOfIndex n sample.val i) with
        | true, bit => Cube.Hypercube.spinOfBool bit
        | false, _ => 1))

/-- Character vector for a fixed frequency. -/
def Adadic.Spectral.characterVector
    (n : Nat)
    (frequency : Fin (2 ^ n)) :
    Fin (2 ^ n) → Int :=
  fun sample => Adadic.Spectral.character n frequency sample

/--
Unnormalized Walsh spectral numerator of a square Boolean matrix.

This is the operator coefficient numerator

  ∑ₓ ∑ᵧ χ_S(x) A[x,y] χ_T(y).
-/
def Adadic.Spectral.matrixSpectralNumerator
    {n : Nat}
    (A : BoolMatrix (2 ^ n) (2 ^ n))
    (S T : Fin (2 ^ n)) :
    Int :=
  Adadic.Spectral.finSum (2 ^ n)
    (fun x =>
      Adadic.Spectral.finSum (2 ^ n)
        (fun y =>
          Adadic.Spectral.character n S x *
            Adadic.Spectral.intOfBool (A x y) *
              Adadic.Spectral.character n T y))

/--
Walsh spectral coefficient of a Boolean matrix.

The coefficient is stored as

  numerator / 2^n.
-/
def Adadic.Spectral.matrixSpectralCoefficient
    {n : Nat}
    (A : BoolMatrix (2 ^ n) (2 ^ n))
    (S T : Fin (2 ^ n)) :
    Adadic.Spectral.Dyadic where
  numerator := Adadic.Spectral.matrixSpectralNumerator A S T
  exponent := n

@[simp] theorem Adadic.Spectral.matrixSpectralCoefficient_exponent
    {n : Nat}
    (A : BoolMatrix (2 ^ n) (2 ^ n))
    (S T : Fin (2 ^ n)) :
    (Adadic.Spectral.matrixSpectralCoefficient A S T).exponent = n :=
  rfl

@[simp] theorem Adadic.Spectral.matrixSpectralCoefficient_denominator
    {n : Nat}
    (A : BoolMatrix (2 ^ n) (2 ^ n))
    (S T : Fin (2 ^ n)) :
    (Adadic.Spectral.matrixSpectralCoefficient A S T).denominator = 2 ^ n :=
  rfl

/-- Full Walsh spectral transform of a Boolean matrix. -/
def Adadic.Spectral.matrixTransform
    {n : Nat}
    (A : BoolMatrix (2 ^ n) (2 ^ n)) :
    Fin (2 ^ n) → Fin (2 ^ n) → Adadic.Spectral.Dyadic :=
  fun S T => Adadic.Spectral.matrixSpectralCoefficient A S T

/-- Transition matrix of a Boolean network as an integer matrix. -/
def Adadic.Spectral.transitionIntMatrix
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    Adadic.Spectral.IntMatrix (2 ^ n) (2 ^ n) :=
  Adadic.Spectral.IntMatrix.ofBool
    (Cube.BooleanNetwork.transitionMatrix N)

/-- Spectral numerator of a Boolean-network transition matrix. -/
def Adadic.Spectral.transitionSpectralNumerator
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n)
    (S T : Fin (2 ^ n)) :
    Int :=
  Adadic.Spectral.matrixSpectralNumerator
    (Cube.BooleanNetwork.transitionMatrix N)
    S
    T

/-- Spectral coefficient of a Boolean-network transition matrix. -/
def Adadic.Spectral.transitionSpectralCoefficient
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n)
    (S T : Fin (2 ^ n)) :
    Adadic.Spectral.Dyadic :=
  Adadic.Spectral.matrixSpectralCoefficient
    (Cube.BooleanNetwork.transitionMatrix N)
    S
    T

/-- Full spectral transform of a Boolean-network transition matrix. -/
def Adadic.Spectral.transitionTransform
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    Fin (2 ^ n) → Fin (2 ^ n) → Adadic.Spectral.Dyadic :=
  Adadic.Spectral.matrixTransform
    (Cube.BooleanNetwork.transitionMatrix N)

@[simp] theorem Adadic.Spectral.transitionTransform_entry
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n)
    (S T : Fin (2 ^ n)) :
    Adadic.Spectral.transitionTransform N S T =
      Adadic.Spectral.transitionSpectralCoefficient N S T :=
  rfl

/--
A proof-carrying spectral package for a Boolean-network transition matrix.
-/
structure Adadic.Spectral.TransitionTransform (n : Nat) where
  network : Cube.BooleanNetwork.Network n
  transition :
    BoolMatrix (2 ^ n) (2 ^ n)
  spectral :
    Fin (2 ^ n) → Fin (2 ^ n) → Adadic.Spectral.Dyadic
  transition_eq :
    transition = Cube.BooleanNetwork.transitionMatrix network
  spectral_eq :
    spectral = Adadic.Spectral.transitionTransform network

/-- Build the proof-carrying spectral transform package for a Boolean network. -/
def Adadic.Spectral.TransitionTransform.ofNetwork
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    Adadic.Spectral.TransitionTransform n where
  network := N
  transition := Cube.BooleanNetwork.transitionMatrix N
  spectral := Adadic.Spectral.transitionTransform N
  transition_eq := rfl
  spectral_eq := rfl

/-- The transition package stores the network transition matrix. -/
theorem Adadic.Spectral.TransitionTransform.transition_correct
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    (Adadic.Spectral.TransitionTransform.ofNetwork N).transition =
      Cube.BooleanNetwork.transitionMatrix N :=
  rfl

/-- The transition package stores the Walsh spectral transform. -/
theorem Adadic.Spectral.TransitionTransform.spectral_correct
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    (Adadic.Spectral.TransitionTransform.ofNetwork N).spectral =
      Adadic.Spectral.transitionTransform N :=
  rfl

/--
Map a 7-bit adadic bit to the three-row edge-relaxation line.

This embeds the 3-component ε-density vector into the 7-bit frame by stratum.
-/
def Adadic.Bit.edgeLine : Adadic.Bit → Cube.EdgeRelaxation.Line3
  | .coverOpen => .left
  | .coverBoundary => .left
  | .arithmeticCore => .center
  | .arithmeticResidue => .center
  | .controlFlow => .right
  | .kernelAdmission => .right
  | .handshake => .right

/-- A density-valued 7-bit adadic frame. -/
abbrev Adadic.DensityFrame :=
  Adadic.Bit → Cube.EdgeRelaxation.EpsilonDensity

/-- Embed an edge-relaxation vector into the adadic 7-bit layout by stratum. -/
def Adadic.DensityFrame.ofEdgeVector
    (v :
      Cube.EdgeRelaxation.Vector
        Cube.EdgeRelaxation.EpsilonDensity) :
    Adadic.DensityFrame :=
  fun b => v (Adadic.Bit.edgeLine b)

/-- The ε-relaxed pole embedded into the adadic frame. -/
def Adadic.DensityFrame.relaxedPole :
    Adadic.DensityFrame :=
  Adadic.DensityFrame.ofEdgeVector
    Cube.EdgeRelaxation.relaxedPoleVector

/-- The relaxed centered-pole frame produced by the relaxation API. -/
def Adadic.DensityFrame.relaxedCenteredPole :
    Adadic.DensityFrame :=
  Adadic.DensityFrame.ofEdgeVector
    (Cube.EdgeRelaxation.relax
      Cube.EdgeRelaxation.centeredPole)

/-- The relaxed boundary-shell frame produced by the relaxation API. -/
def Adadic.DensityFrame.relaxedBoundaryShell :
    Adadic.DensityFrame :=
  Adadic.DensityFrame.ofEdgeVector
    (Cube.EdgeRelaxation.relax
      Cube.EdgeRelaxation.boundaryShell)

/-- Topological cover bits receive the left ε-density. -/
theorem Adadic.DensityFrame.relaxedPole_coverOpen :
    Adadic.DensityFrame.relaxedPole .coverOpen =
      Cube.EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Topological boundary bits receive the left ε-density. -/
theorem Adadic.DensityFrame.relaxedPole_coverBoundary :
    Adadic.DensityFrame.relaxedPole .coverBoundary =
      Cube.EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Arithmetic core bits receive the center density `1 - 2ε`. -/
theorem Adadic.DensityFrame.relaxedPole_arithmeticCore :
    Adadic.DensityFrame.relaxedPole .arithmeticCore =
      Cube.EdgeRelaxation.EpsilonDensity.oneMinusTwoEps := by
  decide

/-- Arithmetic residue bits receive the center density `1 - 2ε`. -/
theorem Adadic.DensityFrame.relaxedPole_arithmeticResidue :
    Adadic.DensityFrame.relaxedPole .arithmeticResidue =
      Cube.EdgeRelaxation.EpsilonDensity.oneMinusTwoEps := by
  decide

/-- Control-flow bits receive the right ε-density. -/
theorem Adadic.DensityFrame.relaxedPole_controlFlow :
    Adadic.DensityFrame.relaxedPole .controlFlow =
      Cube.EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Kernel-admission bits receive the right ε-density. -/
theorem Adadic.DensityFrame.relaxedPole_kernelAdmission :
    Adadic.DensityFrame.relaxedPole .kernelAdmission =
      Cube.EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Handshake bits receive the right ε-density. -/
theorem Adadic.DensityFrame.relaxedPole_handshake :
    Adadic.DensityFrame.relaxedPole .handshake =
      Cube.EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Every bit of the relaxed-pole density frame is non-crisp. -/
theorem Adadic.DensityFrame.relaxedPole_noncrisp
    (b : Adadic.Bit) :
    ¬ Cube.EdgeRelaxation.EpsilonDensity.IsCrisp
      (Adadic.DensityFrame.relaxedPole b) := by
  cases b <;> decide

/-- The edge-relaxation Laplacian kernel is symmetric. -/
theorem Adadic.Spectral.edgeRelaxation_kernel_symmetric
    (i j : Cube.EdgeRelaxation.Line3) :
    Cube.EdgeRelaxation.laplacianSmoothingKernel i j =
      Cube.EdgeRelaxation.laplacianSmoothingKernel j i := by
  cases i <;> cases j <;> decide

/--
The ε-relaxed pole conserves symbolic mass.

This reuses the mass-conservation proof from `EdgeRelaxation`.
-/
theorem Adadic.Spectral.relaxedPole_mass_conservation :
    Cube.EdgeRelaxation.total
        Cube.EdgeRelaxation.relaxedPoleVector =
      Cube.EdgeRelaxation.EpsilonDensity.one :=
  Cube.EdgeRelaxation.relaxedPole_totalMass

/--
A kernel-accepted spectral Boolean network.

This packages:
* the proof-carrying native admission;
* the Boolean network;
* the transition-matrix spectral transform;
* the ε-density frame integrated into the 7-bit adadic layout.
-/
structure Adadic.Spectral.AcceptedNetwork (n : Nat) where
  nativeAdmission : Adadic.NativeAdmission
  network : Cube.BooleanNetwork.Network n
  transform : Adadic.Spectral.TransitionTransform n
  densityFrame : Adadic.DensityFrame
  transform_matches_network :
    transform.network = network
  admission_frame_admissible :
    Adadic.Frame.kernelAdmissible
      nativeAdmission.admission.frame = true

/-- Build an accepted spectral network using the standard native admission. -/
def Adadic.Spectral.AcceptedNetwork.ofNetwork
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    Adadic.Spectral.AcceptedNetwork n where
  nativeAdmission := Adadic.NativeAdmission.standard
  network := N
  transform := Adadic.Spectral.TransitionTransform.ofNetwork N
  densityFrame := Adadic.DensityFrame.relaxedPole
  transform_matches_network := rfl
  admission_frame_admissible :=
    Adadic.NativeAdmission.frame_kernelAdmissible
      Adadic.NativeAdmission.standard

/-- The accepted spectral network preserves the input network. -/
theorem Adadic.Spectral.AcceptedNetwork.transform_network_eq
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    (Adadic.Spectral.AcceptedNetwork.ofNetwork N).transform.network = N :=
  rfl

/-- The accepted spectral network has an admissible native frame. -/
theorem Adadic.Spectral.AcceptedNetwork.frame_admissible
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    Adadic.Frame.kernelAdmissible
      (Adadic.Spectral.AcceptedNetwork.ofNetwork N).nativeAdmission.admission.frame =
        true :=
  Adadic.NativeAdmission.frame_kernelAdmissible
    Adadic.NativeAdmission.standard

/-- The accepted spectral network carries the relaxed-pole density frame. -/
theorem Adadic.Spectral.AcceptedNetwork.densityFrame_eq_relaxedPole
    {n : Nat}
    (N : Cube.BooleanNetwork.Network n) :
    (Adadic.Spectral.AcceptedNetwork.ofNetwork N).densityFrame =
      Adadic.DensityFrame.relaxedPole :=
  rfl

end Surface.Kernel
```
