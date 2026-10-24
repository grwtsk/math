# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RhetoricalKernelManifest.Variantdae051dffda9d287067e14f8a5e669e3e5ef7d1dddc7a43919b498229978ea54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8c7180610f4e178635cc033b425ba59b340f7b5` · SHA-256 `690b89fd2c96b6790719deda3d71afd3ba7fa609318cf2dfcc8bd5d195ef0a53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Expected.Variant71783b933697ceff45fa5867a2756fb2f34cac6f41c83693ed5954b9267da52e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71783b933697ceff45fa5867a2756fb2f34cac6f41c83693ed5954b9267da52e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Expected.Variant71783b933697ceff45fa5867a2756fb2f34cac6f41c83693ed5954b9267da52e","mathematical_subject":"Computation.DataStructures","original_sha256":"71783b933697ceff45fa5867a2756fb2f34cac6f41c83693ed5954b9267da52e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Tools/RhetoricalKernelManifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Kernel.Manifest

/-!
# Deterministic RKM1 artifact generator

This executable writes or checks the exact bytes computed by the formal
`productionManifest` definition.  It contains no independent policy values.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Expected.Variant71783b933697ceff45fa5867a2756fb2f34cac6f41c83693ed5954b9267da52e

open DAF.Rhetorical.KernelManifest

private def expected : ByteArray :=
  ByteArray.mk productionManifestWire.toArray

private def expectedIndependent : ByteArray :=
  ByteArray.mk independentFiniteManifestWire.toArray

private def usage : String :=
  "usage: rhetorical_kernel_manifest (--write | --check | --write-independent | --check-independent) PATH"

private def checkArtifact
    (label : String) (expectedBytes : ByteArray)
    (path : System.FilePath) : IO Unit := do
  let observed ← IO.FS.readBinFile path
  if observed = expectedBytes then
    IO.println s!"fresh Lean-generated {label} rhetorical kernel manifest: {path}"
  else
    throw <| IO.userError s!"stale Lean-generated {label} rhetorical kernel manifest: {path}"

private def writeArtifact
    (label : String) (expectedBytes : ByteArray)
    (path : System.FilePath) : IO Unit := do
  IO.FS.writeBinFile path expectedBytes
  IO.println s!"wrote Lean-generated {label} rhetorical kernel manifest: {path}"

def main (arguments : List String) : IO UInt32 := do
  try
    match arguments with
    | ["--check", path] => checkArtifact "production" expected path; pure 0
    | ["--write", path] => writeArtifact "production" expected path; pure 0
    | ["--check-independent", path] =>
        checkArtifact "independent finite" expectedIndependent path; pure 0
    | ["--write-independent", path] =>
        writeArtifact "independent finite" expectedIndependent path; pure 0
    | _ => throw <| IO.userError usage
  catch error =>
    IO.eprintln error.toString
    pure 2
```
