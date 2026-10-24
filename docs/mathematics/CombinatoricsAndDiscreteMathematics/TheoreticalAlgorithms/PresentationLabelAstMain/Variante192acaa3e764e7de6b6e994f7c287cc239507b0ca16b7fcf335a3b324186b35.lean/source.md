# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PresentationLabelAstMain.Variante192acaa3e764e7de6b6e994f7c287cc239507b0ca16b7fcf335a3b324186b35

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b12bcc4823e3cb753cff70874aeb6c4ea2c967e8` · SHA-256 `366c98a33b80385b44efba055112c8f357c22d38290d80fa24870ff8bc64c4bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InputDir.Variant94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.InputDir.Variant94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5","mathematical_subject":"Computation.DataStructures","original_sha256":"94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/tools/PresentationLabelAstMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.AstLabeling


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InputDir.Variant94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5

namespace PresentationLabelAst

def inputDir : String :=
  "build/surface-foundry/self-anneal"

def outputDir : String :=
  "build/surface-foundry/ast-labeling"

def stringJson (s : String) : String :=
  "\"" ++ s ++ "\""

def stringArrayJson (items : List String) : String :=
  "[" ++ String.intercalate "," (items.map stringJson) ++ "]"

def finiteHash (s : String) : Nat :=
  s.toList.foldl (fun acc ch => acc * 33 + ch.toNat) 5381

def pad4 (n : Nat) : String :=
  if n < 10 then
    "000" ++ toString n
  else if n < 100 then
    "00" ++ toString n
  else if n < 1000 then
    "0" ++ toString n
  else
    toString n

def labelName (seed namespacePolicy line : String) (ordinal : Nat) : String :=
  "presentation_ast_" ++ toString (finiteHash (seed ++ ":" ++ namespacePolicy ++ ":" ++ line)) ++
    "_" ++ pad4 ordinal

def labelLine (seed namespacePolicy reducerTrace : String) (ordinal : Nat) (line : String) : String :=
  let name := labelName seed namespacePolicy (line ++ ":" ++ reducerTrace) ordinal
  "{" ++
    "\"ordinal\":" ++ toString ordinal ++ "," ++
    "\"name\":" ++ stringJson name ++ "," ++
    "\"domain\":" ++ stringJson "presentation" ++ "," ++
    "\"presentation_role\":" ++ stringJson "ast" ++ "," ++
    "\"source_hash\":" ++ stringJson (toString (finiteHash line)) ++ "," ++
    "\"namespace_policy\":" ++ stringJson namespacePolicy ++ "," ++
    "\"reducer_trace_hash\":" ++ stringJson (toString (finiteHash reducerTrace)) ++ "," ++
    "\"label_authority\":" ++ stringJson "metadata-only" ++
  "}"

def labelLinesAux
    (seed namespacePolicy reducerTrace : String) :
    Nat → List String → List String
  | _, [] => []
  | ordinal, line :: rest =>
      labelLine seed namespacePolicy reducerTrace ordinal line ::
        labelLinesAux seed namespacePolicy reducerTrace (ordinal + 1) rest

def deterministicNamesJson
    (seed namespacePolicy reducerTrace : String)
    (lines : List String) : String :=
  let rec namesAux : Nat → List String → List String
    | _, [] => []
    | ordinal, line :: rest =>
        labelName seed namespacePolicy (line ++ ":" ++ reducerTrace) ordinal ::
          namesAux (ordinal + 1) rest
  stringArrayJson (namesAux 1 lines)

def renamePlanEntry (seed namespacePolicy reducerTrace : String) (ordinal : Nat) (line : String) : String :=
  "{" ++
    "\"ordinal\":" ++ toString ordinal ++ "," ++
    "\"generated_name\":" ++
      stringJson (labelName seed namespacePolicy (line ++ ":" ++ reducerTrace) ordinal) ++ "," ++
    "\"source_mutation\":\"disabled\"," ++
    "\"rename_plan_externalized\":true" ++
  "}"

def renamePlanLinesAux
    (seed namespacePolicy reducerTrace : String) :
    Nat → List String → List String
  | _, [] => []
  | ordinal, line :: rest =>
      renamePlanEntry seed namespacePolicy reducerTrace ordinal line ::
        renamePlanLinesAux seed namespacePolicy reducerTrace (ordinal + 1) rest

def skeletonFile : String :=
  "/- Generated by presentation_label_ast.\n" ++
  "   Theorem skeleton generation is disabled by default.\n" ++
  "   This file is metadata and is not imported by ordinary builds.\n" ++
  "   Generated names do not create theorem authority. -/\n\n" ++
  "namespace Presentation\nnamespace GeneratedTheoremSkeletons\n\n" ++
  "-- No theorem skeletons emitted.\n\n" ++
  "end GeneratedTheoremSkeletons\nend Presentation\n"

def countSubstr (s needle : String) : Nat :=
  (s.splitOn needle).length - 1

def skeletonReport (leanText : String) : String :=
  "{" ++
    "\"mode\":" ++ stringJson "strict-disabled" ++ "," ++
    "\"generatedLeanPath\":" ++
      stringJson "build/surface-foundry/ast-labeling/generated-theorem-skeletons.lean" ++ "," ++
    "\"developmentOutputDir\":" ++ stringJson "build/generated/dev" ++ "," ++
    "\"generatedSkeletonCount\":0," ++
    "\"unresolvedObligationCount\":0," ++
    "\"deterministicNames\":true," ++
    "\"namesPreserveIdentity\":true," ++
    "\"unprovedSkeletonsOwnNoAuthority\":true," ++
    "\"strictPhaseAdvance\":true," ++
    "\"forbiddenSorryCount\":" ++ toString (countSubstr leanText "sorry") ++ "," ++
    "\"forbiddenAxiomCount\":" ++ toString (countSubstr leanText "axiom") ++ "," ++
    "\"authorityBoundary\":" ++
      stringJson "generated theorem skeletons are scaffold syntax only until Lean checks proof terms" ++
  "}"

def main (args : List String) : IO UInt32 := do
  let seed := args.getD 0 "surface-foundry"
  let namespacePolicy := args.getD 1 "preserve"
  let ast ← IO.FS.readFile (inputDir ++ "/ast.ndjson")
  let organization ← IO.FS.readFile (inputDir ++ "/organization-report.json")
  let reducerTrace ← IO.FS.readFile (inputDir ++ "/reducer-trace.ndjson")
  let lines := (ast.splitOn "\n").filter (fun line => line != "")
  IO.FS.createDirAll outputDir
  IO.FS.writeFile
    (outputDir ++ "/labels.ndjson")
    (String.intercalate "\n" (labelLinesAux seed namespacePolicy reducerTrace 1 lines) ++ "\n")
  IO.FS.writeFile
    (outputDir ++ "/deterministic-names.json")
    (deterministicNamesJson seed namespacePolicy reducerTrace lines ++ "\n")
  IO.FS.writeFile
    (outputDir ++ "/rename-plan.json")
    ("[" ++ String.intercalate "," (renamePlanLinesAux seed namespacePolicy reducerTrace 1 lines) ++ "]\n")
  IO.FS.writeFile
    (outputDir ++ "/generated-theorem-skeletons.lean")
    skeletonFile
  IO.FS.writeFile
    (outputDir ++ "/generated-theorem-skeletons-report.json")
    (skeletonReport skeletonFile ++ "\n")
  IO.FS.writeFile
    (outputDir ++ "/labeling-report.json")
    ("{" ++
      "\"seed\":" ++ stringJson seed ++ "," ++
      "\"namespace_policy\":" ++ stringJson namespacePolicy ++ "," ++
      "\"ast_snapshot_hash\":" ++ stringJson (toString (finiteHash ast)) ++ "," ++
      "\"organization_report_hash\":" ++ stringJson (toString (finiteHash organization)) ++ "," ++
      "\"reducer_trace_hash\":" ++ stringJson (toString (finiteHash reducerTrace)) ++ "," ++
      "\"label_count\":" ++ toString lines.length ++ "," ++
      "\"generated_theorem_skeletons_report\":" ++
        stringJson "generated-theorem-skeletons-report.json" ++ "," ++
      "\"source_mutation\":\"disabled\"," ++
      "\"authority_boundary\":" ++ stringJson "generated labels and rename plans are metadata-only" ++
    "}\n")
  IO.println s!"presentation_label_ast wrote {lines.length} labels to {outputDir}"
  pure 0

end PresentationLabelAst

def main (args : List String) : IO UInt32 :=
  PresentationLabelAst.main args
```
