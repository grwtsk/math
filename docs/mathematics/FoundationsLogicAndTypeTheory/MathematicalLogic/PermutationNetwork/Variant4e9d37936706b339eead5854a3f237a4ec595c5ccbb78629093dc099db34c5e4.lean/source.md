# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PermutationNetwork.Variant4e9d37936706b339eead5854a3f237a4ec595c5ccbb78629093dc099db34c5e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c0a20a240d3285e24c4234c410673bb4497515d` · SHA-256 `ec7a404e24d35e5ef4985c8af01da99484dd0beb89477402963ec829539c3433`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rotate3Indices.Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Rotate3Indices.Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986","mathematical_subject":"Logic.Foundations","original_sha256":"ec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/PermutationNetwork.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Network.Permutation
import BitMatrix.FiniteField.Round
import Mathlib.Data.ZMod.Basic
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete permutation-network boundary tests

These finite examples exercise the corrected guarantee boundary. Coordinate
rotation is a permutation with branch number two but zero avalanche scores;
an exact state-dependent correction collapses the identity; trivial elementary
`H¹` does not prevent that collision; and a square-zero operator is not
bijective. The `ZMod 2` example checks a pole of the partial finite-field
expression, not a statistical property.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rotate3Indices.Variantec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986

namespace BitMatrix.Tests.PermutationNetwork

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.FiniteField.Round
open BitMatrix.Network.Permutation

/-! ## Three-coordinate cyclic rotation -/

/-- The cycle `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 0`. -/
def rotate3Indices : Equiv.Perm (Fin 3) :=
  finRotate 3

/-- Coordinate rotation induced by `rotate3Indices`. -/
def rotate3 : Bits 3 ≃ Bits 3 :=
  coordinatePermutation rotate3Indices

example : rotate3Indices (0 : Fin 3) = 1 := by native_decide
example : rotate3Indices (1 : Fin 3) = 2 := by native_decide
example : rotate3Indices (2 : Fin 3) = 0 := by native_decide

example : Function.Bijective rotate3 :=
  rotate3.bijective

example : sacScore rotate3 = 0 := by
  native_decide

example : varianceScore rotate3 = 0 := by
  native_decide

example : hammingWeight (rotate3 (basisBit (0 : Fin 3))) = 1 := by
  native_decide

example :
    branchNumber
      (XorLinearEquiv.ofCoordinatePermutation rotate3Indices) = 2 :=
  branchNumber_coordinatePermutation rotate3Indices (by decide)

/-! ## State-dependent correction and elementary cohomology -/

example : Function.Bijective (id : Bits 1 → Bits 1) :=
  Function.bijective_id

example :
    ¬ Function.Injective
      (addCorrection
        (id : Bits 1 → Bits 1)
        (id : Bits 1 → Bits 1)) :=
  identity_add_identity_not_injective (by decide)

example : (endMapComplex 1).H1Trivial :=
  identityZeroComplex_h1Trivial _ _

example :
    (endMapComplex 1).Exact₁ (id : EndMap 1) :=
  identityCorrection_exact 1

example :
    (endMapComplex 1).H1Trivial ∧
    (endMapComplex 1).Closed₁ (id : EndMap 1) ∧
    (endMapComplex 1).Exact₁ (id : EndMap 1) ∧
    Function.Bijective (id : EndMap 1) ∧
    ¬ Function.Injective
      (addCorrection (id : EndMap 1) (id : EndMap 1)) :=
  trivial_H1_does_not_preserve_bijectivity (by decide)

/-! ## Concrete square-zero operator -/

/-- The constant-false endomap of `Bool`. -/
def boolZeroOperator : Bool → Bool :=
  fun _ => false

example : ¬ Function.Injective boolZeroOperator :=
  not_injective_of_square_zero
    false boolZeroOperator rfl (fun _ => rfl) ⟨true, by decide⟩

example : ¬ Function.Bijective boolZeroOperator :=
  not_bijective_of_square_zero
    false boolZeroOperator rfl (fun _ => rfl) ⟨true, by decide⟩

/-! ## Partial finite-field expression -/

example :
    finiteDigamma? ({1} : Finset (ZMod 2)) 1 = none := by
  exact finiteDigamma_none_of_mem {1} (by simp)

end BitMatrix.Tests.PermutationNetwork
```
