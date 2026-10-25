# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintPrefix.Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4780d3a79d75d05ae004561c4bdaba81b0738e5b` · SHA-256 `5c9f5780160698c679b62c418aa01ae350f6b8e9c688a0e5f36f2bbad936df47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TEmpty.Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TEmpty.Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/print_prefix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.PrintPrefix


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TEmpty.Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda

inductive TEmpty : Type
/--
info: TEmpty : Type
TEmpty.casesOn.{u} (motive : TEmpty → Sort u) (t : TEmpty) : motive t
TEmpty.ctorIdx : TEmpty → Nat
TEmpty.noConfusion.{u} {P : Sort u} {t t' : TEmpty} (eq : t = t') : TEmpty.noConfusionType P t t'
TEmpty.noConfusionType.{u} (P : Sort u) (t t' : TEmpty) : Sort u
TEmpty.rec.{u} (motive : TEmpty → Sort u) (t : TEmpty) : motive t
TEmpty.recOn.{u} (motive : TEmpty → Sort u) (t : TEmpty) : motive t
-/
#guard_msgs in
#print prefix TEmpty -- Test type that probably won't change much.

/-- info: -/
#guard_msgs in
#print prefix -imported Empty

namespace EmptyPrefixTest

end EmptyPrefixTest

-- Note.  This error message could be cleaned up, but left during migration from Mathlib
/--
error: Unknown constant `EmptyPrefixTest`
-/
#guard_msgs in
#print prefix EmptyPrefixTest

namespace Prefix.Test

/-- Supress lint -/
def foo (_l:List String) : Int := 0

end Prefix.Test

/-- info: Prefix.Test.foo (_l : List String) : Int -/
#guard_msgs in
#print prefix Prefix.Test

/-- Supress lint -/
structure TestStruct where
  /-- Supress lint -/
  foo : Int
  /-- Supress lint -/
  bar : Int

/--
info: TestStruct : Type
TestStruct.bar (self : TestStruct) : Int
TestStruct.casesOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
TestStruct.ctorIdx : TestStruct → Nat
TestStruct.foo (self : TestStruct) : Int
TestStruct.mk (foo bar : Int) : TestStruct
TestStruct.mk.inj {foo bar foo✝ bar✝ : Int} :
  { foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ } → foo = foo✝ ∧ bar = bar✝
TestStruct.mk.injEq (foo bar foo✝ bar✝ : Int) :
  ({ foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ }) = (foo = foo✝ ∧ bar = bar✝)
TestStruct.mk.noConfusion.{u} {P : Sort u} {foo bar foo' bar' : Int}
  (eq : { foo := foo, bar := bar } = { foo := foo', bar := bar' }) (k : foo = foo' → bar = bar' → P) : P
TestStruct.mk.sizeOf_spec (foo bar : Int) : sizeOf { foo := foo, bar := bar } = 1 + sizeOf foo + sizeOf bar
TestStruct.noConfusion.{u} {P : Sort u} {t t' : TestStruct} (eq : t = t') : TestStruct.noConfusionType P t t'
TestStruct.noConfusionType.{u} (P : Sort u) (t t' : TestStruct) : Sort u
TestStruct.rec.{u} {motive : TestStruct → Sort u} (mk : (foo bar : Int) → motive { foo := foo, bar := bar })
  (t : TestStruct) : motive t
TestStruct.recOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
-/
#guard_msgs in
#print prefix TestStruct

/--
info: TestStruct : Type
TestStruct.bar (self : TestStruct) : Int
TestStruct.casesOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
TestStruct.ctorIdx : TestStruct → Nat
TestStruct.foo (self : TestStruct) : Int
TestStruct.mk (foo bar : Int) : TestStruct
TestStruct.mk.noConfusion.{u} {P : Sort u} {foo bar foo' bar' : Int}
  (eq : { foo := foo, bar := bar } = { foo := foo', bar := bar' }) (k : foo = foo' → bar = bar' → P) : P
TestStruct.noConfusion.{u} {P : Sort u} {t t' : TestStruct} (eq : t = t') : TestStruct.noConfusionType P t t'
TestStruct.noConfusionType.{u} (P : Sort u) (t t' : TestStruct) : Sort u
TestStruct.rec.{u} {motive : TestStruct → Sort u} (mk : (foo bar : Int) → motive { foo := foo, bar := bar })
  (t : TestStruct) : motive t
TestStruct.recOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
-/
#guard_msgs in
#print prefix -propositions TestStruct

/--
info: TestStruct.mk.inj {foo bar foo✝ bar✝ : Int} :
  { foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ } → foo = foo✝ ∧ bar = bar✝
TestStruct.mk.injEq (foo bar foo✝ bar✝ : Int) :
  ({ foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ }) = (foo = foo✝ ∧ bar = bar✝)
TestStruct.mk.sizeOf_spec (foo bar : Int) : sizeOf { foo := foo, bar := bar } = 1 + sizeOf foo + sizeOf bar
-/
#guard_msgs in
#print prefix +propositionsOnly TestStruct

/--
info: TestStruct
TestStruct.bar
TestStruct.casesOn
TestStruct.ctorIdx
TestStruct.foo
TestStruct.mk
TestStruct.mk.inj
TestStruct.mk.injEq
TestStruct.mk.noConfusion
TestStruct.mk.sizeOf_spec
TestStruct.noConfusion
TestStruct.noConfusionType
TestStruct.rec
TestStruct.recOn
-/
#guard_msgs in
#print prefix -showTypes TestStruct

/--
Artificial test function to show #print prefix filters out internals
including match_/proof_.

Note.  Internal names are inherently subject to change.  This test case may
fail regularly when the Lean version is changed.  If so, we should disable
the test case using this function below until a more robust solution is found.
-/
def testMatchProof : (n : Nat) → Fin n → Unit
  | _,  ⟨0, _⟩ => ()
  | Nat.succ as, ⟨Nat.succ i, h⟩ => testMatchProof as ⟨i, Nat.le_of_succ_le_succ h⟩

/-- info: testMatchProof (n : Nat) : Fin n → Unit -/
#guard_msgs in
#print prefix testMatchProof

/--
info: testMatchProof (n : Nat) : Fin n → Unit
testMatchProof._f (x✝ : Nat) (f : Nat.below (motive := fun x => Fin x → Unit) x✝) : Fin x✝ → Unit
testMatchProof._proof_1 (as i : Nat) (h : i.succ < as.succ) : i.succ ≤ as
testMatchProof._sunfold (n : Nat) : Fin n → Unit
testMatchProof._unsafe_rec (n : Nat) : Fin n → Unit
testMatchProof.match_1.{u_1} (motive : (x : Nat) → Fin x → Sort u_1) (x✝ : Nat) (x✝¹ : Fin x✝)
  (h_1 : (n : Nat) → (isLt : 0 < n) → motive n ⟨0, isLt⟩)
  (h_2 : (as i : Nat) → (h : i.succ < as.succ) → motive as.succ ⟨i.succ, h⟩) : motive x✝ x✝¹
-/
#guard_msgs in
#print prefix +internals testMatchProof

private inductive TestInd where
| foo : TestInd
| bar : TestInd

/--
info: TestInd : Type
TestInd.bar : TestInd
TestInd.bar.elim.{u} {motive : TestInd → Sort u} (t : TestInd) (h : t.ctorIdx = 1) (bar : motive TestInd.bar) : motive t
TestInd.bar.sizeOf_spec : sizeOf TestInd.bar = 1
TestInd.casesOn.{u} {motive : TestInd → Sort u} (t : TestInd) (foo : motive TestInd.foo) (bar : motive TestInd.bar) :
  motive t
TestInd.ctorElim.{u} {motive : TestInd → Sort u} (ctorIdx : Nat) (t : TestInd) (h : ctorIdx = t.ctorIdx)
  (k : TestInd.ctorElimType ctorIdx) : motive t
TestInd.ctorElimType.{u} {motive : TestInd → Sort u} (ctorIdx : Nat) : Sort (max 1 u)
TestInd.ctorIdx : TestInd → Nat
TestInd.foo : TestInd
TestInd.foo.elim.{u} {motive : TestInd → Sort u} (t : TestInd) (h : t.ctorIdx = 0) (foo : motive TestInd.foo) : motive t
TestInd.foo.sizeOf_spec : sizeOf TestInd.foo = 1
TestInd.noConfusion.{v✝} {P : Sort v✝} {x y : TestInd} (h : x = y) : TestInd.noConfusionType P x y
TestInd.noConfusionType.{v✝} (P : Sort v✝) (x y : TestInd) : Sort v✝
TestInd.rec.{u} {motive : TestInd → Sort u} (foo : motive TestInd.foo) (bar : motive TestInd.bar) (t : TestInd) :
  motive t
TestInd.recOn.{u} {motive : TestInd → Sort u} (t : TestInd) (foo : motive TestInd.foo) (bar : motive TestInd.bar) :
  motive t
TestInd.toCtorIdx : TestInd → Nat
-/
#guard_msgs in
#print prefix TestInd

-- `#print prefix` does nothing if no identifier is provided
#guard_msgs in
#print prefix
```
