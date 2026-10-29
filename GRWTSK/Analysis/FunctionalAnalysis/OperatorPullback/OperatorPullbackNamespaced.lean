-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/OperatorPullback.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PacketModel
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Fixed-Hilbert operator pullback
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

universe uHilbert

noncomputable def operatorPullback
    {Hilbert : Type uHilbert}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (transport defect : HilbertEnd Hilbert) :
    HilbertEnd Hilbert :=
  transport.adjoint.comp
    (defect.comp transport)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
