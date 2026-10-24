# Complete source: GRWTSK.Algebra.EllipticTorsionAction.Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `548a8fddb862f256d6d53f5e01695e5daf040f60` · SHA-256 `97fb09525465fe6f1e94dea746e827093bb50920b51e5056cee5bc6b01971316`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.TorsionAction.Variantc760038fffe565cffbaacd5954a71062f05c178e89b1fb704456d2f074b4fb79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c760038fffe565cffbaacd5954a71062f05c178e89b1fb704456d2f074b4fb79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.TorsionAction.Variantc760038fffe565cffbaacd5954a71062f05c178e89b1fb704456d2f074b4fb79","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c760038fffe565cffbaacd5954a71062f05c178e89b1fb704456d2f074b4fb79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Monodromy/EllipticTorsionAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.Torsion

/-!
# Folder.Monodromy.EllipticTorsionAction

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.elliptic_torsion_action
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/



namespace GRWTSK.Algebra.TorsionAction.Variantc760038fffe565cffbaacd5954a71062f05c178e89b1fb704456d2f074b4fb79

namespace Folder
namespace Monodromy

abbrev FiberAut (α : Type _) := α ≃ α

structure TorsionAction
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E)
    (α : Type _) where
  act : Arithmetic.ECPoint E → FiberAut α
  act_zero :
    act (Arithmetic.ECPoint.infinity (E := E)) = Equiv.refl α
  act_add_apply :
    ∀ P Q x, act (G.add P Q) x = act Q (act P x)

structure TorsionPoint
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E) where
  point : Arithmetic.ECPoint E
  torsion : Arithmetic.IsTorsion G point

def TorsionAction.actTorsion
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : TorsionPoint G) :
    α ≃ α :=
  A.act P.point

theorem torsion_action_roundtrip
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (x : α) :
    (A.act (G.neg P)) ((A.act P) x) = x := by
  have h := A.act_add_apply P (G.neg P) x
  rw [G.add_right_neg P, A.act_zero] at h
  exact h.symm

end Monodromy
end Folder
```
