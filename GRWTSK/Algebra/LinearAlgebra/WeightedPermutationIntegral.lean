/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib integer modules and linear maps (Apache-2.0).
Formalization assistance: OpenAI.

Exact image and scalar-clearing criteria for an integer weighted permutation.
The image is not assumed saturated. Zero weights are allowed in the image
criterion; injectivity separately requires nonzero weights. Source proof
scripts only: no executed Lean or arithmetic-height acceptance is asserted.
-/
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Algebra.Module.Pi
import Mathlib.Data.Int.Basic
import Mathlib.Tactic.Ring

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral

variable {ι : Type*}

/-- Source column i is sent to target e(i), retaining its own integer weight. -/
def transport (e : Equiv.Perm ι) (w : ι → ℤ) : (ι → ℤ) →ₗ[ℤ] (ι → ℤ) where
  toFun v j := w (e.symm j) * v (e.symm j)
  map_add' u v := by funext j; change _ * (_ + _) = _; ring
  map_smul' n v := by
    funext j
    change w (e.symm j) * (n * v (e.symm j)) = n * (w (e.symm j) * v (e.symm j))
    ring

@[simp] theorem transport_at (e : Equiv.Perm ι) (w v : ι → ℤ) (i : ι) :
    transport e w v (e i) = w i * v i := by simp [transport]

/-- Every coordinate divisibility condition is necessary and sufficient, even at zero weights. -/
theorem image_iff (e : Equiv.Perm ι) (w u : ι → ℤ) :
    (∃ v, transport e w v = u) ↔ ∀ i, w i ∣ u (e i) := by
  constructor
  · rintro ⟨v, rfl⟩ i
    rw [transport_at]
    exact ⟨v i, rfl⟩
  · intro h
    let v : ι → ℤ := fun i => Classical.choose (h i)
    refine ⟨v, ?_⟩
    funext j
    have hj := Classical.choose_spec (h (e.symm j))
    simpa only [Equiv.apply_symm_apply] using hj.symm

/-- A genuine injectivity hypothesis; rational rank cannot license zero integer weights. -/
theorem transport_injective (e : Equiv.Perm ι) (w : ι → ℤ) (hw : ∀ i, w i ≠ 0) :
    Function.Injective (transport e w) := by
  intro u v h
  funext i
  have hi := congrFun h (e i)
  rw [transport_at, transport_at] at hi
  exact mul_left_cancel₀ (hw i) hi

/-- d clears the inverse on EVERY integral target exactly when all column weights divide d. -/
theorem uniformClearing_iff (e : Equiv.Perm ι) (w : ι → ℤ) (d : ℤ) :
    (∀ u : ι → ℤ, ∃ v, transport e w v = d • u) ↔ ∀ i, w i ∣ d := by
  classical
  constructor
  · intro h i
    let u : ι → ℤ := fun j => if j = e i then 1 else 0
    obtain ⟨v, hv⟩ := h u
    have hi := (image_iff e w (d • u)).mp ⟨v, hv⟩ i
    simpa [u] using hi
  · intro h u
    apply (image_iff e w (d • u)).mpr
    intro i
    obtain ⟨q, hq⟩ := h i
    refine ⟨q * u (e i), ?_⟩
    change d * u (e i) = w i * (q * u (e i))
    rw [hq]
    ring

/-- Surjectivity is not inferred from nonzero determinant. -/
theorem surjective_iff (e : Equiv.Perm ι) (w : ι → ℤ) :
    Function.Surjective (transport e w) ↔ ∀ i, w i ∣ 1 := by
  simpa only [one_smul, Function.Surjective] using uniformClearing_iff e w 1

/-- An explicit excluded target witnesses failure; this is not a sampled-rank argument. -/
theorem target_not_in_image [DecidableEq ι] (e : Equiv.Perm ι) (w : ι → ℤ) (i : ι) (d : ℤ)
    (hd : ¬ w i ∣ d) :
    ¬ ∃ v, transport e w v = (fun j => if j = e i then d else 0) := by
  classical
  intro h
  have hi := (image_iff e w _).mp h i
  exact hd (by simpa using hi)

end GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral
