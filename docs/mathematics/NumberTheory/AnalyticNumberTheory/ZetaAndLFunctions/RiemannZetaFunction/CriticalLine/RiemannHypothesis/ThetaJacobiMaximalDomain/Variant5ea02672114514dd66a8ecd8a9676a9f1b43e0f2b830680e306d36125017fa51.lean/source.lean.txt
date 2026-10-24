-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.JacobiExpression.Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.JacobiExpression.Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/hankel-reflection/theta/ThetaJacobiMaximalDomain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ThetaJacobiFiniteCore

/-!
# The actual theta Jacobi maximal domain in coefficient coordinates

This review adapter retains the constructed continuous theta measure and pointed
unitary. The raw half-line expression uses the proved real diagonal and positive
hopping coefficients. Self-adjointness and the actual all-degree c00 graph core
supply the maximal square-summability criterion; no boundedness, free-model
identification, or new research premise is introduced.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.JacobiExpression.Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false

namespace FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain

open MeasureTheory Filter
open scoped Topology ComplexConjugate InnerProductSpace LinearPMap
open ThetaJacobiUnitary ThetaJacobiRecurrence ThetaJacobiFiniteCore

noncomputable section

/-- The literal half-line Jacobi expression, on raw complex sequences. -/
def jacobiExpression (t : ℝ) (ht : 0 ≤ t) : (ℕ → ℂ) →ₗ[ℂ] (ℕ → ℂ) where
  toFun v n := match n with
    | 0 => (diagonal t ht 0 : ℂ) * v 0 + (hopping t ht 0 : ℂ) * v 1
    | n + 1 => (hopping t ht n : ℂ) * v n +
        (diagonal t ht (n + 1) : ℂ) * v (n + 1) +
          (hopping t ht (n + 1) : ℂ) * v (n + 2)
  map_add' v w := by funext n; cases n <;> simp only [Pi.add_apply] <;> ring
  map_smul' c v := by
    funext n
    cases n <;> simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply] <;> ring

/-- The boundary has two terms and no fictitious index minus one. -/
theorem jacobiExpression_zero (t : ℝ) (ht : 0 ≤ t) (v : ℕ → ℂ) :
    jacobiExpression t ht v 0 =
      (diagonal t ht 0 : ℂ) * v 0 + (hopping t ht 0 : ℂ) * v 1 := rfl

/-- The interior expression carries the exact predecessor and successor hopping indices. -/
theorem jacobiExpression_succ (t : ℝ) (ht : 0 ≤ t) (v : ℕ → ℂ) (n : ℕ) :
    jacobiExpression t ht v (n + 1) =
      (hopping t ht n : ℂ) * v n +
        (diagonal t ht (n + 1) : ℂ) * v (n + 1) +
          (hopping t ht (n + 1) : ℂ) * v (n + 2) := rfl

/-- Testing the actual boundary column gives exactly the raw boundary expression. -/
theorem standard_zero_inner (t : ℝ) (ht : 0 ≤ t) (v : lp (fun _ : ℕ => ℂ) 2) :
    ⟪jacobiOperator t ht (standardDomainVector t ht 0), v⟫_ℂ =
      jacobiExpression t ht v 0 := by
  rw [jacobiOperator_standard_zero, inner_add_left, inner_smul_left, inner_smul_left]
  simp only [lp.inner_single_left]
  simp [jacobiExpression, Complex.conj_ofReal, RCLike.inner_apply]

/-- Testing an actual interior column preserves the real symmetric coefficient convention. -/
theorem standard_succ_inner (t : ℝ) (ht : 0 ≤ t) (v : lp (fun _ : ℕ => ℂ) 2) (n : ℕ) :
    ⟪jacobiOperator t ht (standardDomainVector t ht (n + 1)), v⟫_ℂ =
      jacobiExpression t ht v (n + 1) := by
  rw [jacobiOperator_standard_succ, inner_add_left, inner_add_left,
    inner_smul_left, inner_smul_left, inner_smul_left]
  simp [lp.inner_single_left, jacobiExpression, Complex.conj_ofReal, RCLike.inner_apply]

/-- Every coordinate of the literal maximal operator is the half-line expression. -/
theorem jacobiOperator_coordinate {t : ℝ} (ht : 0 ≤ t)
    (v : jacobiDomain t ht) (n : ℕ) :
    jacobiOperator t ht v n = jacobiExpression t ht v.val n := by
  have h := jacobiOperator_symmetric ht (standardDomainVector t ht n) v
  have he : ⟪(standardDomainVector t ht n : lp (fun _ : ℕ => ℂ) 2),
      jacobiOperator t ht v⟫_ℂ = jacobiOperator t ht v n := by
    simp [standardDomainVector, lp.inner_single_left, RCLike.inner_apply]
  rw [he] at h
  rw [← h]
  cases n with
  | zero => exact standard_zero_inner t ht v.val
  | succ n => exact standard_succ_inner t ht v.val n

/-- The original transported domain always has a square-summable coefficient expression. -/
theorem jacobiExpression_memℓp_of_mem_domain {t : ℝ} (ht : 0 ≤ t)
    (v : jacobiDomain t ht) : Memℓp (jacobiExpression t ht v.val) 2 := by
  have he : (jacobiOperator t ht v : ℕ → ℂ) = jacobiExpression t ht v.val :=
    funext (jacobiOperator_coordinate ht v)
  rw [← he]
  exact lp.memℓp (jacobiOperator t ht v)

/-- Equality of raw coefficients gives the adjoint identity on each standard column. -/
theorem standard_inner_of_expression_eq {t : ℝ} (ht : 0 ≤ t)
    (v w : lp (fun _ : ℕ => ℂ) 2)
    (hw : ∀ n : ℕ, w n = jacobiExpression t ht v n) (n : ℕ) :
    ⟪w, (standardDomainVector t ht n : lp (fun _ : ℕ => ℂ) 2)⟫_ℂ =
      ⟪v, jacobiOperator t ht (standardDomainVector t ht n)⟫_ℂ := by
  have hcol : ⟪jacobiOperator t ht (standardDomainVector t ht n), v⟫_ℂ =
      ⟪(standardDomainVector t ht n : lp (fun _ : ℕ => ℂ) 2), w⟫_ℂ := by
    have he : ⟪(standardDomainVector t ht n : lp (fun _ : ℕ => ℂ) 2), w⟫_ℂ = w n := by
      simp [standardDomainVector, lp.inner_single_left, RCLike.inner_apply]
    rw [he, hw]
    cases n with
    | zero => exact standard_zero_inner t ht v
    | succ n => exact standard_succ_inner t ht v n
  rw [← inner_conj_symm, ← hcol, inner_conj_symm]

/-- Internal explicit-domain linear-map adapter for the actual partial operator. -/
private def jacobiDomainMap (t : ℝ) (ht : 0 ≤ t) :
    jacobiDomain t ht →ₗ[ℂ] lp (fun _ : ℕ => ℂ) 2 :=
  (jacobiOperator t ht).toFun

/-- Testing the actual standard columns extends algebraically to literal c00. -/
theorem core_inner_of_expression_eq {t : ℝ} (ht : 0 ≤ t)
    (v w : lp (fun _ : ℕ => ℂ) 2)
    (hw : ∀ n : ℕ, w n = jacobiExpression t ht v n)
    (p : jacobiDomain t ht) (hp : p.val ∈ finiteSequences) :
    ⟪w, p.val⟫_ℂ = ⟪v, jacobiOperator t ht p⟫_ℂ := by
  let L : jacobiDomain t ht →ₗ[ℂ] ℂ :=
    (innerSL ℂ w).toLinearMap.comp (jacobiDomain t ht).subtype -
      (innerSL ℂ v).toLinearMap.comp (jacobiDomainMap t ht)
  let S : Submodule ℂ (jacobiDomain t ht) :=
    Submodule.span ℂ (Set.range (standardDomainVector t ht))
  have hs : S.map (jacobiDomain t ht).subtype = finiteSequences := by
    dsimp only [S]
    rw [Submodule.map_span, ← Set.range_comp]
    rfl
  have hpS : p ∈ S := by
    rw [← hs] at hp
    obtain ⟨q, hq, hqp⟩ := hp
    have hqp' : q = p := Subtype.ext hqp
    exact hqp' ▸ hq
  have hker : S ≤ L.ker := by
    apply Submodule.span_le.mpr
    rintro x ⟨n, rfl⟩
    change ⟪w, (standardDomainVector t ht n : lp (fun _ : ℕ => ℂ) 2)⟫_ℂ -
      ⟪v, jacobiOperator t ht (standardDomainVector t ht n)⟫_ℂ = 0
    exact sub_eq_zero.mpr (standard_inner_of_expression_eq ht v w hw n)
  have hz : L p = 0 := hker hpS
  exact sub_eq_zero.mp hz

/-- The proved graph core extends the adjoint test to every vector in the actual maximal domain. -/
theorem domain_inner_of_expression_eq {t : ℝ} (ht : 0 ≤ t)
    (v w : lp (fun _ : ℕ => ℂ) 2)
    (hw : ∀ n : ℕ, w n = jacobiExpression t ht v n)
    (p : jacobiDomain t ht) :
    ⟪w, p.val⟫_ℂ = ⟪v, jacobiOperator t ht p⟫_ℂ := by
  let L : (lp (fun _ : ℕ => ℂ) 2 × lp (fun _ : ℕ => ℂ) 2) →L[ℂ] ℂ :=
    (innerSL ℂ w).comp (ContinuousLinearMap.fst ℂ _ _) -
      (innerSL ℂ v).comp (ContinuousLinearMap.snd ℂ _ _)
  have hker : ((jacobiOperator t ht).domRestrict finiteSequences).graph ≤ L.ker := by
    intro z hz
    obtain ⟨f, rfl⟩ := (LinearPMap.mem_graph_iff' _).mp hz
    change ⟪w, f.val⟫_ℂ -
      ⟪v, jacobiOperator t ht ⟨f.val, f.property.2⟩⟫_ℂ = 0
    exact sub_eq_zero.mpr
      (core_inner_of_expression_eq ht v w hw ⟨f.val, f.property.2⟩ f.property.1)
  have hclosed := Submodule.topologicalClosure_minimal _ hker L.isClosed_ker
  rw [finiteSequences_graph_closure ht] at hclosed
  have hz := hclosed ((LinearPMap.mem_graph_iff' _).mpr ⟨p, rfl⟩)
  exact sub_eq_zero.mp hz

/-- An lp2 witness for the raw expression puts a vector in the original actual domain. -/
theorem mem_domain_of_expression_eq {t : ℝ} (ht : 0 ≤ t)
    (v w : lp (fun _ : ℕ => ℂ) 2)
    (hw : ∀ n : ℕ, w n = jacobiExpression t ht v n) :
    v ∈ jacobiDomain t ht := by
  have ha : v ∈ (jacobiOperator t ht)†.domain := by
    apply LinearPMap.mem_adjoint_domain_of_exists
    exact ⟨w, domain_inner_of_expression_eq ht v w hw⟩
  rw [LinearPMap.isSelfAdjoint_def.mp (jacobiOperator_isSelfAdjoint ht)] at ha
  exact ha

/-- Square summability of the literal coefficient expression is sufficient for the actual domain. -/
theorem mem_domain_of_jacobiExpression_memℓp {t : ℝ} (ht : 0 ≤ t)
    (v : lp (fun _ : ℕ => ℂ) 2) (hv : Memℓp (jacobiExpression t ht v) 2) :
    v ∈ jacobiDomain t ht := by
  let w : lp (fun _ : ℕ => ℂ) 2 := ⟨jacobiExpression t ht v, hv⟩
  exact mem_domain_of_expression_eq ht v w (fun _ => rfl)

/-- Exact coefficient-domain criterion for the unchanged maximal theta Jacobi operator. -/
theorem mem_jacobiDomain_iff_memℓp_expression {t : ℝ} (ht : 0 ≤ t)
    (v : lp (fun _ : ℕ => ℂ) 2) :
    v ∈ jacobiDomain t ht ↔ Memℓp (jacobiExpression t ht v) 2 :=
  ⟨fun hv => jacobiExpression_memℓp_of_mem_domain ht ⟨v, hv⟩,
    mem_domain_of_jacobiExpression_memℓp ht v⟩

/-- Independent maximal coefficient domain: both the vector and its raw expression are in lp2. -/
def coefficientDomain (t : ℝ) (ht : 0 ≤ t) : Submodule ℂ (lp (fun _ : ℕ => ℂ) 2) where
  carrier := {v | Memℓp (jacobiExpression t ht v) 2}
  zero_mem' := by
    change Memℓp (jacobiExpression t ht (0 : ℕ → ℂ)) 2
    rw [map_zero]
    exact zero_memℓp
  add_mem' {v w} hv hw := by
    change Memℓp (jacobiExpression t ht ((v : ℕ → ℂ) + (w : ℕ → ℂ))) 2
    rw [map_add]
    exact hv.add hw
  smul_mem' c v hv := by
    change Memℓp (jacobiExpression t ht (c • (v : ℕ → ℂ))) 2
    rw [map_smul]
    exact hv.const_smul c

/-- Membership in the coefficient domain is literally the lp2 condition on tau. -/
theorem mem_coefficientDomain_iff (t : ℝ) (ht : 0 ≤ t)
    (v : lp (fun _ : ℕ => ℂ) 2) :
    v ∈ coefficientDomain t ht ↔ Memℓp (jacobiExpression t ht v) 2 := Iff.rfl

/-- The independently specified coefficient domain equals the transported maximal domain. -/
theorem coefficientDomain_eq_jacobiDomain {t : ℝ} (ht : 0 ≤ t) :
    coefficientDomain t ht = jacobiDomain t ht := by
  apply Submodule.ext
  intro v
  exact (mem_jacobiDomain_iff_memℓp_expression ht v).symm

/-- The summable norm-square form of the exact maximal-domain criterion. -/
theorem mem_jacobiDomain_iff_summable_norm_sq {t : ℝ} (ht : 0 ≤ t)
    (v : lp (fun _ : ℕ => ℂ) 2) :
    v ∈ jacobiDomain t ht ↔ Summable (fun n : ℕ => ‖jacobiExpression t ht v n‖ ^ 2) := by
  rw [mem_jacobiDomain_iff_memℓp_expression]
  simpa only [ENNReal.toReal_ofNat, Real.rpow_two] using
    (memℓp_gen_iff (p := (2 : ENNReal)) (by norm_num) :
      Memℓp (jacobiExpression t ht v) 2 ↔
        Summable (fun n : ℕ => ‖jacobiExpression t ht v n‖ ^ (2 : ENNReal).toReal))

/-- The coefficient expression is an actual lp2 vector precisely on its proved domain. -/
def coefficientAction (t : ℝ) (ht : 0 ≤ t) :
    coefficientDomain t ht →ₗ[ℂ] lp (fun _ : ℕ => ℂ) 2 where
  toFun v := ⟨jacobiExpression t ht v.val, v.property⟩
  map_add' v w := by
    apply lp.ext
    exact (jacobiExpression t ht).map_add v.val w.val
  map_smul' c v := by
    apply lp.ext
    exact (jacobiExpression t ht).map_smul c v.val

/-- Coordinate action has no additional convergence or domain premise hidden in the output. -/
theorem coefficientAction_apply (t : ℝ) (ht : 0 ≤ t)
    (v : coefficientDomain t ht) (n : ℕ) :
    coefficientAction t ht v n = jacobiExpression t ht v.val n := rfl

/-- The actual maximal coefficient Jacobi operator, independently constructed as a partial map. -/
def coefficientOperator (t : ℝ) (ht : 0 ≤ t) :
    lp (fun _ : ℕ => ℂ) 2 →ₗ.[ℂ] lp (fun _ : ℕ => ℂ) 2 where
  domain := coefficientDomain t ht
  toFun := coefficientAction t ht

/-- The coefficient realization is exactly the original transported partial operator. -/
theorem coefficientOperator_eq_jacobiOperator {t : ℝ} (ht : 0 ≤ t) :
    coefficientOperator t ht = jacobiOperator t ht := by
  apply LinearPMap.ext (coefficientDomain_eq_jacobiDomain ht)
  intro v hv hj
  apply lp.ext
  funext n
  exact (jacobiOperator_coordinate ht ⟨v, hj⟩ n).symm

/-- The coefficient realization is self-adjoint because it is the exact actual realization. -/
theorem coefficientOperator_isSelfAdjoint {t : ℝ} (ht : 0 ≤ t) :
    IsSelfAdjoint (coefficientOperator t ht) := by
  rw [coefficientOperator_eq_jacobiOperator]
  exact jacobiOperator_isSelfAdjoint ht

/-- The actual graph is characterized by literal equality of all coefficient coordinates. -/
theorem mem_jacobiGraph_iff_expression {t : ℝ} (ht : 0 ≤ t)
    (v w : lp (fun _ : ℕ => ℂ) 2) :
    (v, w) ∈ (jacobiOperator t ht).graph ↔
      ∀ n : ℕ, w n = jacobiExpression t ht v n := by
  constructor
  · intro h
    obtain ⟨p, hp, hj⟩ := (LinearPMap.mem_graph_iff _).mp h
    intro n
    change p.val = v at hp
    change jacobiOperator t ht p = w at hj
    have hjn := congrArg (fun f : lp (fun _ : ℕ => ℂ) 2 => f n) hj
    have hpn := congrArg (fun f : lp (fun _ : ℕ => ℂ) 2 => jacobiExpression t ht f n) hp
    exact hjn.symm.trans ((jacobiOperator_coordinate ht p n).trans hpn)
  · intro h
    let p : jacobiDomain t ht := ⟨v, mem_domain_of_expression_eq ht v w h⟩
    apply (LinearPMap.mem_graph_iff _).mpr
    refine ⟨p, rfl, ?_⟩
    apply lp.ext
    funext n
    exact (jacobiOperator_coordinate ht p n).trans (h n).symm

/-- Vector-valued action of the actual maximal operator is literally the lp2 expression. -/
theorem jacobiOperator_eq_expression_vector {t : ℝ} (ht : 0 ≤ t)
    (v : jacobiDomain t ht) :
    jacobiOperator t ht v =
      (⟨jacobiExpression t ht v.val, jacobiExpression_memℓp_of_mem_domain ht v⟩ :
        lp (fun _ : ℕ => ℂ) 2) := by
  apply lp.ext
  exact funext (jacobiOperator_coordinate ht v)

/-- The original sqrt(m0)*e0 pointed vector retains its actual coefficient-domain membership. -/
theorem rawPoint_mem_coefficientDomain {t : ℝ} (ht : 0 ≤ t) :
    (ThetaMomentMeasure.cyclicVectorNorm t : ℂ) • lp.single 2 0 (1 : ℂ) ∈
      coefficientDomain t ht := by
  rw [coefficientDomain_eq_jacobiDomain]
  exact Submodule.smul_mem _ _ (standardVector_mem_jacobiDomain ht 0)

end
end FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain
