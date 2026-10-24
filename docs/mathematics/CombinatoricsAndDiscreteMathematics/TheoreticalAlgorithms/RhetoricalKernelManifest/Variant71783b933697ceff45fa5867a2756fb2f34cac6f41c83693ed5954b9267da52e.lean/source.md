# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RhetoricalKernelManifest.Variant71783b933697ceff45fa5867a2756fb2f34cac6f41c83693ed5954b9267da52e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db21c103ecb69a68c893d13544b98daacb64fb85` · SHA-256 `71783b933697ceff45fa5867a2756fb2f34cac6f41c83693ed5954b9267da52e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Rhetorical.Kernel.Manifest

/-!
# Deterministic RKM1 artifact generator

This executable writes or checks the exact bytes computed by the formal
`productionManifest` definition.  It contains no independent policy values.
-/

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
