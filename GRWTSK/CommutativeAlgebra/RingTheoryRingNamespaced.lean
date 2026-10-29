-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Real.Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Real.Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"fa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/grind/ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Ring.GrindInstances
import Mathlib.Algebra.Order.Field.Defs

/-!
# Preliminary tests for `grind +ring` using Mathlib typeclasses.

These are far from exhaustive tests, for now just testing the minimal functionality for `grind`
using Mathlib's `CommRing` typeclass.
-/


namespace GRWTSK.Algebra.Real.Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e

set_option grind.warning false

-- We mock ℝ here so that we don't have to import the dependencies.
axiom Real : Type
notation "ℝ" => Real
@[instance] axiom Real.field : Field ℝ
@[instance] axiom Real.linearOrder : LinearOrder ℝ
@[instance] axiom Real.isStrictOrderedRing : IsStrictOrderedRing ℝ

example {α} [CommRing α] (x y : α) : x + y + y - x = 2 * y := by grind +ring
example (x y : ℝ) : (x + y) ^ 3 = x ^ 3 + y ^ 3 + 3 * (x * y ^ 2 + x ^ 2 * y) := by grind +ring
example {α} [CommRing α] (x : α) : x ^ 2 = x * x := by grind +ring
example {α} [Field α] [LinearOrder α] [IsStrictOrderedRing α] (a b c : α) :
  b ^ 2 - 4 * c * a = -(4 * c * a) + b ^ 2 := by grind +ring
example {α} [Field α] [LinearOrder α] [IsStrictOrderedRing α] (a b c : α) :
  b ^ 2 - 4 * a * c = 4 * a * 0 + b * b - 4 * a * c := by grind +ring
example {α} [CommRing α] (a b c d e : α) :
  (-(a * b) + c + d) * e = (c + (d + -a * b)) * e := by grind +ring

example {α} [CommRing α] (x y z : α) (h₁ : x^2 = y) (h₂ : x^3 = z) : y^3 = z^2 := by grind +ring
example (x y : ℝ) (h₁ : x^2 = x * y^3) (h₂ : x^3 * y^2 = y) : y^2 = x^4 := by grind +ring
