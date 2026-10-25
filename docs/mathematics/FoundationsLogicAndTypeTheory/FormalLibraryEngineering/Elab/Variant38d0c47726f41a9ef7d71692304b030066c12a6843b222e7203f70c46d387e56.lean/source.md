# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variant38d0c47726f41a9ef7d71692304b030066c12a6843b222e7203f70c46d387e56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5691d2702283c507f54f956113515b1b6e7578e` · SHA-256 `485f720b343cf2ef44bdfd30e1e7daa52b9c64caebeb309169d07fd73629d2e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromToJson.Variantf5e11b59b8e1dfe9552c7861235d55f8d4ce14dce406751291c7372858c90844","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5e11b59b8e1dfe9552c7861235d55f8d4ce14dce406751291c7372858c90844","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FromToJson.Variantf5e11b59b8e1dfe9552c7861235d55f8d4ce14dce406751291c7372858c90844","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f5e11b59b8e1dfe9552c7861235d55f8d4ce14dce406751291c7372858c90844","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Json/Elab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 E.W.Ayers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: E.W.Ayers, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Json.FromToJson
public meta import Lean.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromToJson.Variantf5e11b59b8e1dfe9552c7861235d55f8d4ce14dce406751291c7372858c90844

public section

/-!
# JSON-like syntax for Lean.

Now you can write

```lean
open Lean.Json

#eval json% {
  hello : "world",
  cheese : ["edam", "cheddar", {kind : "spicy", rank : 100.2}],
  lemonCount : 100e30,
  isCool : true,
  isBug : null,
  lookACalc: $(23 + 54 * 2)
}
```
-/

namespace Lean.Json

/-- Json syntactic category -/
declare_syntax_cat json (behavior := symbol)
/-- Json null value syntax. -/
syntax "null" : json
/-- Json true value syntax. -/
syntax "true" : json
/-- Json false value syntax. -/
syntax "false" : json
/-- Json string syntax. -/
syntax str : json
/-- Json number negation syntax for ordinary numbers. -/
syntax "-"? num : json
/-- Json number negation syntax for scientific numbers. -/
syntax "-"? scientific : json
/-- Json array syntax. -/
syntax "[" json,* "]" : json
/-- Json identifier syntax. -/
syntax jsonIdent := ident <|> str
/-- Json key/value syntax. -/
syntax jsonField := jsonIdent ": " json
/-- Json object syntax. -/
syntax "{" jsonField,* "}" : json
/-- Allows to use Json syntax in a Lean file. -/
syntax "json% " json : term


macro_rules
  | `(json% null)           => `(Lean.Json.null)
  | `(json% true)           => `(Lean.Json.bool Bool.true)
  | `(json% false)          => `(Lean.Json.bool Bool.false)
  | `(json% $n:str)         => `(Lean.Json.str $n)
  | `(json% $n:num)         => `(Lean.Json.num $n)
  | `(json% $n:scientific)  => `(Lean.Json.num $n)
  | `(json% -$n:num)        => `(Lean.Json.num (-$n))
  | `(json% -$n:scientific) => `(Lean.Json.num (-$n))
  | `(json% [$[$xs],*])     => `(Lean.Json.arr #[$[json% $xs],*])
  | `(json% {$[$ks:jsonIdent : $vs:json],*}) => do
    let ks : Array (TSyntax `term) ← ks.mapM fun
      | `(jsonIdent| $k:ident) => pure (k.getId |> toString |> quote)
      | `(jsonIdent| $k:str)   => pure k
      | _                     => Macro.throwUnsupported
    `(Lean.Json.mkObj [$[($ks, json% $vs)],*])
  | `(json% $stx)           =>
    if stx.raw.isAntiquot then
      let stx := ⟨stx.raw.getAntiquotTerm⟩
      `(Lean.toJson $stx)
    else
      Macro.throwUnsupported

end Lean.Json
````
