# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Place.Variant0f4b724a2aca00626e324ee5158f09b1436b379620d0bcc99ce655af57ce8ed6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19cb84fe7135440c4831f85424b5642c1f579595` · SHA-256 `ade6dfd597ca8ff1b5247a7f98274c655a1ce1f6e23ce6a86b2ac7b92e6b8152`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.Place.Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.Place.Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/AdelicInfinityTopos/Place.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.AdelicInfinityTopos.Place

Radiation role: research-boundary
BinaryMatrix spine: This module indexes adelic spectral fibers rather than BinaryMatrix carriers.
Ontology: adelic.place
Pivot role: dual
Zero typology: mixed
Contract boundary: definition
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.Place.Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3

namespace Folder
namespace AdelicInfinityTopos

inductive Place where
  | archimedean : Place
  | finite : Nat → Place
deriving DecidableEq, Repr

def IsFinitePrimePlace (v : Place) : Prop :=
  ∃ p : Nat, v = Place.finite p ∧ Nat.Prime p

def IsBadTMFPrime (v : Place) : Prop :=
  v = Place.finite 2 ∨ v = Place.finite 3

def IsArchimedeanPlace (v : Place) : Prop :=
  v = Place.archimedean

theorem archimedean_ne_finite
    (p : Nat) :
    Place.archimedean ≠ Place.finite p := by
  intro h
  cases h

theorem bad_tmf_prime_is_finite
    {v : Place}
    (h : IsBadTMFPrime v) :
    ∃ p, v = Place.finite p := by
  rcases h with h2 | h3
  · exact ⟨2, h2⟩
  · exact ⟨3, h3⟩

end AdelicInfinityTopos
end Folder
```
