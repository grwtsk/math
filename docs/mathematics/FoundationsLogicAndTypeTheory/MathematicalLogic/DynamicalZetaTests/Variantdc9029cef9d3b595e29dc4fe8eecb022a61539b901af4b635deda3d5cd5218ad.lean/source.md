# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DynamicalZetaTests.Variantdc9029cef9d3b595e29dc4fe8eecb022a61539b901af4b635deda3d5cd5218ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1f93a2269a036ddb9e97baa354b6b20325c06db` · SHA-256 `514e90b2665895d6afe59b435acc5e23863c4fd17cc8dc5d0d20199f395f7983`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ZetaRotate3Indices.Variant7262988a2a907f13d048c50ec34d230dd95867684b6f4abb50a54fc36e2791bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7262988a2a907f13d048c50ec34d230dd95867684b6f4abb50a54fc36e2791bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ZetaRotate3Indices.Variant7262988a2a907f13d048c50ec34d230dd95867684b6f4abb50a54fc36e2791bb","mathematical_subject":"Logic.Foundations","original_sha256":"7262988a2a907f13d048c50ec34d230dd95867684b6f4abb50a54fc36e2791bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/DynamicalZetaTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.DynamicalZeta
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete finite-cycle tests

The three-coordinate rotation acts on eight Boolean states as two fixed points,
one three-cycle of weight-one states, and one three-cycle of weight-two states.
These executable checks validate the exact cycle, fixed-point, Möbius, and
finite Euler-factor interfaces on that decomposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ZetaRotate3Indices.Variant7262988a2a907f13d048c50ec34d230dd95867684b6f4abb50a54fc36e2791bb

namespace DynamicalZeta

open SATReduction
open Symmetry
open PermutationNetwork
open scoped BigOperators

/-- The coordinate cycle `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 0`. -/
def zetaRotate3Indices : Equiv.Perm (Fin 3) :=
  finRotate 3

/-- The induced permutation of the eight three-bit states. -/
def zetaRotate3 : BitPerm 3 :=
  coordinatePermutation zetaRotate3Indices

example : cycleCount zetaRotate3 1 = 2 := by
  native_decide

example : cycleCount zetaRotate3 2 = 0 := by
  native_decide

example : cycleCount zetaRotate3 3 = 2 := by
  native_decide

example : fixedPointCount zetaRotate3 1 = 2 := by
  native_decide

example : fixedPointCount zetaRotate3 2 = 2 := by
  native_decide

example : fixedPointCount zetaRotate3 3 = 8 := by
  native_decide

example : fixedPointCount zetaRotate3 6 = 8 := by
  native_decide

example :
    fixedPointCount zetaRotate3 3 =
      ∑ d ∈ Nat.divisors 3, d * cycleCount zetaRotate3 d :=
  fixedPointCount_eq_sum_mul_cycleCount zetaRotate3 (by decide)

example :
    (((3 * cycleCount zetaRotate3 3 : Nat) : ℤ)) =
      ∑ d ∈ Nat.divisors 3,
        (ArithmeticFunction.moebius (3 / d) : ℤ) *
          (fixedPointCount zetaRotate3 d : ℤ) :=
  cycleCount_mobius zetaRotate3 (by decide)

example : cycleEulerFactorData zetaRotate3 1 = 2 := by
  native_decide

example : cycleEulerFactorData zetaRotate3 3 = 2 := by
  native_decide

example : cycleEulerFactorData zetaRotate3 4 = 0 := by
  native_decide

end DynamicalZeta
```
