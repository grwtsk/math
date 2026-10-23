/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines
import GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent

/-!
# Four-factor CM algebraicity boundary

The local repository proves the finite/all-conjugate (2,2) type count and
also contains a generic arbitrary-Galois scalar-descent theorem. Neither fact
is algebraicity.

This file makes the remaining stages explicit:

  balanced four-factor type
    -> all-conjugate (2,2) certificate
    -> actual algebraic-number tensor stable under scalar conjugation
    -> local rational descent via traceDescent
    -> external algebraic-cycle realization supplier.

The final supplier corresponds to the manuscript-level switch/algebraicity
step. No constructor for that supplier is proved here.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorAlgebraicity

open scoped TensorProduct
open CMFourBalance
open CMEmbeddingLines
open GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent

noncomputable section

/-- Pure all-conjugate Hodge-type certificate for the balanced four-factor
pattern. This contains no rationality and no algebraicity assertion. -/
structure AllConjugatesType22
    (G : Type*) (conj : G → G)
    (v₁ v₂ v₃ v₄ : OddSignRow G conj) where
  p_two :
    ∀ g,
      holomorphicIndex (v₁.value g) +
        holomorphicIndex (v₂.value g) +
        holomorphicIndex (v₃.value (conj g)) +
        holomorphicIndex (v₄.value (conj g)) = 2
  q_two :
    ∀ g,
      (1 - holomorphicIndex (v₁.value g)) +
        (1 - holomorphicIndex (v₂.value g)) +
        (1 - holomorphicIndex (v₃.value (conj g))) +
        (1 - holomorphicIndex (v₄.value (conj g))) = 2

/-- Four-label balance locally supplies the all-conjugate (2,2) numerical
certificate and nothing stronger. -/
def allConjugatesType22_of_fourBalance
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (hbal : FourBalance v₁ v₂ v₃ v₄) :
    AllConjugatesType22 G conj v₁ v₂ v₃ v₄ where
  p_two := fourBalance_holomorphicCount v₁ v₂ v₃ v₄ hbal
  q_two := by
    intro g
    have hp := fourBalance_holomorphicCount v₁ v₂ v₃ v₄ hbal g
    linarith

/-- Actual tensor-level data needed before generic scalar descent can be used.

P is the complex Hodge subspace in which every scalar conjugate of tensor
must lie. The type (2,2) certificate is stored independently, so conjugate
stability cannot be silently inferred from a numerical type count. -/
structure FourFactorTensorDescentData
    (G : Type*) (conj : G → G)
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (V : Type*) [AddCommGroup V] [Module ℚ V] where
  type22 : AllConjugatesType22 G conj v₁ v₂ v₃ v₄
  P : Submodule ℂ (ℂ ⊗[ℚ] V)
  tensor : AlgebraicNumbers ⊗[ℚ] V
  all_scalar_conjugates_mem :
    ∀ σ : AlgebraicNumbers ≃ₐ[ℚ] AlgebraicNumbers,
      coefficientInclusion (scalarConjugate σ tensor) ∈ P

/-- The generic trace-descent theorem converts the explicit conjugate-stability
hypothesis into rational descent. This is a local theorem and still does not
produce an algebraic cycle. -/
theorem FourFactorTensorDescentData.rational_descent
    {G : Type*} {conj : G → G}
    {v₁ v₂ v₃ v₄ : OddSignRow G conj}
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (D : FourFactorTensorDescentData G conj v₁ v₂ v₃ v₄ V) :
    D.tensor ∈ (rationalPart D.P).baseChange AlgebraicNumbers :=
  traceDescent D.P D.tensor D.all_scalar_conjugates_mem

/-- Rational four-factor Hodge witness after applying the local scalar-descent
theorem. It retains the exact tensor and subspace rather than replacing them
by an opaque proposition. -/
structure RationalFourFactorHodgeWitness
    (G : Type*) (conj : G → G)
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (V : Type*) [AddCommGroup V] [Module ℚ V] where
  data : FourFactorTensorDescentData G conj v₁ v₂ v₃ v₄ V
  descended :
    data.tensor ∈ (rationalPart data.P).baseChange AlgebraicNumbers

/-- Local constructor of the rational witness from exact conjugate-stable
tensor data. -/
def FourFactorTensorDescentData.toRationalWitness
    {G : Type*} {conj : G → G}
    {v₁ v₂ v₃ v₄ : OddSignRow G conj}
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (D : FourFactorTensorDescentData G conj v₁ v₂ v₃ v₄ V) :
    RationalFourFactorHodgeWitness G conj v₁ v₂ v₃ v₄ V where
  data := D
  descended := D.rational_descent

/-- Opaque algebraic-cycle output. The repository currently has no cycle-class
API at the required scope, so the geometric carrier is intentionally abstract.

Crucially, this is downstream of a rational Hodge witness; a (2,2) count
alone cannot populate it. -/
structure AlgebraicCycleWitness
    (G : Type*) (conj : G → G)
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (V : Type*) [AddCommGroup V] [Module ℚ V]
    (R : RationalFourFactorHodgeWitness G conj v₁ v₂ v₃ v₄ V) where
  cycleCarrier : Type*
  cycle : cycleCarrier
  realizesDescendedTensor : Prop
  realizesDescendedTensor_proof : realizesDescendedTensor

/-- Exact remaining four-factor algebraicity theorem interface.

An implementation is expected to encode the manuscript switch/correspondence
argument or a separately admitted CM rational-Hodge theorem. It is not
constructed locally. -/
structure FourFactorAlgebraicitySupplier where
  realize :
    ∀ {G : Type*} {conj : G → G}
      {v₁ v₂ v₃ v₄ : OddSignRow G conj}
      {V : Type*} [AddCommGroup V] [Module ℚ V]
      (R : RationalFourFactorHodgeWitness G conj v₁ v₂ v₃ v₄ V),
      AlgebraicCycleWitness G conj v₁ v₂ v₃ v₄ V R

/-- Conditional final step: once the independent algebraicity supplier is
admitted, a rational four-factor Hodge witness has an algebraic-cycle witness. -/
def realizeAlgebraicCycle
    (S : FourFactorAlgebraicitySupplier)
    {G : Type*} {conj : G → G}
    {v₁ v₂ v₃ v₄ : OddSignRow G conj}
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (R : RationalFourFactorHodgeWitness G conj v₁ v₂ v₃ v₄ V) :
    AlgebraicCycleWitness G conj v₁ v₂ v₃ v₄ V R :=
  S.realize R

/-- The complete conditional composition from exact tensor-level conjugate
stability through local rational descent to the external algebraicity supplier. -/
def realizeAlgebraicCycle_of_descentData
    (S : FourFactorAlgebraicitySupplier)
    {G : Type*} {conj : G → G}
    {v₁ v₂ v₃ v₄ : OddSignRow G conj}
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (D : FourFactorTensorDescentData G conj v₁ v₂ v₃ v₄ V) :
    AlgebraicCycleWitness G conj v₁ v₂ v₃ v₄ V D.toRationalWitness :=
  realizeAlgebraicCycle S D.toRationalWitness

end

end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorAlgebraicity
