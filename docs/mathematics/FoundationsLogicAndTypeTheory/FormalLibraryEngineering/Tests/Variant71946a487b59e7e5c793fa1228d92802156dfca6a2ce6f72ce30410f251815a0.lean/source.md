# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tests.Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78f01c26c02ab532281256f415637b4a38819305` · SHA-256 `71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix.Quantization
import BinaryMatrix.SATReductionTests
import BinaryMatrix.AvalancheTests
import BinaryMatrix.PermutationNetworkTests
import BinaryMatrix.SymmetryTests
import BinaryMatrix.DynamicalZetaTests
import BinaryMatrix.GaloisFieldTests
import BinaryMatrix.SubmatrixSurgeryTests
import FilesystemCodec.Tests
import FilesystemHomology.Tests
import DAF.Integration.CausalObserverTests
import DAF.Integration.ArchitectureTests
import DAF.Integration.ComparisonTests
import DAF.Integration.DeterminantTests
import DAF.Integration.TilingArithmeticComparison
import DAF.Integration.FabricTests
import DAF.Integration.FabricReactionTests
import DAF.Integration.FabricRuntimeTests
import DAF.Integration.PrismaticFabricTests
import DAF.Integration.GlobalReferenceTests
import DAF.Integration.WindowFusionTests
import DAF.Integration.RasterizationTests
import DAF.Integration.AvalanchePartitionTests
import DAF.Integration.SurgeryCoherenceTests
import DAF.Integration.CurvatureDiffusionTests
import DAF.Integration.WorldModelPrototypeTests
import Mathlib.Tactic.DeriveFintype

/-!
# BinaryMatrix tests

This file contains two kinds of tests:

1. Compile-time theorem tests proving that the implementation refines the
   declarative model.
2. Runtime tests checking concrete array results.

Run with:

    lake exe binary_matrix_tests
-/

namespace BinaryMatrixTests

private def a : BinMatMut 2 3 :=
  ⟨#[
    true,  false, true,
    false, true,  true
  ], by decide⟩

private def b : BinMatMut 2 3 :=
  ⟨#[
    true, true,  false,
    false, true, false
  ], by decide⟩

/-! ## Finite quantization fixtures -/

private inductive SampleCfg where
  | cfg₁
  | cfg₂
  | cfg₃
  | cfg₄
  deriving DecidableEq, Fintype

private def sampleRows : Nat := 1

private def sampleCols : Nat := 2

/-- Four configurations with outputs `00`, `00`, `10`, and `11`. -/
private def sampleEncode :
    SampleCfg → BinMat sampleRows sampleCols
  | .cfg₁ | .cfg₂ => fun _ _ => false
  | .cfg₃ => fun _ j => j.val == 0
  | .cfg₄ => fun _ _ => true

private def sampleQ :
    BinMat.Quantizer SampleCfg sampleRows sampleCols :=
  ⟨sampleEncode⟩

/-- The same three observations produced through the array-backed layer. -/
private def sampleEncodeMut :
    SampleCfg → BinMatMut sampleRows sampleCols
  | .cfg₁ | .cfg₂ => ⟨#[false, false], by decide⟩
  | .cfg₃ => ⟨#[true, false], by decide⟩
  | .cfg₄ => ⟨#[true, true], by decide⟩

private def sampleMutQ :
    BinMat.Quantizer SampleCfg sampleRows sampleCols :=
  BinMat.Quantizer.ofMut sampleEncodeMut

/-! ## Concrete computation tests -/

example :
    (a.andInPlace b).data =
      #[true, false, false, false, true, false] := by
  native_decide

example :
    (a.orInPlace b).data =
      #[true, true, true, false, true, true] := by
  native_decide

example :
    (a.xorInPlace b).data =
      #[false, true, true, false, false, true] := by
  native_decide

example :
    a.notInPlace.data =
      #[false, true, false, true, false, false] := by
  native_decide

/-! ## Structural-invariant tests -/

example :
    (a.andInPlace b).data.size = 2 * 3 :=
  (a.andInPlace b).size_eq

example :
    (a.orInPlace b).data.size = 2 * 3 :=
  (a.orInPlace b).size_eq

example :
    a.notInPlace.data.size = 2 * 3 :=
  a.notInPlace.size_eq

/-! ## Refinement tests -/

example :
    (a.andInPlace b).toDecl =
      BinMat.and a.toDecl b.toDecl :=
  BinMatMut.andInPlace_spec a b

example :
    (a.orInPlace b).toDecl =
      BinMat.or a.toDecl b.toDecl :=
  BinMatMut.orInPlace_spec a b

example :
    (a.xorInPlace b).toDecl =
      BinMat.xor a.toDecl b.toDecl :=
  BinMatMut.xorInPlace_spec a b

example :
    a.notInPlace.toDecl =
      BinMat.not a.toDecl :=
  BinMatMut.notInPlace_spec a

example :
    BinMatMut.Refines
      (a.andInPlace b)
      (BinMat.and a.toDecl b.toDecl) :=
  BinMatMut.andInPlace_refines
    (BinMatMut.refines_toDecl a)
    (BinMatMut.refines_toDecl b)

/-! ## Laws transported through the declarative cover -/

example :
    (a.andInPlace b).toDecl =
      (b.andInPlace a).toDecl :=
  BinMatMut.andInPlace_comm_toDecl a b

example :
    a.notInPlace.notInPlace.toDecl =
      a.toDecl :=
  BinMatMut.notInPlace_involutive_toDecl a

/-! ## Finite quantization tests -/

example :
    sampleQ.Indistinguishable .cfg₁ .cfg₂ := by
  rfl

example :
    ¬ sampleQ.Indistinguishable .cfg₁ .cfg₃ := by
  change sampleQ.encode .cfg₁ ≠ sampleQ.encode .cfg₃
  intro h
  have h00 := congrArg
    (fun A : BinMat sampleRows sampleCols =>
      A ⟨0, by decide⟩ ⟨0, by decide⟩)
    h
  simp [sampleQ, sampleEncode] at h00

example :
    sampleQ.effectiveStates.card = 3 := by
  native_decide

example :
    sampleQ.effectiveStates.card ≤
      2 ^ (sampleRows * sampleCols) :=
  sampleQ.card_effectiveStates_le_bits

example :
    Function.Bijective sampleQ.quotientToEffective :=
  ⟨sampleQ.quotientToEffective_injective,
   sampleQ.quotientToEffective_surjective⟩

example :
    sampleMutQ.Indistinguishable .cfg₁ .cfg₂ := by
  change (BinMat.Quantizer.ofMut sampleEncodeMut).Indistinguishable .cfg₁ .cfg₂
  rw [BinMat.Quantizer.ofMut_indistinguishable_iff]
  rfl

example :
    sampleMutQ.encode .cfg₃ =
      (sampleEncodeMut .cfg₃).toDecl :=
  BinMat.Quantizer.ofMut_encode sampleEncodeMut .cfg₃

/-! ## Runtime test driver -/

private def assertArrayEq
    (label : String)
    (actual expected : Array Bool) :
    IO Unit := do
  if actual == expected then
    pure ()
  else
    throw <| IO.userError s!"
      Test failed: {label}
      expected: {reprStr expected}
      actual:   {reprStr actual}
    "

def main : IO Unit := do
  assertArrayEq
    "andInPlace"
    (a.andInPlace b).data
    #[true, false, false, false, true, false]

  assertArrayEq
    "orInPlace"
    (a.orInPlace b).data
    #[true, true, true, false, true, true]

  assertArrayEq
    "xorInPlace"
    (a.xorInPlace b).data
    #[false, true, true, false, false, true]

  assertArrayEq
    "notInPlace"
    a.notInPlace.data
    #[false, true, false, true, false, false]

  IO.println "All BinaryMatrix tests passed."

end BinaryMatrixTests

def main : IO Unit :=
  BinaryMatrixTests.main
```
