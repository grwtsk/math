-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityClass.Variant1264d04f5b0a5878158f5fca6556a45dfb2439bd85dfabd9aaae93aa6d2deb97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1264d04f5b0a5878158f5fca6556a45dfb2439bd85dfabd9aaae93aa6d2deb97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuthorityClass.Variant1264d04f5b0a5878158f5fca6556a45dfb2439bd85dfabd9aaae93aa6d2deb97","mathematical_subject":"Computation.DataStructures","original_sha256":"1264d04f5b0a5878158f5fca6556a45dfb2439bd85dfabd9aaae93aa6d2deb97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.Semantics

/-!
What is formalized:
Polymorphic Presentation records and specialized complex-like realization
certificates.

What is certificate-gated:
The target-specific realization relation must be provided separately.  The
Presentation tree is syntax, not the mathematical object itself.

What is not claimed:
Presentations are not theorem authority and do not establish analytic,
arithmetic, spectral, or external comparison claims.

Primary mathematical source:
Proof-boundary discipline for descriptor syntax versus checked theorem
objects.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityClass.Variant1264d04f5b0a5878158f5fca6556a45dfb2439bd85dfabd9aaae93aa6d2deb97

namespace Presentation

/-- Authority class attached to a Presentation boundary. -/
inductive AuthorityClass where
  | interface
  | certificate
  | implementationTheorem
  | mathematicalTheorem
deriving Repr, DecidableEq

/-- Mode by which a presentation is intended to be realized. -/
inductive RealizationMode where
  | finite
  | quotient
  | completion
  | measurableLimit
  | operatorLimit
  | sheafified
  | oracle
deriving Repr, DecidableEq

/-- Claim-boundary metadata for Presentation artifacts. -/
structure ClaimBoundary where
  authority : AuthorityClass
  mode : RealizationMode
  legacyFree : Bool
  theoremFacingAllowed : Bool
  claimBoundary : List String
deriving Repr

/-- A Presentation is syntax plus a target value, not a theorem. -/
structure Presentation (α : Type u) where
  boundary : ClaimBoundary
  expr : Expr
  target : α

/--
A generic realization certificate shell.

The field `realizes` is intentionally explicit: downstream domains must state
the actual realization predicate they prove.
-/
structure RealizationCertificate {α : Type u} (pres : Presentation α) where
  realizes : Prop
  proof : realizes
  boundary : ClaimBoundary

/-- Specialized equality-based realization for complex-like Presentation evaluation. -/
structure ComplexRealizes
    (S : ComplexLikeSemantics)
    (pres : Presentation S.carrier) where
  env : Nat → S.carrier
  sound : evaluate S env pres.expr = pres.target

theorem complexRealizes_sound
    {S : ComplexLikeSemantics}
    {pres : Presentation S.carrier}
    (cert : ComplexRealizes S pres) :
    evaluate S cert.env pres.expr = pres.target :=
  cert.sound

end Presentation
