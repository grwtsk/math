# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dot.Variant66b0e0836e6d25ad6da8950b066af585297370c9ec5f28797ed25af048d9bbc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `754b502673f8916f7cc95c0f32a18fe763bacd86` · SHA-256 `9f6a4d7e3d57109a18a41789e24ed709c5878cdf50ec95c969c832d049ac33fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReadFile.Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.ReadFile.Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraphTest/Dot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ImportGraph

-- The `lake exe graph ...` command below expects ToTarget.lean to have already
-- been built, so we need some explicit ordering between this file and
-- ToTarget.lean. The easiest way to do this is just to import that file from
-- this one.
import ImportGraphTest.ToTarget


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReadFile.Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20

def readFile (path : System.FilePath) : IO String :=
  IO.FS.readFile path

def runGraphCommand : IO Unit := do
  let _ ← IO.Process.output {
    cmd := "lake"
    args := #["exe", "graph", "--to", "ImportGraphTest.ToTarget", "--mark-sorry", "ImportGraphTest/produced.dot"]
  }

def compareOutputs (expected : String) (actual : String) : IO Bool := do
  let expectedLines := expected.splitOn "\n" |>.filter (·.trimAscii.toString.length > 0) |>.map (·.trimAscii.toString)
  let actualLines := actual.splitOn "\n" |>.filter (·.trimAscii.toString.length > 0) |>.map (·.trimAscii.toString)
  pure (expectedLines == actualLines)

/-- info: Test passed: The graph command output matches the expected.dot file. -/
#guard_msgs in
#eval show IO Unit from do
  runGraphCommand
  let expectedOutput ← readFile "ImportGraphTest/expected.dot"
  let actualOutput ← readFile "ImportGraphTest/produced.dot"
  let isEqual ← compareOutputs expectedOutput actualOutput
  if isEqual then
    IO.println "Test passed: The graph command output matches the expected.dot file."
  else
    IO.println "Test failed: The graph command output does not match the expected.dot file."
    IO.println s!"Expected:\n{expectedOutput}"
    IO.println s!"Actual:\n{actualOutput}"
```
