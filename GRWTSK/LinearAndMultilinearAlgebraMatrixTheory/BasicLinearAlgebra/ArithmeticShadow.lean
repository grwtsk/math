import Surface.Legacy.BinaryLogicMatrix.Tree.TopologyPrime

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ArithmeticShadow where
  exponentOf : PrimeLabel → Nat

namespace ArithmeticShadow

@[ext]
theorem ext {A B : ArithmeticShadow}
    (h : ∀ p, A.exponentOf p = B.exponentOf p) :
    A = B := by
  cases A with
  | mk Ae =>
    cases B with
    | mk Be =>
      have hfun : Ae = Be := by
        funext p
        exact h p
      cases hfun
      rfl

def zero : ArithmeticShadow where
  exponentOf := fun _ => 0

def singleton (p : PrimeLabel) : ArithmeticShadow where
  exponentOf := fun q =>
    if q.value = p.value then 1 else 0

def add (A B : ArithmeticShadow) : ArithmeticShadow where
  exponentOf := fun p => A.exponentOf p + B.exponentOf p

end ArithmeticShadow

def arithmeticShadowCore : OrderedPrimeCore → ArithmeticShadow
  | OrderedPrimeCore.irreducible p =>
      ArithmeticShadow.singleton p
  | OrderedPrimeCore.composite l r =>
      ArithmeticShadow.add (arithmeticShadowCore l) (arithmeticShadowCore r)

def arithmeticShadow
    (R : NormalizationRules)
    (T : BinaryLogicTree) : ArithmeticShadow :=
  arithmeticShadowCore (normalizeCore R T)

theorem arithmeticShadow_multiplicative_under_compose
    (R : NormalizationRules)
    (L Rtree : BinaryLogicTree) :
    arithmeticShadow R (BinaryLogicTree.node L Rtree) =
      ArithmeticShadow.add (arithmeticShadow R L) (arithmeticShadow R Rtree) := rfl

theorem arithmeticShadow_unique_factorization
    (A B : ArithmeticShadow) :
    A = B ↔ A.exponentOf = B.exponentOf := by
  constructor
  · intro h
    cases h
    rfl
  · intro h
    cases A
    cases B
    cases h
    rfl

theorem arithmeticShadow_forgets_bracketing
    (p q r : PrimeLabel) :
    arithmeticShadowCore
      (OrderedPrimeCore.composite
        (OrderedPrimeCore.composite
          (OrderedPrimeCore.irreducible p)
          (OrderedPrimeCore.irreducible q))
        (OrderedPrimeCore.irreducible r)) =
    arithmeticShadowCore
      (OrderedPrimeCore.composite
        (OrderedPrimeCore.irreducible p)
        (OrderedPrimeCore.composite
          (OrderedPrimeCore.irreducible q)
          (OrderedPrimeCore.irreducible r))) := by
  apply ArithmeticShadow.ext
  intro x
  simp [
    arithmeticShadowCore,
    ArithmeticShadow.add,
    ArithmeticShadow.singleton
  ]
  omega

end Tree
end BinaryLogicMatrix
end Surface.Legacy
