-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.FiniteDimensionalSubspaceClosed.Variant3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.FiniteDimensionalSubspaceClosed.Variant3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d","mathematical_subject":"Topology.MetricSpaces","original_sha256":"3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/bourbaki/lean/src/Kernel/Math/Analysis/Fredholm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.MetricSpace.Basic

namespace GRWTSK.Topology.MetricTopology.FiniteDimensionalSubspaceClosed.Variant3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d

open Set

/--
A toy “Fredholm” lemma: every finite-dimensional subspace is closed.
This is small but non-trivial, perfect for CI smoke tests.
-/
lemma finiteDimensional_subspace_closed
  {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  {F : Submodule ℝ E} (h : FiniteDimensional ℝ F) :
  IsClosed (F : Set E) := by
  -- one-liner with library lemma
  simpa using F.closed_of_finiteDimensional h
