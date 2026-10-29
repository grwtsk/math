import Surface.Presentation.Syntax

/-!
What is formalized:
Evaluation semantics for Presentation syntax over a proof-carrying complex-like
interface.

What is certificate-gated:
Analytic statements about branches, domains, continuity, or generation of
elementary functions require separate theorem or certificate inputs.

What is not claimed:
This file does not claim analytic completeness of Presentation syntax, global single-valued
logarithm behavior, BSD, RH, or spectral consequences.

Primary mathematical source:
Internal Surface Presentation design notes.  This Surface snapshot does not import
Mathlib's complex-analysis stack, so complex semantics are represented by an
explicit interface.
-/

namespace Surface.Presentation

/-- Boundary marker for total logarithm semantics, especially at zero. -/
structure LogTotalityBoundary where
  statement : String
  claimBoundary : List String
deriving Repr

/-- The default boundary attached to Presentation evaluation. -/
def complexLogTotalityBoundary : LogTotalityBoundary where
  statement := "The logarithm operation is supplied by an explicit semantics interface."
  claimBoundary :=
    [ "Evaluation uses a total logarithm operation supplied by the semantics.",
      "No continuity or branch-cut theorem is inferred from this definition.",
      "No theorem about logarithm at zero is used as analytic authority." ]

/--
A minimal complex-like semantics for Presentation evaluation.

The laws included here are exactly those needed to evaluate the derived `e`
expression.  Analytic properties such as holomorphicity, branch cuts, or
continuity are deliberately absent.
-/
structure ComplexLikeSemantics where
  carrier : Type
  one : carrier
  zero : carrier
  exp : carrier → carrier
  log : carrier → carrier
  sub : carrier → carrier → carrier
  log_one : log one = zero
  sub_zero : ∀ x : carrier, sub x zero = x

/-- The exp-minus-log operator `node(x, y) = exp(x) - log(y)`. -/
def expMinusLogOp (S : ComplexLikeSemantics) (x y : S.carrier) : S.carrier :=
  S.sub (S.exp x) (S.log y)

/-- Evaluate a Presentation expression under a variable environment. -/
def evaluate (S : ComplexLikeSemantics) (env : Nat → S.carrier) : Expr → S.carrier
  | .one => S.one
  | .var n => env n
  | .node lhs rhs => expMinusLogOp S (evaluate S env lhs) (evaluate S env rhs)

/-- Evaluation of the syntactic `e` node gives `exp(1)`. -/
theorem evaluate_e (S : ComplexLikeSemantics) (env : Nat → S.carrier) :
    evaluate S env Expr.e = S.exp S.one := by
  simp [Expr.e, evaluate, expMinusLogOp, S.log_one, S.sub_zero]

/--
Domain-safety predicate for classical analytic readings of Presentation expressions.

Lean-style evaluation remains total, but analytic realization may require that
the right-hand side of every logarithmic argument is nonzero.
-/
def AnalyticallySafe (S : ComplexLikeSemantics) (env : Nat → S.carrier) :
    Expr → Prop
  | .one => True
  | .var _ => True
  | .node lhs rhs =>
      AnalyticallySafe S env lhs ∧
      AnalyticallySafe S env rhs ∧
      evaluate S env rhs ≠ S.zero

end Surface.Presentation
