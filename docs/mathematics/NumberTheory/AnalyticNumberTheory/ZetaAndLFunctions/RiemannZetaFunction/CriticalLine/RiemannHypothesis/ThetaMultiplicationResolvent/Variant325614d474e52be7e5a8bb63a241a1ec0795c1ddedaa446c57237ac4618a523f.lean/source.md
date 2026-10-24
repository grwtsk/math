# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaMultiplicationResolvent.Variant325614d474e52be7e5a8bb63a241a1ec0795c1ddedaa446c57237ac4618a523f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6c4be0faa08d1b08359b73bda3b1fc5da3afd99` · SHA-256 `0c76a8d89122af02fc4f06c7558e04c6ce66ec50cb16590a4b9fa4381a0f9a00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ImaginaryShift.Variant3f9ff871476914a45fe9ab6237ee69c5e3311238cdb7db24edca47b111d01161","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f9ff871476914a45fe9ab6237ee69c5e3311238cdb7db24edca47b111d01161","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ImaginaryShift.Variant3f9ff871476914a45fe9ab6237ee69c5e3311238cdb7db24edca47b111d01161","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3f9ff871476914a45fe9ab6237ee69c5e3311238cdb7db24edca47b111d01161","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/theta-graph/ThetaMultiplicationResolvent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ImaginaryShift.Variant3f9ff871476914a45fe9ab6237ee69c5e3311238cdb7db24edca47b111d01161

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ThetaMultiplicationResolvent

open MeasureTheory Filter
open scoped ComplexConjugate InnerProductSpace
open ThetaMultiplicationDomain

noncomputable section

/-- The two nonreal shifts, with `true` selecting `+i`. -/
def imaginaryShift (s : Bool) : ℂ := if s then Complex.I else -Complex.I

theorem imaginaryShift_conj (s : Bool) : conj (imaginaryShift s) = -imaginaryShift s := by
  cases s <;> simp [imaginaryShift]

theorem denominator_ne_zero (s : Bool) (x : ℝ) : (x : ℂ) + imaginaryShift s ≠ 0 := by
  intro h
  have hi := congrArg Complex.im h
  cases s <;> simp [imaginaryShift] at hi

theorem norm_denominator_sq (s : Bool) (x : ℝ) :
    ‖(x : ℂ) + imaginaryShift s‖ ^ 2 = 1 + x ^ 2 := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  cases s <;> simp [imaginaryShift] <;> ring

theorem one_le_norm_denominator (s : Bool) (x : ℝ) :
    1 ≤ ‖(x : ℂ) + imaginaryShift s‖ := by
  have h := Complex.abs_im_le_norm ((x : ℂ) + imaginaryShift s)
  cases s <;> simpa [imaginaryShift] using h

theorem coordinate_le_norm_denominator (s : Bool) (x : ℝ) :
    ‖(x : ℂ)‖ ≤ ‖(x : ℂ) + imaginaryShift s‖ := by
  have h := Complex.abs_re_le_norm ((x : ℂ) + imaginaryShift s)
  cases s <;> simpa [imaginaryShift] using h

theorem reciprocal_bound (s : Bool) (x : ℝ) :
    ‖((x : ℂ) + imaginaryShift s)⁻¹‖ ≤ 1 := by
  rw [norm_inv]
  exact inv_le_one_of_one_le₀ (one_le_norm_denominator s x)

theorem weighted_reciprocal_bound (s : Bool) (x : ℝ) :
    ‖(x : ℂ) * ((x : ℂ) + imaginaryShift s)⁻¹‖ ≤ 1 := by
  rw [norm_mul, norm_inv, ← div_eq_mul_inv]
  exact (div_le_one (norm_pos_iff.mpr (denominator_ne_zero s x))).mpr
    (coordinate_le_norm_denominator s x)

variable (μ : Measure ℝ)

theorem resolvent_memLp (s : Bool) (g : Lp ℂ 2 μ) :
    MemLp (fun x : ℝ => ((x : ℂ) + imaginaryShift s)⁻¹ * g x) 2 μ := by
  apply (Lp.memLp g).mono
  · exact ((Complex.continuous_ofReal.add continuous_const).inv₀
      (denominator_ne_zero s)).aestronglyMeasurable.mul (Lp.aestronglyMeasurable g)
  · exact Eventually.of_forall fun x => by
      rw [norm_mul]
      exact mul_le_of_le_one_left (norm_nonneg _) (reciprocal_bound s x)

/-- Actual division by `x ± i` on complex L². -/
def resolvent (s : Bool) (g : Lp ℂ 2 μ) : Lp ℂ 2 μ :=
  (resolvent_memLp μ s g).toLp (fun x : ℝ => ((x : ℂ) + imaginaryShift s)⁻¹ * g x)

theorem resolvent_ae (s : Bool) (g : Lp ℂ 2 μ) :
    resolvent μ s g =ᵐ[μ] fun x : ℝ => ((x : ℂ) + imaginaryShift s)⁻¹ * g x :=
  MemLp.coeFn_toLp (resolvent_memLp μ s g)

theorem resolvent_mem_domain (s : Bool) (g : Lp ℂ 2 μ) :
    resolvent μ s g ∈ coordinateDomain μ := by
  have h : MemLp (fun x : ℝ =>
      ((x : ℂ) * ((x : ℂ) + imaginaryShift s)⁻¹) * g x) 2 μ := by
    apply (Lp.memLp g).mono
    · exact (Complex.continuous_ofReal.mul
        ((Complex.continuous_ofReal.add continuous_const).inv₀
          (denominator_ne_zero s))).aestronglyMeasurable.mul (Lp.aestronglyMeasurable g)
    · exact Eventually.of_forall fun x => by
        rw [norm_mul]
        exact mul_le_of_le_one_left (norm_nonneg _) (weighted_reciprocal_bound s x)
  apply h.ae_eq
  filter_upwards [resolvent_ae μ s g] with x hx
  rw [hx, mul_assoc]

/-- The inverse vector together with proved maximal-domain membership. -/
def resolventDomainVector (s : Bool) (g : Lp ℂ 2 μ) : coordinateDomain μ :=
  ⟨resolvent μ s g, resolvent_mem_domain μ s g⟩

/-- `M ± i` on the frozen maximal domain. -/
def shiftedCoordinate (s : Bool) : coordinateDomain μ →ₗ[ℂ] Lp ℂ 2 μ :=
  (show coordinateDomain μ →ₗ[ℂ] Lp ℂ 2 μ from (coordinateMultiplication μ).toFun) +
    imaginaryShift s • (coordinateDomain μ).subtype

theorem shiftedCoordinate_apply (s : Bool) (f : coordinateDomain μ) :
    shiftedCoordinate μ s f = coordinateMultiplication μ f +
      imaginaryShift s • (f : Lp ℂ 2 μ) := rfl

theorem shiftedCoordinate_ae (s : Bool) (f : coordinateDomain μ) :
    shiftedCoordinate μ s f =ᵐ[μ] fun x : ℝ =>
      ((x : ℂ) + imaginaryShift s) * (f : Lp ℂ 2 μ) x := by
  filter_upwards [coordinateMultiplication_apply_ae μ f,
    Lp.coeFn_add (coordinateMultiplication μ f) (imaginaryShift s • (f : Lp ℂ 2 μ)),
    Lp.coeFn_smul (imaginaryShift s) (f : Lp ℂ 2 μ)] with x hm ha hs
  rw [shiftedCoordinate_apply, ha]
  simp only [Pi.add_apply]
  rw [hs, hm]
  simp only [Pi.smul_apply, smul_eq_mul]
  exact (add_mul _ _ _).symm

theorem shiftedCoordinate_resolvent (s : Bool) (g : Lp ℂ 2 μ) :
    shiftedCoordinate μ s (resolventDomainVector μ s g) = g := by
  apply Lp.ext
  filter_upwards [shiftedCoordinate_ae μ s (resolventDomainVector μ s g),
    resolvent_ae μ s g] with x hm hr
  rw [hm]
  change ((x : ℂ) + imaginaryShift s) * (resolvent μ s g) x = g x
  rw [hr, ← mul_assoc, mul_inv_cancel₀ (denominator_ne_zero s x), one_mul]

theorem shiftedCoordinate_surjective (s : Bool) :
    Function.Surjective (shiftedCoordinate μ s) :=
  fun g => ⟨resolventDomainVector μ s g, shiftedCoordinate_resolvent μ s g⟩

theorem shiftedCoordinate_norm_sq (s : Bool) (f : coordinateDomain μ) :
    ‖shiftedCoordinate μ s f‖ ^ 2 =
      ‖(f : Lp ℂ 2 μ)‖ ^ 2 + ‖coordinateMultiplication μ f‖ ^ 2 := by
  rw [norm_sq_eq_integral, graph_norm_sq_eq_weighted_integral]
  apply integral_congr_ae
  filter_upwards [shiftedCoordinate_ae μ s f] with x hx
  rw [hx, norm_mul, mul_pow, norm_denominator_sq]

theorem resolvent_graph_norm_sq (s : Bool) (g : Lp ℂ 2 μ) :
    ‖resolvent μ s g‖ ^ 2 +
      ‖coordinateMultiplication μ (resolventDomainVector μ s g)‖ ^ 2 = ‖g‖ ^ 2 := by
  have h := shiftedCoordinate_norm_sq μ s (resolventDomainVector μ s g)
  rw [shiftedCoordinate_resolvent] at h
  exact h.symm

theorem resolvent_norm_le (s : Bool) (g : Lp ℂ 2 μ) :
    ‖resolvent μ s g‖ ≤ ‖g‖ := by
  have h := resolvent_graph_norm_sq μ s g
  nlinarith [sq_nonneg ‖coordinateMultiplication μ (resolventDomainVector μ s g)‖,
    norm_nonneg (resolvent μ s g), norm_nonneg g]

theorem resolvent_shiftedCoordinate (s : Bool) (f : coordinateDomain μ) :
    resolvent μ s (shiftedCoordinate μ s f) = (f : Lp ℂ 2 μ) := by
  apply Lp.ext
  filter_upwards [resolvent_ae μ s (shiftedCoordinate μ s f),
    shiftedCoordinate_ae μ s f] with x hr hs
  rw [hr, hs, ← mul_assoc, inv_mul_cancel₀ (denominator_ne_zero s x), one_mul]

theorem resolvent_add (s : Bool) (g h : Lp ℂ 2 μ) :
    resolvent μ s (g + h) = resolvent μ s g + resolvent μ s h := by
  apply Lp.ext
  filter_upwards [resolvent_ae μ s (g + h), resolvent_ae μ s g,
    resolvent_ae μ s h, Lp.coeFn_add g h,
    Lp.coeFn_add (resolvent μ s g) (resolvent μ s h)] with x hgh hg hh ha hb
  rw [hgh, hb]
  simp only [Pi.add_apply]
  rw [ha]
  simp only [Pi.add_apply]
  rw [hg, hh]
  exact mul_add _ _ _

theorem resolvent_smul (s : Bool) (c : ℂ) (g : Lp ℂ 2 μ) :
    resolvent μ s (c • g) = c • resolvent μ s g := by
  apply Lp.ext
  filter_upwards [resolvent_ae μ s (c • g), resolvent_ae μ s g,
    Lp.coeFn_smul c g, Lp.coeFn_smul c (resolvent μ s g)] with x hcg hg ha hb
  rw [hcg, ha, hb]
  simp only [Pi.smul_apply]
  rw [hg]
  simp only [smul_eq_mul]
  exact mul_left_comm _ _ _

/-- Each nonreal inverse is an actual complex-linear operator. -/
def resolventLinear (s : Bool) : Lp ℂ 2 μ →ₗ[ℂ] Lp ℂ 2 μ where
  toFun := resolvent μ s
  map_add' := resolvent_add μ s
  map_smul' := resolvent_smul μ s

/-- The bounded resolvents have operator norm at most one. -/
def resolventContinuous (s : Bool) : Lp ℂ 2 μ →L[ℂ] Lp ℂ 2 μ :=
  (resolventLinear μ s).mkContinuous 1 (fun g => by
    change ‖resolvent μ s g‖ ≤ 1 * ‖g‖
    simpa using resolvent_norm_le μ s g)

theorem resolventContinuous_apply (s : Bool) (g : Lp ℂ 2 μ) :
    resolventContinuous μ s g = resolvent μ s g := rfl

theorem norm_resolventContinuous_le_one (s : Bool) :
    ‖resolventContinuous μ s‖ ≤ 1 :=
  LinearMap.mkContinuous_norm_le _ (by norm_num) _

open scoped LinearPMap

/-- Both nonreal ranges eliminate the adjoint's possible domain excess. -/
theorem adjoint_domain_subset_of_dense
    (hd : Dense (coordinateDomain μ : Set (Lp ℂ 2 μ))) :
    (coordinateMultiplication μ)†.domain ≤ coordinateDomain μ := by
  let M := coordinateMultiplication μ
  have hMd : Dense (M.domain : Set (Lp ℂ 2 μ)) := hd
  have ha := LinearPMap.adjoint_isFormalAdjoint hMd
  have hs := coordinateMultiplication_formalAdjoint μ
  intro y hy
  let ya : M†.domain := ⟨y, hy⟩
  obtain ⟨u, hu⟩ := shiftedCoordinate_surjective μ false (M† ya - Complex.I • y)
  have hrel : M† ya - M u = Complex.I • (y - (u : Lp ℂ 2 μ)) := by
    rw [shiftedCoordinate_apply] at hu
    simp only [imaginaryShift, Bool.false_eq_true, if_false, neg_smul] at hu
    rw [← sub_eq_add_neg] at hu
    change M u - Complex.I • (u : Lp ℂ 2 μ) = M† ya - Complex.I • y at hu
    rw [smul_sub]
    rw [sub_eq_sub_iff_add_eq_add] at hu ⊢
    simpa [add_comm] using hu.symm
  let v : Lp ℂ 2 μ := y - (u : Lp ℂ 2 μ)
  have hz (w : coordinateDomain μ) : ⟪v, shiftedCoordinate μ true w⟫_ℂ = 0 := by
    have hr := congrArg (fun z : Lp ℂ 2 μ => ⟪z, (w : Lp ℂ 2 μ)⟫_ℂ) hrel
    rw [inner_sub_left, ha ya w, hs u w, ← inner_sub_left,
      inner_smul_left] at hr
    rw [shiftedCoordinate_apply, inner_add_right, inner_smul_right, hr]
    simp [imaginaryShift, Complex.conj_I, v]
  obtain ⟨w, hw⟩ := shiftedCoordinate_surjective μ true v
  have hv : v = 0 := (inner_self_eq_zero (𝕜 := ℂ)).mp (by simpa only [hw] using hz w)
  have hyu : y = (u : Lp ℂ 2 μ) := sub_eq_zero.mp hv
  rw [hyu]
  exact u.property

/-- Actual self-adjointness, with its dense-domain hypothesis exposed. -/
theorem coordinateMultiplication_isSelfAdjoint_of_dense
    (hd : Dense (coordinateDomain μ : Set (Lp ℂ 2 μ))) :
    IsSelfAdjoint (coordinateMultiplication μ) := by
  have hl := (coordinateMultiplication_formalAdjoint μ).le_adjoint hd
  have he : (coordinateMultiplication μ).domain = (coordinateMultiplication μ)†.domain :=
    le_antisymm hl.1 (adjoint_domain_subset_of_dense μ hd)
  rw [LinearPMap.isSelfAdjoint_def]
  exact (LinearPMap.eq_of_le_of_domain_eq hl he).symm

/-- Maximal real-coordinate multiplication is self-adjoint for regular measures. -/
theorem coordinateMultiplication_isSelfAdjoint [μ.Regular] :
    IsSelfAdjoint (coordinateMultiplication μ) :=
  coordinateMultiplication_isSelfAdjoint_of_dense μ (coordinateDomain_dense μ)

/-- The maximal graph is closed, proved from the checked adjoint equality. -/
theorem coordinateMultiplication_isClosed [μ.Regular] :
    (coordinateMultiplication μ).IsClosed :=
  (coordinateMultiplication_isSelfAdjoint μ).isClosed

end
end FormalResearch.RiemannHypothesis.ThetaMultiplicationResolvent
```
