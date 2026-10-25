# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IrreducibleDef.Variant077f3ec8b86e35ef6520c355ee5a04591454a947a46f07997175bcab4c4fa2d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60b1e179af56a15ef2454d4645666838f60bc338` · SHA-256 `c7533363cab5613af84ff576bd4e8dcfe233f508425fd543aed93d7b4b18b9b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IrreducibleDef.Variantb0ea650fbdfd0c65fd32b422e1f74655e593b7daceffc0381a7799d75a51b1a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0ea650fbdfd0c65fd32b422e1f74655e593b7daceffc0381a7799d75a51b1a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IrreducibleDef.Variantb0ea650fbdfd0c65fd32b422e1f74655e593b7daceffc0381a7799d75a51b1a4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b0ea650fbdfd0c65fd32b422e1f74655e593b7daceffc0381a7799d75a51b1a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/irreducibleDef.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Util.WhatsNew


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IrreducibleDef.Variantb0ea650fbdfd0c65fd32b422e1f74655e593b7daceffc0381a7799d75a51b1a4

set_option autoImplicit true
/-- Add two natural numbers, but not during unification. -/
irreducible_def frobnicate (a b : Nat) :=
  a + b

example : frobnicate a 0 = a := by
  simp [frobnicate]

example : frobnicate a 0 = a :=
  frobnicate_def a 0

irreducible_def justAsArbitrary (lemma := myLemma) [Inhabited α] : α :=
  default

example : justAsArbitrary = 0 := myLemma

irreducible_def withoutType := 42

irreducible_def withEquations : Nat → Nat
  | 0 => 42
  | _n+1 => 314

irreducible_def withUniv.{u, v} := (Type v, Type u)
example : withUniv.{u, v} = (Type v, Type u) := by rw [withUniv]

namespace Foo
protected irreducible_def foo : Nat := 42
end Foo

example : Foo.foo = 42 := by rw [Foo.foo]

protected irreducible_def Bar.bar : Nat := 42

protected noncomputable irreducible_def Nat.evenMoreArbitrary : Nat :=
  Classical.choice inferInstance

private irreducible_def Real.zero := 42
example : Real.zero = 42 := Real.zero_def

irreducible_def y : Nat := let x := 42; x
example : y = 42 := @y_def
```
