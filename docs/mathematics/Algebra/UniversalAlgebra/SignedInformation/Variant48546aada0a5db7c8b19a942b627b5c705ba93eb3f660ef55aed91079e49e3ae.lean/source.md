# Complete source: GRWTSK.Algebra.UniversalAlgebra.SignedInformation.Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9a08d59b2a56bfbc8fc7aa07087c74665c324ee` · SHA-256 `61d43c3a3297c882090a8517c600ee7950f9aa658c92a85f06cf2890e44ef3c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AbsoluteValueObstruction.Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AbsoluteValueObstruction.Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-464b26cc/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/SignedInformation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Loss of signed information under absolute value

Both examples provide actual witnesses in one carrier fiber whose target values
are different. Coordinatewise absolute value therefore cannot recover the
original signed finite sum. No assumption about checker authority or resource
cost is used in these purely mathematical obstructions.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.AbsoluteValueObstruction.Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SignedInformation

open scoped BigOperators

/-- The real states one and negative one have equal absolute values and unequal signed values. -/
def absoluteValueObstruction : DescentObstruction (abs : ℝ → ℝ) (id : ℝ → ℝ) where
  left := 1
  right := -1
  sameCarrier := by norm_num
  targetSeparated := by norm_num

/-- The identity real-valued target cannot factor through absolute value. -/
theorem absoluteValue_not_descends : ¬DescendsThrough (abs : ℝ → ℝ) (id : ℝ → ℝ) :=
  descent_obstruction_not_descends absoluteValueObstruction

/-- The observation carrier retains every coordinate's magnitude but loses its sign. -/
def coordinatewiseAbs {ι : Type*} (state : ι → ℝ) : ι → ℝ :=
  fun coordinate ↦ |state coordinate|

/-- The target is the original signed sum over the entire finite coordinate inventory. -/
def signedSum {ι : Type*} [Fintype ι] (state : ι → ℝ) : ℝ :=
  ∑ coordinate, state coordinate

/-- A test state supported at one declared coordinate, with its original signed value. -/
noncomputable def singleCoordinate {ι : Type*} (selected : ι) (value : ℝ) : ι → ℝ := by
  classical
  exact fun coordinate ↦ if coordinate = selected then value else 0

/-- On any nonempty finite coordinate type, a single positive entry and its negative
have identical magnitude vectors but opposite signed sums. -/
noncomputable def coordinatewiseAbsSumObstruction {ι : Type*} [Fintype ι] [Nonempty ι] :
    DescentObstruction (@coordinatewiseAbs ι) (@signedSum ι _) := by
  classical
  let selected : ι := Classical.choice (inferInstance : Nonempty ι)
  refine ⟨singleCoordinate selected 1, singleCoordinate selected (-1), ?_, ?_⟩
  · funext coordinate
    simp only [coordinatewiseAbs, singleCoordinate]
    split_ifs <;> norm_num
  · norm_num [signedSum, singleCoordinate]

/-- No function of coordinatewise magnitudes recovers every signed sum in a nonempty finite type. -/
theorem coordinatewiseAbs_sum_not_descends {ι : Type*} [Fintype ι] [Nonempty ι] :
    ¬DescendsThrough (@coordinatewiseAbs ι) (@signedSum ι _) :=
  descent_obstruction_not_descends coordinatewiseAbsSumObstruction

end SignedInformation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
