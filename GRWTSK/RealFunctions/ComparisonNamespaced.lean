-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Core.Variant5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Core.Variant5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e","mathematical_subject":"Analysis.Calculus","original_sha256":"5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Comparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Core
import DAF.Comparison.Properties
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Construction
import DAF.Comparison.Coefficients
import DAF.Comparison.Scope
import DAF.Comparison.Composition
import DAF.Comparison.Naturality
import DAF.Comparison.Chain

/-!
# Certified comparison calculus

This declaration-free umbrella exposes typed comparisons while keeping their
mathematical map, construction provenance, coefficient endpoints, ownership
scope, and logical status separate.

In particular, provenance is independent of logical status: “canonical” does
not mean definitionally equal, and a canonical map may still have only a
conjectural isomorphism claim.  A represented map is canonical only after its
representation has been fixed unless a proof removes that dependence.  A
conjectural target is not a theorem, and metadata proves neither injectivity,
surjectivity, nor equivalence.

Localization and completion change object types.  They are therefore crossed
only by an explicit coefficient change.  Code generation and architecture
manifests record implementation facts; neither is a theorem authority.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Core.Variant5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e

