import Mathlib.Tactic

/-! Exact two-coordinate lattice and cusp ideals for the Hilbert Eisenstein jet.
The companion note computes their prime exponents for the CM lattice. -/

namespace GRWTSK.NumberTheory.AlpogeCMFourierLattice

variable {R : Type*} [CommRing R] [IsDomain R]

/-- In a quadratic basis (1,η), a multiplier θ=t+uη takes the first
coordinate to r*u and the constant coordinate to r*t+s. -/
theorem coordinate_lattice {u : R} (hu : u ≠ 0) (p q t r s : R) :
    (p*u ∣ r*u) ∧ q ∣ s + t*r ↔
      ∃ x y : R, r = p*x ∧ s = q*y - t*(p*x) := by
  constructor
  · rintro ⟨⟨x, hx⟩, ⟨y, hy⟩⟩
    have h : r = p*x := mul_right_cancel₀ hu (by linear_combination hx)
    exact ⟨x,y,h,by rw [← h]; linear_combination hy⟩
  · rintro ⟨x,y,rfl,rfl⟩
    exact ⟨⟨x,by ring⟩,⟨y,by ring⟩⟩

/-- The image ideal of the first coordinate at a cusp, using a Bézout
presentation of its two column entries. -/
theorem cusp_projection {a b u v : R} (h : u*a+v*b=1) (p z : R) :
    (∃ x y : R, p*a*x+p*b*y=z) ↔ p ∣ z := by
  constructor
  · rintro ⟨x,y,rfl⟩
    exact ⟨a*x+b*y, by ring⟩
  · rintro ⟨w,rfl⟩
    exact ⟨u*w,v*w,by linear_combination p*w*h⟩

/-- The vertical ideal is determinant divided by first-coordinate content.
The columns of the twisted lattice are (pa,c) and (pb,d). -/
theorem cusp_vertical {a b u v p : R} (hp : p ≠ 0) (h : u*a+v*b=1) (c d z : R) :
    (∃ x y : R, p*a*x+p*b*y=0 ∧ c*x+d*y=z) ↔ (a*d-b*c) ∣ z := by
  constructor
  · rintro ⟨x,y,hx,rfl⟩
    have hv : a*x+b*y=0 := (mul_eq_zero.mp (show p*(a*x+b*y)=0 by linear_combination hx)).resolve_left hp
    refine ⟨u*y-v*x, ?_⟩
    linear_combination -(c*x+d*y)*h + (u*c+v*d)*hv
  · rintro ⟨w,rfl⟩
    exact ⟨-b*w,a*w,by ring,by ring⟩

/-- Every projected exponent yields the paired cusp loss; the worst case
occurs at the smaller elementary divisor, simultaneously for both losses. -/
theorem cusp_losses {small large proj vert diff : ℝ}
    (hs : small ≤ proj) (ht : proj + vert = small + large) :
    vert ≤ large ∧ vert - proj + diff ≤ large - small + diff := by
  constructor <;> linarith

end GRWTSK.NumberTheory.AlpogeCMFourierLattice
