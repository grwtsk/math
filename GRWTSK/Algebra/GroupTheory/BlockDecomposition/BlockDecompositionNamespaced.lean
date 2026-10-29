-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.OperatorComposition.Variantac34ba309dbb7624da43be81598459df541f2630d1639da92913abaa24ff7e90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac34ba309dbb7624da43be81598459df541f2630d1639da92913abaa24ff7e90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.OperatorComposition.Variantac34ba309dbb7624da43be81598459df541f2630d1639da92913abaa24ff7e90","mathematical_subject":"Algebra.Groups","original_sha256":"ac34ba309dbb7624da43be81598459df541f2630d1639da92913abaa24ff7e90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/BlockDecomposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.BalanceGauge

/-!
# Hardy block decomposition

The product law explicitly retains the off-diagonal interaction term.
-/


namespace GRWTSK.Algebra.GroupTheory.OperatorComposition.Variantac34ba309dbb7624da43be81598459df541f2630d1639da92913abaa24ff7e90

namespace Mathematics.SemiLocalDefect.Hardy

universe uSymbol

structure OperatorComposition
    (model : OperatorModel) where
  compose :
    model.Operator → model.Operator → model.Operator
  adjoint :
    model.Operator → model.Operator
  compose_assoc :
    ∀ first second third,
      compose (compose first second) third =
        compose first (compose second third)
  identity_comp :
    ∀ operator,
      compose model.identity operator = operator
  comp_identity :
    ∀ operator,
      compose operator model.identity = operator
  adjoint_involutive :
    Function.Involutive adjoint

structure HardyBlockModel
    (model : OperatorModel)
    (Symbol : Type uSymbol)
    [CommGroup Symbol] where
  operations : OperatorComposition model
  toeplitz : Symbol → model.Operator
  upperLeakage : Symbol → model.Operator
  hardyLeakage : Symbol → model.Operator
  remainder : Symbol → model.Operator
  blockProductToeplitz :
    ∀ left right,
      toeplitz (left * right) =
        operations.compose
            (toeplitz left) (toeplitz right) +
          operations.compose
            (upperLeakage left)
            (hardyLeakage right)
  blockProductHardy :
    ∀ left right,
      hardyLeakage (left * right) =
        operations.compose
            (hardyLeakage left) (toeplitz right) +
          operations.compose
            (remainder left) (hardyLeakage right)

structure HardyProductInteraction
    {model : OperatorModel}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    (blocks : HardyBlockModel model Symbol)
    (left right : Symbol) where
  inheritedLeakage : model.Operator
  newLeakage : model.Operator
  crossTerm : model.Operator
  inherited_eq :
    inheritedLeakage =
      blocks.operations.compose
        (blocks.hardyLeakage left)
        (blocks.toeplitz right)
  new_eq :
    newLeakage =
      blocks.operations.compose
        (blocks.remainder left)
        (blocks.hardyLeakage right)
  expansion :
    blocks.hardyLeakage (left * right) =
      inheritedLeakage +
        newLeakage + crossTerm

end Mathematics.SemiLocalDefect.Hardy
