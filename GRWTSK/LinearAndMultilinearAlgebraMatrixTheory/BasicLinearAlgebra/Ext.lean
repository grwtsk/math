import Boolean.Matrix

namespace Boolean

namespace Matrix

@[ext]
theorem ext
    {A B : Matrix rows cols}
    (h : ∀ i j, A i j = B i j) :
    A = B := by
  funext i
  funext j
  exact h i j

/-- Pointwise equality of Boolean matrices. -/
def pointwiseEq
    (A B : Matrix rows cols) :
    Prop :=
  ∀ i j, A i j = B i j

end Matrix

end Boolean
