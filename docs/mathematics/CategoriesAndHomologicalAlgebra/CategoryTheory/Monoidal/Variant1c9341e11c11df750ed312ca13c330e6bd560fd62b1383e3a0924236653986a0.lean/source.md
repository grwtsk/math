# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c12aa30a4f755b4ec53d8156df4895be9a0634a` · SHA-256 `4026760422531b9c17d116c74195dcaef6eba720272b79d04149254dd1bd2cc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalInformationReceipt.Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonoidalInformationReceipt.Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"eabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Information/Category/Monoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.Coherence
import Mathlib.CategoryTheory.Monoidal.CoherenceLemmas
import Think.Logic.Mathlib.Coherence


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalInformationReceipt.Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5

open CategoryTheory
open scoped MonoidalCategory

universe u v

namespace Think.Information.Category

/-- Runtime metadata for Information monoidal coherence; no categorical structure lives here. -/
structure MonoidalInformationReceipt where
  tensorPolicyHash : String
  unitPolicyHash : String
  associatorIsoHash : String
  leftUnitorIsoHash : String
  rightUnitorIsoHash : String
  symmetryIsoHash : String
  coherenceReceiptHash : String
  usesTensorEquality : Bool
  claimBearing : Bool
deriving DecidableEq, Repr

def MonoidalInformationReceipt.accepted
    (R : MonoidalInformationReceipt) : Prop :=
  R.usesTensorEquality = false ∧ R.claimBearing = false

def MonoidalInformationReceipt.fastCheck
    (R : MonoidalInformationReceipt) : Bool :=
  !R.usesTensorEquality && !R.claimBearing

theorem MonoidalInformationReceipt.no_tensor_equality_if_accepted
    (R : MonoidalInformationReceipt) :
    R.accepted → R.usesTensorEquality = false :=
by
  intro h
  exact h.left

/-- Information aggregation rebrackets by Mathlib's associator isomorphism. -/
def MonoidalInformationReceipt.associatorIso
    {Inf : Type u} [Category.{v} Inf] [MonoidalCategory Inf]
    (_R : MonoidalInformationReceipt)
    (A B C : Inf) :
    ((A ⊗ B) ⊗ C) ≅ (A ⊗ (B ⊗ C)) :=
  α_ A B C

/-- The coherence tactic discharges the unit coherence boundary. -/
theorem MonoidalInformationReceipt.unit_coherence
    {Inf : Type u} [Category.{v} Inf] [MonoidalCategory Inf]
    (_R : MonoidalInformationReceipt) :
    (λ_ (𝟙_ Inf)).hom = (ρ_ (𝟙_ Inf)).hom :=
by
  simpa using (CategoryTheory.MonoidalCategory.unitors_equal (C := Inf))

/-- The receipt is metadata only; categorical structure comes from `MonoidalCategory`. -/
theorem MonoidalInformationReceipt.receipt_is_not_structure
    (R : MonoidalInformationReceipt) :
    R.accepted → R.claimBearing = false :=
by
  intro h
  exact h.right

end Think.Information.Category
```
