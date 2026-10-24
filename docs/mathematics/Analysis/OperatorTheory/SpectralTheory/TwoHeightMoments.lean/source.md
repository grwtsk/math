# Complete source: GRWTSK.Analysis.Spectral.TwoHeightMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cbd662658764f7b58a592e1ed083e8914afb7e4` · SHA-256 `ec5575b93b59e55fe07c534d52aef617ef03c29d5dd81bba50da2dc876931cd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.Analysis.Inequalities.ResidualEnclosure

/-!
# Exact finite cyclic inverse moments at two positive heights

These results apply to an explicitly supplied nonnegative spectral inventory.
They do not assert that such an inventory is the spectrum of the arithmetic
operator. Zero-height claims require strictly positive support; the harmonic
term at positive height is separately retained.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.Spectral.TwoHeightMoments

theorem scalar_resolvent_drop {x e : ℝ} (hx : 0≤x) (he : 0<e) :
    (1/(x+e)-1/(x+2*e))/e = 1/((x+e)*(x+2*e)) := by
  have h1 : x+e≠0 := by positivity
  have h2 : x+2*e≠0 := by positivity
  field_simp
  ring

theorem scalar_drop_nonneg {x e : ℝ} (hx : 0≤x) (he : 0<e) :
    0≤(1/(x+e)-1/(x+2*e))/e := by
  rw [scalar_resolvent_drop hx he]
  positivity

theorem scalar_inverse_sandwich {x e : ℝ} (hx : 0<x) (he : 0<e) :
    1/(x+2*e)^2 ≤ 1/((x+e)*(x+2*e)) ∧
    1/((x+e)*(x+2*e)) ≤ 1/x^2 := by
  constructor
  · apply one_div_le_one_div_of_le (by positivity)
    nlinarith
  · apply one_div_le_one_div_of_le (by positivity)
    nlinarith

def response {ι : Type*} (S : Finset ι) (mass λ : ι → ℝ) (e : ℝ) : ℝ :=
  ∑ i ∈ S, mass i/(λ i+e)

def inverseMoment {ι : Type*} (S : Finset ι) (mass λ : ι → ℝ) : ℝ :=
  ∑ i ∈ S, mass i/(λ i)^2

theorem finite_drop_identity {ι : Type*} (S : Finset ι) (mass λ : ι → ℝ)
    {e : ℝ} (he : 0<e) (hλ : ∀ i∈S, 0≤λ i) :
    (response S mass λ e-response S mass λ (2*e))/e =
      ∑ i ∈ S, mass i/((λ i+e)*(λ i+2*e)) := by
  unfold response
  rw [← Finset.sum_sub_distrib, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i hi
  have h := scalar_resolvent_drop (hλ i hi) he
  calc
    (mass i/(λ i+e)-mass i/(λ i+2*e))/e =
      mass i*((1/(λ i+e)-1/(λ i+2*e))/e) := by ring
    _ = _ := by rw [h]; ring

theorem finite_drop_le_inverseMoment {ι : Type*} (S : Finset ι)
    (mass λ : ι → ℝ) {e : ℝ} (he : 0<e)
    (hm : ∀ i∈S, 0≤mass i) (hλ : ∀ i∈S, 0<λ i) :
    (response S mass λ e-response S mass λ (2*e))/e≤inverseMoment S mass λ := by
  rw [finite_drop_identity S mass λ he (fun i hi ↦ (hλ i hi).le)]
  apply Finset.sum_le_sum
  intro i hi
  have h := (scalar_inverse_sandwich (hλ i hi) he).2
  simpa only [div_eq_mul_inv, one_div] using
    mul_le_mul_of_nonneg_left h (hm i hi)

/-- A zero mode remains a nonzero positive-height contribution. -/
theorem zero_mode_drop (α e : ℝ) (he : 0<e) :
    (α/e-α/(2*e))/e = α/(2*e^2) := by
  field_simp
  ring

/-- Spectral mass below x under an exact source factorization b=D^(1+nu)v.
The pointwise premise is stated explicitly instead of presuming this factorization. -/
theorem finite_low_mass_bound {ι : Type*} (S : Finset ι) (mass vMass : ι → ℝ)
    (xPow : ℝ)
    (hm : ∀ i∈S, mass i≤xPow*vMass i) :
    (∑ i∈S, mass i)≤xPow*(∑ i∈S, vMass i) := by
  calc
    _ ≤ ∑ i∈S, xPow*vMass i := Finset.sum_le_sum hm
    _ = _ := by rw [Finset.mul_sum]

end GRWTSK.Analysis.Spectral.TwoHeightMoments
```
