import BitMatrix.Core.Basic
import Mathlib.Tactic

/-!
# Core BitMatrix tests

Compile-time refinement checks and concrete executable checks for the
array-backed core. This module is test-only and is reached through
`BitMatrix.Tests`.
-/

namespace BitMatrix.Tests.Core

private def a : BitMatrix.ArrayBacked 2 3 :=
  ⟨#[
    true,  false, true,
    false, true,  true
  ], by decide⟩

private def b : BitMatrix.ArrayBacked 2 3 :=
  ⟨#[
    true, true,  false,
    false, true, false
  ], by decide⟩

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
    (a.andInPlace b).toMatrix =
      BitMatrix.and a.toMatrix b.toMatrix :=
  BitMatrix.ArrayBacked.andInPlace_spec a b

example :
    (a.orInPlace b).toMatrix =
      BitMatrix.or a.toMatrix b.toMatrix :=
  BitMatrix.ArrayBacked.orInPlace_spec a b

example :
    (a.xorInPlace b).toMatrix =
      BitMatrix.xor a.toMatrix b.toMatrix :=
  BitMatrix.ArrayBacked.xorInPlace_spec a b

example :
    a.notInPlace.toMatrix =
      BitMatrix.not a.toMatrix :=
  BitMatrix.ArrayBacked.notInPlace_spec a

example :
    BitMatrix.Refines
      (a.andInPlace b)
      (BitMatrix.and a.toMatrix b.toMatrix) :=
  BitMatrix.ArrayBacked.andInPlace_refines
    (BitMatrix.ArrayBacked.refines_toMatrix a)
    (BitMatrix.ArrayBacked.refines_toMatrix b)

/-! ## Laws transported through the declarative cover -/

example :
    (a.andInPlace b).toMatrix =
      (b.andInPlace a).toMatrix :=
  BitMatrix.ArrayBacked.andInPlace_comm_toMatrix a b

example :
    a.notInPlace.notInPlace.toMatrix =
      a.toMatrix :=
  BitMatrix.ArrayBacked.notInPlace_involutive_toMatrix a

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

/-- Execute the concrete core checks used by the Lake test driver. -/
def run : IO Unit := do
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

end BitMatrix.Tests.Core
