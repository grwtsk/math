# Complete source: GRWTSK.Algebra.ModularWitness.Variant75f15d24c833fd435daa7cd95e8ede7084d1513f161bb3ded0838e6bd8bff4c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c91e2fc95d31f909ae59a9c3a597c0042ee8c56` · SHA-256 `32c8edd71f0f121da4bef6097ff2107f57def7da7851e22a292212f2174cc7ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ModularRelationWitness.Variant47ae719db2b2933c8badf8aadbd449ecad1c8c7ccd8663bec69c614af2f5ee03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47ae719db2b2933c8badf8aadbd449ecad1c8c7ccd8663bec69c614af2f5ee03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ModularRelationWitness.Variant47ae719db2b2933c8badf8aadbd449ecad1c8c7ccd8663bec69c614af2f5ee03","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"47ae719db2b2933c8badf8aadbd449ecad1c8c7ccd8663bec69c614af2f5ee03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/ModularWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.Torsion

/-!
# Folder.Arithmetic.ModularWitness

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.modular_witness
Pivot role: none
Zero typology: modular
Contract boundary: witness
Composite stack role: torsion
-/



namespace GRWTSK.Algebra.ModularRelationWitness.Variant47ae719db2b2933c8badf8aadbd449ecad1c8c7ccd8663bec69c614af2f5ee03

namespace Folder
namespace Arithmetic

structure ModularRelationWitness {K : Type _} [Field K]
    (E : ShortWeierstrass K)
    (β : Type _) where
  invariant : β
  relationName : String
  certified : Prop

structure JInvariantWitness {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  value : K
  certified : Prop

def modularRelationClaim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {β : Type _}
    (W : ModularRelationWitness E β) :
    Prop :=
  W.certified

def jInvariantClaim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (W : JInvariantWitness E) :
    Prop :=
  W.certified

end Arithmetic
end Folder
```
