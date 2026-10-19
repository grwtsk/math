-- corpus-organization-transform:v1
-- Mathematical subject: Computation.LeanMetaprogramming
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DoubleUnderscore.Variant3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DoubleUnderscore.Variant3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DoubleUnderscore.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.Style


namespace FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DoubleUnderscore.Variant3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9

set_option linter.style.nameCheck true
variable (n : Nat)

-- this notation generates the declaration `«term__,»` that has a double underscore,
-- but is allowed by `linter.style.nameCheck`.
notation "_" n "," => Nat.succ n

/-- info: `«term__,» : Lean.Name -/
#guard_msgs in
#check `«term__,»

/--
warning: The declaration 'double__underscore' contains '__', which does not follow the mathlib naming conventions. Consider using single underscores instead.
note: this linter can be disabled with `set_option linter.style.nameCheck false`
-/
#guard_msgs in
def double__underscore : Unit := ()
