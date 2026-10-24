-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Lemmas.Varianta37d9d0eaf509fc1cbf1c47ef2308b1d10bbf78f041ac82df8d44b6dcdddb27f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a37d9d0eaf509fc1cbf1c47ef2308b1d10bbf78f041ac82df8d44b6dcdddb27f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Lemmas.Varianta37d9d0eaf509fc1cbf1c47ef2308b1d10bbf78f041ac82df8d44b6dcdddb27f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a37d9d0eaf509fc1cbf1c47ef2308b1d10bbf78f041ac82df8d44b6dcdddb27f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/LibrarySearch/IsCompact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Topology.Order.Compact

-- TODO: uses sorry, but is hidden behind the `apply?`

namespace GRWTSK.Topology.GeneralTopology.Lemmas.Varianta37d9d0eaf509fc1cbf1c47ef2308b1d10bbf78f041ac82df8d44b6dcdddb27f

/-- warning: declaration uses 'sorry' -/
#guard_msgs(warning, drop info) in
example (f : ℝ → ℝ) {K : Set ℝ} (_hK : IsCompact K) : ∃ x ∈ K, ∀ y ∈ K, f x ≤ f y := by
  fail_if_success exact?
  apply? -- Verify that this includes: `refine IsCompact.exists_forall_le _hK ?_ ?_`
