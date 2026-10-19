import Boolean.Tree
import Boolean.Formula

namespace Boolean

universe u

/-- Bottom-up evaluation of a Boolean expression tree. -/
def Tree.eval (ν : Valuation α) : Tree α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(Tree.eval ν p)
  | .conj p q => Tree.eval ν p && Tree.eval ν q
  | .disj p q => Tree.eval ν p || Tree.eval ν q
  | .impl p q => !(Tree.eval ν p) || Tree.eval ν q
  | .eqv p q => Tree.eval ν p == Tree.eval ν q
  | .nand p q => !(Tree.eval ν p && Tree.eval ν q)

end Boolean
