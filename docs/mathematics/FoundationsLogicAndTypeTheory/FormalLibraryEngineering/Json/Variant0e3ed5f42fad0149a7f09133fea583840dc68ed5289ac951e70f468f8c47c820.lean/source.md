# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variant0e3ed5f42fad0149a7f09133fea583840dc68ed5289ac951e70f468f8c47c820

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41d0435d3a8de6fa1b790657e98ae1470fbeaf04` · SHA-256 `ddea29f22fd482d7171d3a954db7b365b31bac487175d62af24c97f98315b916`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variant7988fc4150cd8764f434647d36d546f567b6b2b1e62990dee3790379e53bd110","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7988fc4150cd8764f434647d36d546f567b6b2b1e62990dee3790379e53bd110","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Json.Variant7988fc4150cd8764f434647d36d546f567b6b2b1e62990dee3790379e53bd110","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"7988fc4150cd8764f434647d36d546f567b6b2b1e62990dee3790379e53bd110","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Data/Json.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
 Copyright (c) 2022 E.W.Ayers. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: E.W.Ayers
-/
import Lean.Data.Json

/-!
# JSON-like syntax for Lean.

Now you can write

```lean
open scoped ProofWidgets.Json

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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variant7988fc4150cd8764f434647d36d546f567b6b2b1e62990dee3790379e53bd110

namespace ProofWidgets.Json
open Lean

declare_syntax_cat jso
declare_syntax_cat jso_field
declare_syntax_cat jso_ident

instance : OfScientific JsonNumber where
  ofScientific mantissa exponentSign decimalExponent :=
    if exponentSign then
      {mantissa := mantissa, exponent := decimalExponent}
    else
      {mantissa := (mantissa * 10 ^ decimalExponent : Nat), exponent := 0}

instance : Neg JsonNumber where
  neg jn := ⟨- jn.mantissa, jn.exponent⟩

instance : ToJson Float where
  toJson x :=
    if x == 0.0 then 0 else
    let s := toString (if x < 0.0 then - x else x)
    match Lean.Syntax.decodeScientificLitVal? <| s with
    | none =>
      match s with
      | "inf" => "inf" -- [todo] emit a warning
      | "-inf" => "-inf"
      | "nan" => "nan"
      | _ => panic! s!"unhandled float string {s}"
    | some (m, e, de) =>
      let j : JsonNumber := OfScientific.ofScientific m e de
      let j := if x < 0.0 then -j else j
      Json.num j

scoped syntax "[" jso,* "]" : jso
scoped syntax "-"? scientific : jso
scoped syntax "-"? num : jso
scoped syntax str : jso
scoped syntax "true" : jso
scoped syntax "false" : jso
scoped syntax "null" : jso
scoped syntax ident : jso_ident
scoped syntax "$(" term ")" : jso_ident
scoped syntax str : jso_ident
scoped syntax jso_ident ": " jso : jso_field
scoped syntax "{" jso_field,* "}" : jso
scoped syntax "$(" term ")" : jso
scoped syntax "json% " jso  : term

macro_rules
  | `(json% $($t))          => `(Lean.toJson $t)
  | `(json% null)           => `(Lean.Json.null)
  | `(json% true)           => `(Lean.Json.bool Bool.true)
  | `(json% false)          => `(Lean.Json.bool Bool.false)
  | `(json% $n:str)         => `(Lean.Json.str $n)
  | `(json% $n:num)         => `(Lean.Json.num $n)
  | `(json% $n:scientific)  => `(Lean.Json.num $n)
  | `(json% -$n:num)        => `(Lean.Json.num (-$n))
  | `(json% -$n:scientific) => `(Lean.Json.num (-$n))
  | `(json% [$[$xs],*])     => `(Lean.Json.arr #[$[json% $xs],*])
  | `(json% {$[$ks:jso_ident : $vs:jso],*}) =>
    let ks : Array (TSyntax `term) := ks.map fun
      | `(jso_ident| $k:ident)   => (k.getId |> toString |> quote)
      | `(jso_ident| $k:str)     => k
      | `(jso_ident| $($k:term)) => k
      | stx                      => panic! s!"unrecognized ident syntax {stx}"
    `(Lean.Json.mkObj [$[($ks, json% $vs)],*])

end ProofWidgets.Json
````
