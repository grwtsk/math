-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvolutiveConvolutionCore.Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.InvolutiveConvolutionCore.Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879","mathematical_subject":"Logic.Foundations","original_sha256":"62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/FiniteDynamics/InvolutiveConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.FiniteDynamics.CycleConvolution

/-!
# Certified involutive convolution operators

The certificate below keeps cycle geometry, kernel data, the linear operator,
its convolution equation, and its involution equation separate.  A conjugated
network `A⁻¹ ∘ C ∘ A` is proved involutive from a linear equivalence `A` and an
involutive core `C`; no layer-order or commutativity assumption is hidden.

Nonlinear activation, quantization, thresholding, and learned implementations
are intentionally outside this certified core.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvolutiveConvolutionCore.Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879

namespace FinitePermutationDynamics

universe u

variable (X : Type u) [Fintype X] [DecidableEq X]

/-- A cycle convolution whose linear operator squares to the identity. -/
structure InvolutiveConvolutionCore where
  cycle : DirectedCycleQuantum X
  kernel : CycleKernel cycle.period ℝ
  operator : (X → ℝ) →ₗ[ℝ] (X → ℝ)
  convolution_spec :
    ∀ f, operator f = cycleConvolution cycle kernel f
  involutive : operator.comp operator = LinearMap.id

/-- Optional metric data for a self-adjoint isometric involutive core. -/
structure MetricInvolutiveConvolutionCore
    extends InvolutiveConvolutionCore X where
  inner : (X → ℝ) → (X → ℝ) → ℝ
  selfAdjoint :
    ∀ u v, inner (operator u) v = inner u (operator v)
  isometry :
    ∀ u, inner (operator u) (operator u) = inner u u

namespace InvolutiveConvolutionCore

variable {X : Type u} [Fintype X] [DecidableEq X]

@[simp]
theorem operator_operator (core : InvolutiveConvolutionCore X)
    (f : X → ℝ) :
    core.operator (core.operator f) = f := by
  have h := LinearMap.congr_fun core.involutive f
  simpa using h

theorem operator_injective (core : InvolutiveConvolutionCore X) :
    Function.Injective core.operator := by
  intro f g h
  simpa using congrArg core.operator h

theorem operator_surjective (core : InvolutiveConvolutionCore X) :
    Function.Surjective core.operator := by
  intro f
  exact ⟨core.operator f, core.operator_operator f⟩

/-- The involutive operator as a linear equivalence, self-inverse by proof. -/
def toLinearEquiv (core : InvolutiveConvolutionCore X) :
    (X → ℝ) ≃ₗ[ℝ] (X → ℝ) where
  toFun := core.operator
  invFun := core.operator
  map_add' := core.operator.map_add
  map_smul' := core.operator.map_smul
  left_inv := core.operator_operator
  right_inv := core.operator_operator

@[simp]
theorem toLinearEquiv_apply (core : InvolutiveConvolutionCore X)
    (f : X → ℝ) :
    core.toLinearEquiv f = core.operator f :=
  rfl

@[simp]
theorem toLinearEquiv_symm (core : InvolutiveConvolutionCore X) :
    core.toLinearEquiv.symm = core.toLinearEquiv := by
  ext f
  rfl

end InvolutiveConvolutionCore

/-- A certified invertible linear convolution, with a separately certified
convolutional inverse. -/
structure ConvolutionalLinearEquiv where
  forwardCycle : DirectedCycleQuantum X
  forwardKernel : CycleKernel forwardCycle.period ℝ
  inverseCycle : DirectedCycleQuantum X
  inverseKernel : CycleKernel inverseCycle.period ℝ
  equiv : (X → ℝ) ≃ₗ[ℝ] (X → ℝ)
  forward_spec :
    ∀ f, equiv f = cycleConvolution forwardCycle forwardKernel f
  inverse_spec :
    ∀ f, equiv.symm f = cycleConvolution inverseCycle inverseKernel f

namespace ConvolutionalLinearEquiv

variable {X : Type u} [Fintype X] [DecidableEq X]

/-- Explicitly ordered conjugation `A⁻¹ ∘ C ∘ A`. -/
def conjugatedOperator
    (A : ConvolutionalLinearEquiv X)
    (C : InvolutiveConvolutionCore X) :
    (X → ℝ) →ₗ[ℝ] (X → ℝ) :=
  A.equiv.symm.toLinearMap.comp
    (C.operator.comp A.equiv.toLinearMap)

@[simp]
theorem conjugatedOperator_apply
    (A : ConvolutionalLinearEquiv X)
    (C : InvolutiveConvolutionCore X)
    (f : X → ℝ) :
    A.conjugatedOperator C f =
      A.equiv.symm (C.operator (A.equiv f)) :=
  rfl

/-- A conjugate of a certified involution is again an involution. -/
theorem conjugatedOperator_involutive
    (A : ConvolutionalLinearEquiv X)
    (C : InvolutiveConvolutionCore X) :
    (A.conjugatedOperator C).comp (A.conjugatedOperator C) =
      LinearMap.id := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.comp_apply, conjugatedOperator_apply,
    LinearEquiv.apply_symm_apply]
  rw [C.operator_operator]
  simp

/-- Package a conjugated operator as an involutive convolution core once its
cycle/kernel convolution equation has been supplied. -/
def conjugatedCore
    (A : ConvolutionalLinearEquiv X)
    (C : InvolutiveConvolutionCore X)
    (cycle : DirectedCycleQuantum X)
    (kernel : CycleKernel cycle.period ℝ)
    (convolution_spec :
      ∀ f, A.conjugatedOperator C f = cycleConvolution cycle kernel f) :
    InvolutiveConvolutionCore X where
  cycle := cycle
  kernel := kernel
  operator := A.conjugatedOperator C
  convolution_spec := convolution_spec
  involutive := A.conjugatedOperator_involutive C

end ConvolutionalLinearEquiv

end FinitePermutationDynamics
