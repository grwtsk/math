# Complete source: GRWTSK.Algebra.ExactPeriod.Variantf0742a67a6b6d960b6bae76863b6806db439ae90321381236f5284554f19d4f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b058c5387f9be90c0f771785223f72213a0ee291` · SHA-256 `8132481a022bbe92e9875f646d49485ba2344e450ca304b837fe00e42aa9ec12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.HasExactPeriod.Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.HasExactPeriod.Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Research/ExactPeriod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Monodromy.TorsionPeriodicity

/-!
# Folder.Research.ExactPeriod

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.exact_period
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.HasExactPeriod.Variant8e32ea61cc4bb98b447a301c5ad35148d771ade195d0a1058dae52eb5611412b

namespace Folder
namespace Research
namespace ExactPeriod

def HasExactPeriod
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (n : Nat) : Prop :=
  0 < n ∧
  Monodromy.TorsionAction.HasPeriodDividing A P n ∧
  ∀ m, 0 < m → m < n →
    ¬ Monodromy.TorsionAction.HasPeriodDividing A P m

def ActionFaithful
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α) : Prop :=
  ∀ P Q, A.act P = A.act Q → P = Q

theorem exact_period_of_hasOrder_and_faithful
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hOrder : Arithmetic.HasOrder G P n)
    (hFaithful : ActionFaithful A) :
    HasExactPeriod A P n := by
  refine
    ⟨hOrder.1,
      Monodromy.TorsionAction.period_dividing_of_hasOrder A P hOrder,
      ?_⟩
  intro m hmpos hmlt hmperiod
  have hact :
      A.act (Arithmetic.nsmulPoint G m P) =
        A.act (Arithmetic.ECPoint.infinity (E := E)) := by
    rw [A.act_zero]
    ext x
    exact
      (Monodromy.TorsionAction.act_nsmulPoint_apply A P m x).trans
        (hmperiod x)
  exact hOrder.2.2 m hmpos hmlt (hFaithful _ _ hact)

end ExactPeriod
end Research
end Folder
```
