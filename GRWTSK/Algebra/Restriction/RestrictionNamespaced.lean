-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Finite.Variant34bb24f0e6d38d6c3a6d6ca2270bb6e3eb79a6c5a3d8002e6c4c5ab46c359f3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34bb24f0e6d38d6c3a6d6ca2270bb6e3eb79a6c5a3d8002e6c4c5ab46c359f3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Finite.Variant34bb24f0e6d38d6c3a6d6ca2270bb6e3eb79a6c5a3d8002e6c4c5ab46c359f3e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"34bb24f0e6d38d6c3a6d6ca2270bb6e3eb79a6c5a3d8002e6c4c5ab46c359f3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/GaloisCohomology/Restriction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.GaloisCohomology.Finite


namespace GRWTSK.Algebra.Finite.Variant34bb24f0e6d38d6c3a6d6ca2270bb6e3eb79a6c5a3d8002e6c4c5ab46c359f3e

namespace Surface.Arithmetic
namespace GaloisCohomology

/-!
# Restriction for finite degree-one cohomology

What is formalized:
The restriction API for finite abstract `H1`.  The definitions and checked
theorems are implemented in `Finite`: `resC1`, `resZ1`, `resFiniteH1`,
`restriction_preserves_oneCocycle`, `restriction_preserves_oneCoboundary`,
`resFiniteH1_id`, and `resFiniteH1_comp`.

What is certificate-gated:
Only action compatibility of the finite group homomorphism is an input.

What is not claimed:
This module does not introduce local fields, absolute Galois groups, continuous
cochains, arithmetic-descent maps, Selmer exact sequences, Sha, or BSD.

Dependency invariant:
Weak descent, Sha, and BSD-facing interfaces must use this finite restriction
substrate before any later continuous or absolute-Galois adapter.
-/

end GaloisCohomology
end Surface.Arithmetic
