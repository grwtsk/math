-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Next.Variant116aa03cd20953ad7a01cbbc435ebf620218ff93f61780863d4ca4e035156185","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"116aa03cd20953ad7a01cbbc435ebf620218ff93f61780863d4ca4e035156185","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Next.Variant116aa03cd20953ad7a01cbbc435ebf620218ff93f61780863d4ca4e035156185","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"116aa03cd20953ad7a01cbbc435ebf620218ff93f61780863d4ca4e035156185","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/FiniteGainFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.FiniteGainCertificates

/-!
# Finite exact positive and adverse fixtures

These fixtures test the sign and edge certificate; they are not source decoders.
Research direction and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Next.Variant116aa03cd20953ad7a01cbbc435ebf620218ff93f61780863d4ca4e035156185

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.FiniteGainFixtures

/-- Advance the eight-state fixture by three positions modulo eight. -/
def next (r : Fin 8) : Fin 8 := ⟨(r.val + 3) % 8, Nat.mod_lt _ (by decide)⟩

/-- Signed edge gain: three on states zero through four and negative five thereafter. -/
def gain (r : Fin 8) : ℝ := if r.val ≤ 4 then 3 else -5

/-- The real-valued storage of a fixture state is its natural-number coordinate. -/
def storage (r : Fin 8) : ℝ := r.val

theorem eight_state_edge_equality (r : Fin 8) :
    gain r + storage r - storage (next r) = 0 := by
  fin_cases r <;> norm_num [gain, storage, next]

theorem eight_state_orbit :
    [next 0, next 3, next 6, next 1, next 4, next 7, next 2, next 5] =
      [3, 6, 1, 4, 7, 2, 5, 0] := by decide

theorem adverse_edge_rejected : (-1 : ℝ) + storage 0 - storage 0 < 0 := by
  norm_num [storage]

end FormalResearch.RiemannHypothesis.FiniteGainFixtures
