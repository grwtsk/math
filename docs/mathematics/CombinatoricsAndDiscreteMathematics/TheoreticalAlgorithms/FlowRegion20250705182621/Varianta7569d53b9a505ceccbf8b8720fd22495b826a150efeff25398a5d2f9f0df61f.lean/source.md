# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlowRegion20250705182621.Varianta7569d53b9a505ceccbf8b8720fd22495b826a150efeff25398a5d2f9f0df61f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f26f538f1b06833fc7d2017ca5dea484247fbf5` · SHA-256 `db3ee6bf6548e69f02ae16517aa4cb148f1a21a5de72f9e9cfa3ade8fb7cff1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlowRegion.Varianta2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FlowRegion.Varianta2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e","mathematical_subject":"Computation.DataStructures","original_sha256":"a2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/passthrough-server/.history/lean/cognition/Core/FlowRegion_20250705182621.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- lean/cognition/Core/FlowRegion.lean


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlowRegion.Varianta2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e

namespace Cognition.Core

/--
`FlowRegion` models cognitive workload zones:

- `underloaded`: the user has spare capacity.
- `optimal`: operating near ideal focus.
- `overloaded`: overwhelmed or cognitively saturated.
-/
inductive FlowRegion
  /-- Region A: spare capacity. -/
  | underloaded
  /-- Region B: optimal cognitive workload. -/
  | optimal
  /-- Region C: overwhelmed or overloaded. -/
  | overloaded
  deriving DecidableEq, Repr

namespace FlowRegion

/-- All known flow regions in order of increasing load. -/
def all : List FlowRegion :=
  [underloaded, optimal, overloaded]

/-- Render a `FlowRegion` as a human-readable string. -/
def toString : FlowRegion → String
  | underloaded => "Underloaded"
  | optimal     => "Optimal"
  | overloaded  => "Overloaded"

instance : ToString FlowRegion := ⟨toString⟩

end FlowRegion

end Cognition.Core
```
