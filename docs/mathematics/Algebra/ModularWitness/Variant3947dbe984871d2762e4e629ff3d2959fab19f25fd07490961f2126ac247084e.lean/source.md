# Complete source: GRWTSK.Algebra.ModularWitness.Variant3947dbe984871d2762e4e629ff3d2959fab19f25fd07490961f2126ac247084e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4173440d7697124b5e6a95ddffc43940a8a77c15` · SHA-256 `eaf20150f3f8bebc5389347ed35d1998feccf39847a8c6361ddc29d2025d9e5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ModularMonodromyWitnessCertified.Variantb17c239a63dd20f729e12c80ee743038d0a65b693b923bcb09003b3493eb76f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b17c239a63dd20f729e12c80ee743038d0a65b693b923bcb09003b3493eb76f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ModularMonodromyWitnessCertified.Variantb17c239a63dd20f729e12c80ee743038d0a65b693b923bcb09003b3493eb76f2","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b17c239a63dd20f729e12c80ee743038d0a65b693b923bcb09003b3493eb76f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Monodromy/ModularWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Monodromy.ModularWitness

/-!
# Folder.Theorem.Monodromy.ModularWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.modular_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.ModularMonodromyWitnessCertified.Variantb17c239a63dd20f729e12c80ee743038d0a65b693b923bcb09003b3493eb76f2

namespace Folder
namespace Monodromy

theorem modular_monodromy_witness_certified
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {M : CatalanMonodromySystem k E G}
    {β : Type _}
    (W : CompatibleModularWitness E G M β) :
    W.witness.certified :=
  modular_witness_certified W

end Monodromy
end Folder
```
