import Surface.Boolean.Matrix.Operations

namespace Surface.Boolean

/--
Nonempty Boolean matrices form a Boolean algebra pointwise.

The nonempty assumptions are needed because an empty `0 × n` or `m × 0`
matrix has no cells, so its all-zero and all-one matrices are extensionally equal.
-/
instance BoolMatrix.instBooleanAlgebraCore
    [Nonempty (Fin rows)]
    [Nonempty (Fin cols)] :
    BooleanAlgebraCore (BoolMatrix rows cols) where
  join := BoolMatrix.join
  meet := BoolMatrix.meet
  compl := BoolMatrix.compl
  bot := BoolMatrix.zeros
  top := BoolMatrix.ones

  bot_ne_top := by
    intro h
    let i : Fin rows :=
      Classical.choice (inferInstance : Nonempty (Fin rows))
    let j : Fin cols :=
      Classical.choice (inferInstance : Nonempty (Fin cols))
    have hij : BoolMatrix.zeros i j = BoolMatrix.ones i j := by
      exact congrFun (congrFun h i) j
    cases hij

  join_bot := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.zeros]

  meet_top := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.meet, BoolMatrix.ones]

  join_comm := by
    intro A B
    funext i
    funext j
    simp [BoolMatrix.join]
    cases A i j <;> cases B i j <;> rfl

  meet_comm := by
    intro A B
    funext i
    funext j
    simp [BoolMatrix.meet]
    cases A i j <;> cases B i j <;> rfl

  join_assoc := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_assoc := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_meet_distrib := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_join_distrib := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_compl := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.ones, BoolMatrix.compl]

  meet_compl := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.meet, BoolMatrix.zeros, BoolMatrix.compl]

end Surface.Boolean
