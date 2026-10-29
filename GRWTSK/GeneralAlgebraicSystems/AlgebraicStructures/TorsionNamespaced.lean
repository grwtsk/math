-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NsmulPoint.Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.NsmulPoint.Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Torsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.EllipticCurve

/-!
# Folder.Arithmetic.Torsion

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.torsion
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/



namespace GRWTSK.Algebra.NsmulPoint.Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf

namespace Folder
namespace Arithmetic

def nsmulPoint {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E) :
    Nat → ECPoint E → ECPoint E
  | 0, _ => ECPoint.infinity (E := E)
  | n + 1, P => G.add P (nsmulPoint G n P)

def IsTorsion {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (P : ECPoint E) : Prop :=
  ∃ n : Nat, 0 < n ∧ nsmulPoint G n P = ECPoint.infinity (E := E)

def HasOrder {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (P : ECPoint E)
    (n : Nat) : Prop :=
  0 < n ∧ nsmulPoint G n P = ECPoint.infinity (E := E) ∧
    ∀ m, 0 < m → m < n → nsmulPoint G m P ≠ ECPoint.infinity (E := E)

theorem torsion_of_hasOrder {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {P : ECPoint E}
    {n : Nat}
    (h : HasOrder G P n) :
    IsTorsion G P :=
  ⟨n, h.1, h.2.1⟩

end Arithmetic
end Folder
