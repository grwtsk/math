/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
import GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge
import Mathlib.Topology.Instances.Real

set_option autoImplicit false

noncomputable section

/-!
# Chowla-labeled finite sofic walks

This module introduces a typed arithmetic-observation layer for finite labeled
walks. It separates:

* individual Möbius, Dirichlet-character, residue, and correlation labels;
* an exact finite product identity along one sofic walk;
* a function-field Chowla cancellation supplier with the hypotheses retained
  from Sawin--Shusterman;
* the distinct integer Chowla target.

The concrete modulus-four adapter reuses the repository's exact Farey,
Gaussian/modular, additive-projector, Dirichlet-character, and Möbius
identities. It does not transfer the Sawin--Shusterman theorem from `F_q[T]`
to the integers, and a finite walk identity is not an asymptotic cancellation
theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v w x y z

namespace GRWTSK.NumberTheory.Farey.ChowlaSoficObservations

open scoped BigOperators
open Filter Topology
open GRWTSK.GraphSandwichDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Arithmetic domains are explicit and disjoint. -/
inductive ArithmeticDomain where
  | integers
  | functionField
  deriving DecidableEq, Repr

/-- Kinds of arithmetic observations allowed on a finite sofic transition. -/
inductive ArithmeticObservationKind where
  | mobiusValue
  | dirichletCharacterValue
  | residueValue
  | finiteCorrelation
  deriving DecidableEq, Repr

/-- Typed payload of an arithmetic transition label. The object, character,
residue, character-value, and correlation-value types remain independent. -/
inductive ArithmeticPayload
    (Object : Type u) (Character : Type v) (Residue : Type w)
    (CharacterValue : Type x) (CorrelationValue : Type y) where
  | mobius (object : Object) (value : ℤ)
  | dirichletCharacter
      (character : Character) (object : Object) (value : CharacterValue)
  | residue (object : Object) (value : Residue)
  | correlation (objects : List Object) (value : CorrelationValue)

/-- One provenance-bearing arithmetic label. -/
structure ArithmeticLabel
    (Object : Type u) (Character : Type v) (Residue : Type w)
    (CharacterValue : Type x) (CorrelationValue : Type y) where
  domain : ArithmeticDomain
  kind : ArithmeticObservationKind
  payload : ArithmeticPayload Object Character Residue CharacterValue CorrelationValue
  provenance : List SourceIdentity
  assumptions : List String

/-- Product obtained by reading integer values from the labels of a finite word. -/
def wordProduct {Label : Type u}
    (readValue : Label → ℤ) (word : List Label) : ℤ :=
  (word.map readValue).prod

/-- A typed arithmetic word together with its exact finite-state path. -/
structure ArithmeticLabeledWalk
    {Vertex : Type u} {Object : Type v} {Character : Type w}
    {Residue : Type x} {CharacterValue : Type y}
    {CorrelationValue : Type z}
    (edge : LabeledEdgeRelation Vertex
      (ArithmeticLabel Object Character Residue CharacterValue CorrelationValue)) where
  start : Vertex
  finish : Vertex
  word : List
    (ArithmeticLabel Object Character Residue CharacterValue CorrelationValue)
  path : WordPath edge start word finish

/-- Abstract arithmetic needed to state the function-field finite product
without silently choosing an integer implementation. -/
structure FunctionFieldArithmetic (Polynomial : Type u) where
  add : Polynomial → Polynomial → Polynomial
  norm : Polynomial → ℕ
  monic : Polynomial → Prop
  mobius : Polynomial → ℤ

/-- Sawin--Shusterman hypotheses retained for the function-field Chowla
correlation theorem. `fieldSize = characteristic ^ power`, the characteristic
is an odd prime, the number of shifts is positive, the shifts are distinct,
and the explicit field-size lower bound is retained. -/
structure FunctionFieldChowlaContext
    (Polynomial : Type u) (k : Nat) where
  characteristic : ℕ
  fieldSize : ℕ
  power : ℕ
  characteristicPrime : Nat.Prime characteristic
  characteristicOdd : Odd characteristic
  fieldSize_eq : fieldSize = characteristic ^ power
  k_positive : 0 < k
  fieldSize_bound :
    (fieldSize : ℝ) >
      (characteristic : ℝ) ^ 2 * (k : ℝ) ^ 2 * Real.exp 2
  shifts : Fin k → Polynomial
  shiftsInjective : Function.Injective shifts

/-- The finite `k`-point Möbius product at one function-field input. -/
def functionFieldChowlaProduct
    {Polynomial : Type u} {k : Nat}
    (arithmetic : FunctionFieldArithmetic Polynomial)
    (context : FunctionFieldChowlaContext Polynomial k)
    (input : Polynomial) : ℤ :=
  ∏ index : Fin k,
    arithmetic.mobius (arithmetic.add input (context.shifts index))

/-- Exact finite walk identity. This records equality of one finite word
product with one finite Chowla product; it contains no limit or cancellation
claim. -/
structure FiniteChowlaWalkIdentity
    {Vertex : Type u} {Polynomial : Type v} {Character : Type w}
    {Residue : Type x} {CharacterValue : Type y}
    {CorrelationValue : Type z}
    (edge : LabeledEdgeRelation Vertex
      (ArithmeticLabel Polynomial Character Residue CharacterValue CorrelationValue))
    (arithmetic : FunctionFieldArithmetic Polynomial)
    {k : Nat}
    (context : FunctionFieldChowlaContext Polynomial k) where
  walk : ArithmeticLabeledWalk edge
  input : Polynomial
  inputMonic : arithmetic.monic input
  readValue :
    ArithmeticLabel Polynomial Character Residue CharacterValue CorrelationValue → ℤ
  labels_functionField :
    ∀ label ∈ walk.word, label.domain = .functionField
  word_product_eq :
    wordProduct readValue walk.word =
      functionFieldChowlaProduct arithmetic context input
  provenance : List SourceIdentity

/-- Normalized finite function-field correlation over one finite sample. -/
def normalizedFunctionFieldCorrelation
    {Polynomial : Type u} [DecidableEq Polynomial] {k : Nat}
    (arithmetic : FunctionFieldArithmetic Polynomial)
    (context : FunctionFieldChowlaContext Polynomial k)
    (sample : Finset Polynomial) (scale : ℕ) : ℝ := by
  let total : ℤ :=
    ∑ input in sample, functionFieldChowlaProduct arithmetic context input
  exact (total : ℝ) / (scale : ℝ)

/-- A separate supplier for Sawin--Shusterman-type cancellation. The sample is
required to be exactly the monic norm ball at each power of `q`, and the
normalized correlation must tend to zero. No supplier is constructed here. -/
structure FunctionFieldChowlaCancellationSupplier
    (Polynomial : Type u) [DecidableEq Polynomial]
    (arithmetic : FunctionFieldArithmetic Polynomial)
    {k : Nat}
    (context : FunctionFieldChowlaContext Polynomial k) where
  sample : ℕ → Finset Polynomial
  sample_spec : ∀ cutoff input,
    input ∈ sample cutoff ↔
      arithmetic.monic input ∧
        arithmetic.norm input ≤ context.fieldSize ^ cutoff
  tendsToZero :
    Tendsto
      (fun cutoff =>
        normalizedFunctionFieldCorrelation arithmetic context
          (sample cutoff) (context.fieldSize ^ cutoff))
      atTop (nhds 0)
  provenance : List SourceIdentity

/-- Integer Chowla has its own shifts and arithmetic. It is deliberately not a
specialization of the function-field supplier. -/
structure IntegerChowlaContext (k : Nat) where
  k_positive : 0 < k
  shifts : Fin k → ℤ
  shiftsInjective : Function.Injective shifts
  mobius : ℤ → ℤ

/-- Finite integer Chowla product, kept separate from `F_q[T]`. -/
def integerChowlaProduct {k : Nat}
    (context : IntegerChowlaContext k) (input : ℤ) : ℤ :=
  ∏ index : Fin k, context.mobius (input + context.shifts index)

/-- The two arithmetic-domain tags cannot be identified. This is the formal
negative control against silently transferring a function-field theorem. -/
theorem functionField_ne_integers :
    ArithmeticDomain.functionField ≠ ArithmeticDomain.integers := by
  decide

private def sawinShustermanSource : SourceIdentity where
  kind := .arXiv
  identifier := "arXiv:1808.04001v2"
  locator := "On the Chowla and twin primes conjectures over F_q[T]"
  repository := none
  commit := none
  path := none
  blob := none

private def gaussianBridgeSource : SourceIdentity where
  kind := .leanDeclaration
  identifier := "GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge"
  locator := "Gaussian/Farey/modular/Dirichlet finite identities"
  repository := some "grwtsk/math"
  commit := some "a92a5e28c433ace37ea087f25baba5c65d783819"
  path := some "GRWTSK/NumberTheory/Farey/GaussianModularDirichletBridge.lean"
  blob := some "fea5844aff6263107ff5e81cce5934406a5e1dba"

private def moebiusObstructionSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.DirichletNonunitResidueObstruction"
  locator := "active Möbius endpoint product and nonunit residue obstruction"
  repository := some "grwtsk/math"
  commit := some "a92a5e28c433ace37ea087f25baba5c65d783819"
  path := some "GRWTSK/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean"
  blob := some "d614e220a6e6f3e050055d416fedd05da87c0955"

/-- Exact integer Möbius observation from Mathlib's arithmetic function. -/
def naturalMoebiusLabel (n : ℕ) :
    ArithmeticLabel ℕ PUnit PUnit PUnit PUnit where
  domain := .integers
  kind := .mobiusValue
  payload := .mobius n (ArithmeticFunction.moebius n)
  provenance := [moebiusObstructionSource]
  assumptions := []

/-- Exact ordinary Dirichlet-character observation at the active nonunit
residue `2 mod 4`. -/
def nonunitDirichletLabel (χ : DirichletCharacter ℂ 4) :
    ArithmeticLabel (ZMod 4) (DirichletCharacter ℂ 4) PUnit ℂ PUnit where
  domain := .integers
  kind := .dirichletCharacterValue
  payload := .dirichletCharacter χ (2 : ZMod 4) (χ (2 : ZMod 4))
  provenance := [gaussianBridgeSource, moebiusObstructionSource]
  assumptions := ["ordinary multiplicative Dirichlet character modulo four"]

/-- The active Farey coordinate as a typed residue observation. -/
def nonunitResidueLabel :
    ArithmeticLabel Cell PUnit (ZMod 4) PUnit PUnit where
  domain := .integers
  kind := .residueValue
  payload := .residue nonunitEye
    ((nonunitEye.rightNum : ℕ) : ZMod 4)
  provenance := [gaussianBridgeSource]
  assumptions := ["the concrete Farey cell 1/2 < 2/3"]

/-- The exact active two-point Möbius endpoint product as a finite correlation
label. -/
def nonunitEndpointCorrelationLabel :
    ArithmeticLabel ℕ PUnit PUnit PUnit ℝ where
  domain := .integers
  kind := .finiteCorrelation
  payload := .correlation [2, 6]
    (GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensSquarefreeMidpointEndpointProduct
      2 1)
  provenance := [moebiusObstructionSource]
  assumptions := ["the concrete active endpoint-six, prefix-four witness"]

/-- The Dirichlet-character label at the nonunit residue is exactly zero. -/
theorem nonunitDirichletLabel_payload_zero
    (χ : DirichletCharacter ℂ 4) :
    (nonunitDirichletLabel χ).payload =
      ArithmeticPayload.dirichletCharacter χ (2 : ZMod 4) (0 : ℂ) := by
  simp [nonunitDirichletLabel,
    GRWTSK.NumberTheory.Farey.nonunitEye_right_dirichlet_vanishes]

/-- The concrete Farey residue label is exactly `2 mod 4`. -/
theorem nonunitResidueLabel_payload_two :
    nonunitResidueLabel.payload =
      ArithmeticPayload.residue nonunitEye (2 : ZMod 4) := by
  simp [nonunitResidueLabel, nonunitEye]

/-- The concrete finite endpoint correlation is exactly `-1`. -/
theorem nonunitEndpointCorrelationLabel_payload_neg_one :
    nonunitEndpointCorrelationLabel.payload =
      ArithmeticPayload.correlation [2, 6] (-1 : ℝ) := by
  simp [nonunitEndpointCorrelationLabel,
    GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.actualNonunitEndpointProduct_eq_neg_one]

/-- Joint exact boundary at the same active Farey coordinate: multiplicative
characters vanish, the additive selector detects the residue, and the finite
Möbius endpoint product remains nonzero. This is a finite identity, not a
Chowla cancellation theorem. -/
theorem nonunit_farey_arithmetic_observation_boundary
    (χ : DirichletCharacter ℂ 4) :
    χ ((nonunitEye.rightNum : ℕ) : ZMod 4) = 0 ∧
      GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector.characterAverage 4
        (((nonunitEye.rightNum : ℕ) : ZMod 4) - 2) = 1 ∧
      GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensSquarefreeMidpointEndpointProduct
        2 1 = -1 := by
  exact ⟨nonunitEye_right_dirichlet_vanishes χ,
    nonunitEye_right_additive_selector,
    GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.actualNonunitEndpointProduct_eq_neg_one⟩

/-- A missing function-field cancellation estimate is an explicit searchable
obligation rather than a consequence of a finite walk identity. -/
def MissingFunctionFieldChowlaSupplier
    (Polynomial : Type u) [DecidableEq Polynomial]
    (arithmetic : FunctionFieldArithmetic Polynomial)
    {k : Nat}
    (context : FunctionFieldChowlaContext Polynomial k) : Prop :=
  IsEmpty
    (FunctionFieldChowlaCancellationSupplier Polynomial arithmetic context)

end GRWTSK.NumberTheory.Farey.ChowlaSoficObservations
