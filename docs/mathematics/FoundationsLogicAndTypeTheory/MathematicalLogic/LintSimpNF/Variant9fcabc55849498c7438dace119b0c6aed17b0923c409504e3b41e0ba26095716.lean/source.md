# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LintSimpNF.Variant9fcabc55849498c7438dace119b0c6aed17b0923c409504e3b41e0ba26095716

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07857b1d82085d29172d83693f7070c4cae27db4` · SHA-256 `bd65047ccad23e177771bae776fa842dded16498ca6b0edc88654d6b286b515c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variantfa3bca64da5c65f7937d22f67402695b992ea9eb0f1deec9f7a9e15213e122ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa3bca64da5c65f7937d22f67402695b992ea9eb0f1deec9f7a9e15213e122ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Equiv.Variantfa3bca64da5c65f7937d22f67402695b992ea9eb0f1deec9f7a9e15213e122ef","mathematical_subject":"Logic.Foundations","original_sha256":"fa3bca64da5c65f7937d22f67402695b992ea9eb0f1deec9f7a9e15213e122ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lint_simpNF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variantfa3bca64da5c65f7937d22f67402695b992ea9eb0f1deec9f7a9e15213e122ef

set_option linter.missingDocs false

protected def Sum.elim {α β γ : Sort _} (f : α → γ) (g : β → γ) : Sum α β → γ :=
  fun x => Sum.casesOn x f g

structure Equiv (α : Sort _) (β : Sort _) where
  toFun : α → β
  invFun : β → α

infixl:25 " ≃ " => Equiv

namespace Equiv

instance : CoeFun (α ≃ β) fun _ => α → β := ⟨toFun⟩

protected def symm (e : α ≃ β) : β ≃ α := ⟨e.invFun, e.toFun⟩

def sumCompl {α : Type _} (p : α → Prop) [DecidablePred p] :
    Sum { a // p a } { a // ¬p a } ≃ α where
  toFun := Sum.elim Subtype.val Subtype.val
  invFun a := if h : p a then Sum.inl ⟨a, h⟩ else Sum.inr ⟨a, h⟩

@[simp]
theorem sumCompl_apply_symm_of_pos (p : α → Prop) [DecidablePred p] (a : α) (h : p a) :
    (sumCompl p).symm a = Sum.inl ⟨a, h⟩ :=
  dif_pos h

#lint- only simpNF
```
