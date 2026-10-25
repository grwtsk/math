# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variantf4b5a3f417b18b6f78a7ac3d780e6f121abce7a0cbbde2c72cdc52fc18d93a59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c2daeceb9e2cbaf74d6721a0a9e97a71fc2d4a1` · SHA-256 `301924e96891a597723ea371bd1fbc07b6d27ae20bac217c072dbe3e93780c46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReorderLastArguments.Variant2d5c9d590133db436b21678d541e4860fb4afed72686edc5d426fd8c81ecf0ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d5c9d590133db436b21678d541e4860fb4afed72686edc5d426fd8c81ecf0ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReorderLastArguments.Variant2d5c9d590133db436b21678d541e4860fb4afed72686edc5d426fd8c81ecf0ac","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2d5c9d590133db436b21678d541e4860fb4afed72686edc5d426fd8c81ecf0ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Lean.Expr.ReplaceRec
import Mathlib.Tactic.RunCmd
import Mathlib.Init.Data.Nat.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReorderLastArguments.Variant2d5c9d590133db436b21678d541e4860fb4afed72686edc5d426fd8c81ecf0ac

open Lean Meta Elab Command

section replaceRec
/-! Test the implementation of `Expr.replaceRec` -/

/-- Reorder the last two arguments of every function in the expression.
  (The resulting term will generally not be a type-correct) -/
def reorderLastArguments : Expr → Expr :=
  Expr.replaceRec λ r e =>
    let n := e.getAppNumArgs
    if n ≥ 2 then
      mkAppN e.getAppFn <| e.getAppArgs.map r |>.swap! (n - 1) (n - 2)
    else
      none

def foo (f : ℕ → ℕ → ℕ) (n₁ n₂ n₃ n₄ : ℕ) : ℕ := f (f n₁ n₂) (f n₃ n₄)
def bar (f : ℕ → ℕ → ℕ) (n₁ n₂ n₃ n₄ : ℕ) : ℕ := f (f n₄ n₃) (f n₂ n₁)

run_cmd liftTermElabM <| do
  let d ← getConstInfo `foo
  let e := d.value!
  logInfo m!"before: {e}"
  let e := reorderLastArguments e
  logInfo m!"after: {e}"
  let t ← Meta.inferType e
  logInfo m!"new type: {t}"
  let d ← getConstInfo `bar
  logInfo m!"after: {d.value!}"
  guard $ e == d.value!

end replaceRec
```
