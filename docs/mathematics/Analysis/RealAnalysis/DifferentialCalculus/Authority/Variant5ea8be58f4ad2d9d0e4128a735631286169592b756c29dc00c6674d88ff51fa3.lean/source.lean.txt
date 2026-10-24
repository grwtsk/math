-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ClaimKind.Variantee99cd1aa9f908a4afdc313071e5def366327061d1843402b953aa606a405e8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee99cd1aa9f908a4afdc313071e5def366327061d1843402b953aa606a405e8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ClaimKind.Variantee99cd1aa9f908a4afdc313071e5def366327061d1843402b953aa606a405e8c","mathematical_subject":"Analysis.Calculus","original_sha256":"ee99cd1aa9f908a4afdc313071e5def366327061d1843402b953aa606a405e8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Codex/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kernel.AuthorityGate

/-!
Codex authority audit surface.

The checked authority gate calculus lives in `Think.Kernel.AuthorityGate`. This
module keeps the Codex audit surface under the canonical `formal/Think/**` tree
without creating a new authority source.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ClaimKind.Variantee99cd1aa9f908a4afdc313071e5def366327061d1843402b953aa606a405e8c

namespace Think.Codex.Authority

abbrev ClaimKind := Think.Kernel.AuthorityGate.ClaimKind
abbrev TheoremAuthority := Think.Kernel.AuthorityGate.TheoremAuthority
abbrev AuthoritySurface := Think.Kernel.AuthorityGate.AuthoritySurface
abbrev AuthorityTransitionGate :=
  Think.Kernel.AuthorityGate.AuthorityTransitionGate
abbrev AuthorityTransition := Think.Kernel.AuthorityGate.AuthorityTransition
abbrev AuthorityContext := Think.Kernel.AuthorityGate.AuthorityContext

theorem wrapper_non_promotion_for_gate_free_runs
    (Γ : AuthorityContext) {x y : AuthoritySurface}
    (hRun : Γ.GateFreeRun x y)
    (hStart : ¬ x.mayForwardTheorem) :
    ¬ y.mayForwardTheorem :=
  Think.Kernel.AuthorityGate.authority_non_promotion_for_gate_free_runs
    Γ hRun hStart

end Think.Codex.Authority
