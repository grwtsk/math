# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityMacro.Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `640aac49d617fcde57bea49d2b079d1c3246769e` · SHA-256 `0ee32dc41ab500f76c1df45c7e51c275b2c25f16e4acdd908e053469eca1e3b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityMacroObligation.Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ArithmeticSecurityMacroObligation.Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/ArithmeticSecurityMacro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic
import Mathematics.Resolution.ArithmeticSecurityDependency

/-!
# Three terminal arithmetic-security macro-unknowns

The three-node terminal state is authoritative.  Each node expands to its
machine-readable internal obligations without changing the terminal status.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityMacroObligation.Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e

namespace Mathematics.Resolution

inductive ArithmeticSecurityMacroObligation
  | arithmeticSecurityFunctor
  | traceToAdversaryBridge
  | purityToHardnessBridge
  deriving DecidableEq, Repr, Fintype

/-- Canonical presentation order of the exact terminal expression. -/
def terminalArithmeticSecurityMacroOrder :
    List ArithmeticSecurityMacroObligation :=
  [
    .arithmeticSecurityFunctor,
    .traceToAdversaryBridge,
    .purityToHardnessBridge
  ]

theorem terminalArithmeticSecurityMacroOrder_nodup :
    terminalArithmeticSecurityMacroOrder.Nodup := by
  native_decide

def ArithmeticSecurityMacroObligation.refinement :
    ArithmeticSecurityMacroObligation →
      Finset ArithmeticSecurityObligation
  | .arithmeticSecurityFunctor =>
      {
        .effectiveArithmeticSource,
        .effectiveEncoding,
        .oracleIncidence,
        .resourceNaturality,
        .securityGameSemantics,
        .concreteReduction
      }
  | .traceToAdversaryBridge =>
      {
        .traceToKernelLift,
        .outputSeparation,
        .adversaryFeasibility,
        .kernelNondegeneracy,
        .cancellationControl
      }
  | .purityToHardnessBridge =>
      {
        .arithmeticQueryLocality,
        .purityLocalityTheorem,
        .schurContraction,
        .uniformCoordinateBound,
        .exponentialScaleIdentification
      }

theorem arithmeticSecurityFunctor_refinement_card :
    ArithmeticSecurityMacroObligation.arithmeticSecurityFunctor
        |>.refinement.card = 6 := by
  native_decide

theorem traceToAdversaryBridge_refinement_card :
    ArithmeticSecurityMacroObligation.traceToAdversaryBridge
        |>.refinement.card = 5 := by
  native_decide

theorem purityToHardnessBridge_refinement_card :
    ArithmeticSecurityMacroObligation.purityToHardnessBridge
        |>.refinement.card = 5 := by
  native_decide

def terminalArithmeticSecurityMacros :
    Finset ArithmeticSecurityMacroObligation :=
  Finset.univ

theorem terminalArithmeticSecurityMacroOrder_toFinset :
    terminalArithmeticSecurityMacroOrder.toFinset =
      terminalArithmeticSecurityMacros := by
  native_decide

theorem terminalArithmeticSecurityMacros_card :
    terminalArithmeticSecurityMacros.card = 3 := by
  native_decide

inductive ArithmeticSecurityMacroVerdict (Claim : Prop)
  | certified (proof : Claim)
  | refuted (proof : ¬ Claim)
  | unknown
      (obligations : Finset ArithmeticSecurityMacroObligation)
      (nonempty : obligations.Nonempty)

namespace ArithmeticSecurityMacroVerdict

variable {Claim : Prop}

def IsCertified : ArithmeticSecurityMacroVerdict Claim → Prop
  | .certified _ => True
  | .refuted _ => False
  | .unknown _ _ => False

def IsRefuted : ArithmeticSecurityMacroVerdict Claim → Prop
  | .certified _ => False
  | .refuted _ => True
  | .unknown _ _ => False

def unknowns :
    ArithmeticSecurityMacroVerdict Claim →
      Finset ArithmeticSecurityMacroObligation
  | .certified _ => ∅
  | .refuted _ => ∅
  | .unknown obligations _ => obligations

end ArithmeticSecurityMacroVerdict

def terminalArithmeticSecurityVerdict
    (Claim : Prop) :
    ArithmeticSecurityMacroVerdict Claim :=
  .unknown terminalArithmeticSecurityMacros (by
    exact ⟨.arithmeticSecurityFunctor, by
      simp [terminalArithmeticSecurityMacros]⟩)

@[simp]
theorem terminalArithmeticSecurityVerdict_unknowns
    (Claim : Prop) :
    (terminalArithmeticSecurityVerdict Claim).unknowns =
      terminalArithmeticSecurityMacros :=
  rfl

@[simp]
theorem terminalArithmeticSecurityVerdict_not_certified
    (Claim : Prop) :
    ¬ (terminalArithmeticSecurityVerdict Claim).IsCertified :=
  id

@[simp]
theorem terminalArithmeticSecurityVerdict_not_refuted
    (Claim : Prop) :
    ¬ (terminalArithmeticSecurityVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
```
