# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Example.Variantcc6c20561102b46cd6d6b4c120d2f6af9b5167be9e2f7d4ea094156b3c7bc4ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eeee99b6f56436090d50b7a3fe51ec7e1b942a3` · SHA-256 `4988000b3c962c069e73d95dad6d2411df60099caeefaebd4016b7564afb0e8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RunExampleCmd.Variant7f8d03f3aa0e63e74c34ae244799882bea020f4119fe00ac8f6099667e0797af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f8d03f3aa0e63e74c34ae244799882bea020f4119fe00ac8f6099667e0797af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RunExampleCmd.Variant7f8d03f3aa0e63e74c34ae244799882bea020f4119fe00ac8f6099667e0797af","mathematical_subject":"Computation.DataStructures","original_sha256":"7f8d03f3aa0e63e74c34ae244799882bea020f4119fe00ac8f6099667e0797af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Cli/CliTest/Example.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Cli


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RunExampleCmd.Variant7f8d03f3aa0e63e74c34ae244799882bea020f4119fe00ac8f6099667e0797af

open Cli

def runExampleCmd (p : Parsed) : IO UInt32 := do
  let input   : String       := p.positionalArg! "input" |>.as! String
  let outputs : Array String := p.variableArgsAs! String
  IO.println <| "Input: " ++ input
  IO.println <| "Outputs: " ++ toString outputs

  if p.hasFlag "verbose" then
    IO.println "Flag `--verbose` was set."
  if p.hasFlag "invert" then
    IO.println "Flag `--invert` was set."
  if p.hasFlag "optimize" then
    IO.println "Flag `--optimize` was set."

  let priority : Nat := p.flag! "priority" |>.as! Nat
  IO.println <| "Flag `--priority` always has at least a default value: " ++ toString priority

  if p.hasFlag "module" then
    let moduleName : ModuleName := p.flag! "module" |>.as! ModuleName
    IO.println <| s!"Flag `--module` was set to `{moduleName}`."

  if let some setPathsFlag := p.flag? "set-paths" then
    IO.println <| toString <| setPathsFlag.as! (Array String)
  return 0

def installCmd := `[Cli|
  installCmd NOOP;
  "installCmd provides an example for a subcommand without flags or arguments that does nothing. \
   Versions can be omitted."
]

def testCmd := `[Cli|
  testCmd NOOP;
  "testCmd provides another example for a subcommand without flags or arguments that does nothing."
]

def exampleCmd : Cmd := `[Cli|
  exampleCmd VIA runExampleCmd; ["0.0.1"]
  "This string denotes the description of `exampleCmd`."

  FLAGS:
    verbose;                    "Declares a flag `--verbose`. This is the description of the flag."
    i, invert;                  "Declares a flag `--invert` with an associated short alias `-i`."
    o, optimize;                "Declares a flag `--optimize` with an associated short alias `-o`."
    p, priority : Nat;          "Declares a flag `--priority` with an associated short alias `-p` \
                                 that takes an argument of type `Nat`."
    module : ModuleName;        "Declares a flag `--module` that takes an argument of type `ModuleName` \
                                 which can be used to reference Lean modules like `Init.Data.Array` \
                                 or Lean files using a relative path like `Init/Data/Array.lean`."
    "set-paths" : Array String; "Declares a flag `--set-paths` \
                                 that takes an argument of type `Array Nat`. \
                                 Quotation marks allow the use of hyphens."

  ARGS:
    input : String;      "Declares a positional argument <input> \
                          that takes an argument of type `String`."
    ...outputs : String; "Declares a variable argument <output>... \
                          that takes an arbitrary amount of arguments of type `String`."

  SUBCOMMANDS:
    installCmd;
    testCmd

  -- The EXTENSIONS section denotes features that
  -- were added as an external extension to the library.
  -- `./Cli/Extensions.lean` provides some commonly useful examples.
  EXTENSIONS:
    author "mhuisi";
    defaultValues! #[("priority", "0")]
]

def main (args : List String) : IO UInt32 :=
  exampleCmd.validate args

#eval main <| "-i -o -p 1 --module=Lean.Compiler --set-paths=path1,path2,path3 input output1 output2".splitOn " "
/-
Yields:
  Input: input
  Outputs: #[output1, output2]
  Flag `--invert` was set.
  Flag `--optimize` was set.
  Flag `--priority` always has at least a default value: 1
  Flag `--module` was set to `Lean.Compiler`.
  #[path1, path2, path3]
-/

-- Short parameterless flags can be grouped,
-- short flags with parameters do not need to be separated from
-- the corresponding value.
#eval main <| "-io -p1 input".splitOn " "
/-
Yields:
  Input: input
  Outputs: #[]
  Flag `--invert` was set.
  Flag `--optimize` was set.
  Flag `--priority` always has at least a default value: 1
-/

#eval main <| "--version".splitOn " "
/-
Yields:
  0.0.1
-/


#eval main <| "-h".splitOn " "
/-
Yields:
  exampleCmd [0.0.1]
  mhuisi
  This string denotes the description of `exampleCmd`.

  USAGE:
      exampleCmd [SUBCOMMAND] [FLAGS] <input> <outputs>...

  FLAGS:
      -h, --help                  Prints this message.
      --version                   Prints the version.
      --verbose                   Declares a flag `--verbose`. This is the
                                  description of the flag.
      -i, --invert                Declares a flag `--invert` with an associated
                                  short alias `-i`.
      -o, --optimize              Declares a flag `--optimize` with an associated
                                  short alias `-o`.
      -p, --priority : Nat        Declares a flag `--priority` with an associated
                                  short alias `-p` that takes an argument of type
                                  `Nat`. [Default: `0`]
      --module : ModuleName       Declares a flag `--module` that takes an
                                  argument of type `ModuleName` which can be used
                                  to reference Lean modules like `Init.Data.Array`
                                  or Lean files using a relative path like
                                  `Init/Data/Array.lean`.
      --set-paths : Array String  Declares a flag `--set-paths` that takes an
                                  argument of type `Array Nat`. Quotation marks
                                  allow the use of hyphens.

  ARGS:
      input : String    Declares a positional argument <input> that takes an
                        argument of type `String`.
      outputs : String  Declares a variable argument <output>... that takes an
                        arbitrary amount of arguments of type `String`.

  SUBCOMMANDS:
      installCmd  installCmd provides an example for a subcommand without flags or
                  arguments that does nothing. Versions can be omitted.
      testCmd     testCmd provides another example for a subcommand without flags
                  or arguments that does nothing.
-/
```
