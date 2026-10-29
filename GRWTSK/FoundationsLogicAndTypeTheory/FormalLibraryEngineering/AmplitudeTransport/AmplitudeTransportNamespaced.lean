-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveAmplitudeTransport.Variant957f58600e7156f1a54998db6164ec09ec6f3aef627a0cc12372e174dbcb1b46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"957f58600e7156f1a54998db6164ec09ec6f3aef627a0cc12372e174dbcb1b46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositiveAmplitudeTransport.Variant957f58600e7156f1a54998db6164ec09ec6f3aef627a0cc12372e174dbcb1b46","mathematical_subject":"Foundations.Unclassified","original_sha256":"957f58600e7156f1a54998db6164ec09ec6f3aef627a0cc12372e174dbcb1b46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/AmplitudeTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph

/-!
# Positive amplitude transport
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveAmplitudeTransport.Variant957f58600e7156f1a54998db6164ec09ec6f3aef627a0cc12372e174dbcb1b46

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure PositiveAmplitudeTransport
    (graph : GraphCut) where
  weight : Arc graph → ℝ
  positive :
    ∀ arc,
      0 < weight arc
  reverse :
    ∀ arc,
      weight arc.reverse =
        (weight arc)⁻¹

def DeflectionPath.amplitudeWeight
    {graph : GraphCut}
    (transport :
      PositiveAmplitudeTransport graph)
    {source target : graph.Node} :
    DeflectionPath graph source target → ℝ
  | .nil _ => 1
  | .cons arc rest =>
      rest.amplitudeWeight transport *
        transport.weight arc

theorem DeflectionPath.amplitudeWeight_positive
    {graph : GraphCut}
    (transport :
      PositiveAmplitudeTransport graph)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target) :
    0 < path.amplitudeWeight transport := by
  induction path with
  | nil =>
      exact zero_lt_one
  | cons arc rest induction =>
      exact mul_pos induction
        (transport.positive arc)

structure PositiveAmplitude where
  value : ℝ
  positive : 0 < value

def PositiveAmplitude.transport
    {graph : GraphCut}
    {source target : graph.Node}
    (amplitude : PositiveAmplitude)
    (transport :
      PositiveAmplitudeTransport graph)
    (path :
      DeflectionPath graph source target) :
    PositiveAmplitude where
  value :=
    path.amplitudeWeight transport *
      amplitude.value
  positive :=
    mul_pos
      (path.amplitudeWeight_positive transport)
      amplitude.positive

end Mathematics.SemiLocalDefect.ResidueDeflection
