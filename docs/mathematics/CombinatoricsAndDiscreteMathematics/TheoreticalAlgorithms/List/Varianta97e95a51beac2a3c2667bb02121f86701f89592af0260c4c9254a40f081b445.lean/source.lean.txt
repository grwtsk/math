import Boolean.Tree

namespace Boolean

universe u

/-- Build an n-ary conjunction as a right-nested binary tree. -/
def Tree.conjList : List (Tree α) → Tree α
  | [] => .truth
  | p :: ps => .conj p (Tree.conjList ps)

/-- Build an n-ary disjunction as a right-nested binary tree. -/
def Tree.disjList : List (Tree α) → Tree α
  | [] => .falsum
  | p :: ps => .disj p (Tree.disjList ps)

end Boolean
