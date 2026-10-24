# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveAtlas.Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `748d4cc6f7b1c13d1098a9558b6111f6df22496c` · SHA-256 `72c352d887f27ea062dd09c296c368921bdbdd483e3e86c4dd5414b58c3fea1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFibreWeights.Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteFibreWeights.Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ProvenanceProjection
import FormalResearch.PositiveAtlas.FiniteFeatureGeometry
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Exact finite weighted conditional expectation

For a finite family of nonempty finite fibres with strictly positive real
weights, averaging within each fibre constructs an orthogonal provenance
projector. Fibre-constant functions are specified independently of the averaging
operator. No probabilistic normalization or analytic conditional expectation is
assumed. Real arithmetic here is noncomputable; this is a finite mathematical
model, not an extracted numerical implementation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFibreWeights.Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104

namespace FormalResearch.PositiveAtlas

universe u v

/-- Positive weights on a family of finite fibres. -/
structure FiniteFibreWeights (B : Type u) (I : B → Type v) where
  /-- The unnormalized weight of each sample. -/
  weight : ∀ b, I b → ℝ
  positive : ∀ b i, 0 < weight b i

namespace FiniteFibreWeights

variable {B : Type u} {I : B → Type v}
variable [∀ b, Fintype (I b)] [∀ b, Nonempty (I b)]

noncomputable section

/-- Total weight of a fibre. -/
def mass (w : FiniteFibreWeights B I) (b : B) : ℝ := ∑ i, w.weight b i

theorem mass_pos (w : FiniteFibreWeights B I) (b : B) : 0 < w.mass b := by
  exact Finset.sum_pos (fun i _ => w.positive b i) Finset.univ_nonempty

theorem mass_ne_zero (w : FiniteFibreWeights B I) (b : B) : w.mass b ≠ 0 :=
  ne_of_gt (w.mass_pos b)

/-- The explicit weighted average of an observable in one fibre. -/
def mean (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) (b : B) : ℝ :=
  (∑ i, w.weight b i * f b i) / w.mass b

/-- Independent specification of observables retained by the coarse fibre label. -/
def FibreConstant (f : ∀ b, I b → ℝ) : Prop := ∀ b i j, f b i = f b j

theorem mass_mul_mean (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) (b : B) :
    w.mass b * w.mean f b = ∑ i, w.weight b i * f b i := by
  exact mul_div_cancel₀ _ (w.mass_ne_zero b)

theorem mean_constant (w : FiniteFibreWeights B I) (c : B → ℝ) (b : B) :
    w.mean (fun b _ => c b) b = c b := by
  simp only [mean, ← Finset.sum_mul]
  exact mul_div_cancel_left₀ _ (w.mass_ne_zero b)

omit [∀ b, Nonempty (I b)] in
theorem mean_add (w : FiniteFibreWeights B I) (f g : ∀ b, I b → ℝ) (b : B) :
    w.mean (f + g) b = w.mean f b + w.mean g b := by
  simp [mean, mul_add, Finset.sum_add_distrib, add_div]

omit [∀ b, Nonempty (I b)] in
theorem mean_smul (w : FiniteFibreWeights B I) (a : ℝ)
    (f : ∀ b, I b → ℝ) (b : B) :
    w.mean (a • f) b = a * w.mean f b := by
  simp only [mean, Pi.smul_apply, smul_eq_mul]
  simp_rw [mul_left_comm (w.weight b _) a]
  rw [← Finset.mul_sum]
  ring

/-- Averaging, as an explicitly constructed linear endomorphism. -/
def averaging (w : FiniteFibreWeights B I) :
    (∀ b, I b → ℝ) →ₗ[ℝ] (∀ b, I b → ℝ) where
  toFun f b _ := w.mean f b
  map_add' f g := by funext b i; exact w.mean_add f g b
  map_smul' a f := by funext b i; exact w.mean_smul a f b

omit [∀ b, Nonempty (I b)] in
@[simp]
theorem averaging_apply (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ)
    (b : B) (i : I b) : w.averaging f b i = w.mean f b := rfl

omit [∀ b, Nonempty (I b)] in
theorem averaging_fibreConstant (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    FibreConstant (w.averaging f) := by intro b i j; rfl

theorem averaging_eq_self (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ)
    (hf : FibreConstant f) : w.averaging f = f := by
  funext b i
  change (∑ j, w.weight b j * f b j) / w.mass b = f b i
  simp_rw [hf b _ i]
  rw [← Finset.sum_mul]
  exact mul_div_cancel_left₀ _ (w.mass_ne_zero b)

theorem averaging_eq_self_iff (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    w.averaging f = f ↔ FibreConstant f := by
  constructor
  · intro h; rw [← h]; exact w.averaging_fibreConstant f
  · exact w.averaging_eq_self f

theorem averaging_idempotent (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    w.averaging (w.averaging f) = w.averaging f :=
  w.averaging_eq_self _ (w.averaging_fibreConstant f)

theorem weighted_residual_sum (w : FiniteFibreWeights B I)
    (f : ∀ b, I b → ℝ) (b : B) :
    ∑ i, w.weight b i * (f b i - w.mean f b) = 0 := by
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
  change (∑ i, w.weight b i * f b i) - w.mass b * w.mean f b = 0
  rw [w.mass_mul_mean, sub_self]

variable [Fintype B]

/-- The actual finite weighted bilinear form. -/
def positiveForm (w : FiniteFibreWeights B I) : PositiveForm (∀ b, I b → ℝ) where
  form f g := ∑ b, ∑ i, w.weight b i * (f b i * g b i)
  add_left f g h := by simp [add_mul, mul_add, Finset.sum_add_distrib]
  smul_left a f g := by
    simp only [Pi.smul_apply, smul_eq_mul]
    simp_rw [show ∀ b i, w.weight b i * (a * f b i * g b i) =
      a * (w.weight b i * (f b i * g b i)) by intros; ring]
    simp_rw [Finset.mul_sum]
  add_right f g h := by simp [mul_add, Finset.sum_add_distrib]
  smul_right a f g := by
    simp only [Pi.smul_apply, smul_eq_mul]
    simp_rw [show ∀ b i, w.weight b i * (f b i * (a * g b i)) =
      a * (w.weight b i * (f b i * g b i)) by intros; ring]
    simp_rw [Finset.mul_sum]
  symmetric f g := by simp_rw [mul_comm (f _ _) (g _ _)]
  nonnegative f := by
    apply Finset.sum_nonneg; intro b _
    apply Finset.sum_nonneg; intro i _
    exact mul_nonneg (le_of_lt (w.positive b i)) (mul_self_nonneg _)

omit [Fintype B] [∀ b, Fintype (I b)] [∀ b, Nonempty (I b)] in
/-- Exact linear reindexing of dependent fibre observables by their sigma index. -/
def flattenObservable : (∀ b, I b → ℝ) →ₗ[ℝ] ((Σ b, I b) → ℝ) where
  toFun f x := f x.1 x.2
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

omit [∀ b, Nonempty (I b)] in
/-- The dependent-fibre pairing is exactly the constructed finite feature Gram
pairing, with the same real weights and no normalization change. -/
theorem positiveForm_eq_featureForm (w : FiniteFibreWeights B I)
    (f g : ∀ b, I b → ℝ) :
    w.positiveForm.form f g =
      (FiniteFeatureGeometry.featureForm flattenObservable
        (fun x => w.weight x.1 x.2) (fun x => (w.positive x.1 x.2).le)).form f g := by
  change (∑ b, ∑ i, w.weight b i * (f b i * g b i)) =
    ∑ x : Σ b, I b, w.weight x.1 x.2 * (f x.1 x.2 * g x.1 x.2)
  rw [Fintype.sum_sigma]

theorem fibreConstant_orthogonal_residual (w : FiniteFibreWeights B I)
    (f g : ∀ b, I b → ℝ) (hf : FibreConstant f) :
    w.positiveForm.form f (g - w.averaging g) = 0 := by
  change (∑ b, ∑ i, w.weight b i * (f b i * (g b i - w.mean g b))) = 0
  apply Finset.sum_eq_zero; intro b _
  obtain ⟨j⟩ := (inferInstance : Nonempty (I b))
  simp_rw [hf b _ j]
  simp_rw [show ∀ i, w.weight b i * (f b j * (g b i - w.mean g b)) =
    f b j * (w.weight b i * (g b i - w.mean g b)) by intro i; ring]
  rw [← Finset.mul_sum, w.weighted_residual_sum, mul_zero]

/-- The existing Atlas projector interface, instantiated by proved averaging laws. -/
def projector (w : FiniteFibreWeights B I) : ProvenanceProjector w.positiveForm where
  project := w.averaging
  idempotent := w.averaging_idempotent
  orthogonal f g := w.fibreConstant_orthogonal_residual _ g (w.averaging_fibreConstant f)

omit [∀ b, Nonempty (I b)] in
theorem form_eq_zero_iff (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    w.positiveForm.form f f = 0 ↔ f = 0 := by
  constructor
  · intro h
    have term_nonneg : ∀ b i, 0 ≤ w.weight b i * (f b i * f b i) :=
      fun b i => mul_nonneg (le_of_lt (w.positive b i)) (mul_self_nonneg _)
    have hb := (Finset.sum_eq_zero_iff_of_nonneg (fun b _ =>
      Finset.sum_nonneg (fun i _ => term_nonneg b i))).mp h
    funext b i
    have hi := (Finset.sum_eq_zero_iff_of_nonneg (fun i _ => term_nonneg b i)).mp
      (hb b (Finset.mem_univ b)) i (Finset.mem_univ i)
    have hs := (mul_eq_zero.mp hi).resolve_left (ne_of_gt (w.positive b i))
    exact mul_self_eq_zero.mp hs
  · intro h; subst f; simp [positiveForm]

theorem quadratic_decomposition (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    w.positiveForm.form f f =
      w.positiveForm.form (w.averaging f) (w.averaging f) +
      w.positiveForm.form (f - w.averaging f) (f - w.averaging f) :=
  w.projector.quadratic_decomposition f

theorem averaging_contraction (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    w.positiveForm.form (w.averaging f) (w.averaging f) ≤ w.positiveForm.form f f := by
  have h := w.quadratic_decomposition f
  have hn := w.positiveForm.nonnegative (f - w.averaging f)
  linarith

theorem residual_zero_iff (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    w.positiveForm.form (f - w.averaging f) (f - w.averaging f) = 0 ↔
      FibreConstant f := by
  rw [w.form_eq_zero_iff, sub_eq_zero, eq_comm, w.averaging_eq_self_iff]

/-- Averaging is self-adjoint for the explicitly weighted pairing. -/
theorem averaging_self_adjoint (w : FiniteFibreWeights B I)
    (f g : ∀ b, I b → ℝ) :
    w.positiveForm.form (w.averaging f) g =
      w.positiveForm.form f (w.averaging g) := by
  have h₁ := w.projector.project_orthogonal_residual f g
  have h₂ := w.projector.residual_orthogonal_project f g
  have hg := w.positiveForm.add_right (w.averaging f)
    (w.averaging g) (g - w.averaging g)
  have hf := w.positiveForm.add_left (w.averaging f)
    (f - w.averaging f) (w.averaging g)
  simp only [add_sub_cancel] at hg hf
  change w.positiveForm.form (w.averaging f) (g - w.averaging g) = 0 at h₁
  change w.positiveForm.form (f - w.averaging f) (w.averaging g) = 0 at h₂
  linarith

/-- Exact least-squares decomposition against any independently fibre-constant observable. -/
theorem approximation_decomposition (w : FiniteFibreWeights B I)
    (f g : ∀ b, I b → ℝ) (hg : FibreConstant g) :
    w.positiveForm.form (f - g) (f - g) =
      w.positiveForm.form (f - w.averaging f) (f - w.averaging f) +
      w.positiveForm.form (w.averaging f - g) (w.averaging f - g) := by
  have h := w.quadratic_decomposition (f - g)
  rw [map_sub, w.averaging_eq_self g hg] at h
  rw [show f - g - (w.averaging f - g) = f - w.averaging f by abel] at h
  simpa [add_comm] using h

/-- Fibre averaging minimizes weighted squared error among fibre-constant observables. -/
theorem averaging_minimizes (w : FiniteFibreWeights B I)
    (f g : ∀ b, I b → ℝ) (hg : FibreConstant g) :
    w.positiveForm.form (f - w.averaging f) (f - w.averaging f) ≤
      w.positiveForm.form (f - g) (f - g) := by
  have h := w.approximation_decomposition f g hg
  have hn := w.positiveForm.nonnegative (w.averaging f - g)
  linarith

/-- Strict positivity makes the least-squares minimizer unique pointwise. -/
theorem minimal_error_iff (w : FiniteFibreWeights B I)
    (f g : ∀ b, I b → ℝ) (hg : FibreConstant g) :
    w.positiveForm.form (f - g) (f - g) =
      w.positiveForm.form (f - w.averaging f) (f - w.averaging f) ↔
      g = w.averaging f := by
  have h := w.approximation_decomposition f g hg
  constructor
  · intro he
    have hz : w.positiveForm.form (w.averaging f - g) (w.averaging f - g) = 0 := by
      linarith
    exact (sub_eq_zero.mp ((w.form_eq_zero_iff _).mp hz)).symm
  · intro he; subst g; rfl

omit [Fintype B] [∀ b, Fintype (I b)] in
/-- The independent fibre condition is exactly factorization through the coarse label. -/
theorem fibreConstant_iff_factors (f : ∀ b, I b → ℝ) :
    FibreConstant f ↔ ∃ g : B → ℝ, ∀ b i, f b i = g b := by
  constructor
  · intro hf
    exact ⟨fun b => f b (Classical.choice inferInstance), fun b i => hf b i _⟩
  · rintro ⟨g, hg⟩ b i j
    exact (hg b i).trans (hg b j).symm

/-- A coarser orthogonal projection has fibre-constant outputs by explicit hypothesis. -/
theorem averaging_coarser (w : FiniteFibreWeights B I)
    (Q : ProvenanceProjector w.positiveForm)
    (hQ : ∀ f, FibreConstant (Q.project f)) (f : ∀ b, I b → ℝ) :
    w.averaging (Q.project f) = Q.project f :=
  w.averaging_eq_self _ (hQ f)

/-- The reverse tower identity follows from orthogonality and the proved definiteness. -/
theorem coarser_averaging (w : FiniteFibreWeights B I)
    (Q : ProvenanceProjector w.positiveForm)
    (hQ : ∀ f, FibreConstant (Q.project f)) (f : ∀ b, I b → ℝ) :
    Q.project (w.averaging f) = Q.project f := by
  let d := f - w.averaging f
  have hd : w.positiveForm.form (Q.project d) d = 0 :=
    w.fibreConstant_orthogonal_residual (Q.project d) f (hQ d)
  have ho := Q.orthogonal d d
  have he := w.positiveForm.add_right (Q.project d) (Q.project d) (d - Q.project d)
  rw [add_sub_cancel, hd, ho, add_zero] at he
  have hz : Q.project d = 0 := (w.form_eq_zero_iff _).mp he.symm
  change Q.project (f - w.averaging f) = 0 at hz
  rw [map_sub, sub_eq_zero] at hz
  exact hz.symm

/-- Coarsening can only increase the residual squared error. -/
theorem coarser_error_monotone (w : FiniteFibreWeights B I)
    (Q : ProvenanceProjector w.positiveForm)
    (hQ : ∀ f, FibreConstant (Q.project f)) (f : ∀ b, I b → ℝ) :
    w.positiveForm.form (f - w.averaging f) (f - w.averaging f) ≤
      w.positiveForm.form (f - Q.project f) (f - Q.project f) :=
  w.averaging_minimizes f (Q.project f) (hQ f)

end

end FiniteFibreWeights

namespace FiniteAveragingExamples

noncomputable section

/-- One genuine two-point fibre with unequal positive weights. -/
def unequalWeights : FiniteFibreWeights Unit (fun _ => Fin 2) where
  weight _ i := if i = 0 then 1 else 3
  positive _ i := by split <;> norm_num

/-- A nonconstant observable on the two-point fibre. -/
def varying : Unit → Fin 2 → ℝ := fun _ i => if i = 0 then 0 else 4

/-- The weighted average is 3, rather than the unweighted value 2. -/
theorem unequal_average : unequalWeights.averaging varying = fun _ _ => 3 := by
  funext b i
  norm_num [FiniteFibreWeights.averaging_apply, FiniteFibreWeights.mean,
    FiniteFibreWeights.mass, unequalWeights, varying, Fin.sum_univ_two]

/-- This projection has a nonzero, explicitly computed residual. -/
theorem unequal_residual_energy :
    unequalWeights.positiveForm.form
      (varying - unequalWeights.averaging varying)
      (varying - unequalWeights.averaging varying) = 12 := by
  rw [unequal_average]
  norm_num [FiniteFibreWeights.positiveForm, unequalWeights, varying, Fin.sum_univ_two]

/-- Coarse averaging does not retain a genuinely varying observable. -/
theorem varying_not_fixed : unequalWeights.averaging varying ≠ varying := by
  intro h
  have he := congrFun (congrFun h ()) 0
  rw [unequal_average] at he
  norm_num [varying] at he

/-- Singleton fibres retain every observable, including variation between fibres. -/
theorem singleton_fibres_retain {B : Type u}
    (w : FiniteFibreWeights B (fun _ => Unit)) (f : B → Unit → ℝ) :
    w.averaging f = f := by
  apply w.averaging_eq_self
  intro b i j
  cases i; cases j
  rfl

end

end FiniteAveragingExamples

end FormalResearch.PositiveAtlas
```
