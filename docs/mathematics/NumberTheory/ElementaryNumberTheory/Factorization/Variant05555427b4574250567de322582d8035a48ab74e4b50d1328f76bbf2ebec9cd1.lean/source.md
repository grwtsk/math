# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Factorization.Variant05555427b4574250567de322582d8035a48ab74e4b50d1328f76bbf2ebec9cd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2cdae2b2656225be4b39ac42075299a72ab4e09` · SHA-256 `deef4dbec3b00bdab1ba4f608f6c766efc17782d107587ba4f4ab6a65df23452`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationSupportPrime.Variant46212faf2a462bea7367dd94ea39f00e2e8b3911f3b4c488ab15f0dc5658f7a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46212faf2a462bea7367dd94ea39f00e2e8b3911f3b4c488ab15f0dc5658f7a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.FactorizationSupportPrime.Variant46212faf2a462bea7367dd94ea39f00e2e8b3911f3b4c488ab15f0dc5658f7a4","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"46212faf2a462bea7367dd94ea39f00e2e8b3911f3b4c488ab15f0dc5658f7a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/NumberTheory/Factorization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.Factorization

/-!
# Folder.Theorem.NumberTheory.Factorization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.number_theory.factorization
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationSupportPrime.Variant46212faf2a462bea7367dd94ea39f00e2e8b3911f3b4c488ab15f0dc5658f7a4

namespace Folder
namespace Theorem
namespace NumberTheory

theorem factorization_support_prime
    (n : Folder.NumberTheory.PositiveNat)
    {p : Nat}
    (hp : Folder.NumberTheory.IsPrimeSupport n p) :
    Nat.Prime p :=
  Folder.NumberTheory.factorization_support_prime n hp

theorem factorization_exponent_pos
    (n : Folder.NumberTheory.PositiveNat)
    {p : Nat}
    (hp : Folder.NumberTheory.IsPrimeSupport n p) :
    0 < Folder.NumberTheory.FactorizationMap n p :=
  Folder.NumberTheory.factorization_exponent_pos n hp

end NumberTheory
end Theorem
end Folder
```
