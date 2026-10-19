import FormalResearch.MathematicalTooling.AnalyticMultiplicity

open FormalResearch.MathematicalTooling.AnalyticMultiplicity

/-- A genuine nonvanishing normalization transports a simple coordinate zero. -/
example : analyticOrderAt (fun z : ℂ ↦ 3 * (z - 2)) 2 = 1 := by
  have h := order_mul_nonvanishing (f := fun z : ℂ ↦ z - 2)
    (c := fun _ : ℂ ↦ 3) (z := 2) (by fun_prop) (by fun_prop) (by norm_num)
  simpa using h

/-- Both roots of a descended simple zero have order one, each counted once. -/
example :
    analyticOrderAt (fun z : ℂ ↦ z ^ 2 - 1) 1 = 1 ∧
      analyticOrderAt (fun z : ℂ ↦ z ^ 2 - 1) (-1) = 1 := by
  constructor
  · simpa using order_comp_square (f := fun z : ℂ ↦ z - 1)
      (u := 1) (by norm_num)
  · simpa using order_comp_square (f := fun z : ℂ ↦ z - 1)
      (u := -1) (by norm_num)

/-- A vanishing normalization may change multiplicity despite equal zero sets. -/
example :
    (∀ z : ℂ, z = 0 ↔ z ^ 2 = 0) ∧
      analyticOrderAt (fun z : ℂ ↦ z) 0 ≠
        analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 := by
  obtain ⟨hsupport, hsimple, hdouble⟩ := same_zero_support_different_order
  refine ⟨hsupport, ?_⟩
  rw [hsimple, hdouble]
  norm_num

/-- The branch point is ramified, so its order is doubled rather than preserved. -/
example : analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 = 2 := by
  have hid : analyticOrderAt (fun z : ℂ ↦ z) 0 = 1 := analyticOrderAt_id
  simpa only [hid, one_mul] using order_comp_square_zero (f := fun z : ℂ ↦ z) analyticAt_id

#print order_mul_nonvanishing
#print order_eq_of_local_normalization
#print order_eq_of_local_coordinate
#print simple_iff_of_local_coordinate
#print order_comp_square
#print order_comp_square_neg
#print order_comp_square_zero
#print same_zero_support_different_order
#print axioms order_mul_nonvanishing
#print axioms order_eq_of_local_normalization
#print axioms order_eq_of_local_coordinate
#print axioms simple_iff_of_local_coordinate
#print axioms order_comp_square
#print axioms order_comp_square_neg
#print axioms order_comp_square_zero
#print axioms same_zero_support_different_order
