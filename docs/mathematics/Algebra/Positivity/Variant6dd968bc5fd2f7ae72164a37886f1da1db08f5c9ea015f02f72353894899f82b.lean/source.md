# Complete source: GRWTSK.Algebra.Positivity.Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd25e4eb1d51fbd33e426778681953c7091e275a` · SHA-256 `ee6a70f5866e33b9450a8c858139ef0ccfa51fe86c8ee69f0b1966c574a9959c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ArithmeticPositivityCriterion.Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ArithmeticPositivityCriterion.Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Positivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Cofinal

/-!
# Exact trace-positivity route

Positivity has arithmetic authority only after exact factorization over the
complete admitted test class.
-/


namespace GRWTSK.Algebra.ArithmeticPositivityCriterion.Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799

namespace Mathematics.RHIsolation

universe uTest uAlgebra

structure ArithmeticPositivityCriterion
    (xi : ℂ → ℂ) where
  Test : Type uTest
  admissible : Test → Prop
  functional : Test → ℝ
  equivalentToRH :
    (∀ test,
      admissible test →
      0 ≤ functional test) ↔
      RiemannHypothesisFor xi

structure PositiveTraceAlgebra
    (Algebra : Type uAlgebra) where
  star : Algebra → Algebra
  multiply : Algebra → Algebra → Algebra
  trace : Algebra → ℝ
  positive :
    ∀ element,
      0 ≤ trace
        (multiply (star element) element)

structure TracePositivityFactorization
    {xi : ℂ → ℂ}
    (criterion :
      ArithmeticPositivityCriterion xi)
    (Algebra : Type uAlgebra) where
  algebra : PositiveTraceAlgebra Algebra
  factor :
    criterion.Test → Algebra
  exact :
    ∀ test,
      criterion.admissible test →
      criterion.functional test =
        algebra.trace
          (algebra.multiply
            (algebra.star (factor test))
            (factor test))

theorem tracePositivityFactorization_implies_RH
    {xi : ℂ → ℂ}
    {Algebra : Type uAlgebra}
    (criterion :
      ArithmeticPositivityCriterion xi)
    (factorization :
      TracePositivityFactorization
        criterion Algebra) :
    RiemannHypothesisFor xi := by
  apply criterion.equivalentToRH.mp
  intro test admissible
  rw [factorization.exact test admissible]
  exact factorization.algebra.positive
    (factorization.factor test)

theorem exact_trace_factorization_implies_RH
    {xi : ℂ → ℂ}
    {Algebra : Type uAlgebra}
    (criterion :
      ArithmeticPositivityCriterion xi)
    (factorization :
      TracePositivityFactorization
        criterion Algebra) :
    RiemannHypothesisFor xi :=
  tracePositivityFactorization_implies_RH
    criterion factorization

end Mathematics.RHIsolation
```
