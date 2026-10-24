-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.CertifiedPrime.Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.CertifiedPrime.Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/CertifiedPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.Event
import Mathlib.Data.Nat.Prime.Basic

/-!
# Certified prime-local base point

A prismatic fiber is indexed by a prime that is already certified.  No
constructor in this module searches for, predicts, or manufactures a new
prime.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CertifiedPrime.Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf

namespace Mathematics.Prismatic

/-- A fixed prime together with the immutable evidence that introduced it. -/
structure CertifiedPrime where
  value : Nat
  isPrime : Nat.Prime value
  statementDigest : Digest
  certificate : ObjectAddress
  deriving Repr

namespace CertifiedPrime

theorem two_le (prime : CertifiedPrime) : 2 ≤ prime.value :=
  prime.isPrime.two_le

theorem ne_zero (prime : CertifiedPrime) : prime.value ≠ 0 :=
  Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_two prime.two_le)

theorem ne_one (prime : CertifiedPrime) : prime.value ≠ 1 :=
  Nat.ne_of_gt prime.two_le

end CertifiedPrime

end Mathematics.Prismatic
