# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexRealization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34cfb3133fcea2444cd167239a9ee89fff9f888b` · SHA-256 `a93abff7a05b033b287dea5e16d977c7e3e4b2d801a610bbc29118e119466eb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the existing Frey field basis and coefficient-ring realization maps.
Formalization assistance: OpenAI.

Real and imaginary parts of ACTUAL complex Frey sections. The complex stage
is the previous W_k over C, not a complex scalar action imposed on real W_k.
Both parts, the old weighted lift and the Hermitian coefficient energy are
bound to the existing basis. No intrinsic Hodge or integral-model claim.
Unelaborated source proof scripts; no global norm/topology instance.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBaseChange
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy
import Mathlib.Analysis.Complex.Basic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexRealization

open FreyWeightedSections FreyWeightedBasis
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

abbrev ComplexStage (a b : ℝ) (k : ℕ) := stage (a : ℂ) (b : ℂ) k

/-- Same coefficient map on the same localized curve, restricted to the old stages. -/
def embed (a b : ℝ) (k : ℕ) : stage a b k →ₛₗ[Complex.ofRealHom] ComplexStage a b k :=
  FreyWeightedBaseChange.stageMap Complex.ofRealHom a b k

def coefficients (a b : ℝ) (k : ℕ) (f : ComplexStage a b k) : Index k → ℂ :=
  fun i => (basis (a : ℂ) (b : ℂ) k).repr f i

@[simp] theorem coefficients_embed (a b : ℝ) (k : ℕ) (f : stage a b k) (i : Index k) :
    coefficients a b k (embed a b k f) i = (FreyWeightedEnergy.coordinates a b k f i : ℂ) :=
  FreyWeightedBaseChange.stageMap_coordinates Complex.ofRealHom a b k f i

@[simp] theorem coefficients_add (a b : ℝ) (k : ℕ) (f g : ComplexStage a b k) (i : Index k) :
    coefficients a b k (f + g) i = coefficients a b k f i + coefficients a b k g i := by
  simp [coefficients]

@[simp] theorem coefficients_smul (a b : ℝ) (k : ℕ) (c : ℂ) (f : ComplexStage a b k) (i : Index k) :
    coefficients a b k (c • f) i = c * coefficients a b k f i := by
  simp [coefficients]

theorem coefficients_injective (a b : ℝ) (k : ℕ) : Function.Injective (coefficients a b k) := by
  intro f g h
  apply (basis (a : ℂ) (b : ℂ) k).repr.injective
  ext i
  exact congrFun h i

/-- Both real components are explicit additive maps. They are not ring maps. -/
def scalarComponent (j : Fin 2) : ℂ →+ ℝ where
  toFun c := ![c.re, c.im] j
  map_zero' := by fin_cases j <;> simp
  map_add' u v := by fin_cases j <;> simp

theorem scalarComponent_real_mul (j : Fin 2) (d : ℝ) (c : ℂ) :
    scalarComponent j ((d : ℂ) * c) = d * scalarComponent j c := by
  fin_cases j <;> simp [scalarComponent]

/-- Synthesize each part in the PREVIOUS real W_k and its PREVIOUS basis. -/
def component (a b : ℝ) (k : ℕ) (j : Fin 2) : ComplexStage a b k →+ stage a b k where
  toFun f := FreyWeightedEnergy.synthesize a b k (fun i => scalarComponent j (coefficients a b k f i))
  map_zero' := by simp [coefficients, FreyWeightedEnergy.synthesize]
  map_add' f g := by
    simp [coefficients, FreyWeightedEnergy.synthesize, add_smul, Finset.sum_add_distrib]

@[simp] theorem component_coordinates (a b : ℝ) (k : ℕ) (j : Fin 2)
    (f : ComplexStage a b k) (i : Index k) :
    FreyWeightedEnergy.coordinates a b k (component a b k j f) i =
      scalarComponent j (coefficients a b k f i) := by
  exact congrFun (FreyWeightedEnergy.coordinates_synthesize a b k _) i

private theorem real_coordinates_injective (a b : ℝ) (k : ℕ) :
    Function.Injective (FreyWeightedEnergy.coordinates a b k) := by
  intro u v h
  have hh := congrArg (FreyWeightedEnergy.synthesize a b k) h
  simpa only [FreyWeightedEnergy.synthesize_coordinates] using hh

/-- A real scalar is cast explicitly before acting on complex sections. -/
theorem component_real_smul (a b : ℝ) (k : ℕ) (j : Fin 2)
    (d : ℝ) (f : ComplexStage a b k) :
    component a b k j ((d : ℂ) • f) = d • component a b k j f := by
  apply real_coordinates_injective a b k
  funext i
  rw [component_coordinates]
  rw [coefficients_smul, scalarComponent_real_mul]
  change d * scalarComponent j (coefficients a b k f i) =
    (basis a b k).repr (d • component a b k j f) i
  simp only [map_smul, Finsupp.smul_apply, smul_eq_mul]
  exact congrArg (fun c => d * c) (component_coordinates a b k j f i).symm

/-- Equality requires BOTH parts; a real-part-only observation is not faithful. -/
theorem component_ext (a b : ℝ) (k : ℕ) (f g : ComplexStage a b k)
    (h : ∀ j, component a b k j f = component a b k j g) : f = g := by
  apply coefficients_injective a b k
  funext i
  apply Complex.ext
  · have hr := congrArg (fun u => FreyWeightedEnergy.coordinates a b k u i) (h 0)
    simpa [component_coordinates, scalarComponent] using hr
  · have hi := congrArg (fun u => FreyWeightedEnergy.coordinates a b k u i) (h 1)
    simpa [component_coordinates, scalarComponent] using hi

/-- Combine two real sections using the actual R-to-C function map. -/
def assemble (a b : ℝ) (k : ℕ) (u v : stage a b k) : ComplexStage a b k :=
  embed a b k u + Complex.I • embed a b k v

theorem coefficients_assemble (a b : ℝ) (k : ℕ) (u v : stage a b k) (i : Index k) :
    coefficients a b k (assemble a b k u v) i =
      (FreyWeightedEnergy.coordinates a b k u i : ℂ) +
        Complex.I * (FreyWeightedEnergy.coordinates a b k v i : ℂ) := by
  simp only [assemble, coefficients_add, coefficients_smul, coefficients_embed]

@[simp] theorem component_assemble (a b : ℝ) (k : ℕ) (j : Fin 2) (u v : stage a b k) :
    component a b k j (assemble a b k u v) = ![u, v] j := by
  apply real_coordinates_injective a b k
  funext i
  rw [component_coordinates, coefficients_assemble]
  fin_cases j <;> simp [scalarComponent]

@[simp] theorem assemble_components (a b : ℝ) (k : ℕ) (f : ComplexStage a b k) :
    assemble a b k (component a b k 0 f) (component a b k 1 f) = f := by
  apply coefficients_injective a b k
  funext i
  rw [coefficients_assemble, component_coordinates, component_coordinates]
  apply Complex.ext <;> simp [scalarComponent]

/-- An explicit two-part equivalence; no function-field or tensor claim is hidden here. -/
def realification (a b : ℝ) (k : ℕ) : ComplexStage a b k ≃ stage a b k × stage a b k where
  toFun f := (component a b k 0 f, component a b k 1 f)
  invFun p := assemble a b k p.1 p.2
  left_inv := assemble_components a b k
  right_inv p := by simp

/-- The standard Hermitian coefficient energy, not an intrinsic Hodge metric. -/
def energy (a b : ℝ) (k : ℕ) (f : ComplexStage a b k) : ℝ :=
  ∑ i, Complex.normSq (coefficients a b k f i)

theorem energy_components (a b : ℝ) (k : ℕ) (f : ComplexStage a b k) :
    energy a b k f = FreyWeightedEnergy.coefficientEnergy a b k (component a b k 0 f) +
      FreyWeightedEnergy.coefficientEnergy a b k (component a b k 1 f) := by
  simp only [energy, FreyWeightedEnergy.coefficientEnergy,
    GRWTSK.LinearAlgebra.WeightedPermutationEnergy.energy, component_coordinates,
    Complex.normSq_apply, scalarComponent, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem energy_smul (a b : ℝ) (k : ℕ) (c : ℂ) (f : ComplexStage a b k) :
    energy a b k (c • f) = Complex.normSq c * energy a b k f := by
  simp only [energy, coefficients, map_smul, Finsupp.smul_apply, smul_eq_mul,
    map_mul, Finset.mul_sum]

/-- The old complex weighted lift carries the mapped REAL inverse witness. -/
def complexLift (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) :
    ComplexStage a b k ≃ₗ[ℂ] ComplexStage a b k :=
  stageEquiv (a : ℂ) (b : ℂ) (l : ℂ)
    (FreyWeightedBaseChange.mapped_inverse Complex.ofRealHom a b l hl) k

theorem embed_lift (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (f : stage a b k) :
    embed a b k (stageEquiv a b l hl k f) = complexLift a b l hl k (embed a b k f) :=
  FreyWeightedBaseChange.stageMap_lift Complex.ofRealHom a b l hl k f

theorem lift_assemble (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (u v : stage a b k) :
    complexLift a b l hl k (assemble a b k u v) =
      assemble a b k (stageEquiv a b l hl k u) (stageEquiv a b l hl k v) := by
  simp only [assemble, map_add, map_smul, ← embed_lift]

/-- Both parts commute with the SAME real-source weighted map. -/
theorem component_lift (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (j : Fin 2) (f : ComplexStage a b k) :
    component a b k j (complexLift a b l hl k f) =
      stageEquiv a b l hl k (component a b k j f) := by
  conv_lhs => rw [← assemble_components a b k f]
  rw [lift_assemble, component_assemble]
  fin_cases j <;> rfl

/-- Real bounds apply to the two parts, retaining their source/grade factor. -/
theorem energy_lift_bounds (a b l : ℝ) (hl : a * b * l = 1) (hab : 1 ≤ a * b)
    (k : ℕ) (f : ComplexStage a b k) :
    energy a b k f ≤ energy a b k (complexLift a b l hl k f) ∧
    energy a b k (complexLift a b l hl k f) ≤ ((a * b) ^ 2) ^ k * energy a b k f := by
  have hr := FreyWeightedEnergy.coefficientEnergy_bounds a b l hl hab k (component a b k 0 f)
  have hi := FreyWeightedEnergy.coefficientEnergy_bounds a b l hl hab k (component a b k 1 f)
  simp only [energy_components, component_lift]
  constructor <;> nlinarith [hr.1, hr.2, hi.1, hi.2]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexRealization
```
