# Complete source: GRWTSK.Algebra.ModularWitness.Variant3afae6bf11bb03340dc7b570ac765be85ec1affe3d55bd1305cb31a638ce7bd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5fcd966e644854e47feffbabc36191ef8da7e88` · SHA-256 `99162675db506811cd7659a372639c1b8a9f8f6e0179c49ff9aa6d839b134101`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ModularMonodromyWitness.Variantd19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ModularMonodromyWitness.Variantd19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"d19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Monodromy/ModularWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Monodromy.CatalanTransport

/-!
# Folder.Monodromy.ModularWitness

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.modular_witness
Pivot role: none
Zero typology: modular
Contract boundary: witness
Composite stack role: torsion
-/



namespace GRWTSK.Algebra.ModularMonodromyWitness.Variantd19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700

namespace Folder
namespace Monodromy

structure ModularMonodromyWitness
    {K : Type _} [Field K]
    (E : Arithmetic.ShortWeierstrass K)
    (β : Type _) where
  invariant : β
  level : Nat
  relationName : String
  certified : Prop

structure CompatibleModularWitness
    {K : Type _} [Field K]
    {k : Nat}
    (E : Arithmetic.ShortWeierstrass K)
    (G : Arithmetic.ECGroupLaw E)
    (M : CatalanMonodromySystem k E G)
    (β : Type _) where
  witness : ModularMonodromyWitness E β
  compatible : witness.certified

theorem modular_witness_certified
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {M : CatalanMonodromySystem k E G}
    {β : Type _}
    (W : CompatibleModularWitness E G M β) :
    W.witness.certified :=
  W.compatible

end Monodromy
end Folder
```
