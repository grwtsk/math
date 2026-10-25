-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ZetaRotate3Indices.Variantd8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ZetaRotate3Indices.Variantd8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae","mathematical_subject":"Logic.Foundations","original_sha256":"d8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/DynamicalZeta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Dynamics.DynamicalZeta
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete finite-cycle tests

The three-coordinate rotation acts on eight Boolean states as two fixed points,
one three-cycle of weight-one states, and one three-cycle of weight-two states.
These executable checks validate the exact cycle, fixed-point, Möbius, and
finite Euler-factor interfaces on that decomposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ZetaRotate3Indices.Variantd8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae

namespace BitMatrix.Tests.DynamicalZeta

open BitMatrix.Reduction.SAT
open BitMatrix.Algebra.Symmetry
open BitMatrix.Dynamics.DynamicalZeta
open BitMatrix.Network.Permutation
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

end BitMatrix.Tests.DynamicalZeta
