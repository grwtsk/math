-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AffineTailAdapter.Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.AffineTailAdapter.Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Order.Filter.IsBounded
import Mathlib.Order.Filter.AtTopBot.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Quantitative equivalence of uniform upper bounds on real tails

The explicit bound below is the native `Filter.IsBoundedUnder` proposition at
`atTop`, with a nonnegative bound and a threshold at least one. An adapter is
quantitative data: a fixed positive scale, a uniformly bounded additive error,
and a single threshold. Bound equivalence is a theorem about these data, not
part of the definition of an adapter.

Composition propagates the constants and takes the maximum of the thresholds.
The final theorem also allows a varying normalization bounded between two fixed
positive constants. No continuity, integrability, or measurability is needed.
These results preserve the truth of the supplied inequalities. They do not
assert that every proposed reformulation has an adapter, or that equivalent
statements have the same computational or proof difficulty.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AffineTailAdapter.Variant993810420317c476d127117407c676383846e04c5c43738ad90c7aefbb64b949

noncomputable section

namespace FormalResearch.MathematicalTooling.UniformTailEquivalence

/-- One nonnegative upper bound controls every real argument beyond one threshold. -/
def UniformTailUpperBound (f : ℝ → ℝ) : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → f A ≤ B

/-- The explicit threshold formulation is exactly native eventual upper boundedness. -/
theorem uniform_tail_upper_bound_iff_is_bounded_under (f : ℝ → ℝ) :
    UniformTailUpperBound f ↔ Filter.IsBoundedUnder (· ≤ ·) Filter.atTop f := by
  constructor
  · rintro ⟨B, _, R, _, h⟩
    exact ⟨B, Filter.eventually_atTop.mpr ⟨R, h⟩⟩
  · intro h
    obtain ⟨B, hB⟩ := h.eventually_le
    obtain ⟨R, hR⟩ := Filter.eventually_atTop.mp hB
    refine ⟨max B 0, le_max_right _ _, max R 1, le_max_right _ _, ?_⟩
    intro A hA
    exact (hR A ((le_max_left _ _).trans hA)).trans (le_max_left _ _)

/-- A fixed positive scaling with one uniformly bounded tail error. -/
structure AffineTailAdapter (f g : ℝ → ℝ) where
  /-- The scaling is independent of the tail argument. -/
  scale : ℝ
  scale_pos : 0 < scale
  /-- One nonnegative constant bounds the additive error. -/
  error : ℝ
  error_nonneg : 0 ≤ error
  /-- One common threshold applies to the error estimate. -/
  threshold : ℝ
  threshold_ge_one : 1 ≤ threshold
  error_bound : ∀ A : ℝ, threshold ≤ A → |g A - scale * f A| ≤ error

namespace AffineTailAdapter

/-- The identity adapter has scale one and zero error. -/
def refl (f : ℝ → ℝ) : AffineTailAdapter f f where
  scale := 1
  scale_pos := zero_lt_one
  error := 0
  error_nonneg := le_rfl
  threshold := 1
  threshold_ge_one := le_rfl
  error_bound := by intro A _; simp

/-- Reversing an adapter divides its error by its fixed positive scale. -/
def symm {f g : ℝ → ℝ} (a : AffineTailAdapter f g) : AffineTailAdapter g f where
  scale := 1 / a.scale
  scale_pos := one_div_pos.mpr a.scale_pos
  error := a.error / a.scale
  error_nonneg := div_nonneg a.error_nonneg a.scale_pos.le
  threshold := a.threshold
  threshold_ge_one := a.threshold_ge_one
  error_bound := by
    intro A hA
    have heq : f A - (1 / a.scale) * g A = -(g A - a.scale * f A) / a.scale := by
      field_simp [ne_of_gt a.scale_pos]
      ring
    rw [heq, abs_div, abs_neg, abs_of_pos a.scale_pos]
    exact div_le_div_of_nonneg_right (a.error_bound A hA) a.scale_pos.le

/-- Composition multiplies scales and propagates both error constants. -/
def trans {f g h : ℝ → ℝ} (a : AffineTailAdapter f g) (b : AffineTailAdapter g h) :
    AffineTailAdapter f h where
  scale := b.scale * a.scale
  scale_pos := mul_pos b.scale_pos a.scale_pos
  error := b.error + b.scale * a.error
  error_nonneg := add_nonneg b.error_nonneg (mul_nonneg b.scale_pos.le a.error_nonneg)
  threshold := max a.threshold b.threshold
  threshold_ge_one := a.threshold_ge_one.trans (le_max_left _ _)
  error_bound := by
    intro A hA
    have ha := a.error_bound A ((le_max_left _ _).trans hA)
    have hb := b.error_bound A ((le_max_right _ _).trans hA)
    have heq : h A - (b.scale * a.scale) * f A =
        (h A - b.scale * g A) + b.scale * (g A - a.scale * f A) := by ring
    rw [heq]
    calc
      _ ≤ |h A - b.scale * g A| + |b.scale * (g A - a.scale * f A)| := abs_add_le _ _
      _ = |h A - b.scale * g A| + b.scale * |g A - a.scale * f A| := by
        rw [abs_mul, abs_of_pos b.scale_pos]
      _ ≤ b.error + b.scale * a.error :=
        add_le_add hb (mul_le_mul_of_nonneg_left ha b.scale_pos.le)

/-- A tail estimate transfers with the explicit bound `scale * B + error`. -/
theorem transfer_bound {f g : ℝ → ℝ} (a : AffineTailAdapter f g) {B R : ℝ}
    (h : ∀ A : ℝ, R ≤ A → f A ≤ B) :
    ∀ A : ℝ, max R a.threshold ≤ A → g A ≤ a.scale * B + a.error := by
  intro A hA
  have hf := h A ((le_max_left _ _).trans hA)
  have he := (abs_le.mp (a.error_bound A ((le_max_right _ _).trans hA))).2
  have hm := mul_le_mul_of_nonneg_left hf a.scale_pos.le
  linarith

/-- One bound and one threshold transfer to the other function. -/
theorem transfer {f g : ℝ → ℝ} (a : AffineTailAdapter f g)
    (h : UniformTailUpperBound f) : UniformTailUpperBound g := by
  obtain ⟨B, hB, R, hR, h⟩ := h
  refine ⟨a.scale * B + a.error,
    add_nonneg (mul_nonneg a.scale_pos.le hB) a.error_nonneg,
    max R a.threshold, hR.trans (le_max_left _ _), a.transfer_bound h⟩

/-- Quantitative adapter data prove both directions of eventual upper boundedness. -/
theorem uniform_tail_upper_bound_iff {f g : ℝ → ℝ} (a : AffineTailAdapter f g) :
    UniformTailUpperBound f ↔ UniformTailUpperBound g :=
  ⟨a.transfer, a.symm.transfer⟩

/-- A fixed positive scaling identity on one tail gives a zero-error adapter. -/
def ofTailScaledEq {f g : ℝ → ℝ} (c : ℝ) (hc : 0 < c) (R : ℝ) (hR : 1 ≤ R)
    (h : ∀ A : ℝ, R ≤ A → g A = c * f A) : AffineTailAdapter f g where
  scale := c
  scale_pos := hc
  error := 0
  error_nonneg := le_rfl
  threshold := R
  threshold_ge_one := hR
  error_bound := by intro A hA; rw [h A hA, sub_self, abs_zero]

/-- An exact positive scaling identity gives a zero-error adapter. -/
def ofScaledEq {f g : ℝ → ℝ} (c : ℝ) (hc : 0 < c)
    (h : ∀ A : ℝ, g A = c * f A) : AffineTailAdapter f g :=
  ofTailScaledEq c hc 1 le_rfl (fun A _ ↦ h A)

/-- Exact equality is the unit-scale case of quantitative tail equivalence. -/
def ofEq {f g : ℝ → ℝ} (h : ∀ A : ℝ, g A = f A) : AffineTailAdapter f g :=
  ofScaledEq 1 zero_lt_one (by simpa using h)

/-- An independently bounded additive correction supplies an adapter. -/
def ofBoundedCorrection {f g : ℝ → ℝ} (c : ℝ) (hc : 0 < c)
    (e : ℝ → ℝ) (he : UniformTailUpperBound (fun A ↦ |e A|))
    (h : ∀ A : ℝ, g A = c * f A + e A) : AffineTailAdapter f g := by
  classical
  let K := he.choose
  have hK : 0 ≤ K := he.choose_spec.1
  let R := he.choose_spec.2.choose
  have hR : 1 ≤ R := he.choose_spec.2.choose_spec.1
  have hbound : ∀ A : ℝ, R ≤ A → |e A| ≤ K := he.choose_spec.2.choose_spec.2
  exact {
    scale := c
    scale_pos := hc
    error := K
    error_nonneg := hK
    threshold := R
    threshold_ge_one := hR
    error_bound := by intro A hA; simpa [h A] using hbound A hA }

end AffineTailAdapter

/-- Existence of explicit affine tail data, rather than an assumed bound equivalence. -/
def QuantitativeTailEquivalence (f g : ℝ → ℝ) : Prop := Nonempty (AffineTailAdapter f g)

theorem quantitative_tail_equivalence_refl (f : ℝ → ℝ) : QuantitativeTailEquivalence f f :=
  ⟨AffineTailAdapter.refl f⟩

theorem quantitative_tail_equivalence_symm {f g : ℝ → ℝ}
    (h : QuantitativeTailEquivalence f g) : QuantitativeTailEquivalence g f := by
  obtain ⟨a⟩ := h
  exact ⟨a.symm⟩

theorem quantitative_tail_equivalence_trans {f g h : ℝ → ℝ}
    (hfg : QuantitativeTailEquivalence f g) (hgh : QuantitativeTailEquivalence g h) :
    QuantitativeTailEquivalence f h := by
  obtain ⟨a⟩ := hfg
  obtain ⟨b⟩ := hgh
  exact ⟨a.trans b⟩

/-- Every certified quantitative equivalence preserves the exact uniform quantifiers. -/
theorem uniform_tail_upper_bound_iff_of_quantitative_equivalence {f g : ℝ → ℝ}
    (h : QuantitativeTailEquivalence f g) : UniformTailUpperBound f ↔ UniformTailUpperBound g := by
  obtain ⟨a⟩ := h
  exact a.uniform_tail_upper_bound_iff

/-- A varying normalization also preserves upper bounds when bounded away from zero
and bounded above by fixed constants on a common tail. The forward bound is
`M * B + K`, and the reverse bound is `(B + K) / m`. -/
theorem uniform_tail_upper_bound_iff_of_variable_normalization {f g : ℝ → ℝ}
    (c : ℝ → ℝ) (m M K R : ℝ) (hm : 0 < m) (hmM : m ≤ M)
    (hK : 0 ≤ K) (hR : 1 ≤ R)
    (h : ∀ A : ℝ, R ≤ A → m ≤ c A ∧ c A ≤ M ∧ |g A - c A * f A| ≤ K) :
    UniformTailUpperBound f ↔ UniformTailUpperBound g := by
  have hM : 0 ≤ M := hm.le.trans hmM
  constructor
  · rintro ⟨B, hB, S, _, hf⟩
    refine ⟨M * B + K, add_nonneg (mul_nonneg hM hB) hK,
      max S R, hR.trans (le_max_right _ _), ?_⟩
    intro A hA
    obtain ⟨hl, hu, he⟩ := h A ((le_max_right _ _).trans hA)
    have hfA := hf A ((le_max_left _ _).trans hA)
    have hc : 0 ≤ c A := hm.le.trans hl
    have hmul := (mul_le_mul_of_nonneg_left hfA hc).trans
      (mul_le_mul_of_nonneg_right hu hB)
    have herr := (abs_le.mp he).2
    linarith
  · rintro ⟨B, hB, S, _, hg⟩
    refine ⟨(B + K) / m, div_nonneg (add_nonneg hB hK) hm.le,
      max S R, hR.trans (le_max_right _ _), ?_⟩
    intro A hA
    obtain ⟨hl, _, he⟩ := h A ((le_max_right _ _).trans hA)
    have hgA := hg A ((le_max_left _ _).trans hA)
    by_cases hfA : 0 ≤ f A
    · have hmul := mul_le_mul_of_nonneg_right hl hfA
      have herr := (abs_le.mp he).1
      apply (le_div_iff₀ hm).mpr
      nlinarith
    · exact (le_of_not_ge hfA).trans (div_nonneg (add_nonneg hB hK) hm.le)

end FormalResearch.MathematicalTooling.UniformTailEquivalence
