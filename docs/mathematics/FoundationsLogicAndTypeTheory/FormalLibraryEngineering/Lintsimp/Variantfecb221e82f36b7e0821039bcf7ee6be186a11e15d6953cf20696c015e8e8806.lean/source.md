# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lintsimp.Variantfecb221e82f36b7e0821039bcf7ee6be186a11e15d6953cf20696c015e8e8806

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d783ddac362242de88c4e65c33d9615f8ed2698` · SHA-256 `76a296e8e242fcce1a20ad68c58ba148b5c0761cd843fb52e3d9348355b2aada`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulOpposite.Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MulOpposite.Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lintsimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulOpposite.Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434

open Std.Tactic.Lint
set_option linter.missingDocs false

def f : Nat := 0
def g : Nat := 0
def h : Nat := 0
@[simp] theorem fg : f = g := rfl
@[simp] theorem fh : f = h := rfl
#eval do guard (← [``fg, ``fh].anyM fun n => return (← simpNF.test n).isSome)

@[simp] theorem and_comm : a ∧ b ↔ b ∧ a := And.comm
#eval do guard (← simpComm.test ``and_comm).isSome

@[simp] theorem Prod.mk_fst : (a, b).1 = id a := rfl
#eval do guard (← simpVarHead.test ``Prod.mk_fst).isSome

def SemiconjBy [Mul M] (a x y : M) : Prop :=
  a * x = y * a

structure MulOpposite (α : Type u) : Type u where
  op :: unop : α

postfix:max "ᵐᵒᵖ" => MulOpposite

namespace MulOpposite

instance [Mul α] : Mul αᵐᵒᵖ where mul x y := op (unop y * unop x)

@[simp]
theorem unop_inj {x y : αᵐᵒᵖ} : unop x = unop y ↔ x = y := by
  cases x; cases y; simp

@[simp]
theorem semiconj_by_unop [Mul α] {a x y : αᵐᵒᵖ} :
    SemiconjBy (unop a) (unop y) (unop x) ↔ SemiconjBy a x y := sorry

#eval do guard (← simpComm.test ``unop_inj).isNone
#eval do guard (← simpComm.test ``semiconj_by_unop).isNone

end MulOpposite
```
