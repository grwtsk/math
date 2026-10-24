# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Minimize.Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `703fd57fa27516013d5a02a478d14757b2663f42` · SHA-256 `6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree.SOP

namespace Boolean

universe u

namespace ProductTerm

/-- Test whether a product term contains a literal. -/
def containsLiteral [DecidableEq α]
    (lit : Literal α) :
    ProductTerm α → Bool
  | [] => false
  | head :: rest =>
      if head = lit then
        true
      else
        containsLiteral lit rest

/--
A product term subsumes another when every literal in the first term appears in
the second. Semantically, the first term is at least as general.
-/
def subsumes [DecidableEq α] :
    ProductTerm α → ProductTerm α → Bool
  | [], _ => true
  | lit :: rest, rhs =>
      containsLiteral lit rhs && subsumes rest rhs

theorem eval_literal_of_containsLiteral
    [DecidableEq α]
    (ν : Valuation α)
    (lit : Literal α) :
    ∀ term : ProductTerm α,
      containsLiteral lit term = true →
        ProductTerm.eval ν term = true →
          Literal.eval ν lit = true
  | [], hcontains, _hterm => by
      cases hcontains
  | head :: rest, hcontains, hterm => by
      by_cases hhead : head = lit
      · subst head
        change
          (Literal.eval ν lit && ProductTerm.eval ν rest) = true at hterm
        rw [Bool.and_eq_true] at hterm
        exact hterm.1
      · have hrestContains :
            containsLiteral lit rest = true := by
          simpa [containsLiteral, hhead] using hcontains
        have hrestEval :
            ProductTerm.eval ν rest = true := by
          change
            (Literal.eval ν head && ProductTerm.eval ν rest) = true at hterm
          rw [Bool.and_eq_true] at hterm
          exact hterm.2
        exact eval_literal_of_containsLiteral ν lit rest
          hrestContains hrestEval

theorem eval_true_of_subsumes
    [DecidableEq α]
    (ν : Valuation α) :
    ∀ left right : ProductTerm α,
      subsumes left right = true →
        ProductTerm.eval ν right = true →
          ProductTerm.eval ν left = true
  | [], _right, _hsub, _hright => rfl
  | lit :: rest, right, hsub, hright => by
      have hcontains :
          containsLiteral lit right = true := by
        change
          (containsLiteral lit right && subsumes rest right) = true at hsub
        rw [Bool.and_eq_true] at hsub
        exact hsub.1
      have hrestSub :
          subsumes rest right = true := by
        change
          (containsLiteral lit right && subsumes rest right) = true at hsub
        rw [Bool.and_eq_true] at hsub
        exact hsub.2
      have hlit :
          Literal.eval ν lit = true :=
        eval_literal_of_containsLiteral ν lit right hcontains hright
      have hrest :
          ProductTerm.eval ν rest = true :=
        eval_true_of_subsumes ν rest right hrestSub hright
      change
        (Literal.eval ν lit && ProductTerm.eval ν rest) = true
      rw [hlit, hrest]
      rfl

theorem eval_right_false_of_subsumes_left_false
    [DecidableEq α]
    (ν : Valuation α)
    {left right : ProductTerm α}
    (hsub : subsumes left right = true)
    (hleft : ProductTerm.eval ν left = false) :
    ProductTerm.eval ν right = false := by
  cases hright : ProductTerm.eval ν right
  · rfl
  · have hleftTrue :
        ProductTerm.eval ν left = true :=
      eval_true_of_subsumes ν left right hsub hright
    rw [hleft] at hleftTrue
    cases hleftTrue

theorem eval_or_right_of_subsumes
    [DecidableEq α]
    (ν : Valuation α)
    {left right : ProductTerm α}
    (hsub : subsumes left right = true) :
    (ProductTerm.eval ν left || ProductTerm.eval ν right) =
      ProductTerm.eval ν left := by
  cases hleft : ProductTerm.eval ν left
  · have hright :=
      eval_right_false_of_subsumes_left_false ν hsub hleft
    rw [hright]
    rfl
  · rfl

end ProductTerm

namespace SumOfProducts

/-- Test whether `terms` contains a product term that subsumes `term`. -/
def hasSubsumingTerm [DecidableEq α]
    (term : ProductTerm α) :
    SumOfProducts α → Bool
  | [] => false
  | candidate :: rest =>
      ProductTerm.subsumes candidate term ||
        hasSubsumingTerm term rest

/-- Remove every product term subsumed by `term`. -/
def removeSubsumedBy [DecidableEq α]
    (term : ProductTerm α) :
    SumOfProducts α → SumOfProducts α
  | [] => []
  | candidate :: rest =>
      if ProductTerm.subsumes term candidate then
        removeSubsumedBy term rest
      else
        candidate :: removeSubsumedBy term rest

/--
Small Espresso-style SOP minimizer.

It removes duplicate terms and product terms absorbed by a more general term.
-/
def minimize [DecidableEq α] :
    SumOfProducts α → SumOfProducts α
  | [] => []
  | term :: terms =>
      let rest := minimize terms
      if hasSubsumingTerm term rest then
        rest
      else
        term :: removeSubsumedBy term rest

theorem eval_true_of_hasSubsumingTerm
    [DecidableEq α]
    (ν : Valuation α)
    (term : ProductTerm α) :
    ∀ terms : SumOfProducts α,
      hasSubsumingTerm term terms = true →
        ProductTerm.eval ν term = true →
          SumOfProducts.eval ν terms = true
  | [], hhas, _hterm => by
      cases hhas
  | candidate :: rest, hhas, hterm => by
      cases hsub : ProductTerm.subsumes candidate term
      · have hrestHas :
            hasSubsumingTerm term rest = true := by
          simpa [hasSubsumingTerm, hsub] using hhas
        have hrestEval :
            SumOfProducts.eval ν rest = true :=
          eval_true_of_hasSubsumingTerm ν term rest hrestHas hterm
        simp [SumOfProducts.eval, hrestEval]
      · have hcandidate :
            ProductTerm.eval ν candidate = true :=
          ProductTerm.eval_true_of_subsumes ν candidate term hsub hterm
        simp [SumOfProducts.eval, hcandidate]

theorem eval_removeSubsumedBy_or
    [DecidableEq α]
    (ν : Valuation α)
    (term : ProductTerm α) :
    ∀ terms : SumOfProducts α,
      (ProductTerm.eval ν term ||
          SumOfProducts.eval ν (removeSubsumedBy term terms)) =
        (ProductTerm.eval ν term || SumOfProducts.eval ν terms)
  | [] => rfl
  | candidate :: rest => by
      by_cases hsub :
          ProductTerm.subsumes term candidate = true
      · have ih := eval_removeSubsumedBy_or ν term rest
        simp [removeSubsumedBy, hsub, SumOfProducts.eval]
        cases hterm : ProductTerm.eval ν term
        · have hcandidate :
          ProductTerm.eval ν candidate = false :=
            ProductTerm.eval_right_false_of_subsumes_left_false
              ν hsub hterm
          rw [hterm] at ih
          simp at ih
          rw [hcandidate]
          exact ih
        · rfl
      · have hsubFalse :
          ProductTerm.subsumes term candidate = false := by
          cases h :
              ProductTerm.subsumes term candidate
          · rfl
          · exact False.elim (hsub h)
        have ih := eval_removeSubsumedBy_or ν term rest
        simp [removeSubsumedBy, hsubFalse, SumOfProducts.eval]
        cases hterm : ProductTerm.eval ν term
        · cases hcandidate : ProductTerm.eval ν candidate
          · rw [hterm] at ih
            simp at ih
            simpa using ih
          · rfl
        · rfl

theorem eval_minimize
    [DecidableEq α]
    (ν : Valuation α) :
    ∀ sop : SumOfProducts α,
      SumOfProducts.eval ν (minimize sop) =
        SumOfProducts.eval ν sop
  | [] => rfl
  | term :: terms => by
      have ih :
          SumOfProducts.eval ν (minimize terms) =
            SumOfProducts.eval ν terms := by
        exact eval_minimize ν terms
      by_cases hhas :
          hasSubsumingTerm term (minimize terms) = true
      · simp [minimize, hhas, SumOfProducts.eval]
        rw [← ih]
        cases hterm : ProductTerm.eval ν term
        · cases SumOfProducts.eval ν (minimize terms) <;> rfl
        · have hrest :
              SumOfProducts.eval ν (minimize terms) = true :=
            eval_true_of_hasSubsumingTerm
              ν term (minimize terms) hhas hterm
          rw [hrest]
          rfl
      · have hhasFalse :
          hasSubsumingTerm term (minimize terms) = false := by
          cases h : hasSubsumingTerm term (minimize terms)
          · rfl
          · exact False.elim (hhas h)
        simp [minimize, hhasFalse, SumOfProducts.eval]
        rw [← ih]
        exact eval_removeSubsumedBy_or ν term (minimize terms)

end SumOfProducts

end Boolean
```
