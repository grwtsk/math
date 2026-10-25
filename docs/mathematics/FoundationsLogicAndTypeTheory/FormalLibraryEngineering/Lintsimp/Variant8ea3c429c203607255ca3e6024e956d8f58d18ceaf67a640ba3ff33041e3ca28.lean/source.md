# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lintsimp.Variant8ea3c429c203607255ca3e6024e956d8f58d18ceaf67a640ba3ff33041e3ca28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4691222eef7522fd528b281362156c8f2ce0db00` · SHA-256 `f1d36b6ded6c791c96f3e470d25296651454482d787a7673f0b61edf08f3713a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulOpposite.Variant71771c5848ad2b8c9adc74f6b0683801cfa521ec21422cd50dbbff300895706e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71771c5848ad2b8c9adc74f6b0683801cfa521ec21422cd50dbbff300895706e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MulOpposite.Variant71771c5848ad2b8c9adc74f6b0683801cfa521ec21422cd50dbbff300895706e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"71771c5848ad2b8c9adc74f6b0683801cfa521ec21422cd50dbbff300895706e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lintsimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulOpposite.Variant71771c5848ad2b8c9adc74f6b0683801cfa521ec21422cd50dbbff300895706e

open Batteries.Tactic.Lint
set_option linter.missingDocs false

def f : Nat := 0
def g : Nat := 0
def h : Nat := 0
@[simp] theorem fg : f = g := rfl
@[simp] theorem fh : f = h := rfl

run_meta guard (← [``fg, ``fh].anyM fun n => return (← simpNF.test n).isSome)

@[simp] theorem test_and_comm : a ∧ b ↔ b ∧ a := And.comm
run_meta guard (← simpComm.test ``test_and_comm).isSome

def SemiconjBy [Mul M] (a x y : M) : Prop :=
  a * x = y * a

structure MulOpposite (α : Type u) : Type u where
  op :: unop : α

postfix:max "ᵐᵒᵖ" => MulOpposite

namespace MulOpposite

instance [Mul α] : Mul αᵐᵒᵖ where mul x y := op (unop y * unop x)

@[simp] theorem unop_inj {x y : αᵐᵒᵖ} : unop x = unop y ↔ x = y := by
  cases x; cases y; simp

#guard_msgs (drop warning) in
@[simp] theorem semiconj_by_unop [Mul α] {a x y : αᵐᵒᵖ} :
    SemiconjBy (unop a) (unop y) (unop x) ↔ SemiconjBy a x y := sorry

run_meta guard (← simpComm.test ``unop_inj).isNone

run_meta guard (← simpComm.test ``semiconj_by_unop).isNone

end MulOpposite

section

def MyPred (_ : Nat → Nat) : Prop := True

@[simp] theorem bad1 (f : Unit → Nat → Nat) : MyPred (f ()) ↔ True := by
  rw [MyPred]

@[simp] theorem bad2 (f g : Nat → Nat) : MyPred (fun x => f (g x)) ↔ True := by
  rw [MyPred]

-- Note, this is not a proper regression test because #671 depends on how the `MetaM` is
-- executed, and `run_meta` sets the options appropriately. But setting the config
-- explicitly here would amount to replicating the fix in the test itself.
run_meta guard (← simpNF.test ``bad1).isNone
run_meta guard (← simpNF.test ``bad2).isNone

end
```
