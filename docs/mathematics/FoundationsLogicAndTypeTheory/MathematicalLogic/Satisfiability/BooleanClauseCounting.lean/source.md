# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability.BooleanClauseCounting

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `059c607ea90649a37618210e9cd28c5cf08fc9a8` · SHA-256 `e1aecd232169fc7b8a1a8ae7894420e6b44bb5fda40fabd23542d7d4fa755111`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact finite counting for one Boolean clause

A `k`-literal clause on `k` distinct Boolean coordinates has exactly one
falsifying local assignment.  Literal polarity changes which assignment is
falsifying, but not the count.

This file proves only the elementary finite theorem.  It does not formalize
MAX-SAT optimization, randomized approximation algorithms, PCP reductions,
Hastad inapproximability, NP-hardness, or any number-theoretic statement.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_BOOLEAN_CLAUSE_COUNT_ONLY.
-/

namespace GRWTSK.Logic.Satisfiability

/-- A Boolean assignment to `k` distinct local coordinates. -/
abbrev BooleanAssignment (k : ℕ) := Fin k → Bool

/-- For each literal, the Boolean value that makes that literal true. -/
abbrev ClausePolarity (k : ℕ) := Fin k → Bool

/-- The unique assignment making every literal false. -/
def falsifyingAssignment {k : ℕ}
    (polarity : ClausePolarity k) : BooleanAssignment k :=
  fun i => !(polarity i)

/-- A clause is satisfied exactly when the assignment is not its unique
all-literals-false assignment. -/
def ClauseSatisfied {k : ℕ}
    (polarity : ClausePolarity k)
    (assignment : BooleanAssignment k) : Prop :=
  assignment ≠ falsifyingAssignment polarity

/-- The extensional definition agrees with the usual disjunction semantics:
at least one literal receives its satisfying truth value. -/
theorem clauseSatisfied_iff_exists_literal
    {k : ℕ}
    (polarity : ClausePolarity k)
    (assignment : BooleanAssignment k) :
    ClauseSatisfied polarity assignment ↔
      ∃ i : Fin k, assignment i = polarity i := by
  constructor
  · intro hne
    by_contra hnone
    push_neg at hnone
    apply hne
    funext i
    specialize hnone i
    cases hp : polarity i <;> cases ha : assignment i <;>
      simp [falsifyingAssignment, hp, ha] at hnone ⊢
  · rintro ⟨i, hi⟩ heq
    rw [heq] at hi
    cases hp : polarity i <;>
      simp [falsifyingAssignment, hp] at hi

/-- There are exactly `2^k` local Boolean assignments. -/
@[simp]
theorem card_booleanAssignment (k : ℕ) :
    Fintype.card (BooleanAssignment k) = 2 ^ k := by
  simp [BooleanAssignment, Fintype.card_fun]

/-- Every polarity profile has exactly one falsifying assignment. -/
@[simp]
theorem card_clauseNotSatisfied
    {k : ℕ} (polarity : ClausePolarity k) :
    Fintype.card
        {assignment : BooleanAssignment k //
          ¬ ClauseSatisfied polarity assignment} = 1 := by
  classical
  simpa [ClauseSatisfied] using
    (Fintype.card_subtype_eq (falsifyingAssignment polarity))

/-- Every `k`-literal polarity profile has exactly `2^k-1` satisfying local
assignments. -/
theorem card_clauseSatisfied
    {k : ℕ} (polarity : ClausePolarity k) :
    Fintype.card
        {assignment : BooleanAssignment k //
          ClauseSatisfied polarity assignment} = 2 ^ k - 1 := by
  classical
  calc
    Fintype.card
        {assignment : BooleanAssignment k //
          ClauseSatisfied polarity assignment}
        = Fintype.card (BooleanAssignment k) -
            Fintype.card
              {assignment : BooleanAssignment k //
                assignment = falsifyingAssignment polarity} := by
          simpa [ClauseSatisfied] using
            (Fintype.card_subtype_compl
              (fun assignment : BooleanAssignment k =>
                assignment = falsifyingAssignment polarity))
    _ = 2 ^ k - 1 := by
      rw [card_booleanAssignment, Fintype.card_subtype_eq]

/-- The counted success fraction under the uniform distribution on all local
assignments. -/
def countedSuccessFraction
    {k : ℕ} (polarity : ClausePolarity k) : ℝ :=
  (Fintype.card
      {assignment : BooleanAssignment k //
        ClauseSatisfied polarity assignment} : ℝ) /
    (Fintype.card (BooleanAssignment k) : ℝ)

/-- Elementary Mersenne-ratio identity used by the counted probability. -/
theorem cast_two_pow_sub_one_ratio (k : ℕ) :
    (((2 ^ k - 1 : ℕ) : ℝ) / ((2 ^ k : ℕ) : ℝ)) =
      1 - ((1 : ℝ) / 2) ^ k := by
  have hpow : 1 ≤ 2 ^ k :=
    Nat.one_le_pow k 2 (by norm_num)
  rw [Nat.cast_sub hpow]
  norm_num [Nat.cast_pow]
  rw [div_pow]
  norm_num
  have hne : (2 : ℝ) ^ k ≠ 0 := by positivity
  field_simp [hne] <;> ring

/-- The exact uniform success fraction is `1-2^{-k}`, independently of literal
polarity. -/
theorem countedSuccessFraction_eq
    {k : ℕ} (polarity : ClausePolarity k) :
    countedSuccessFraction polarity =
      1 - ((1 : ℝ) / 2) ^ k := by
  rw [countedSuccessFraction, card_clauseSatisfied,
    card_booleanAssignment]
  exact cast_two_pow_sub_one_ratio k

/-- Literal polarity changes the unique bad assignment but not the success
fraction. -/
theorem countedSuccessFraction_polarity_independent
    {k : ℕ} (left right : ClausePolarity k) :
    countedSuccessFraction left = countedSuccessFraction right := by
  rw [countedSuccessFraction_eq, countedSuccessFraction_eq]

end GRWTSK.Logic.Satisfiability
```
