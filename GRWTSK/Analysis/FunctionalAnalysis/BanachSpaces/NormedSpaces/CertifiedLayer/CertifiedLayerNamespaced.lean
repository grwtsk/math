-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.CertificationResult.Variant771d533aeb8242778541ded4e3af9211ca50af0e50af35959dfdf2914c1fe11f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"771d533aeb8242778541ded4e3af9211ca50af0e50af35959dfdf2914c1fe11f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.CertificationResult.Variant771d533aeb8242778541ded4e3af9211ca50af0e50af35959dfdf2914c1fe11f","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"771d533aeb8242778541ded4e3af9211ca50af0e50af35959dfdf2914c1fe11f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/NeuralDiffusion/CertifiedLayer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.Transport

/-!
# State-preserving neural layers

The analytic candidate has no semantic authority.  Only the `accepted` branch
of `CertificationResult` returns a value of the exact certified-state type.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.CertificationResult.Variant771d533aeb8242778541ded4e3af9211ca50af0e50af35959dfdf2914c1fe11f

namespace Mathematics.NeuralDiffusion

universe u v w

noncomputable section

inductive CertificationResult (State : Type u)
  | accepted (state : State)
  | reject
  deriving DecidableEq, Repr

/--
Realize, diffuse, and certify.  Reconstruction and image-membership checking are
combined in `certify`; a failed proof must return `reject`.
-/
structure CertifiedLayer
    (State : Type u) (A : Type v) (B : Type w)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    (algebra : ConvolutionInvolution A)
    (diffuser : LinearDiffuser B)
    (transport : CompatibleTransport A B algebra diffuser) where
  analytic : AnalyticLayer A B algebra diffuser transport
  realize : State → B
  certify : B → CertificationResult State

namespace CertifiedLayer

variable
    {State : Type u} {A : Type v} {B : Type w}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    {algebra : ConvolutionInvolution A}
    {diffuser : LinearDiffuser B}
    {transport : CompatibleTransport A B algebra diffuser}

def step
    (layer : CertifiedLayer State A B algebra diffuser transport)
    (state : State) :
    CertificationResult State :=
  layer.certify (layer.analytic.candidate (layer.realize state))

/-- By construction, a layer can only return a certified state or rejection. -/
theorem exact_state_preservation
    (layer : CertifiedLayer State A B algebra diffuser transport)
    (state : State) :
    (∃ accepted, layer.step state = .accepted accepted) ∨
      layer.step state = .reject := by
  cases layer.step state <;> simp

end CertifiedLayer

end

end Mathematics.NeuralDiffusion
