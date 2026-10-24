# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Graph.Variant28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10997c7ee35752599ebd9ef83695b47a787ed95f` · SHA-256 `28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Scatter

namespace Color

structure ScatterEdge where
  sourceNamespace : String
  targetNamespace : String
  reason : String
deriving Repr, DecidableEq

structure ScatterGraph where
  rootNamespace : String
  edges : List ScatterEdge
deriving Repr, DecidableEq

def colorGraph : ScatterGraph :=
  { rootNamespace := "Color",
    edges := [
      { sourceNamespace := "Color", targetNamespace := "Color.Red", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Green", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Blue", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.RedGreen", reason := "symmetric_mix" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.RedBlue", reason := "symmetric_mix" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.GreenBlue", reason := "symmetric_mix" }
    ] }

theorem colorGraph_root : colorGraph.rootNamespace = "Color" := rfl

end Color
```
