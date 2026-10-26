/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightTimeCompositionTensor
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Coherent height transport for prime-power spectral diffusion

This module adds a bounded height-transport groupoid to the existing finite
prime-power diffusion system.

The transition, normalized Laplacian, closed finite semigroup, and literal
Mathlib matrix exponential depend only on the parity of the discrete schedule
height. Heights of equal parity are transported by the identity. Heights of
opposite parity are transported by the already established state swap inside
the nontrivial radical-collision class.

The transport is proved coherent:

* identity transport is the identity map;
* reverse transport is an inverse;
* transport through an intermediate height composes to endpoint transport;
* path composition is associative at the transported-vector level;
* every retained operator is intertwined by the transport;
* complete finite spectral modes remain nonzero eigenvectors with the same
  spectral value after transport.

A bounded path syntax attaches these transport certificates to height-changing
tensor paths. Common certified Graph Sandwich support is recorded separately and
is not used as a transport map. The existing hostile example—equal certified
support but distinct weighted operators at heights zero and one—remains part of
the final certificate.

The height coordinate is finite schedule time, not a zeta-zero ordinate. This
module does not construct an infinite-dimensional analytic semigroup, a
Frobenius action, a Hilbert--Polya operator, a Kim--Vu probabilistic coupling,
Chowla cancellation, a Riemann-hypothesis implication, or an arithmetic
compression estimate.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators Matrix.Norms.Frobenius
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## Canonical parity transport -/

/-- Canonical transport between two graph heights. Equal parity uses the
identity; unequal parity swaps the two states in the nontrivial radical class. -/
def heightTransport
    (sourceHeight targetHeight : Nat)
    (vector : State → ℝ) : State → ℝ :=
  if sourceHeight % 2 = targetHeight % 2 then
    vector
  else
    swapVector vector

@[simp]
theorem heightTransport_of_sameParity
    {sourceHeight targetHeight : Nat}
    (sameParity :
      sourceHeight % 2 = targetHeight % 2)
    (vector : State → ℝ) :
    heightTransport sourceHeight targetHeight vector =
      vector := by
  simp [heightTransport, sameParity]

@[simp]
theorem heightTransport_of_differentParity
    {sourceHeight targetHeight : Nat}
    (differentParity :
      sourceHeight % 2 ≠ targetHeight % 2)
    (vector : State → ℝ) :
    heightTransport sourceHeight targetHeight vector =
      swapVector vector := by
  simp [heightTransport, differentParity]

@[simp]
theorem heightTransport_refl
    (height : Nat) (vector : State → ℝ) :
    heightTransport height height vector = vector := by
  simp [heightTransport]

@[simp]
theorem heightTransport_zero
    (sourceHeight targetHeight : Nat) :
    heightTransport sourceHeight targetHeight
      (fun _ => 0) = fun _ => 0 := by
  by_cases sameParity :
      sourceHeight % 2 = targetHeight % 2 <;>
    simp [heightTransport, sameParity, swapVector]

/-- Height transport commutes with scalar multiplication. -/
theorem heightTransport_smul
    (sourceHeight targetHeight : Nat)
    (scalar : ℝ) (vector : State → ℝ) :
    heightTransport sourceHeight targetHeight
        (fun state => scalar * vector state) =
      fun state =>
        scalar *
          heightTransport sourceHeight targetHeight vector state := by
  by_cases sameParity :
      sourceHeight % 2 = targetHeight % 2 <;>
    simp [heightTransport, sameParity, swapVector]

/-- Canonical parity transport composes through every intermediate height. -/
theorem heightTransport_comp
    (firstHeight middleHeight lastHeight : Nat)
    (vector : State → ℝ) :
    heightTransport middleHeight lastHeight
        (heightTransport firstHeight middleHeight vector) =
      heightTransport firstHeight lastHeight vector := by
  have firstModLt : firstHeight % 2 < 2 :=
    Nat.mod_lt _ (by norm_num)
  have middleModLt : middleHeight % 2 < 2 :=
    Nat.mod_lt _ (by norm_num)
  have lastModLt : lastHeight % 2 < 2 :=
    Nat.mod_lt _ (by norm_num)
  by_cases firstMiddle :
      firstHeight % 2 = middleHeight % 2
  · by_cases middleLast :
        middleHeight % 2 = lastHeight % 2
    · have firstLast :
          firstHeight % 2 = lastHeight % 2 :=
        firstMiddle.trans middleLast
      simp [heightTransport, firstMiddle, middleLast, firstLast]
    · have firstLast :
          firstHeight % 2 ≠ lastHeight % 2 := by
        intro equality
        apply middleLast
        exact firstMiddle.symm.trans equality
      simp [heightTransport, firstMiddle, middleLast, firstLast]
  · by_cases middleLast :
        middleHeight % 2 = lastHeight % 2
    · have firstLast :
          firstHeight % 2 ≠ lastHeight % 2 := by
        intro equality
        apply firstMiddle
        exact equality.trans middleLast.symm
      simp [heightTransport, firstMiddle, middleLast, firstLast]
    · have firstLast :
          firstHeight % 2 = lastHeight % 2 := by
        omega
      simp [heightTransport, firstMiddle, middleLast, firstLast]

@[simp]
theorem heightTransport_inverse_left
    (sourceHeight targetHeight : Nat)
    (vector : State → ℝ) :
    heightTransport targetHeight sourceHeight
        (heightTransport sourceHeight targetHeight vector) =
      vector := by
  calc
    heightTransport targetHeight sourceHeight
        (heightTransport sourceHeight targetHeight vector) =
      heightTransport sourceHeight sourceHeight vector :=
        heightTransport_comp
          sourceHeight targetHeight sourceHeight vector
    _ = vector := heightTransport_refl sourceHeight vector

@[simp]
theorem heightTransport_inverse_right
    (sourceHeight targetHeight : Nat)
    (vector : State → ℝ) :
    heightTransport sourceHeight targetHeight
        (heightTransport targetHeight sourceHeight vector) =
      vector := by
  calc
    heightTransport sourceHeight targetHeight
        (heightTransport targetHeight sourceHeight vector) =
      heightTransport targetHeight targetHeight vector :=
        heightTransport_comp
          targetHeight sourceHeight targetHeight vector
    _ = vector := heightTransport_refl targetHeight vector

/-- Transport cannot turn a nonzero finite state vector into zero. -/
theorem heightTransport_ne_zero
    {sourceHeight targetHeight : Nat}
    {vector : State → ℝ}
    (vector_nonzero : vector ≠ fun _ => 0) :
    heightTransport sourceHeight targetHeight vector ≠
      fun _ => 0 := by
  intro transported_zero
  apply vector_nonzero
  calc
    vector =
      heightTransport targetHeight sourceHeight
        (heightTransport sourceHeight targetHeight vector) :=
          (heightTransport_inverse_left
            sourceHeight targetHeight vector).symm
    _ =
      heightTransport targetHeight sourceHeight
        (fun _ => 0) :=
          congrArg
            (heightTransport targetHeight sourceHeight)
            transported_zero
    _ = fun _ => 0 :=
      heightTransport_zero targetHeight sourceHeight

/-! ## Operator intertwining -/

/-- Forward zero-to-one intertwining expressed directly through the state swap. -/
theorem zeroOneOperatorIntertwining
    (operator : HeightTimeOperator)
    (time : ℝ) (vector : State → ℝ) :
    matrixAction (operatorMatrixAt operator 1 time)
        (swapVector vector) =
      swapVector
        (matrixAction
          (operatorMatrixAt operator 0 time) vector) := by
  cases operator with
  | transition =>
      simpa [operatorMatrixAt] using
        zeroOneTransitionConjugacy.intertwines vector
  | laplacian =>
      simpa [operatorMatrixAt] using
        zeroOneLaplacianConjugacy.intertwines vector
  | finiteSemigroup =>
      simpa [operatorMatrixAt] using
        (zeroOneFiniteSemigroupMatrixConjugacy time).intertwines
          vector
  | mathlibExponential =>
      simpa [operatorMatrixAt] using
        (zeroOneMathlibExponentialConjugacy time).intertwines
          vector

/-- Reverse one-to-zero intertwining follows from the involutivity of the same
state swap. -/
theorem oneZeroOperatorIntertwining
    (operator : HeightTimeOperator)
    (time : ℝ) (vector : State → ℝ) :
    matrixAction (operatorMatrixAt operator 0 time)
        (swapVector vector) =
      swapVector
        (matrixAction
          (operatorMatrixAt operator 1 time) vector) := by
  have forward :=
    zeroOneOperatorIntertwining
      operator time (swapVector vector)
  have swapped := congrArg swapVector forward
  simpa using swapped.symm

/-- Every retained operator is intertwined by canonical height transport. -/
theorem heightTransport_intertwines
    (operator : HeightTimeOperator)
    (time : ℝ)
    (sourceHeight targetHeight : Nat)
    (vector : State → ℝ) :
    matrixAction
        (operatorMatrixAt operator targetHeight time)
        (heightTransport sourceHeight targetHeight vector) =
      heightTransport sourceHeight targetHeight
        (matrixAction
          (operatorMatrixAt operator sourceHeight time)
          vector) := by
  by_cases sameParity :
      sourceHeight % 2 = targetHeight % 2
  · have matrixEquality :
        operatorMatrixAt operator sourceHeight time =
          operatorMatrixAt operator targetHeight time :=
      operatorMatrixAt_eq_of_mod_two_eq
        sameParity operator time
    have actionEquality :=
      congrArg
        (fun matrix : Matrix State State ℝ =>
          matrixAction matrix vector)
        matrixEquality
    simpa [heightTransport, sameParity] using
      actionEquality.symm
  · have sourceModLt : sourceHeight % 2 < 2 :=
      Nat.mod_lt _ (by norm_num)
    have targetModLt : targetHeight % 2 < 2 :=
      Nat.mod_lt _ (by norm_num)
    by_cases sourceEven : sourceHeight % 2 = 0
    · have targetOdd : targetHeight % 2 = 1 := by
        omega
      have sourceToZero :
          operatorMatrixAt operator sourceHeight time =
            operatorMatrixAt operator 0 time :=
        operatorMatrixAt_eq_of_mod_two_eq
          (by simpa using sourceEven) operator time
      have targetToOne :
          operatorMatrixAt operator targetHeight time =
            operatorMatrixAt operator 1 time :=
        operatorMatrixAt_eq_of_mod_two_eq
          (by simpa using targetOdd) operator time
      rw [sourceToZero, targetToOne]
      simpa [heightTransport, sameParity] using
        zeroOneOperatorIntertwining operator time vector
    · have sourceOdd : sourceHeight % 2 = 1 := by
        omega
      have targetEven : targetHeight % 2 = 0 := by
        omega
      have sourceToOne :
          operatorMatrixAt operator sourceHeight time =
            operatorMatrixAt operator 1 time :=
        operatorMatrixAt_eq_of_mod_two_eq
          (by simpa using sourceOdd) operator time
      have targetToZero :
          operatorMatrixAt operator targetHeight time =
            operatorMatrixAt operator 0 time :=
        operatorMatrixAt_eq_of_mod_two_eq
          (by simpa using targetEven) operator time
      rw [sourceToOne, targetToZero]
      simpa [heightTransport, sameParity] using
        oneZeroOperatorIntertwining operator time vector

/-- A complete finite mode remains a nonzero eigenvector with the same spectral
value after transport to any other height. -/
theorem heightTransport_mode_eigen
    (operator : HeightTimeOperator)
    (time : ℝ)
    (sourceHeight targetHeight : Nat)
    (mode : Fin 3) :
    heightTransport sourceHeight targetHeight
        (spectralModeVector sourceHeight mode) ≠
          fun _ => 0 ∧
      matrixAction
          (operatorMatrixAt operator targetHeight time)
          (heightTransport sourceHeight targetHeight
            (spectralModeVector sourceHeight mode)) =
        fun state =>
          operatorSpectralValueAt operator time
              (spectralPointOfMode mode) *
            heightTransport sourceHeight targetHeight
              (spectralModeVector sourceHeight mode) state := by
  constructor
  · exact heightTransport_ne_zero
      (spectralModeVector_ne_zero sourceHeight mode)
  · calc
      matrixAction
          (operatorMatrixAt operator targetHeight time)
          (heightTransport sourceHeight targetHeight
            (spectralModeVector sourceHeight mode)) =
        heightTransport sourceHeight targetHeight
          (matrixAction
            (operatorMatrixAt operator sourceHeight time)
            (spectralModeVector sourceHeight mode)) :=
              heightTransport_intertwines
                operator time sourceHeight targetHeight
                (spectralModeVector sourceHeight mode)
      _ =
        heightTransport sourceHeight targetHeight
          (fun state =>
            operatorSpectralValueAt operator time
                (spectralPointOfMode mode) *
              spectralModeVector sourceHeight mode state) := by
              exact congrArg
                (heightTransport sourceHeight targetHeight)
                (operatorMatrixAt_spectralMode
                  operator sourceHeight time mode)
      _ =
        fun state =>
          operatorSpectralValueAt operator time
              (spectralPointOfMode mode) *
            heightTransport sourceHeight targetHeight
              (spectralModeVector sourceHeight mode) state :=
              heightTransport_smul
                sourceHeight targetHeight
                (operatorSpectralValueAt operator time
                  (spectralPointOfMode mode))
                (spectralModeVector sourceHeight mode)

/-! ## Groupoid package -/

/-- A coherent height-transport groupoid acting on the declared finite state
space and intertwining every retained operator. -/
structure HeightTransportGroupoid where
  transport :
    Nat → Nat → (State → ℝ) → State → ℝ
  identity :
    ∀ height vector,
      transport height height vector = vector
  composition :
    ∀ firstHeight middleHeight lastHeight vector,
      transport middleHeight lastHeight
          (transport firstHeight middleHeight vector) =
        transport firstHeight lastHeight vector
  inverseLeft :
    ∀ sourceHeight targetHeight vector,
      transport targetHeight sourceHeight
          (transport sourceHeight targetHeight vector) =
        vector
  inverseRight :
    ∀ sourceHeight targetHeight vector,
      transport sourceHeight targetHeight
          (transport targetHeight sourceHeight vector) =
        vector
  scalarCompatibility :
    ∀ sourceHeight targetHeight scalar vector,
      transport sourceHeight targetHeight
          (fun state => scalar * vector state) =
        fun state =>
          scalar *
            transport sourceHeight targetHeight vector state
  operatorIntertwining :
    ∀ operator time sourceHeight targetHeight vector,
      matrixAction
          (operatorMatrixAt operator targetHeight time)
          (transport sourceHeight targetHeight vector) =
        transport sourceHeight targetHeight
          (matrixAction
            (operatorMatrixAt operator sourceHeight time)
            vector)

/-- Canonical coherent groupoid generated by parity identity and the state
swap. -/
def canonicalHeightTransportGroupoid :
    HeightTransportGroupoid where
  transport := heightTransport
  identity := heightTransport_refl
  composition := heightTransport_comp
  inverseLeft := heightTransport_inverse_left
  inverseRight := heightTransport_inverse_right
  scalarCompatibility := heightTransport_smul
  operatorIntertwining := heightTransport_intertwines

/-! ## Bounded height paths -/

/-- Free bounded path syntax on the finite height inventory. Every elementary
height change is interpreted by the canonical groupoid transport. -/
inductive BoundedHeightPath (horizon : Nat) :
    Fin (horizon + 1) → Fin (horizon + 1) → Type
  | refl (height : Fin (horizon + 1)) :
      BoundedHeightPath horizon height height
  | compose
      {first middle last : Fin (horizon + 1)}
      (left : BoundedHeightPath horizon first middle)
      (right : BoundedHeightPath horizon middle last) :
      BoundedHeightPath horizon first last

namespace BoundedHeightPath

/-- Vector transport along a bounded path. -/
def transport
    {horizon : Nat}
    {first last : Fin (horizon + 1)} :
    BoundedHeightPath horizon first last →
      (State → ℝ) → State → ℝ
  | .refl _ => fun vector => vector
  | .compose left right =>
      fun vector =>
        transport right (transport left vector)

@[simp]
theorem transport_refl
    {horizon : Nat}
    (height : Fin (horizon + 1))
    (vector : State → ℝ) :
    transport (.refl height) vector = vector :=
  rfl

@[simp]
theorem transport_compose
    {horizon : Nat}
    {first middle last : Fin (horizon + 1)}
    (left : BoundedHeightPath horizon first middle)
    (right : BoundedHeightPath horizon middle last)
    (vector : State → ℝ) :
    transport (.compose left right) vector =
      transport right (transport left vector) :=
  rfl

/-- Every path transport contracts to the canonical endpoint transport. -/
theorem transport_eq_heightTransport
    {horizon : Nat}
    {first last : Fin (horizon + 1)}
    (path : BoundedHeightPath horizon first last)
    (vector : State → ℝ) :
    transport path vector =
      heightTransport first.val last.val vector := by
  induction path generalizing vector with
  | refl height =>
      exact heightTransport_refl height.val vector
  | compose left right leftIH rightIH =>
      simp only [transport_compose]
      rw [leftIH, rightIH]
      exact heightTransport_comp
        _ _ _ vector

/-- Reverse a bounded path. -/
def reverse
    {horizon : Nat}
    {first last : Fin (horizon + 1)} :
    BoundedHeightPath horizon first last →
      BoundedHeightPath horizon last first
  | .refl height => .refl height
  | .compose left right =>
      .compose (reverse right) (reverse left)

/-- Path reversal gives the inverse transported vector. -/
@[simp]
theorem reverse_transport_inverse
    {horizon : Nat}
    {first last : Fin (horizon + 1)}
    (path : BoundedHeightPath horizon first last)
    (vector : State → ℝ) :
    transport (reverse path) (transport path vector) =
      vector := by
  calc
    transport (reverse path) (transport path vector) =
      heightTransport last.val first.val
        (heightTransport first.val last.val vector) := by
          rw [transport_eq_heightTransport,
            transport_eq_heightTransport]
    _ = vector :=
      heightTransport_inverse_left
        first.val last.val vector

/-- Path transport is associative under the free path composition syntax. -/
theorem transport_associative
    {horizon : Nat}
    {first second third fourth : Fin (horizon + 1)}
    (firstPath : BoundedHeightPath horizon first second)
    (secondPath : BoundedHeightPath horizon second third)
    (thirdPath : BoundedHeightPath horizon third fourth)
    (vector : State → ℝ) :
    transport
        (.compose (.compose firstPath secondPath) thirdPath)
        vector =
      transport
        (.compose firstPath (.compose secondPath thirdPath))
        vector :=
  rfl

/-- A complete finite spectral mode transported along any bounded height path
remains a nonzero eigenvector with unchanged spectral value. -/
theorem transport_mode_eigen
    {horizon : Nat}
    {first last : Fin (horizon + 1)}
    (path : BoundedHeightPath horizon first last)
    (operator : HeightTimeOperator)
    (time : ℝ) (mode : Fin 3) :
    transport path (spectralModeVector first.val mode) ≠
        fun _ => 0 ∧
      matrixAction
          (operatorMatrixAt operator last.val time)
          (transport path
            (spectralModeVector first.val mode)) =
        fun state =>
          operatorSpectralValueAt operator time
              (spectralPointOfMode mode) *
            transport path
              (spectralModeVector first.val mode) state := by
  rw [transport_eq_heightTransport]
  exact heightTransport_mode_eigen
    operator time first.val last.val mode

end BoundedHeightPath

/-! ## Tensor-path attachment and provenance -/

/-- Relation membership is height-independent inside the declared alternating
profile inventory. This is support invariance only, not an operator transport
supplier. -/
theorem layerRelationAt_height_iff
    (firstHeight lastHeight : Nat)
    (layer : ObservationLayer)
    (source target : State) :
    layerRelationAt firstHeight layer source target ↔
      layerRelationAt lastHeight layer source target := by
  cases layer with
  | certified =>
      simp only [layerRelationAt_certified_iff]
  | candidate =>
      constructor <;> intro _
      · exact layerRelationAt_candidate
          lastHeight source target
      · exact layerRelationAt_candidate
          firstHeight source target
  | admissible =>
      constructor <;> intro _
      · exact layerRelationAt_admissible
          lastHeight source target
      · exact layerRelationAt_admissible
          firstHeight source target

/-- Immutable source identity for the bounded time-composition interface
consumed by this module. -/
def heightTimeCompositionSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.PrimePowerHeightTimeCompositionTensor"
  locator :=
    "operatorMatrixAt_eq_of_mod_two_eq; zeroOneOperatorMatrixConjugacy; canonicalHeightTimeCompositionTensorCertificate"
  repository := some "grwtsk/math"
  commit := some "12f4554b7b833a3b252374d9aba4930606486d3a"
  path := some
    "GRWTSK/Algebra/KTheory/PrimePowerHeightTimeCompositionTensor.lean"
  blob := some "a678732fbff15b22d01a7baa4af4643f858fca5e"

/-- Certificate attached to one bounded height-changing tensor path. -/
structure HeightChangingTensorPathCertificate
    (heightHorizon timeHorizon : Nat)
    {first last : Fin (heightHorizon + 1)}
    (path : BoundedHeightPath heightHorizon first last)
    (time : Fin (timeHorizon + 1))
    (layer : ObservationLayer)
    (operator : HeightTimeOperator)
    (mode : Fin 3) where
  endpointTransport :
    ∀ vector,
      BoundedHeightPath.transport path vector =
        heightTransport first.val last.val vector
  inverseTransport :
    ∀ vector,
      BoundedHeightPath.transport
          (BoundedHeightPath.reverse path)
          (BoundedHeightPath.transport path vector) =
        vector
  modeNonzero :
    BoundedHeightPath.transport path
        (spectralModeVector first.val mode) ≠
      fun _ => 0
  modeEquation :
    matrixAction
        (operatorMatrixAt operator last.val
          (sampledTime time))
        (BoundedHeightPath.transport path
          (spectralModeVector first.val mode)) =
      fun state =>
        operatorSpectralValueAt operator
            (sampledTime time)
            (spectralPointOfMode mode) *
          BoundedHeightPath.transport path
            (spectralModeVector first.val mode) state
  supportInvariant :
    ∀ source target,
      layerRelationAt first.val layer source target ↔
        layerRelationAt last.val layer source target
  proofProvenance : List SourceIdentity
  analogyProvenance : List SourceIdentity
  unresolvedSuppliers : List SourceIdentity

/-- Canonical certificate for every bounded height-changing tensor path. -/
def heightChangingTensorPathCertificate
    (heightHorizon timeHorizon : Nat)
    {first last : Fin (heightHorizon + 1)}
    (path : BoundedHeightPath heightHorizon first last)
    (time : Fin (timeHorizon + 1))
    (layer : ObservationLayer)
    (operator : HeightTimeOperator)
    (mode : Fin 3) :
    HeightChangingTensorPathCertificate
      heightHorizon timeHorizon path time layer operator mode where
  endpointTransport := by
    intro vector
    exact BoundedHeightPath.transport_eq_heightTransport
      path vector
  inverseTransport := by
    intro vector
    exact BoundedHeightPath.reverse_transport_inverse
      path vector
  modeNonzero :=
    (BoundedHeightPath.transport_mode_eigen
      path operator (sampledTime time) mode).1
  modeEquation :=
    (BoundedHeightPath.transport_mode_eigen
      path operator (sampledTime time) mode).2
  supportInvariant := by
    intro source target
    exact layerRelationAt_height_iff
      first.val last.val layer source target
  proofProvenance := [
    heightTimeCompositionSource,
    finiteSemigroupSource,
    heightTensorSource,
    profileScheduleSource,
    certifiedSearchSource,
    mathlibMatrixExponentialSource
  ]
  analogyProvenance := [
    linearChainSpectrumAnalogy,
    hilbertPolyaAnalogy
  ]
  unresolvedSuppliers := [
    analyticHeatSemigroupSupplier,
    chowlaPositiveWeightSupplier
  ]

/-! ## Coherence certificate and hostile control -/

/-- Complete bounded coherence package for canonical height transport. -/
structure HeightTransportCoherenceCertificate : Prop where
  identity :
    ∀ height vector,
      heightTransport height height vector = vector
  composition :
    ∀ firstHeight middleHeight lastHeight vector,
      heightTransport middleHeight lastHeight
          (heightTransport firstHeight middleHeight vector) =
        heightTransport firstHeight lastHeight vector
  inverse :
    ∀ sourceHeight targetHeight vector,
      heightTransport targetHeight sourceHeight
          (heightTransport sourceHeight targetHeight vector) =
        vector
  operatorIntertwining :
    ∀ operator time sourceHeight targetHeight vector,
      matrixAction
          (operatorMatrixAt operator targetHeight time)
          (heightTransport sourceHeight targetHeight vector) =
        heightTransport sourceHeight targetHeight
          (matrixAction
            (operatorMatrixAt operator sourceHeight time)
            vector)
  modeTransport :
    ∀ operator time sourceHeight targetHeight mode,
      heightTransport sourceHeight targetHeight
          (spectralModeVector sourceHeight mode) ≠
            fun _ => 0 ∧
        matrixAction
            (operatorMatrixAt operator targetHeight time)
            (heightTransport sourceHeight targetHeight
              (spectralModeVector sourceHeight mode)) =
          fun state =>
            operatorSpectralValueAt operator time
                (spectralPointOfMode mode) *
              heightTransport sourceHeight targetHeight
                (spectralModeVector sourceHeight mode) state
  commonSupportInsufficient :
    (∀ source target,
      layerRelationAt 0 .certified source target ↔
        layerRelationAt 1 .certified source target) ∧
      operatorMatrixAt .mathlibExponential 0 1 ≠
        operatorMatrixAt .mathlibExponential 1 1
  signedGeneratorControl :
    laplacianMatrixAt 0 (1 : State) (2 : State) < 0

/-- The canonical parity/swap transport satisfies the complete coherence
certificate while preserving the support-versus-operator negative control. -/
theorem canonicalHeightTransportCoherenceCertificate :
    HeightTransportCoherenceCertificate where
  identity := heightTransport_refl
  composition := heightTransport_comp
  inverse := heightTransport_inverse_left
  operatorIntertwining := heightTransport_intertwines
  modeTransport := heightTransport_mode_eigen
  commonSupportInsufficient :=
    commonCertifiedSupport_not_operatorEquality
  signedGeneratorControl :=
    laplacianMatrixAt_has_negative_entry

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
