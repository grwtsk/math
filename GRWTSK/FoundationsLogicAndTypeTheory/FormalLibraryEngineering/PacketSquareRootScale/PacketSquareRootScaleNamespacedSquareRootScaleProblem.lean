-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SquareRootScaleProblem.Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SquareRootScaleProblem.Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Trace/PacketSquareRootScale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Trace.WeilCorrespondence
import Mathlib.Tactic.Ring

/-!
# Packet square-root scale

The final inequality is derived from separately visible packet, arithmetic,
and operator bounds.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SquareRootScaleProblem.Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749

namespace Mathematics.SemiLocalDefect.Trace

universe uScale uTest

structure SquareRootScaleProblem
    (Scale : Type uScale)
    (Test : Type uTest) where
  discrepancy : Scale → Test → ℝ
  scaleWeight : Scale → ℝ
  testWeight : Test → ℝ
  scaleWeight_nonnegative :
    ∀ scale, 0 ≤ scaleWeight scale
  testWeight_nonnegative :
    ∀ test, 0 ≤ testWeight test

structure PacketSquareRootComponents
    {Scale : Type uScale}
    {Test : Type uTest}
    (problem :
      SquareRootScaleProblem Scale Test) where
  packetTerm :
    Scale → Test → ℝ
  arithmeticTail :
    Scale → Test → ℝ
  operatorResidual :
    Scale → Test → ℝ
  exactSplit :
    ∀ scale test,
      problem.discrepancy scale test =
        packetTerm scale test +
          arithmeticTail scale test +
          operatorResidual scale test
  packetConstant : ℝ
  arithmeticConstant : ℝ
  operatorConstant : ℝ
  packetConstant_nonnegative :
    0 ≤ packetConstant
  arithmeticConstant_nonnegative :
    0 ≤ arithmeticConstant
  operatorConstant_nonnegative :
    0 ≤ operatorConstant
  packetBound :
    ∀ scale test,
      |packetTerm scale test| ≤
        packetConstant *
          problem.scaleWeight scale *
          problem.testWeight test
  arithmeticBound :
    ∀ scale test,
      |arithmeticTail scale test| ≤
        arithmeticConstant *
          problem.scaleWeight scale *
          problem.testWeight test
  operatorBound :
    ∀ scale test,
      |operatorResidual scale test| ≤
        operatorConstant *
          problem.scaleWeight scale *
          problem.testWeight test

def SquareRootNormFinite
    {Scale : Type uScale}
    {Test : Type uTest}
    (problem :
      SquareRootScaleProblem Scale Test) : Prop :=
  ∃ constant : ℝ,
    0 ≤ constant ∧
      ∀ scale test,
        |problem.discrepancy scale test| ≤
          constant *
            problem.scaleWeight scale *
            problem.testWeight test

theorem packet_to_discrepancy_squareRoot
    {Scale : Type uScale}
    {Test : Type uTest}
    {problem :
      SquareRootScaleProblem Scale Test}
    (components :
      PacketSquareRootComponents problem) :
    SquareRootNormFinite problem := by
  refine ⟨components.packetConstant +
      components.arithmeticConstant +
      components.operatorConstant, ?_, ?_⟩
  · exact add_nonneg
      (add_nonneg
        components.packetConstant_nonnegative
        components.arithmeticConstant_nonnegative)
      components.operatorConstant_nonnegative
  · intro scale test
    rw [components.exactSplit]
    calc
      |components.packetTerm scale test +
          components.arithmeticTail scale test +
          components.operatorResidual scale test|
          ≤
        |components.packetTerm scale test| +
          |components.arithmeticTail scale test| +
          |components.operatorResidual scale test| := by
            exact abs_add_three _ _ _
      _ ≤
        components.packetConstant *
              problem.scaleWeight scale *
              problem.testWeight test +
          components.arithmeticConstant *
              problem.scaleWeight scale *
              problem.testWeight test +
          components.operatorConstant *
              problem.scaleWeight scale *
              problem.testWeight test :=
        add_le_add
          (add_le_add
            (components.packetBound scale test)
            (components.arithmeticBound scale test))
          (components.operatorBound scale test)
      _ =
        (components.packetConstant +
            components.arithmeticConstant +
            components.operatorConstant) *
          problem.scaleWeight scale *
          problem.testWeight test := by ring

end Mathematics.SemiLocalDefect.Trace
