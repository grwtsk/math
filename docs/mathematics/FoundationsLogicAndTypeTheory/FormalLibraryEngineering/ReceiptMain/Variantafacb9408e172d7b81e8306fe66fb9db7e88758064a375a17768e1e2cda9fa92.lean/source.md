# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReceiptMain.Variantafacb9408e172d7b81e8306fe66fb9db7e88758064a375a17768e1e2cda9fa92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a57692c6949421f4cf28eb39fc5f5abb806c2a7` · SHA-256 `faf6d2d08256f285ff9cd8f62986f89fa0f061b3ec49f3af16a7038640d0f7eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JsonEscapeChar.Variant6518351f0bc4aebc1183464fde802b65e1e649f826985a6b1d918e8ef573737d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6518351f0bc4aebc1183464fde802b65e1e649f826985a6b1d918e8ef573737d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.JsonEscapeChar.Variant6518351f0bc4aebc1183464fde802b65e1e649f826985a6b1d918e8ef573737d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6518351f0bc4aebc1183464fde802b65e1e649f826985a6b1d918e8ef573737d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/Generated/Prototype/ReceiptMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Lean.Util.CollectAxioms
import Surface.Refactor.Authority


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JsonEscapeChar.Variant6518351f0bc4aebc1183464fde802b65e1e649f826985a6b1d918e8ef573737d

open Lean

namespace SurfacePrototypeReceipt

open Surface.Core

def jsonEscapeChar : Char → String
  | '"' => "\\\""
  | '\\' => "\\\\"
  | '\n' => "\\n"
  | '\r' => "\\r"
  | '\t' => "\\t"
  | c => String.singleton c

def jsonString (value : String) : String :=
  "\"" ++ value.foldl (fun acc c => acc ++ jsonEscapeChar c) "" ++ "\""

def jsonNames (values : List Name) : String :=
  "[" ++ String.intercalate "," (values.map fun n => jsonString n.toString) ++ "]"

def positionJson (position : Position) : String :=
  "{\"line\":" ++ toString position.line ++
    ",\"column\":" ++ toString position.column ++ "}"

def declarationRangesJson : Option DeclarationRanges → String
  | none => "null"
  | some ranges =>
      "{\"start\":" ++ positionJson ranges.range.pos ++
        ",\"end\":" ++ positionJson ranges.range.endPos ++
        ",\"selectionStart\":" ++ positionJson ranges.selectionRange.pos ++
        ",\"selectionEnd\":" ++ positionJson ranges.selectionRange.endPos ++ "}"

def nameFromDottedString (value : String) : Name :=
  value.splitOn "." |>.foldl (fun acc part => Name.str acc part) Name.anonymous

def declarationModule (env : Environment) (declarationName : Name) : Name :=
  match env.getModuleIdxFor? declarationName with
  | none => env.mainModule
  | some idx => env.header.moduleNames[idx.toNat]!

def environmentFingerprint (env : Environment) : Digest :=
  let modules := env.header.moduleNames.toList.map Name.toString
  digestString <| String.intercalate "\n" modules

def receiptJson
    (env : Environment)
    (declarationName : Name)
    (normalizedType : String)
    (axioms : List Name)
    (ranges : Option DeclarationRanges) : String :=
  let typeHash := digestString normalizedType
  let moduleName := declarationModule env declarationName
  let body :=
    "{\"schema\":" ++ jsonString kernelReceiptSchema ++
    ",\"declaration_name\":" ++ jsonString declarationName.toString ++
    ",\"normalized_type\":" ++ jsonString normalizedType ++
    ",\"declaration_range\":" ++ declarationRangesJson ranges ++
    ",\"type_hash\":" ++ jsonString (toString typeHash) ++
    ",\"statement_hash\":" ++ jsonString (toString typeHash) ++
    ",\"module\":" ++ jsonString moduleName.toString ++
    ",\"axiom_closure\":" ++ jsonNames axioms ++
    ",\"environment_fingerprint\":" ++
      jsonString (toString (environmentFingerprint env)) ++
    ",\"hash_algorithm\":\"surface-string-digest-noncryptographic.v1\""
  let payload := body ++ "}"
  let receiptHash := digestString payload
  body ++ ",\"receipt_hash\":" ++ jsonString (toString receiptHash) ++ "}"

def emitReceipt (declaration : String) : IO UInt32 := do
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface.Refactor.Authority }] {}
  let declarationName := nameFromDottedString declaration
  match env.find? declarationName with
  | none =>
      IO.eprintln <| "prototype_receipt: declaration not found: " ++ declaration
      pure 2
  | some info =>
      unless info.isTheorem do
        IO.eprintln <| "prototype_receipt: declaration is not a theorem: " ++ declaration
        return 3
      let action : CoreM (String × Array Name × Option DeclarationRanges) := do
        let normalizedType ← (do
          return toString (← Meta.ppExpr info.type)).run'
        let axioms ← Lean.collectAxioms declarationName
        let ranges ← Lean.findDeclarationRanges? declarationName
        pure (normalizedType, axioms, ranges)
      let (normalizedType, axioms, ranges) ← action.toIO'
        { fileName := "<prototype_receipt>", fileMap := default }
        { env := env }
      IO.println <| receiptJson env declarationName normalizedType axioms.toList ranges
      pure 0

def main (args : List String) : IO UInt32 :=
  match args with
  | [declaration] => emitReceipt declaration
  | _ => do
      IO.eprintln "usage: PrototypeReceiptMain <fully.qualified.theorem>"
      pure 64

end SurfacePrototypeReceipt

def main (args : List String) : IO UInt32 :=
  SurfacePrototypeReceipt.main args
```
