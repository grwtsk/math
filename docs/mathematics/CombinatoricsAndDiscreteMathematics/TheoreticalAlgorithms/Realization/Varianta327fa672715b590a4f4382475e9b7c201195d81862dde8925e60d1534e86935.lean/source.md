# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Realization.Varianta327fa672715b590a4f4382475e9b7c201195d81862dde8925e60d1534e86935

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a81648fdcf69f0ac957f4695aa0acf90b80469d` · SHA-256 `0edf21c8dec77e05fb470229e11fbfd8772a78fbb8753153f2d7fa893d6c8266`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityClass.Variant41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuthorityClass.Variant41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079","mathematical_subject":"Computation.DataStructures","original_sha256":"41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Presentation/Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Presentation.Semantics

/-!
What is formalized:
Polymorphic Presentation records and specialized complex-like realization
certificates.

What is certificate-gated:
The target-specific realization relation must be provided separately.  The
Presentation tree is syntax, not the mathematical object itself.

What is not claimed:
Presentations are not theorem authority and do not establish analytic,
arithmetic, spectral, or prismatic claims.

Primary mathematical source:
Surface proof-boundary discipline for descriptor syntax versus checked theorem
objects.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityClass.Variant41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079

namespace Surface.Presentation

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

end Surface.Presentation
```
