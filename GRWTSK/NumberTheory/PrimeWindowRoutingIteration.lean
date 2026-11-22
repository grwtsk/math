/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeWindowPolynomial

/-!
# Iteration of prime-window routing polynomials

The routing operator is a pullback along a supplied slot map. Its iterates
carry exactly the iterated slot map on ordered payloads. Prime coordinates
provide an injective payload that detects any change to that map.
-/

set_option autoImplicit false
noncomputable section

open Function
open scoped Polynomial

namespace GRWTSK.NumberTheory.PrimeWindowPolynomial

theorem route_comp (k : ℕ) (next after : Fin 95 → Fin 95) (f : ℚ[X]) :
    route k next (route k after f) = route k (after ∘ next) f := by
  simp [route]

theorem route_iterate_interpolate (k : ℕ) (next : Fin 95 → Fin 95)
    (n : ℕ) (payload : Fin 95 → ℚ) :
    ((route k next)^[n]) (interpolate k payload) =
      interpolate k (payload ∘ (next^[n])) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ_apply', ih]
    simp [route, Function.comp_def]

/-- The observable return of an individual payload means constancy along
each n-step transition of the supplied map. -/
theorem route_iterate_fixed_iff (k : ℕ) (next : Fin 95 → Fin 95)
    (n : ℕ) (payload : Fin 95 → ℚ) :
    ((route k next)^[n]) (interpolate k payload) = interpolate k payload ↔
      ∀ j, payload ((next^[n]) j) = payload j := by
  rw [route_iterate_interpolate]
  constructor
  · intro h j
    simpa [Function.comp_def] using congrArg (fun f : ℚ[X] => f.eval (ratAddress k j)) h
  · intro h
    simp [Function.comp_def, h]

/-- One injective payload suffices to certify a full slot return. -/
theorem route_address_return_iff (k : ℕ) (next : Fin 95 → Fin 95) (n : ℕ) :
    ((route k next)^[n]) (interpolate k (ratAddress k)) =
      interpolate k (ratAddress k) ↔ next^[n] = id := by
  rw [route_iterate_fixed_iff]
  constructor
  · intro h
    exact funext fun j => (ratAddress_injective k) (h j)
  · intro h j
    rw [h]
    rfl

/-- A rooted map with a common hitting bound makes every payload constant
after that many steps, at its original value on the root. -/
theorem route_iterate_root_collapse (k : ℕ) (next : Fin 95 → Fin 95)
    (n : ℕ) (root : Fin 95) (hit : ∀ j, (next^[n]) j = root) (payload : Fin 95 → ℚ) :
    ((route k next)^[n]) (interpolate k payload) =
      interpolate k (fun _ => payload root) := by
  rw [route_iterate_interpolate]
  simp [Function.comp_def, hit]

/-- A constant readout is fixed even for the map sending every slot to zero,
which moves slot one and changes the injective prime-address readout. -/
theorem constant_payload_does_not_certify_return (k : ℕ) :
    route k (fun _ => 0) (interpolate k (fun _ => 1)) = interpolate k (fun _ => 1) ∧
      route k (fun _ => 0) (interpolate k (ratAddress k)) ≠ interpolate k (ratAddress k) := by
  refine ⟨(route_fixed_iff k _ _).mpr (fun _ => rfl), ?_⟩
  intro h
  have he := (route_fixed_iff k _ _).mp h (1 : Fin 95)
  exact (by decide : (0 : Fin 95) ≠ 1) ((ratAddress_injective k) he)

end GRWTSK.NumberTheory.PrimeWindowPolynomial
