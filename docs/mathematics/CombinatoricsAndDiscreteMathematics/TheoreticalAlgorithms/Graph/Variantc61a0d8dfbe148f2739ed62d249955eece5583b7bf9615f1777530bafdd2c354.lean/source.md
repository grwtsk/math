# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Graph.Variantc61a0d8dfbe148f2739ed62d249955eece5583b7bf9615f1777530bafdd2c354

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb1c5f2ed0aca8e7d0dfae217ee5bca4c288d10e` · SHA-256 `055cec52b61e57da2cf8e17a1350b72345de6c62b48c080dca1098d8299ee08c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ScatterEdge.Variant28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ScatterEdge.Variant28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666","mathematical_subject":"Computation.DataStructures","original_sha256":"28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Scatter


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ScatterEdge.Variant28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666

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
