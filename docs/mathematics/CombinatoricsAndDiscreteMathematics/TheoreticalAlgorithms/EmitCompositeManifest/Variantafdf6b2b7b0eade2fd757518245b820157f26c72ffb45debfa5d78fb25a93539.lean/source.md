# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmitCompositeManifest.Variantafdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32c45a123d3da003128ab3246f6cee07ccf4de22` · SHA-256 `afdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompositeElements.Export

def main (arguments : List String) : IO Unit := do
  match arguments with
  | [output] =>
      IO.FS.writeFile output
        (URSM.Composite.formalManifestJson ++ "\n")
  | _ =>
      throw <| IO.userError
        "usage: emit_composite_manifest OUTPUT.json"
```
