# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant0e814f7f25d8d2471b969efd49645417bfd02d9b7056cc93058f9708fe4aa533

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a913a45543513d61bce013046f15655e95c2ff91` · SHA-256 `e2357b0823577dd297cdf4d48b7852cf7967f32ebe0ea315c1e33a9c960b3281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetAntiquotationIds.Variant8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetAntiquotationIds.Variant8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Quotation/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Elab.Term


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetAntiquotationIds.Variant8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f

public section

namespace Lean.Elab.Term.Quotation
open Lean.Syntax

register_builtin_option hygiene : Bool := {
  defValue := true
  descr    := "Annotate identifiers in quotations such that they are resolved relative to the scope at their declaration, not that at their eventual use/expansion, to avoid accidental capturing. Note that quotations/notations already defined are unaffected."
}

def getAntiquotationIds (stx : Syntax) : TermElabM (Array Ident) := do
  let mut ids := #[]
  for stx in stx.topDown (firstChoiceOnly := true) do
    if (isAntiquot stx || isTokenAntiquot stx) && !isEscapedAntiquot stx then
      let anti := getAntiquotTerm stx
      if anti.isIdent then ids := ids.push ⟨anti⟩
      else if anti.isOfKind ``Parser.Term.hole then pure ()
      else throwErrorAt stx "complex antiquotation not allowed here"
  return ids

/-- Get all pattern vars (as `Syntax.ident`s) in `stx` -/
partial def getPatternVars (stx : Syntax) : TermElabM (Array Syntax) :=
  if stx.isQuot then
    getAntiquotationIds stx
  else match stx with
    | `(_)            => return #[]
    | `($id:ident)    => return #[id]
    | `($id:ident@$e) => return (← getPatternVars e).push id
    | _               => throwErrorAt stx "unsupported pattern in syntax match{indentD stx}"

def getPatternsVars (pats : Array Syntax) : TermElabM (Array Syntax) :=
  pats.foldlM (fun vars pat => do return vars ++ (← getPatternVars pat)) #[]

/--
Given an antiquotation like `$e:term` (i.e. `Syntax.antiquotKind?` returns `some`),
returns the `"term"` atom if present.
-/
def getAntiquotKindSpec? (antiquot : Syntax) : Option Syntax :=
  let name := antiquot[3][1]
  if name.isMissing then none else some name

end Lean.Elab.Term.Quotation
```
