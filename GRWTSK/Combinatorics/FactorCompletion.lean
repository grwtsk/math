-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExtractionPath.Variant72dc6606a696846e86cb6d15c531ee9f4104413fc920be254dc51109041e03ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72dc6606a696846e86cb6d15c531ee9f4104413fc920be254dc51109041e03ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExtractionPath.Variant72dc6606a696846e86cb6d15c531ee9f4104413fc920be254dc51109041e03ca","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"72dc6606a696846e86cb6d15c531ee9f4104413fc920be254dc51109041e03ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-tandem-01a1149a-factor-completion/FactorCompletion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.FactorState

/-!
# Finite arithmetic completion of certified factor-state refinement

Origin direction: grwtsk contributors. AI formalization: Codex, limited to the
finite arithmetic statements below. This scratch result establishes no signed
estimate, scheduler complexity bound, RH proof, or accepted-corpus status.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExtractionPath.Variant72dc6606a696846e86cb6d15c531ee9f4104413fc920be254dc51109041e03ca

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace FormalResearch.SUCAS.FactorCompletion

open FormalResearch.SUCAS.FactorState

/-- The actual natural valuation produces a full-extraction certificate. -/
theorem canonicalExactExtraction {R p : ℕ} (hR : 0 < R) (hp : p.Prime)
    (hdvd : p ∣ R) :
    ExactExtraction R p (R.factorization p) (R / p ^ R.factorization p) where
  prime := hp
  depth_pos := hp.factorization_pos_of_dvd hR.ne' hdvd
  after_pos := Nat.ordCompl_pos p hR.ne'
  split := (Nat.mul_div_cancel' (Nat.ordProj_dvd R p)).symm
  remainder := Nat.not_dvd_ordCompl hp hR.ne'

/-- A finite path consists only of exact full extractions at the current horizon. -/
inductive ExtractionPath {N : ℕ} : State N → State N → ℕ → Prop
  | refl (s : State N) : ExtractionPath s s 0
  | step (s : State N) {p e after : ℕ} {t : State N} {k : ℕ}
      (c : ExactExtraction s.residual p e after) (small : p ≤ s.horizon)
      (tail : ExtractionPath (extract s c) t k) : ExtractionPath s t (k + 1)

/-- The reflexive path has an identity refinement certificate. -/
def identityRefinement {N : ℕ} (s : State N) : Refinement s s where
  added := 0
  added_primes := by simp [PrimeMap]
  residual_split := by simp [primeProduct]
  extracted_update := by simp
  exclusions_preserved := Finset.Subset.refl _

/-- A finite extraction path composes the existing conservation certificates. -/
theorem ExtractionPath.refines {N k : ℕ} {s t : State N}
    (h : ExtractionPath s t k) : Nonempty (Refinement s t) := by
  induction h with
  | refl s => exact ⟨identityRefinement s⟩
  | step s c small tail ih =>
      obtain ⟨r⟩ := ih
      exact ⟨(extractionRefinement s c).trans r⟩

/-- Every finite path retains all previously excluded prime scales. -/
theorem ExtractionPath.preserves_exclusions {N k : ℕ} {s t : State N}
    (h : ExtractionPath s t k) : s.excluded ⊆ t.excluded := by
  obtain ⟨r⟩ := h.refines
  exact r.exclusions_preserved

/-- Every nonterminal checked residual admits a concrete strictly smaller step. -/
theorem nonterminal_step {N : ℕ} (s : State N)
    (h1 : s.residual ≠ 1) (hp : ¬s.residual.Prime) :
    ∃ p, p ≤ s.horizon ∧
      ExactExtraction s.residual p (s.residual.factorization p)
        (s.residual / p ^ s.residual.factorization p) := by
  obtain ⟨p, hprime, hsmall, hdvd⟩ :=
    composite_has_small_prime_divisor (by have := s.residual_pos; omega) hp
  exact ⟨p, hsmall, canonicalExactExtraction s.residual_pos hprime hdvd⟩

/-- Strong descent reaches a terminal residual in fewer than the initial residual steps. -/
theorem finite_terminal_completion {N : ℕ} (s : State N) :
    ∃ t : State N, ∃ k : ℕ,
      ExtractionPath s t k ∧ k < s.residual ∧ (ResidualOne t ∨ PrimeResidual t) := by
  have complete : ∀ R : ℕ, ∀ s : State N, s.residual = R →
      ∃ t : State N, ∃ k : ℕ,
        ExtractionPath s t k ∧ k < s.residual ∧ (ResidualOne t ∨ PrimeResidual t) := by
    intro R
    induction R using Nat.strong_induction_on with
    | h R ih =>
      intro s hs
      by_cases h1 : s.residual = 1
      · exact ⟨s, 0, .refl s, s.residual_pos, Or.inl ⟨h1⟩⟩
      by_cases hp : s.residual.Prime
      · exact ⟨s, 0, .refl s, s.residual_pos, Or.inr ⟨hp⟩⟩
      obtain ⟨p, hsmall, c⟩ := nonterminal_step s h1 hp
      have hafter : (extract s c).residual < R := by simpa [extract, hs] using c.shrinks
      obtain ⟨t, k, path, hk, terminal⟩ := ih (extract s c).residual hafter (extract s c) rfl
      refine ⟨t, k + 1, .step s c hsmall path, ?_, terminal⟩
      have hshrink : (extract s c).residual < s.residual := c.shrinks
      omega
  exact complete s.residual s rfl

/-- The terminal state produces the exact factorization of the original input. -/
theorem finite_complete_factorization {N : ℕ} (s : State N) :
    ∃ t : State N, ∃ k : ℕ, ∃ c : CompleteFactorization N,
      ExtractionPath s t k ∧ k < s.residual ∧ s.excluded ⊆ t.excluded ∧
        c.factors = N.factorization := by
  obtain ⟨t, k, path, hk, hterminal⟩ := finite_terminal_completion s
  obtain h1 | hp := hterminal
  · exact ⟨t, k, closeOne t h1, path, hk, path.preserves_exclusions,
      (closeOne t h1).exact.symm⟩
  · exact ⟨t, k, closePrime t hp, path, hk, path.preserves_exclusions,
      (closePrime t hp).exact.symm⟩

#print axioms canonicalExactExtraction
#print axioms ExtractionPath.refines
#print axioms ExtractionPath.preserves_exclusions
#print axioms nonterminal_step
#print axioms finite_terminal_completion
#print axioms finite_complete_factorization
#print finite_terminal_completion
#print finite_complete_factorization

end FormalResearch.SUCAS.FactorCompletion
