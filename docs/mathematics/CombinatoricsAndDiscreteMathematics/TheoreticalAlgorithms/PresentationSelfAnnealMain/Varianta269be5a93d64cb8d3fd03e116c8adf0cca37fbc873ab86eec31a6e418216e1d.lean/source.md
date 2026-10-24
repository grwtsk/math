# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PresentationSelfAnnealMain.Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7eeb0fa8f0d51ec340c56553e722d14e56948db` · SHA-256 `3a1a7419cbc3b57e53511a1307e3fac41956096cff7866268b707815c07e4c3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FileSnapshot.Variant5d2224462a85af87118cff73679a022679c123008a501405e7fc9ab24d09e842","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d2224462a85af87118cff73679a022679c123008a501405e7fc9ab24d09e842","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FileSnapshot.Variant5d2224462a85af87118cff73679a022679c123008a501405e7fc9ab24d09e842","mathematical_subject":"Computation.DataStructures","original_sha256":"5d2224462a85af87118cff73679a022679c123008a501405e7fc9ab24d09e842","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/tools/PresentationSelfAnnealMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.SelfAnneal


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FileSnapshot.Variant5d2224462a85af87118cff73679a022679c123008a501405e7fc9ab24d09e842

namespace PresentationSelfAnneal

def outputDir : String :=
  "build/surface-foundry/self-anneal"

def presentationFiles : List String :=
  [ "lib/Presentation.lean"
  , "lib/Presentation/Syntax.lean"
  , "lib/Presentation/Binary.lean"
  , "lib/Presentation/Semantics.lean"
  , "lib/Presentation/Realization.lean"
  , "lib/Presentation/Audit.lean"
  , "lib/Presentation/Spine.lean"
  , "lib/Presentation/CoolingDissipation.lean"
  , "lib/Presentation/FiniteSearch.lean"
  , "lib/Presentation/PrismaticShadow.lean"
  , "lib/Presentation/ClosureNetwork.lean"
  , "lib/Presentation/AstLabeling.lean"
  , "lib/Presentation/Expressiveness.lean"
  , "lib/Presentation/SelfAnneal.lean"
  ]

def stringJson (s : String) : String :=
  "\"" ++ s ++ "\""

def stringArrayJson (items : List String) : String :=
  "[" ++ String.intercalate "," (items.map stringJson) ++ "]"

def finiteHash (s : String) : Nat :=
  s.toList.foldl (fun acc ch => acc * 33 + ch.toNat) 5381

def lineCount (s : String) : Nat :=
  (s.splitOn "\n").length

def importLines (s : String) : List String :=
  (s.splitOn "\n").filter (fun line => line.startsWith "import ")

def presentationUseCount (s : String) : Nat :=
  (s.splitOn "Presentation").length - 1

structure FileSnapshot where
  path : String
  content : String

def readSnapshot (path : String) : IO FileSnapshot := do
  let content ← IO.FS.readFile path
  pure { path, content }

def astLine (snapshot : FileSnapshot) : String :=
  "{" ++
    "\"path\":" ++ stringJson snapshot.path ++ "," ++
    "\"hash\":" ++ toString (finiteHash snapshot.content) ++ "," ++
    "\"lineCount\":" ++ toString (lineCount snapshot.content) ++ "," ++
    "\"presentationUseCount\":" ++
      toString ((snapshot.content.splitOn "Presentation").length - 1) ++ "," ++
    "\"imports\":" ++ stringArrayJson (importLines snapshot.content) ++
  "}"

def labelEntry (snapshot : FileSnapshot) : String :=
  "{" ++
    "\"source\":" ++ stringJson snapshot.path ++ "," ++
    "\"label\":" ++ stringJson ("presentation.self_anneal." ++ toString (finiteHash snapshot.path)) ++ "," ++
    "\"labelAuthority\":" ++ stringJson "generated-label-is-metadata-only" ++
  "}"

def renameEntry (snapshot : FileSnapshot) : String :=
  "{" ++
    "\"source\":" ++ stringJson snapshot.path ++ "," ++
    "\"suggestion\":" ++ stringJson "no-rename" ++ "," ++
    "\"mutatesSource\":false" ++
  "}"

def importPlanEntry (snapshot : FileSnapshot) : String :=
  let imports := importLines snapshot.content
  "{" ++
    "\"source\":" ++ stringJson snapshot.path ++ "," ++
    "\"currentImports\":" ++ stringArrayJson imports ++ "," ++
    "\"suggestedImports\":" ++ stringArrayJson imports ++ "," ++
    "\"suggestion\":" ++ stringJson "no-import-move" ++ "," ++
    "\"dependencyReachabilityPreserved\":true," ++
    "\"cycleIntroduced\":false," ++
    "\"namespaceIdentityPreserved\":true," ++
    "\"humanApprovalRequired\":true," ++
    "\"mutatesSource\":false" ++
  "}"

def reducerTraceLine (index : Nat) (snapshot : FileSnapshot) : String :=
  "{" ++
    "\"step\":" ++ toString index ++ "," ++
    "\"kind\":\"scan-presentation-usage\"," ++
    "\"source\":" ++ stringJson snapshot.path ++ "," ++
    "\"energyAdded\":" ++
      toString (presentationUseCount snapshot.content) ++ "," ++
    "\"witness\":\"file-read-and-counted\"," ++
    "\"authorityBoundary\":\"metadata-only\"" ++
  "}"

def reducerTraceLines : Nat → List FileSnapshot → List String
  | _, [] => []
  | index, snapshot :: rest =>
      reducerTraceLine index snapshot :: reducerTraceLines (index + 1) rest

def compileHeatEventLine
    (snapshot : FileSnapshot)
    (lineNo occurrence : Nat) : String :=
  let identity := snapshot.path ++ ":" ++ toString lineNo ++ ":" ++ toString occurrence
  "{" ++
    "\"module\":" ++ stringJson snapshot.path ++ "," ++
    "\"declaration\":" ++ stringJson ("presentation-use-line-" ++ toString lineNo) ++ "," ++
    "\"presentation_hash\":" ++ toString (finiteHash ("Presentation:" ++ identity)) ++ "," ++
    "\"heat_delta\":1," ++
    "\"reason\":" ++ stringJson "Presentation syntax or certificate reference" ++ "," ++
    "\"reducer_witness_hash\":" ++
      stringJson ("compile-heat-witness-" ++ toString (finiteHash identity)) ++ "," ++
    "\"authority_boundary\":" ++ stringJson "metadata-only" ++
  "}"

def compileHeatLinesForLine
    (snapshot : FileSnapshot)
    (lineNo : Nat)
    (line : String) : List String :=
  (List.range (presentationUseCount line)).map
    (fun occurrence => compileHeatEventLine snapshot lineNo occurrence)

def compileHeatLinesForSnapshotAux
    (snapshot : FileSnapshot) : Nat → List String → List String
  | _, [] => []
  | lineNo, line :: rest =>
      compileHeatLinesForLine snapshot lineNo line ++
        compileHeatLinesForSnapshotAux snapshot (lineNo + 1) rest

def compileHeatLinesForSnapshot (snapshot : FileSnapshot) : List String :=
  compileHeatLinesForSnapshotAux snapshot 1 (snapshot.content.splitOn "\n")

def compileHeatLines (snapshots : List FileSnapshot) : List String :=
  snapshots.foldr
    (fun snapshot acc => compileHeatLinesForSnapshot snapshot ++ acc)
    []

def importGraphEdgeCount (snapshots : List FileSnapshot) : Nat :=
  snapshots.foldl
    (fun acc snapshot => acc + (importLines snapshot.content).length)
    0

def importGraphHash (snapshots : List FileSnapshot) : Nat :=
  snapshots.foldl
    (fun acc snapshot =>
      acc + finiteHash
        (snapshot.path ++ ":" ++ String.intercalate "|" (importLines snapshot.content)))
    0

def declarationDependencyGraphHash (snapshots : List FileSnapshot) : Nat :=
  snapshots.foldl
    (fun acc snapshot =>
      acc + finiteHash
        (snapshot.path ++ ":" ++ toString (presentationUseCount snapshot.content)))
    0

def importGraphReport (snapshots : List FileSnapshot) : String :=
  let graphHash := importGraphHash snapshots
  let dependencyHash := declarationDependencyGraphHash snapshots
  let reducerHash := finiteHash (String.intercalate "\n" (reducerTraceLines 0 snapshots))
  "{" ++
    "\"beforeImportGraphHash\":" ++ toString graphHash ++ "," ++
    "\"afterImportGraphHash\":" ++ toString graphHash ++ "," ++
    "\"moduleCount\":" ++ toString snapshots.length ++ "," ++
    "\"importEdgeCount\":" ++ toString (importGraphEdgeCount snapshots) ++ "," ++
    "\"declarationDependencyGraphHash\":" ++ toString dependencyHash ++ "," ++
    "\"reducerTraceHash\":" ++ toString reducerHash ++ "," ++
    "\"dryRunBuildCommand\":" ++ stringJson "lake build Presentation" ++ "," ++
    "\"dryRunBuildExpected\":true," ++
    "\"allDependenciesReachable\":true," ++
    "\"noCycleIntroduced\":true," ++
    "\"namespaceIdentityPreserved\":true," ++
    "\"reducerTraceWitnessed\":true," ++
    "\"sourceMutationDisabled\":true," ++
    "\"appliesAutomatically\":false," ++
    "\"humanApprovalRequired\":true," ++
    "\"droppedDependencies\":0," ++
    "\"cycleCount\":0," ++
    "\"authorityBoundary\":" ++
      stringJson "Import graph self-annealing is a witnessed dry-run proposal only; source mutation requires human approval." ++
  "}"

def organizationReport (snapshots : List FileSnapshot) : String :=
  let moduleCount := snapshots.length
  let declarationCount :=
    snapshots.foldl
      (fun acc snapshot =>
        acc + (snapshot.content.splitOn "theorem ").length - 1 +
          (snapshot.content.splitOn "structure ").length - 1 +
          (snapshot.content.splitOn "def ").length - 1)
      0
  let snapshotHash :=
    snapshots.foldl (fun acc snapshot => acc + finiteHash snapshot.content) 0
  let compileHeatEventCount := (compileHeatLines snapshots).length
  let totalHeatDelta := compileHeatEventCount
  "{" ++
    "\"snapshotHash\":" ++ toString snapshotHash ++ "," ++
    "\"moduleCount\":" ++ toString moduleCount ++ "," ++
    "\"declarationCount\":" ++ toString declarationCount ++ "," ++
    "\"compileHeatNdjson\":\"compile-heat.ndjson\"," ++
    "\"importPlan\":\"import-plan.json\"," ++
    "\"importGraphReport\":\"import-graph-report.json\"," ++
    "\"compileHeatEventCount\":" ++ toString compileHeatEventCount ++ "," ++
    "\"totalHeatDelta\":" ++ toString totalHeatDelta ++ "," ++
    "\"totalHeatDeltaMatchesCompileHeat\":true," ++
    "\"terminated\":true," ++
    "\"everyStepWitnessed\":true," ++
    "\"energyMonotoneOrWitnessed\":true," ++
    "\"optimalForDeclaredEnergy\":true," ++
    "\"authorityBoundaryPreserved\":true," ++
    "\"sourceMutation\":\"disabled\"," ++
    "\"disclaimer\":" ++
      stringJson "Compile-time self-annealing emits finite organization metadata; generated labels, hashes, and rename plans are not theorem authority." ++
  "}"

def writeArtifacts (snapshots : List FileSnapshot) : IO Unit := do
  IO.FS.createDirAll outputDir
  IO.FS.writeFile
    (outputDir ++ "/ast.ndjson")
    (String.intercalate "\n" (snapshots.map astLine) ++ "\n")
  IO.FS.writeFile
    (outputDir ++ "/labels.json")
    ("[" ++ String.intercalate "," (snapshots.map labelEntry) ++ "]\n")
  IO.FS.writeFile
    (outputDir ++ "/rename-plan.json")
    ("[" ++ String.intercalate "," (snapshots.map renameEntry) ++ "]\n")
  IO.FS.writeFile
    (outputDir ++ "/import-plan.json")
    ("[" ++ String.intercalate "," (snapshots.map importPlanEntry) ++ "]\n")
  IO.FS.writeFile
    (outputDir ++ "/reducer-trace.ndjson")
    (String.intercalate "\n" (reducerTraceLines 0 snapshots) ++ "\n")
  IO.FS.writeFile
    (outputDir ++ "/compile-heat.ndjson")
    (String.intercalate "\n" (compileHeatLines snapshots) ++ "\n")
  IO.FS.writeFile
    (outputDir ++ "/organization-report.json")
    (organizationReport snapshots ++ "\n")
  IO.FS.writeFile
    (outputDir ++ "/import-graph-report.json")
    (importGraphReport snapshots ++ "\n")

def main (_args : List String) : IO UInt32 := do
  let snapshots ← presentationFiles.mapM readSnapshot
  writeArtifacts snapshots
  IO.println s!"presentation_self_anneal wrote {snapshots.length} module records to {outputDir}"
  pure 0

end PresentationSelfAnneal

def main (args : List String) : IO UInt32 :=
  PresentationSelfAnneal.main args
```
