import Boolean.Matrix.Operations
import Boolean.Algebra

namespace Boolean

/--
Nonempty Boolean matrices form a Boolean algebra pointwise.

The nonempty assumptions are needed because an empty `0 × n` or `m × 0`
matrix has no cells, so its all-zero and all-one matrices are extensionally equal.
-/
instance Matrix.instAlgebra
    [Nonempty (Fin rows)]
    [Nonempty (Fin cols)] :
    Algebra (Matrix rows cols) where
  join := Matrix.join
  meet := Matrix.meet
  compl := Matrix.compl
  bot := Matrix.zeros
  top := Matrix.ones

  bot_ne_top := by
    intro h
    let i : Fin rows :=
      Classical.choice (inferInstance : Nonempty (Fin rows))
    let j : Fin cols :=
      Classical.choice (inferInstance : Nonempty (Fin cols))
    have hij : Matrix.zeros i j = Matrix.ones i j := by
      exact congrFun (congrFun h i) j
    cases hij

  join_bot := by
    intro A
    funext i
    funext j
    simp [Matrix.join, Matrix.zeros]

  meet_top := by
    intro A
    funext i
    funext j
    simp [Matrix.meet, Matrix.ones]

  join_comm := by
    intro A B
    funext i
    funext j
    simp [Matrix.join]
    cases A i j <;> cases B i j <;> rfl

  meet_comm := by
    intro A B
    funext i
    funext j
    simp [Matrix.meet]
    cases A i j <;> cases B i j <;> rfl

  join_assoc := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_assoc := by
    intro A B C
    funext i
    funext j
    simp [Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_meet_distrib := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join, Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_join_distrib := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join, Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_compl := by
    intro A
    funext i
    funext j
    simp [Matrix.join, Matrix.ones, Matrix.compl]

  meet_compl := by
    intro A
    funext i
    funext j
    simp [Matrix.meet, Matrix.zeros, Matrix.compl]

end Boolean
