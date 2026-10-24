# Complete source: GRWTSK.Algebra.TorsionWitness.Variantbb840ad2a37293048dd87a7d8813114c277390ab604538340c46885442b49235

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47af4253d249e1bf3129e4080078aaadc106b196` · SHA-256 `f9e8deeafbc5261917c50b7c2af0b7c54c75d6c89086d3c1173645d38ad58d63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.TorsionWitnessSound.Variant9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.TorsionWitnessSound.Variant9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Arithmetic/TorsionWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.ModularWitness

/-!
# Folder.Theorem.Arithmetic.TorsionWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.arithmetic.torsion_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.TorsionWitnessSound.Variant9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01

namespace Folder
namespace Arithmetic

theorem torsion_witness_sound {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {P : ECPoint E}
    {n : Nat}
    (h : HasOrder G P n) :
    IsTorsion G P :=
  torsion_of_hasOrder h

theorem modular_witness_exposes_claim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {β : Type _}
    (W : ModularRelationWitness E β) :
    modularRelationClaim W = W.certified :=
  rfl

end Arithmetic
end Folder
```
