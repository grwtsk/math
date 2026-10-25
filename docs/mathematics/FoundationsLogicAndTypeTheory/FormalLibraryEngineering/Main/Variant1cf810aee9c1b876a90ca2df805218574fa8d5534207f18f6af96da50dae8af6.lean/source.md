# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `463b803e00a27d35577a8901b9bf3d0a6dd62128` · SHA-256 `9a8ae8d018beb302c32166680f6431694f545b6163122634b19dc3efea9502b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OutputBaseDir.Variant22e75bc69a1c3d95d518e3d7ac5bcc2951ce4017761cc58a87a994cde4591cac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22e75bc69a1c3d95d518e3d7ac5bcc2951ce4017761cc58a87a994cde4591cac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.OutputBaseDir.Variant22e75bc69a1c3d95d518e3d7ac5bcc2951ce4017761cc58a87a994cde4591cac","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"22e75bc69a1c3d95d518e3d7ac5bcc2951ce4017761cc58a87a994cde4591cac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect
import Lean
import Cli

/-!
This executable extracts the blueprint data from a module, or
collates the blueprint data from multiple modules into a LaTeX file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OutputBaseDir.Variant22e75bc69a1c3d95d518e3d7ac5bcc2951ce4017761cc58a87a994cde4591cac

open Lean Cli Architect

def outputBaseDir (buildDir : System.FilePath) : System.FilePath :=
  buildDir / "blueprint"

def runSingleCmd (p : Parsed) : IO UInt32 := do
  let buildDir := match p.flag? "build" with
    | some dir => dir.as! String
    | none => ".lake/build"
  let baseDir := outputBaseDir buildDir
  let module := p.positionalArg! "module" |>.as! String |>.toName
  let isJson := p.hasFlag "json"
  let options : LeanOptions ← match p.flag? "options" with
    | some o => IO.ofExcept (Json.parse (o.as! String) >>= fromJson?)
    | none => pure (∅ : LeanOptions)
  if isJson then
    let json ← jsonOfImportModule module options.toOptions
    outputJsonResults baseDir module json
  else
    let latexOutput ← latexOutputOfImportModule module options.toOptions
    discard <| outputLatexResults baseDir module latexOutput
  return 0

def runIndexCmd (p : Parsed) : IO UInt32 := do
  let buildDir := match p.flag? "build" with
    | some dir => dir.as! String
    | none => ".lake/build"
  let baseDir := outputBaseDir buildDir
  let library := p.positionalArg! "library" |>.as! String |>.toName
  let modules := p.positionalArg! "modules" |>.as! (Array String) |>.map (·.toName)
  let isJson := p.hasFlag "json"
  if isJson then
    outputLibraryJson baseDir library modules
  else
    outputLibraryLatex baseDir library modules
  return 0

def singleCmd := `[Cli|
  single VIA runSingleCmd;
  "Only extract the blueprint for the module it was given, might contain broken \\input{}s unless all blueprint files are extracted."

  FLAGS:
    j, json; "Output JSON instead of LaTeX."
    b, build : String; "Build directory."
    o, options : String; "LeanOptions in JSON to pass to running the module."

  ARGS:
    module : String; "The module to extract the blueprint for."
]

def indexCmd := `[Cli|
  index VIA runIndexCmd;
  "Collates the LaTeX outputs of modules in a library from `single` into a LaTeX file with \\input{}s pointing to the modules."

  FLAGS:
    j, json; "Output JSON instead of LaTeX."
    b, build : String; "Build directory."

  ARGS:
    library : String; "The library to index."
    modules : Array String; "The modules in the library."
]

def blueprintCmd : Cmd := `[Cli|
  "LeanArchitect" NOOP;
  "A blueprint generator for Lean 4."

  SUBCOMMANDS:
    singleCmd;
    indexCmd
]

def main (args : List String) : IO UInt32 :=
  blueprintCmd.validate args
```
