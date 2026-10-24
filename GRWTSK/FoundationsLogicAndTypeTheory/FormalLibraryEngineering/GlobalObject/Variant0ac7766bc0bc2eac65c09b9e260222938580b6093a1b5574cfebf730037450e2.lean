-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealizationKind.Variante1084d3845e92817df1a04b576a79914f20f4e8cfa96392232a5b33f2ca58176","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1084d3845e92817df1a04b576a79914f20f4e8cfa96392232a5b33f2ca58176","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RealizationKind.Variante1084d3845e92817df1a04b576a79914f20f4e8cfa96392232a5b33f2ca58176","mathematical_subject":"Foundations.Unclassified","original_sha256":"e1084d3845e92817df1a04b576a79914f20f4e8cfa96392232a5b33f2ca58176","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/GlobalObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.CertifiedPrime

/-!
# Global objects and nonidentical realizations

The arithmetic object is not identified with any one of its realizations.
Archimedean, `ℓ`-adic, prismatic, de Rham, Betti, and finite-combinatorial
views remain separately typed.  A passage between them is explicit,
directional, and certificate bearing.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealizationKind.Variante1084d3845e92817df1a04b576a79914f20f4e8cfa96392232a5b33f2ca58176

namespace Mathematics.Prismatic

universe u v

/-- Realization channels that must not be collapsed by representation syntax. -/
inductive RealizationKind
  | globalArithmetic
  | archimedean
  | ellAdic (prime : Nat)
  | prismatic (prime : Nat)
  | deRham
  | betti
  | finiteCombinatorial
  deriving DecidableEq, Repr

/-- Identity of the arithmetic object before choosing a realization. -/
structure GlobalArithmeticObject where
  objectId : ElementRef
  semanticDigest : Digest
  definitionAddress : ObjectAddress
  deriving Repr

/-- One typed carrier representing a fixed global object. -/
structure ArithmeticRealization
    (global : GlobalArithmeticObject) where
  Carrier : Type u
  kind : RealizationKind
  realizationDigest : Digest
  realizationAddress : ObjectAddress

/--
A directional comparison map.  The certificate binds the precise domain,
codomain, scalar extension, hypotheses, and map; no equivalence is inferred.
-/
structure RealizationComparison
    {global : GlobalArithmeticObject}
    (source : ArithmeticRealization.{u} global)
    (target : ArithmeticRealization.{v} global) where
  map : source.Carrier → target.Carrier
  hypothesisDigest : Digest
  scalarExtensionDigest : Digest
  mapDigest : Digest
  certificate : ObjectAddress

end Mathematics.Prismatic
