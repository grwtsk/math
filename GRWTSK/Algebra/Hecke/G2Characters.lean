import GRWTSK.Algebra.Hecke.G2Presentation

/-! Characters and a noncollapse criterion for the braid-six presentation.
These consequences of the presentation address K1 in both distinct KL drafts.
They do not provide the twelve-element standard basis or a KL basis. -/
namespace GRWTSK.Algebra.Hecke
variable {R : Type*} [CommRing R]

/-- The trivial character sends each generator to the common parameter. -/
noncomputable def g2TrivialCharacter (q : R) : G2Presented q →ₐ[R] R :=
  g2PresentationLift q (fun _ => q)
    (by intro b; simp only [smul_eq_mul]; ring) (by rfl)

/-- The sign character sends both generators to minus one. -/
noncomputable def g2SignCharacter (q : R) : G2Presented q →ₐ[R] R :=
  g2PresentationLift q (fun _ => -1)
    (by intro b; simp only [smul_eq_mul]; ring) (by rfl)

@[simp] theorem g2TrivialCharacter_generator (q : R) (b : Bool) :
    g2TrivialCharacter q (g2Generator q b) = q := by
  exact g2PresentationLift_generator _ _ _ _ _

@[simp] theorem g2SignCharacter_generator (q : R) (b : Bool) :
    g2SignCharacter q (g2Generator q b) = -1 := by
  exact g2PresentationLift_generator _ _ _ _ _

/-- The scalar map splits by the trivial character, so it loses no coefficients. -/
theorem g2Presented_scalar_injective (q : R) :
    Function.Injective (algebraMap R (G2Presented q)) := by
  intro a b h
  have h' := congrArg (g2TrivialCharacter q) h
  simpa using h'

/-- Over a domain, q+1 nonzero separates the unit and either generator.
The excluded specialization q=-1 is essential to this character argument. -/
theorem g2Presented_rankOne_coordinates_unique [NoZeroDivisors R] (q : R)
    (hq : q + 1 ≠ 0) (b : Bool) (a c : R)
    (h : a • (1 : G2Presented q) + c • g2Generator q b = 0) : a = 0 ∧ c = 0 := by
  have ht := congrArg (g2TrivialCharacter q) h
  have hs := congrArg (g2SignCharacter q) h
  have ht' : a + c * q = 0 := by simpa using ht
  have hs' : a - c = 0 := by simpa [sub_eq_add_neg] using hs
  have hc : c * (q + 1) = 0 := by
    calc
      c * (q + 1) = (a + c * q) - (a - c) := by ring
      _ = 0 := by rw [ht', hs']; ring
  have hc' : c = 0 := (mul_eq_zero.mp hc).resolve_right hq
  exact ⟨by simpa [hc'] using hs', hc'⟩

/-- Nontrivial coefficients imply a nontrivial presented algebra, for every q. -/
theorem g2Presented_zero_ne_one [Nontrivial R] (q : R) :
    (0 : G2Presented q) ≠ 1 := by
  intro h
  have h' := congrArg (g2TrivialCharacter q) h
  simpa using h'

end GRWTSK.Algebra.Hecke
