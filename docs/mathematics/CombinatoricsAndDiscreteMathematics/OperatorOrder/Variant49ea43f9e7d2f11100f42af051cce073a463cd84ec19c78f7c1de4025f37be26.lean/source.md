# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OperatorOrder.Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba7a82fbd5f71529843b3709c2f61ee7dfdbeeff` · SHA-256 `1fe72ffc3ab7d454babf603880ad582fb89a8792f1d023762844daa60407d151`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OperatorModel.Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.OperatorModel.Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/OperatorOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PrimeUniverse

/-!
# Abstract self-adjoint operator order

The primary capacity lives in a rational operator module with a certified
positive cone.  Concrete Hilbert-space operators enter through a realization
certificate; the structural cochain algebra does not depend on one chosen
realization.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OperatorModel.Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9

namespace Mathematics.SemiLocalDefect

universe uOperator uIndex

set_option linter.checkUnivs false in
structure OperatorModel where
  Operator : Type uOperator
  addCommGroup : AddCommGroup Operator
  rationalModule : Module ℚ Operator
  identity : Operator
  SelfAdjoint : Operator → Prop
  Nonnegative : Operator → Prop
  zero_selfAdjoint : SelfAdjoint 0
  identity_selfAdjoint : SelfAdjoint identity
  sub_selfAdjoint :
    ∀ {left right},
      SelfAdjoint left →
      SelfAdjoint right →
      SelfAdjoint (left - right)
  zero_nonnegative : Nonnegative 0
  add_nonnegative :
    ∀ {left right},
      Nonnegative left →
      Nonnegative right →
      Nonnegative (left + right)
  rational_smul_nonnegative :
    ∀ {scalar : ℚ} {operator},
      0 ≤ scalar →
      Nonnegative operator →
      Nonnegative (scalar • operator)
  pointed :
    ∀ {operator},
      Nonnegative operator →
      Nonnegative (-operator) →
      operator = 0

attribute [instance]
  OperatorModel.addCommGroup
  OperatorModel.rationalModule

def OperatorLE
    (model : OperatorModel)
    (left right : model.Operator) : Prop :=
  model.Nonnegative (right - left)

theorem operatorLE_refl
    (model : OperatorModel)
    (operator : model.Operator) :
    OperatorLE model operator operator := by
  simpa [OperatorLE] using model.zero_nonnegative

theorem operatorLE_trans
    (model : OperatorModel)
    {first second third : model.Operator}
    (firstSecond :
      OperatorLE model first second)
    (secondThird :
      OperatorLE model second third) :
    OperatorLE model first third := by
  have sumPositive :=
    model.add_nonnegative
      firstSecond secondThird
  simpa [OperatorLE] using sumPositive

theorem operatorLE_antisymm
    (model : OperatorModel)
    {left right : model.Operator}
    (leftRight : OperatorLE model left right)
    (rightLeft : OperatorLE model right left) :
    left = right := by
  have negPositive :
      model.Nonnegative (-(right - left)) := by
    simpa [OperatorLE] using rightLeft
  have differenceZero :
      right - left = 0 :=
    model.pointed leftRight negPositive
  exact (sub_eq_zero.mp differenceZero).symm

def OperatorPositive
    (model : OperatorModel)
    (operator : model.Operator) : Prop :=
  model.Nonnegative operator

theorem operatorFinsetSum_nonnegative
    (model : OperatorModel)
    {Index : Type uIndex}
    [DecidableEq Index]
    (indices : Finset Index)
    (operator : Index → model.Operator)
    (positive :
      ∀ index ∈ indices,
        model.Nonnegative (operator index)) :
    model.Nonnegative
      (∑ index ∈ indices, operator index) := by
  classical
  induction indices using Finset.induction_on with
  | empty =>
      simpa using model.zero_nonnegative
  | @insert index rest notMember induction =>
      rw [Finset.sum_insert notMember]
      exact model.add_nonnegative
        (positive index
          (Finset.mem_insert_self index rest))
        (induction (by
          intro member memberInRest
          exact positive member
            (Finset.mem_insert_of_mem
              memberInRest)))

end Mathematics.SemiLocalDefect
```
