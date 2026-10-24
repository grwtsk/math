-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant86b3855b68952cf84443bda3bd8a0f3902ae84c1e5be071012d05572f1f0e565","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86b3855b68952cf84443bda3bd8a0f3902ae84c1e5be071012d05572f1f0e565","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Finset.Variant86b3855b68952cf84443bda3bd8a0f3902ae84c1e5be071012d05572f1f0e565","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"86b3855b68952cf84443bda3bd8a0f3902ae84c1e5be071012d05572f1f0e565","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/BigOps.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Group.Finset.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant86b3855b68952cf84443bda3bd8a0f3902ae84c1e5be071012d05572f1f0e565

section
variable {ι M : Type*} [CommMonoid M] [AddCommMonoid M] [Fintype ι] {s : Finset ι} {p : ι → Prop}
  [DecidablePred p] {f : ι → M}

/-! ### Big operators over a finset -/

/-- info: ∑ i ∈ s, f i : M -/
#guard_msgs in
#check Finset.sum s fun i ↦ f i

/-- info: ∏ i ∈ s, f i : M -/
#guard_msgs in
#check Finset.prod s fun i ↦ f i

/-- info: ∑ i ∈ s with p i, f i : M -/
#guard_msgs in
#check Finset.sum {j ∈ s | p j} fun i ↦ f i

/-- info: ∏ i ∈ s with p i, f i : M -/
#guard_msgs in
#check Finset.prod {j ∈ s | p j} fun i ↦ f i

/-! ### Big operators over a finset with `funBinderTypes` on -/

set_option pp.funBinderTypes true

/-- info: ∑ i : ι, f i : M -/
#guard_msgs in
#check Finset.sum Finset.univ fun i ↦ f i

/-- info: ∏ i : ι, f i : M -/
#guard_msgs in
#check Finset.prod Finset.univ fun i ↦ f i

/-- info: ∑ i : ι with p i, f i : M -/
#guard_msgs in
#check Finset.sum {j | p j} fun i ↦ f i

/-- info: ∏ i : ι with p i, f i : M -/
#guard_msgs in
#check Finset.prod {j | p j} fun i ↦ f i

/-! ### Big operators over a finset with `funBinderTypes` off -/

set_option pp.funBinderTypes false

/-- info: ∑ i, f i : M -/
#guard_msgs in
#check Finset.sum Finset.univ fun i ↦ f i

/-- info: ∏ i, f i : M -/
#guard_msgs in
#check Finset.prod Finset.univ fun i ↦ f i

/-- info: ∑ i with p i, f i : M -/
#guard_msgs in
#check Finset.sum {j | p j} fun i ↦ f i

/-- info: ∏ i with p i, f i : M -/
#guard_msgs in
#check Finset.prod {j | p j} fun i ↦ f i

end
