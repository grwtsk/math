# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variant3a8a82bc7df2f6bd7e62da4e3eab9339c974d6192b05d8a2b7800ece738d99f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1869559a9882e7e6f4647195e8a8ed3886ee63b2` · SHA-256 `f491d8d336362c6bac3cca56adf86824d81f68e5efeff1464fec4954d808000e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogTotalityBoundary.Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LogTotalityBoundary.Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Presentation/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogTotalityBoundary.Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231

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
```
