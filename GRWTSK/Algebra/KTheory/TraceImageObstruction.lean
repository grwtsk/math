import Mathlib.LinearAlgebra.Span.Defs
import Mathlib.LinearAlgebra.TensorProduct.Tower
import Mathlib.Algebra.Module.LinearMap.End
import Mathlib.Algebra.Group.TypeTags.Hom
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


/-- The values of rational numbers, regarded as a ℚ-linear subspace of ℝ.
This uses the actual scalar-extension map rather than treating all reals
as admissible rational traces. -/
def RationalTraceValues : Submodule ℚ ℝ :=
  LinearMap.range (Algebra.linearMap ℚ ℝ)

theorem mem_rationalTraceValues_iff (r : ℝ) :
    r ∈ RationalTraceValues ↔ ∃ q : ℚ, r = (q : ℝ) := by
  constructor
  · rintro ⟨q, hq⟩
    refine ⟨q, ?_⟩
    simpa [RationalTraceValues, Algebra.linearMap_apply] using hq.symm
  · rintro ⟨q, rfl⟩
    exact ⟨q, by simp [RationalTraceValues, Algebra.linearMap_apply]⟩

/-- Rational trace on every integral assembly class excludes an integral
class of irrational trace from the *actual tensor-product rationalized*
assembly image. The rational-image premise is not constructed here. -/
theorem rationalizationOf_not_mem_rationalized_assembly_of_irrational
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (trace : B →+ ℝ)
    (rational_image : ∀ a : A, ∃ q : ℚ, trace (assembly a) = (q : ℝ))
    (x : B) (irrational_trace : ∀ q : ℚ, trace x ≠ (q : ℝ)) :
    rationalizationOf B x ∉ Set.range (rationalizedAssembly assembly) := by
  apply rationalizationOf_not_mem_assembly_range
    assembly trace RationalTraceValues ?_ x ?_
  · intro a
    apply (mem_rationalTraceValues_iff _).2
    obtain ⟨q, hq⟩ := rational_image a
    exact ⟨q, hq⟩
  · intro hx
    obtain ⟨q, hq⟩ := (mem_rationalTraceValues_iff _).1 hx
    exact irrational_trace q hq

/-- The stronger rational-span form of the same irrational-trace
obstruction, again using the actual tensor-product scalar extension. -/
theorem rationalizationOf_not_mem_rationalized_assembly_span_of_irrational
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (assembly : A →+ B) (trace : B →+ ℝ)
    (rational_image : ∀ a : A, ∃ q : ℚ, trace (assembly a) = (q : ℝ))
    (x : B) (irrational_trace : ∀ q : ℚ, trace x ≠ (q : ℝ)) :
    rationalizationOf B x ∉
      Submodule.span ℚ (Set.range (rationalizedAssembly assembly)) := by
  apply rationalizationOf_not_mem_assembly_span
    assembly trace RationalTraceValues ?_ x ?_
  · intro a
    apply (mem_rationalTraceValues_iff _).2
    obtain ⟨q, hq⟩ := rational_image a
    exact ⟨q, hq⟩
  · intro hx
    obtain ⟨q, hq⟩ := (mem_rationalTraceValues_iff _).1 hx
    exact irrational_trace q hq

/-
The existing GrothendieckPort defines its universal group completion in
multiplicative notation. Additive re-expression is required before using
tensor-product rationalization and additive real-valued traces.
-/
namespace StablePort

variable {M N : Type*} [CommMonoid M] [CommMonoid N]

/-- Interpret the existing multiplicative group-completion transport as
an additive homomorphism. This is a notation-preserving transport, not
a realization of analytic Kasparov KK or a Baum--Connes assembly map. -/
noncomputable def additiveKZeroMap (f : StablePort M N) :
    Additive (GrothendieckKZero M) →+
      Additive (GrothendieckKZero N) :=
  MonoidHom.toAdditive f.kZeroMap

/-- Transport on the universal group-completion generator, without
identifying the group completion with analytic K₀. -/
@[simp]
theorem additiveKZeroMap_of (f : StablePort M N) (m : M) :
    f.additiveKZeroMap
      (ofMul (Algebra.GrothendieckGroup.of (M := M) m)) =
    ofMul (Algebra.GrothendieckGroup.of (M := N) (f.objectMap m)) := by
  exact congrArg ofMul (GrothendieckKZero.map_of f.objectMap m)

/-- Rationalization of the existing additive presentation of the
stable-object group-completion map. -/
noncomputable def rationalizedKZeroMap (f : StablePort M N) :
    Rationalization (Additive (GrothendieckKZero M)) →ₗ[ℚ]
      Rationalization (Additive (GrothendieckKZero N)) :=
  rationalizedAssembly f.additiveKZeroMap

/-- The rationalized group-completion map sends each original
stable-object generator to the corresponding target generator.
It does not assert that a genuine reduced-C*-algebra K₀ functor or
analytic assembly map has been constructed. -/
@[simp]
theorem rationalizedKZeroMap_of (f : StablePort M N) (m : M) :
    f.rationalizedKZeroMap
      (rationalizationOf _ (ofMul (Algebra.GrothendieckGroup.of (M := M) m))) =
    rationalizationOf _
      (ofMul (Algebra.GrothendieckGroup.of (M := N) (f.objectMap m))) := by
  change rationalizedAssembly f.additiveKZeroMap
      (rationalizationOf _ (ofMul (Algebra.GrothendieckGroup.of (M := M) m))) =
    rationalizationOf _
      (ofMul (Algebra.GrothendieckGroup.of (M := N) (f.objectMap m)))
  rw [rationalizedAssembly_of, additiveKZeroMap_of]

end StablePort

end GRWTSK.Algebra.KTheory
