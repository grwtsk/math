# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variant8b75b75d0801620390db45df42e559b86e4c769f15b423b2ee83bdccece1286e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80eaac93f520aec02c1b149c856af239861cd178` · SHA-256 `959ce61b59dc2c39d89a4263c8e95df46ab23312f4c3bdc0bc3bfbed2a967f45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogTotalityBoundary.Variant937d97e8996b73b2898a2122e9b1db3670a93af33f514c4e435982bee16eef48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"937d97e8996b73b2898a2122e9b1db3670a93af33f514c4e435982bee16eef48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LogTotalityBoundary.Variant937d97e8996b73b2898a2122e9b1db3670a93af33f514c4e435982bee16eef48","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"937d97e8996b73b2898a2122e9b1db3670a93af33f514c4e435982bee16eef48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.Syntax

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
Internal Presentation design notes.  This snapshot does not import
Mathlib's complex-analysis stack, so complex semantics are represented by an
explicit interface.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogTotalityBoundary.Variant937d97e8996b73b2898a2122e9b1db3670a93af33f514c4e435982bee16eef48

namespace Presentation

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

end Presentation
```
