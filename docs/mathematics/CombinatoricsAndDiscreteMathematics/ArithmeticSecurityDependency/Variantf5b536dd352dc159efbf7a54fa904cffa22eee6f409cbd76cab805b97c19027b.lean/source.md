# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityDependency.Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47268be94da8eba2fcf1ea47cb1367a903f8967d` · SHA-256 `74cfcf8c74b19ea0339b1c971357f58f779e12f21db35183241e20290aae9a26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityObligation.Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ArithmeticSecurityObligation.Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/ArithmeticSecurityDependency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic
import Mathematics.Resolution.ArithmeticModularityObligation

/-!
# Recursive arithmetic-security dependency ledger

The analytic, computational, and coupling ledgers remain distinct.  This file
records the exact recursive dependencies of the computational and bridge
channels without treating an unknown as false.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityObligation.Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808

namespace Mathematics.Resolution

inductive ArithmeticSecurityObligation
  | concreteWorkBound
  | queryLowerBound
  | queryToWorkReduction
  | arithmeticAdversaryCoupling
  | adversaryFeasibility
  | adversaryNumerator
  | queryLocalDenominator
  | exponentialScaleIdentification
  | securityGameSemantics
  | effectiveEncoding
  | outputSeparation
  | traceToKernelLift
  | kernelNondegeneracy
  | spectralMultiplicity
  | cancellationControl
  | arithmeticErasureEssentiality
  | oracleIncidence
  | arithmeticQueryLocality
  | schurContraction
  | uniformCoordinateBound
  | purityLocalityTheorem
  | securityParameter
  | arithmeticSizeParameter
  | scaleIdentification
  | uniformExponent
  | effectiveArithmeticSource
  | resourceNaturality
  | concreteReduction
  deriving DecidableEq, Repr, Fintype

inductive ArithmeticSecurityStage
  | root
  | query
  | feasibility
  | numerator
  | denominator
  | scale
  | resourceTransfer
  deriving DecidableEq, Repr

def ArithmeticSecurityObligation.stage :
    ArithmeticSecurityObligation → ArithmeticSecurityStage
  | .concreteWorkBound => .root
  | .queryLowerBound
  | .arithmeticAdversaryCoupling => .query
  | .adversaryFeasibility
  | .securityGameSemantics
  | .effectiveEncoding
  | .outputSeparation
  | .traceToKernelLift
  | .effectiveArithmeticSource => .feasibility
  | .adversaryNumerator
  | .kernelNondegeneracy
  | .spectralMultiplicity
  | .cancellationControl
  | .arithmeticErasureEssentiality => .numerator
  | .queryLocalDenominator
  | .oracleIncidence
  | .arithmeticQueryLocality
  | .schurContraction
  | .uniformCoordinateBound
  | .purityLocalityTheorem => .denominator
  | .exponentialScaleIdentification
  | .securityParameter
  | .arithmeticSizeParameter
  | .scaleIdentification
  | .uniformExponent => .scale
  | .queryToWorkReduction
  | .resourceNaturality
  | .concreteReduction => .resourceTransfer

/-- Immediate prerequisites in the corrected dependency tree. -/
def ArithmeticSecurityObligation.dependencies :
    ArithmeticSecurityObligation →
      Finset ArithmeticSecurityObligation
  | .concreteWorkBound =>
      {.queryLowerBound, .queryToWorkReduction}
  | .queryLowerBound =>
      {.arithmeticAdversaryCoupling}
  | .arithmeticAdversaryCoupling =>
      {
        .adversaryFeasibility,
        .adversaryNumerator,
        .queryLocalDenominator,
        .exponentialScaleIdentification
      }
  | .adversaryFeasibility =>
      {
        .securityGameSemantics,
        .effectiveEncoding,
        .outputSeparation,
        .traceToKernelLift,
        .effectiveArithmeticSource
      }
  | .adversaryNumerator =>
      {
        .kernelNondegeneracy,
        .spectralMultiplicity,
        .cancellationControl,
        .arithmeticErasureEssentiality
      }
  | .queryLocalDenominator =>
      {
        .oracleIncidence,
        .arithmeticQueryLocality,
        .schurContraction,
        .uniformCoordinateBound,
        .purityLocalityTheorem
      }
  | .exponentialScaleIdentification =>
      {
        .securityParameter,
        .arithmeticSizeParameter,
        .scaleIdentification,
        .uniformExponent
      }
  | .queryToWorkReduction =>
      {.resourceNaturality, .concreteReduction}
  | _ => ∅

/-- The nine-node bridge ledger from effective source to resource naturality. -/
def arithmeticSecurityBridgeLedger :
    Finset ArithmeticSecurityObligation :=
  {
    .effectiveArithmeticSource,
    .traceToKernelLift,
    .outputSeparation,
    .oracleIncidence,
    .arithmeticQueryLocality,
    .kernelNondegeneracy,
    .purityLocalityTheorem,
    .exponentialScaleIdentification,
    .resourceNaturality
  }

/-- Computational obligations not assigned to the arithmetic bridge ledger. -/
def arithmeticSecurityComputationalLedger :
    Finset ArithmeticSecurityObligation :=
  Finset.univ \ arithmeticSecurityBridgeLedger

/--
Seven-node diagnostic refinement retained beneath the authoritative
three-macro terminal state.
-/
def arithmeticSecurityConservativeFrontier :
    Finset ArithmeticSecurityObligation :=
  {
    .effectiveArithmeticSource,
    .traceToKernelLift,
    .oracleIncidence,
    .kernelNondegeneracy,
    .purityLocalityTheorem,
    .resourceNaturality,
    .concreteReduction
  }

theorem arithmeticSecurityBridgeLedger_card :
    arithmeticSecurityBridgeLedger.card = 9 := by
  native_decide

theorem arithmeticSecurityComputationalLedger_card :
    arithmeticSecurityComputationalLedger.card = 19 := by
  native_decide

theorem arithmeticSecurityLedgers_disjoint :
    Disjoint arithmeticSecurityComputationalLedger
      arithmeticSecurityBridgeLedger := by
  native_decide

theorem arithmeticSecurityLedgers_complete :
    arithmeticSecurityComputationalLedger ∪
        arithmeticSecurityBridgeLedger =
      (Finset.univ : Finset ArithmeticSecurityObligation) := by
  native_decide

theorem arithmeticSecurityConservativeFrontier_card :
    arithmeticSecurityConservativeFrontier.card = 7 := by
  native_decide

/-- The three ledgers are retained as separately typed certificate channels. -/
structure SeparatedCouplingLedgers where
  analytic : Finset ArithmeticModularityObligation
  computational : Finset ArithmeticSecurityObligation
  bridge : Finset ArithmeticSecurityObligation
  computationalBridgeDisjoint :
    Disjoint computational bridge

def canonicalSeparatedCouplingLedgers :
    SeparatedCouplingLedgers where
  analytic := Finset.univ
  computational := arithmeticSecurityComputationalLedger
  bridge := arithmeticSecurityBridgeLedger
  computationalBridgeDisjoint :=
    arithmeticSecurityLedgers_disjoint

inductive ArithmeticSecurityVerdict (Claim : Prop)
  | certified (proof : Claim)
  | refuted (proof : ¬ Claim)
  | unknown
      (obligations : Finset ArithmeticSecurityObligation)
      (nonempty : obligations.Nonempty)

namespace ArithmeticSecurityVerdict

variable {Claim : Prop}

def IsCertified : ArithmeticSecurityVerdict Claim → Prop
  | .certified _ => True
  | .refuted _ => False
  | .unknown _ _ => False

def IsRefuted : ArithmeticSecurityVerdict Claim → Prop
  | .certified _ => False
  | .refuted _ => True
  | .unknown _ _ => False

def unknowns :
    ArithmeticSecurityVerdict Claim →
      Finset ArithmeticSecurityObligation
  | .certified _ => ∅
  | .refuted _ => ∅
  | .unknown obligations _ => obligations

end ArithmeticSecurityVerdict

/--
Fine-grained compatibility verdict for clients that inspect internal
dependencies.  It is not the authoritative top-level terminal verdict.
-/
def arithmeticSecurityCouplingVerdict
    (Claim : Prop) :
    ArithmeticSecurityVerdict Claim :=
  .unknown arithmeticSecurityConservativeFrontier (by
    exact ⟨.effectiveArithmeticSource, by
      simp [arithmeticSecurityConservativeFrontier]⟩)

@[simp]
theorem arithmeticSecurityCouplingVerdict_unknowns
    (Claim : Prop) :
    (arithmeticSecurityCouplingVerdict Claim).unknowns =
      arithmeticSecurityConservativeFrontier :=
  rfl

@[simp]
theorem arithmeticSecurityCouplingVerdict_not_certified
    (Claim : Prop) :
    ¬ (arithmeticSecurityCouplingVerdict Claim).IsCertified :=
  id

@[simp]
theorem arithmeticSecurityCouplingVerdict_not_refuted
    (Claim : Prop) :
    ¬ (arithmeticSecurityCouplingVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
```
