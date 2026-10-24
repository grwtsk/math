# Complete source: GRWTSK.Algebra.TorsionAction.Varianta077a13ba0cb93ac26921f20784019215646970c8da0b7c78fb7ec47c866b52b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3d634d642067219197dc195bdfa7eaa3dc51759` · SHA-256 `0b6b67d9eeac2b552e4040d6d2f0432f62e6b0f89cb2969412c2ec200d11a209`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EllipticTorsionActionRoundtrip.Variant5649340747ba5271a47c2070cfba4202fe42657e76791453d8c68aee5ac59435","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5649340747ba5271a47c2070cfba4202fe42657e76791453d8c68aee5ac59435","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EllipticTorsionActionRoundtrip.Variant5649340747ba5271a47c2070cfba4202fe42657e76791453d8c68aee5ac59435","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5649340747ba5271a47c2070cfba4202fe42657e76791453d8c68aee5ac59435","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Monodromy/TorsionAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Monodromy.EllipticTorsionAction

/-!
# Folder.Theorem.Monodromy.TorsionAction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.torsion_action
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.EllipticTorsionActionRoundtrip.Variant5649340747ba5271a47c2070cfba4202fe42657e76791453d8c68aee5ac59435

namespace Folder
namespace Monodromy

theorem elliptic_torsion_action_roundtrip
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (x : α) :
    (A.act (G.neg P)) ((A.act P) x) = x :=
  torsion_action_roundtrip A P x

end Monodromy
end Folder
```
