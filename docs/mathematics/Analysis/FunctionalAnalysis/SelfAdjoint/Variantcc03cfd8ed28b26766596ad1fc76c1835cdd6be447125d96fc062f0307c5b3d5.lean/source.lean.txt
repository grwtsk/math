-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.HilbertSymmetricOperator.Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.HilbertSymmetricOperator.Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Hilbert/SelfAdjoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Hilbert.Operator


namespace GRWTSK.Analysis.FunctionalAnalysis.HilbertSymmetricOperator.Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579

namespace Surface

universe u v

/-!
What is formalized:
Symmetric-operator and self-adjointness certificate interfaces.

What is certificate-gated:
Symmetry and self-adjointness are Prop-valued fields, not consequences of finite
matrix symmetry alone.

What is not claimed:
Finite symmetry is not promoted to analytic self-adjointness without an explicit
`SelfAdjointCertificate`.

Primary mathematical source:
Internal Surface Hilbert operator-boundary discipline.
-/

structure Hilbert.SymmetricOperator
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  symmetric : Prop
  symmetricCertified : symmetric
  boundary : List String

structure Hilbert.SelfAdjointCertificate
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  symmetric : Hilbert.SymmetricOperator T
  selfAdjoint : Prop
  selfAdjointCertified : selfAdjoint
  domainBoundary : List String
  boundary : List String

theorem Hilbert.selfAdjoint_implies_symmetric
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : Hilbert.SelfAdjointCertificate T) :
    C.symmetric.symmetric :=
  C.symmetric.symmetricCertified

end Surface
