# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceIndexMain.Variantf5a870549232ee331ca1d1f5faa5e291a0e6d0db670c22227d9c519317834b5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5697264d8cc68f9d539e465cb421f4d7072d828` · SHA-256 `ad9593167689e2cf2f4146e5132b8c91a57ae319da59e6042bac898af3376b03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JsonEscapeChar.Variant1f0bbf6f5ce903589e11d72dc3cf068edfe394629b08447e3cb509e56cc3da24","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f0bbf6f5ce903589e11d72dc3cf068edfe394629b08447e3cb509e56cc3da24","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.JsonEscapeChar.Variant1f0bbf6f5ce903589e11d72dc3cf068edfe394629b08447e3cb509e56cc3da24","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1f0bbf6f5ce903589e11d72dc3cf068edfe394629b08447e3cb509e56cc3da24","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Tools/SurfaceIndexMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Surface
import Surface.Audit
import Surface.Core.Classification


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JsonEscapeChar.Variant1f0bbf6f5ce903589e11d72dc3cf068edfe394629b08447e3cb509e56cc3da24

open Lean

namespace SurfaceIndex

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

def jsonStrings (values : List String) : String :=
  "[" ++ String.intercalate "," (values.map jsonString) ++ "]"

def constantKind : ConstantInfo → String
  | .axiomInfo _ => "external_axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def declarationModule (env : Environment) (declarationName : Name) : Name :=
  match env.getModuleIdxFor? declarationName with
  | none => env.mainModule
  | some idx => env.header.moduleNames[idx.toNat]!

def environmentFingerprint (env : Environment) : Digest :=
  digestString <| String.intercalate "\n" <|
    env.header.moduleNames.toList.map Name.toString

def classificationTags (env : Environment) (name : Name) : List String :=
  let adapter :=
    if Surface.Core.surfaceAdapterAttr.hasTag env name then ["surface_adapter"] else []
  let novel :=
    if Surface.Core.surfaceNovelAttr.hasTag env name then ["surface_novel"] else []
  let candidate :=
    if Surface.Core.surfaceCandidateAttr.hasTag env name then ["surface_candidate"] else []
  let published :=
    if Surface.Core.surfacePublishedAttr.hasTag env name then ["surface_published"] else []
  let certificate :=
    if Surface.Core.surfaceCertificateAttr.hasTag env name then ["surface_certificate"] else []
  let interface :=
    if Surface.Core.surfaceInterfaceAttr.hasTag env name then ["surface_interface"] else []
  adapter ++ novel ++ candidate ++ published ++ certificate ++ interface

def declarationJson (env : Environment) (info : ConstantInfo) : String :=
  let name := info.name
  let typeText := toString info.type
  let proofStatus :=
    if info.isTheorem then "kernel_checked_theorem"
    else if info.isAxiom then "external_axiom"
    else "not_a_theorem"
  "{\"name\":" ++ jsonString name.toString ++
    ",\"module\":" ++ jsonString (declarationModule env name).toString ++
    ",\"kind\":" ++ jsonString (constantKind info) ++
    ",\"proof_status\":" ++ jsonString proofStatus ++
    ",\"type_hash\":" ++ jsonString (toString (digestString typeText)) ++
    ",\"classifications\":" ++ jsonStrings (classificationTags env name) ++ "}"

def canonicalDeclarations (env : Environment) : List ConstantInfo :=
  env.constants.toList
    |>.map Prod.snd
    |>.filter (fun info => info.name.toString.startsWith "Surface.")
    |>.mergeSort (fun a b => Name.quickLt a.name b.name)

def indexJson (env : Environment) : String :=
  let declarations := canonicalDeclarations env
  "{\"schema\":\"surface.environment-index.v1\"" ++
    ",\"entry_module\":\"Surface\"" ++
    ",\"environment_fingerprint\":" ++
      jsonString (toString (environmentFingerprint env)) ++
    ",\"classification_attributes\":[\"surface_adapter\",\"surface_novel\",\"surface_candidate\",\"surface_published\",\"surface_certificate\",\"surface_interface\"]" ++
    ",\"declaration_count\":" ++ toString declarations.length ++
    ",\"declarations\":[" ++
      String.intercalate "," (declarations.map (declarationJson env)) ++ "]}"

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_index"
    return 64
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface }] {}
  IO.println (indexJson env)
  pure 0

end SurfaceIndex

def main (args : List String) : IO UInt32 :=
  SurfaceIndex.main args
```
