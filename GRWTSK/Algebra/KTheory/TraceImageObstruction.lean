import Mathlib.LinearAlgebra.Span.Defs
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

end GRWTSK.Algebra.KTheory
