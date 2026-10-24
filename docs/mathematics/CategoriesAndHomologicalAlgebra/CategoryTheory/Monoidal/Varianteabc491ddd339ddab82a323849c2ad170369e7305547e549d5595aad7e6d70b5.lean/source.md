# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bba9a64636be8721402459e5e33dba3de95f418e` · SHA-256 `eabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.CategoryTheory.Coherence
import Mathlib.CategoryTheory.Monoidal.CoherenceLemmas
import Think.Logic.Mathlib.Coherence

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
