-- corpus-organization-transform:v1
-- Mathematical subject: Foundations.MixedSubjects
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FinitePrimeHorizon.Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FinitePrimeHorizon.Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/PrimeHorizon/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Prime-horizon carrier primitive
-/


namespace FormalResearch.Foundations.MixedSubjects.SourceCorpus.FinitePrimeHorizon.Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7

namespace Mathematics.SemiLocalDefect.SoninCore

structure FinitePrimeHorizon where
  Prime : Type
  primeFintype : Fintype Prime
  primeDecEq : DecidableEq Prime
  primeOrder : LinearOrder Prime
  value : Prime → Nat
  value_injective : Function.Injective value
  value_prime : ∀ p, Nat.Prime (value p)
  id : HorizonId
  revision : Nat
  digest : Digest

instance (U : FinitePrimeHorizon) :
    Fintype U.Prime :=
  U.primeFintype

instance (U : FinitePrimeHorizon) :
    DecidableEq U.Prime :=
  U.primeDecEq

instance (U : FinitePrimeHorizon) :
    LinearOrder U.Prime :=
  U.primeOrder

end Mathematics.SemiLocalDefect.SoninCore
