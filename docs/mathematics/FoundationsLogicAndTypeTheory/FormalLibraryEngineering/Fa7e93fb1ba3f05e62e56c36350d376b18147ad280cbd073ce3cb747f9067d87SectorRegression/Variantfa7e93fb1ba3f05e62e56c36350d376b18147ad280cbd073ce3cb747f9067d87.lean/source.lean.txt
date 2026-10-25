import FormalResearch.PositiveAtlas.Grassmannian.SectorProducts
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Sector

#check @PFOrder
#print PFOrder
#print fixture_pfThree
#print axioms fixture_pfThree
#print fixture_negative_orderFour
#print axioms fixture_negative_orderFour
#print fixture_not_pfFour
#print axioms fixture_not_pfFour

example (a : ℕ → ℝ) : PFOrder 0 a := pfOrder_zero a
example (η : ℝ) (hη : 0 ≤ η) (R : ℕ) :
    PFOrder R (Quadratic.coefficient (2 * η * Real.cos 0) (η ^ 2)) :=
  quadratic_pfOrder η 0 R hη le_rfl (by simpa using Real.pi_pos.le)
example : PFOrder 3 (Quadratic.coefficient (2 * Real.cos (Real.pi / 4)) 1) := by
  simpa using quadratic_pfOrder 1 (Real.pi / 4) 3 (by norm_num)
    (by positivity) (by norm_num; linarith)
example (r c : Fin 3 ↪o ℕ) : 0 ≤ minor (Quadratic.coefficient (3 / 2) 1) r c :=
  fixture_pfThree 3 le_rfl r c
