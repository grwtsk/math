import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSet
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Signed
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.NonprimitiveObstruction

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

example (t : PrimitiveAdditiveTriple) :
    Nat.Coprime t.a t.b ∧ Nat.Coprime t.a t.c ∧ Nat.Coprime t.b t.c :=
  t.pairwise_coprime

example (N : ℕ) : {t : PrimitiveAdditiveTriple | t.c ≤ N}.Finite :=
  PrimitiveAdditiveTriple.finite_height N

example (ε : ℝ) : ABCBound ε ↔ ABCSignedBound ε := abcBound_iff_signedBound ε

example : ABCConjecture ↔ ABCFiniteExceptions := abcConjecture_iff_finite_exceptions

example (h : ABCConjecture) (ε : ℝ) (hε : 0 < ε) : ABCQualityBound ε :=
  (abcLogBound_iff_qualityBound ε).mp ((abcBound_iff_logBound ε).mp (h ε hε))

example (t : PrimitiveAdditiveTriple) (hs : Squarefree (t.a * t.b * t.c))
    (ε : ℝ) (hε : 0 ≤ ε) : (t.c : ℝ) ≤ Real.rpow (t.radical : ℝ) (1 + ε) :=
  t.bound_of_squarefree ε hε hs

example (ε : ℝ) :
    ¬∃ K : ℝ, 0 < K ∧ ∀ a b c : ℕ, 0 < a → 0 < b → a + b = c →
      (c : ℝ) ≤ K * Real.rpow
        ((UniqueFactorizationMonoid.radical (a * b * c) : ℕ) : ℝ) (1 + ε) :=
  no_uniform_bound_without_coprimality ε
