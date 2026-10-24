import Mathlib.LinearAlgebra.Span.Defs
import Mathlib.LinearAlgebra.TensorProduct.Tower
import Mathlib.Algebra.Module.LinearMap.End
import GRWTSK.Algebra.KTheory.GrothendieckPort

namespace GRWTSK.Algebra.KTheory

/-- A trace-image obstruction for any proposed assembly-type additive map.
This is a generic algebraic theorem, not a construction of analytic assembly or K-theory. -/
theorem not_mem_range_of_trace_not_mem
    {A B C : Type*} [AddCommGroup A] [AddCommGroup B] [AddCommGroup C]
    (assembly : A →+ B) (trace : B →+ C) (allowed : Set C)
    (image_allowed : ∀ a : A, trace (assembly a) ∈ allowed)
    (x : B) (hx : trace x ∉ allowed) :
    x ∉ Set.range assembly := by
  rintro ⟨a, rfl⟩
  exact hx (image_allowed a)

/-- A class with irrational trace cannot lie in an assembly image whose
trace values are all rational. The rational-image hypothesis is explicit. -/
theorem not_mem_range_of_irrational_trace
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (trace : B →+ ℝ)
    (rational_image : ∀ a : A, ∃ q : ℚ, trace (assembly a) = (q : ℝ))
    (x : B) (irrational_trace : ∀ q : ℚ, trace x ≠ (q : ℝ)) :
    x ∉ Set.range assembly := by
  rintro ⟨a, rfl⟩
  obtain ⟨q, hq⟩ := rational_image a
  exact irrational_trace q hq


/-- If an additive image has trace inside a rational-linear subspace, then
every rational linear combination of image classes has trace inside that
subspace as well. A class whose trace is outside it cannot belong to the
rational span of the image.

This theorem assumes that the target itself is a ℚ-module. Using it for a
rationalized integral K₀-group requires a separately constructed
rationalization map and trace extension. It neither constructs the
Baum–Connes assembly map nor proves a trace-image restriction. -/
theorem not_mem_rational_span_of_trace_not_mem
    {A B C : Type*}
    [AddCommGroup A] [AddCommGroup B] [Module ℚ B]
    [AddCommGroup C] [Module ℚ C]
    (assembly : A →+ B) (trace : B →ₗ[ℚ] C)
    (allowed : Submodule ℚ C)
    (image_allowed : ∀ a : A, trace (assembly a) ∈ allowed)
    (x : B) (hx : trace x ∉ allowed) :
    x ∉ Submodule.span ℚ (Set.range assembly) := by
  intro hxSpan
  apply hx
  have hspan :
      Submodule.span ℚ (Set.range assembly) ≤
        Submodule.comap trace allowed := by
    apply Submodule.span_le.mpr
    rintro y ⟨a, rfl⟩
    exact image_allowed a
  exact hspan hxSpan


/-- The scalar extension of an integral additive group from ℤ to ℚ.
This is the actual tensor-product rationalization of its underlying ℤ-module;
it does not assert that an arbitrary group is analytic K₀. -/
abbrev Rationalization (G : Type*) [AddCommGroup G] : Type _ := ℚ ⊗[ℤ] G

/-- Canonical additive map into the rationalization. It need not be injective:
torsion classes can vanish after tensoring with ℚ. -/
def rationalizationOf (G : Type*) [AddCommGroup G] :
    G →+ Rationalization G :=
  (TensorProduct.mk ℤ ℚ G (1 : ℚ)).toAddMonoidHom

@[simp]
theorem rationalizationOf_apply {G : Type*} [AddCommGroup G] (x : G) :
    rationalizationOf G x = (1 : ℚ) ⊗ₜ[ℤ] x := rfl

/-- Tensor-product rationalization of an integral additive map. -/
def rationalizedAssembly
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) :
    Rationalization A →ₗ[ℚ] Rationalization B :=
  assembly.toIntLinearMap.baseChange ℚ

@[simp]
theorem rationalizedAssembly_tmul
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (q : ℚ) (a : A) :
    rationalizedAssembly assembly (q ⊗ₜ[ℤ] a) =
      q ⊗ₜ[ℤ] assembly a := by
  exact LinearMap.baseChange_tmul assembly.toIntLinearMap q a

@[simp]
theorem rationalizedAssembly_of
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (a : A) :
    rationalizedAssembly assembly (rationalizationOf A a) =
      rationalizationOf B (assembly a) := by
  simp

/-- Extend an integral additive real-valued trace to the ℚ-scalar extension.
This uses the tensor-product universal property, not a separately assumed
trace on the rationalization. -/
def rationalizedTrace
    {B : Type*} [AddCommGroup B] (trace : B →+ ℝ) :
    Rationalization B →ₗ[ℚ] ℝ :=
  TensorProduct.AlgebraTensorModule.lift
    ((LinearMap.id : ℚ →ₗ[ℚ] ℚ).smulRight trace.toIntLinearMap)

@[simp]
theorem rationalizedTrace_tmul
    {B : Type*} [AddCommGroup B]
    (trace : B →+ ℝ) (q : ℚ) (b : B) :
    rationalizedTrace trace (q ⊗ₜ[ℤ] b) = q • trace b := by
  simp [rationalizedTrace, LinearMap.smulRight_apply]

@[simp]
theorem rationalizedTrace_of
    {B : Type*} [AddCommGroup B]
    (trace : B →+ ℝ) (b : B) :
    rationalizedTrace trace (rationalizationOf B b) = trace b := by
  simp

/-- A rational-linear trace restriction on the integral assembly image remains
valid on all rationalized assembly classes, not just pure tensors. -/
theorem rationalizedTrace_image_mem
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (trace : B →+ ℝ)
    (allowed : Submodule ℚ ℝ)
    (image_allowed : ∀ a : A, trace (assembly a) ∈ allowed)
    (y : Rationalization A) :
    rationalizedTrace trace (rationalizedAssembly assembly y) ∈ allowed := by
  refine TensorProduct.induction_on y ?_ ?_ ?_
  · simpa using (allowed.zero_mem)
  · intro q a
    simpa only [rationalizedAssembly_tmul, rationalizedTrace_tmul] using
      allowed.smul_mem q (image_allowed a)
  · intro u v hu hv
    simpa only [map_add] using allowed.add_mem hu hv

/-- An integral class with trace outside a rational-linear allowed subspace
remains outside the rationalized assembly image. No injectivity of the
integral-to-rationalization map is assumed. -/
theorem rationalizationOf_not_mem_assembly_range
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (trace : B →+ ℝ)
    (allowed : Submodule ℚ ℝ)
    (image_allowed : ∀ a : A, trace (assembly a) ∈ allowed)
    (x : B) (hx : trace x ∉ allowed) :
    rationalizationOf B x ∉ Set.range (rationalizedAssembly assembly) := by
  exact not_mem_range_of_trace_not_mem
    (rationalizedAssembly assembly).toAddMonoidHom
    (rationalizedTrace trace).toAddMonoidHom
    (allowed : Set ℝ)
    (rationalizedTrace_image_mem assembly trace allowed image_allowed)
    (rationalizationOf B x)
    (by simpa using hx)

/-- The same obstruction excludes every rational linear combination of
rationalized assembly classes, by the pre-existing rational-span theorem. -/
theorem rationalizationOf_not_mem_assembly_span
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (trace : B →+ ℝ)
    (allowed : Submodule ℚ ℝ)
    (image_allowed : ∀ a : A, trace (assembly a) ∈ allowed)
    (x : B) (hx : trace x ∉ allowed) :
    rationalizationOf B x ∉
      Submodule.span ℚ (Set.range (rationalizedAssembly assembly)) := by
  exact not_mem_rational_span_of_trace_not_mem
    (rationalizedAssembly assembly).toAddMonoidHom
    (rationalizedTrace trace) allowed
    (rationalizedTrace_image_mem assembly trace allowed image_allowed)
    (rationalizationOf B x)
    (by simpa using hx)

end GRWTSK.Algebra.KTheory
