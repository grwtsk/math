# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckCompositeManifest.Variant3d7433d323c65a5c3e234ca87418cabd9d2e81eabe97147f0ff197479bf09713

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8171adfe58ae3ad2008fc3a9c5388458437d98d6` · SHA-256 `3d7433d323c65a5c3e234ca87418cabd9d2e81eabe97147f0ff197479bf09713`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompositeElements.Golden
import CompositeElements.Export

def main (arguments : List String) : IO Unit := do
  match arguments with
  | [output] =>
      IO.FS.writeFile output <|
        "{" ++
          "\"formalCertificateRoot\":\"" ++
            URSM.Composite.phaseOneStaticComposite.formalCertificateRoot ++
            "\"," ++
          "\"logicalSide\":" ++
            toString URSM.Composite.projectCount ++ "," ++
          "\"schema\":\"mathematics.lean-composite-check/1\"," ++
          "\"status\":\"valid\"" ++
        "}\n"
  | _ =>
      throw <| IO.userError
        "usage: check_composite_manifest OUTPUT.json"
```
