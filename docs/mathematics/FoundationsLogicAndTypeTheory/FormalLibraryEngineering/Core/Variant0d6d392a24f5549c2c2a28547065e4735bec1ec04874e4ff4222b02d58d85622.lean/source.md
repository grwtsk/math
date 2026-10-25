# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant0d6d392a24f5549c2c2a28547065e4735bec1ec04874e4ff4222b02d58d85622

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e0b3a0a149ad36b29cf758f08f16e460ced3702` · SHA-256 `cd5fc502e5a87252e9deaf05af71a61891bc0119988c4750e15fbd1223d8a740`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variantf1717f3d39ac62ca857bc25969d954b8cdeda541b3c709e50543936d01f7d7c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1717f3d39ac62ca857bc25969d954b8cdeda541b3c709e50543936d01f7d7c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.A.Variantf1717f3d39ac62ca857bc25969d954b8cdeda541b3c709e50543936d01f7d7c3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f1717f3d39ac62ca857bc25969d954b8cdeda541b3c709e50543936d01f7d7c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Core.Basic
import Mathlib.Tactic

/-!
# Core BitMatrix tests

Compile-time refinement checks and concrete executable checks for the
array-backed core. This module is test-only and is reached through
`BitMatrix.Tests`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variantf1717f3d39ac62ca857bc25969d954b8cdeda541b3c709e50543936d01f7d7c3

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
```
