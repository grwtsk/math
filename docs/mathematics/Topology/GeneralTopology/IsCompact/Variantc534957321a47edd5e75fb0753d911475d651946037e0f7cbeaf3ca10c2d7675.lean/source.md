# Complete source: GRWTSK.Topology.GeneralTopology.IsCompact.Variantc534957321a47edd5e75fb0753d911475d651946037e0f7cbeaf3ca10c2d7675

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `339edf422902725ae73b710750c0983c5c08cd24` · SHA-256 `8080ab5b6a146671d38f821fe1a3c5ce881ad59a63be8ac623d437cbe1a32868`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Real.Variant95f7c4be05e85870080812718250deae9eed4a770ddd878b6eecf702b0b5ee6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95f7c4be05e85870080812718250deae9eed4a770ddd878b6eecf702b0b5ee6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Real.Variant95f7c4be05e85870080812718250deae9eed4a770ddd878b6eecf702b0b5ee6a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"95f7c4be05e85870080812718250deae9eed4a770ddd878b6eecf702b0b5ee6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/LibrarySearch/IsCompact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.Instances.Real
import Mathlib.Topology.Algebra.Order.Compact
import Mathlib.Tactic.LibrarySearch


namespace GRWTSK.Topology.GeneralTopology.Real.Variant95f7c4be05e85870080812718250deae9eed4a770ddd878b6eecf702b0b5ee6a

example (f : ℝ → ℝ) {K : Set ℝ} (hK : IsCompact K) : ∃ x ∈ K, ∀ y ∈ K, f x ≤ f y := by
  fail_if_success exact?
  apply? -- Verify that this includes: `refine IsCompact.exists_forall_le hK ?_ ?_`
```
