/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTranslationCutoffs
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFixedWindowSemibounded
import GRWTSK.FunctionalAnalysis.ClosedMeasurementGraph
import Mathlib.Analysis.InnerProductSpace.ProdL2

/-!
# The actual maximal gamma-energy graph and complete supported odd domain

The bounded maps in `WeilTranslationCutoffs` instantiate the pre-existing
closed-observation graph. Its domain is proved equivalent to the ORIGINAL
weighted translation-integrability condition. The energy-vector norm is
proved equal to `oddArchimedeanEnergy`, not just bounded by a model energy.

Physical support and oddness are kernels of continuous linear maps. The
supported graph is then given the genuine Hilbert product norm via
`WithLp 2`, rather than calling the ordinary product maximum norm Hilbert.
Its complete norm returns exactly to physical mass plus original gamma
energy, and the existing signed source norm is equivalent on this domain.

This completes the concrete closed-graph and complete-domain construction
at source-candidate level. Density, a selected form core, the full bundled
sesquilinear API and the associated self-adjoint operator are not inferred
from closedness and remain separately tracked. No cofinal sign is proved.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped ENNReal Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TranslationEnergyDomain

open TranslationCutoffs OddRootProjection OddHighComplement OddWrapEnergy
open FixedWindowSemibounded
open GRWTSK.FunctionalAnalysis

/-- L2 norm identity for real Hilbert-valued equivalence classes. -/
theorem norm_sq_integral {X F : Type*} [MeasurableSpace X]
    [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    (μ : Measure X) (f : Lp F 2 μ) :
    ‖f‖ ^ 2 = ∫ x, ‖f x‖ ^ 2 ∂μ := by
  calc
    ‖f‖ ^ 2 = inner ℝ f f := (real_inner_self_eq_norm_sq f).symm
    _ = ∫ x, inner ℝ (f x) (f x) ∂μ := rfl
    _ = _ := by simp only [real_inner_self_eq_norm_sq]

/-- The cutoff constant has the exact weighted-measure normalization. -/
theorem windowUnit_norm_sq (m : ℕ) :
    ‖windowUnit m‖ ^ 2 = GammaLag.measure.real (GammaLag.window m) := by
  rw [norm_sq_integral GammaLag.measure]
  calc
    (∫ r, ‖windowUnit m r‖ ^ 2 ∂GammaLag.measure) =
        ∫ r, (GammaLag.window m).indicator (fun _ => (1 : ℝ)) r ∂GammaLag.measure := by
      apply integral_congr_ae
      filter_upwards [windowUnit_ae m] with r hr
      rw [hr]
      by_cases hm : r ∈ GammaLag.window m <;> simp [hm]
    _ = _ := by rw [integral_indicator (GammaLag.window_measurable m)]; simp

theorem cutoffBound_sq (m : ℕ) :
    cutoffBound m ^ 2 = 4 * GammaLag.measure.real (GammaLag.window m) := by
  unfold cutoffBound
  nlinarith [windowUnit_norm_sq m]

/-- Strong convergence of all lag restrictions; no operator-norm convergence
or claim of complete information at a finite cutoff is made. -/
theorem restrictions_tendsto (G : Energy) :
    Tendsto (fun m : ℕ => restriction m G) atTop (𝓝 G) := by
  let tailSq (m : ℕ) (r : ℝ) : ℝ :=
    ((GammaLag.window m)ᶜ).indicator (fun r => ‖G r‖ ^ 2) r
  have hbound : Integrable (fun r => ‖G r‖ ^ 2) GammaLag.measure :=
    (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable G)).1 (Lp.memLp G)
  have hnorm (m : ℕ) :
      ‖restriction m G - G‖ ^ 2 = ∫ r, tailSq m r ∂GammaLag.measure := by
    rw [norm_sq_integral GammaLag.measure]
    apply integral_congr_ae
    filter_upwards [Lp.coeFn_sub (restriction m G) G, restriction_ae m G] with r hs hr
    rw [hs, hr]
    by_cases hm : r ∈ GammaLag.window m <;>
      simp [rawRestriction, tailSq, hm]
  have hmeas (m : ℕ) : AEStronglyMeasurable (tailSq m) GammaLag.measure :=
    hbound.aestronglyMeasurable.indicator (GammaLag.window_measurable m).compl
  have hdom (m : ℕ) : ∀ᵐ r ∂GammaLag.measure, ‖tailSq m r‖ ≤ ‖G r‖ ^ 2 := by
    apply Eventually.of_forall
    intro r
    by_cases hm : r ∈ GammaLag.window m <;>
      simp [tailSq, hm, Real.norm_of_nonneg (sq_nonneg _)]
  have hlim : ∀ᵐ r ∂GammaLag.measure,
      Tendsto (fun m : ℕ => tailSq m r) atTop (𝓝 (0 : ℝ)) := by
    filter_upwards [GammaLag.ae_window_cover] with r hr
    obtain ⟨N, hN⟩ := hr
    have he : (fun m : ℕ => tailSq m r) =ᶠ[atTop] fun _ => (0 : ℝ) := by
      filter_upwards [eventually_ge_atTop N] with m hm
      simp [tailSq, GammaLag.window_mono hm hN]
    exact (tendsto_congr' he).2 tendsto_const_nhds
  have hi := tendsto_integral_of_dominated_convergence
    (fun r => ‖G r‖ ^ 2) hmeas hbound hdom hlim
  have hsq : Tendsto (fun m : ℕ => ‖restriction m G - G‖ ^ 2) atTop (𝓝 0) := by
    simpa only [hnorm, integral_zero] using hi
  apply tendsto_iff_norm_sub_tendsto_zero.2
  have hsqrt := Real.continuous_sqrt.continuousAt.tendsto.comp hsq
  simpa only [Function.comp_def, Real.sqrt_sq (norm_nonneg _), Real.sqrt_zero] using hsqrt

/-- Pointwise in lag, return the Hilbert-valued difference to the original
whole-line scalar translation integral. -/
theorem jump_norm_sq (f : Physical) (r : ℝ) :
    ‖jump f r‖ ^ 2 = ∫ t : ℝ, (f (t + r) - f t) ^ 2 := by
  rw [norm_sq_integral volume]
  apply integral_congr_ae
  filter_upwards [jump_ae f r] with t ht
  simp only [ht, Real.norm_eq_abs, sq_abs]

/-- Finiteness is expressed by MemLp, never by a totalized integral alone. -/
theorem jump_memLp_iff_gamma_integrable (f : Physical) :
    MemLp (jump f) 2 GammaLag.measure ↔
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi (0 : ℝ)) := by
  rw [memLp_two_iff_integrable_sq_norm (continuous_jump f).aestronglyMeasurable,
    GammaLag.integrable_measure_iff]
  simp only [jump_norm_sq, zeroShiftEnergy, zeroShiftSquare]

abbrev energyGraph : Submodule ℝ (Physical × Energy) :=
  ClosedMeasurementGraph.graph cutoff restriction

theorem energyGraph_isClosed : IsClosed (energyGraph : Set (Physical × Energy)) :=
  ClosedMeasurementGraph.graph_isClosed cutoff restriction

/-- All cutoff equations identify the entire maximal energy vector. -/
theorem mem_energyGraph_iff (f : Physical) (G : Energy) :
    (f, G) ∈ energyGraph ↔ G =ᵐ[GammaLag.measure] jump f := by
  constructor
  · intro h
    have hlocal (m : ℕ) : ∀ᵐ r ∂GammaLag.measure,
        r ∈ GammaLag.window m → G r = jump f r := by
      have he : restriction m G =ᵐ[GammaLag.measure] cutoff m f :=
        Eventually.of_forall (fun r => congrArg (fun F : Energy => F r) (h m))
      filter_upwards [restriction_ae m G, cutoff_ae m f, he] with r hR hA heq hr
      simpa only [rawRestriction, rawCutoff, indicator_of_mem hr] using
        hR.symm.trans (heq.trans hA)
    have hall : ∀ᵐ r ∂GammaLag.measure, ∀ m : ℕ,
        r ∈ GammaLag.window m → G r = jump f r := (ae_all_iff).2 hlocal
    filter_upwards [hall, GammaLag.ae_window_cover] with r hr hc
    obtain ⟨m, hm⟩ := hc
    exact hr m hm
  · intro h m
    apply Lp.ext
    filter_upwards [restriction_ae m G, cutoff_ae m f, h] with r hR hA heq
    rw [hR, hA]
    by_cases hr : r ∈ GammaLag.window m <;> simp [rawRestriction, rawCutoff, hr, heq]

theorem exists_energy_iff (f : Physical) :
    (∃ G : Energy, (f, G) ∈ energyGraph) ↔ MemLp (jump f) 2 GammaLag.measure := by
  constructor
  · rintro ⟨G, hG⟩
    exact (Lp.memLp G).congr ((mem_energyGraph_iff f G).1 hG)
  · intro hf
    refine ⟨hf.toLp (jump f), (mem_energyGraph_iff _ _).2 ?_⟩
    exact hf.coeFn_toLp

/-- The actual closed partial translation-energy operator. -/
def energyOperator : Physical →ₗ.[ℝ] Energy :=
  ClosedMeasurementGraph.operator cutoff restriction

theorem energyOperator_graph : energyOperator.graph = energyGraph :=
  ClosedMeasurementGraph.operator_graph cutoff restriction restrictions_separate

theorem energyOperator_isClosed : energyOperator.IsClosed :=
  ClosedMeasurementGraph.operator_isClosed cutoff restriction restrictions_separate

theorem mem_energyOperator_domain_iff (f : Physical) :
    f ∈ energyOperator.domain ↔
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi (0 : ℝ)) := by
  rw [LinearPMap.mem_domain_iff, energyOperator_graph, exists_energy_iff,
    jump_memLp_iff_gamma_integrable]

/-- Exact original-source norm identity for every point of the closed graph. -/
theorem output_norm_sq (f : Physical) (G : Energy) (hG : (f, G) ∈ energyGraph) :
    ‖G‖ ^ 2 = oddArchimedeanEnergy f := by
  rw [norm_sq_integral GammaLag.measure]
  calc
    (∫ r, ‖G r‖ ^ 2 ∂GammaLag.measure) =
        ∫ r, ‖jump f r‖ ^ 2 ∂GammaLag.measure := by
      apply integral_congr_ae
      filter_upwards [(mem_energyGraph_iff f G).1 hG] with r hr
      rw [hr]
    _ = ∫ r in Ioi (0 : ℝ), parityKernel 0 r * ‖jump f r‖ ^ 2 :=
      GammaLag.integral_measure _
    _ = oddArchimedeanEnergy f := by
      simp only [jump_norm_sq, oddArchimedeanEnergy]

/-- Reflection on physical Lebesgue L2, not a pointwise regularity assumption. -/
def reflection : Physical →L[ℝ] Physical :=
  (Lp.compMeasurePreservingₗᵢ ℝ (fun t : ℝ => -t)
    (Measure.measurePreserving_neg volume)).toContinuousLinearMap

theorem reflection_ae (f : Physical) :
    reflection f =ᵐ[volume] fun t => f (-t) :=
  Lp.coeFn_compMeasurePreserving f (Measure.measurePreserving_neg volume)

theorem reflection_eq_neg_iff (f : Physical) :
    reflection f = -f ↔ ∀ᵐ t ∂volume, f (-t) = -f t := by
  constructor
  · intro h
    have he : reflection f =ᵐ[volume] -f :=
      Eventually.of_forall (fun t => congrArg (fun F : Physical => F t) h)
    filter_upwards [reflection_ae f, Lp.coeFn_neg f, he] with t hr hn heq
    simpa only [Pi.neg_apply] using hr.symm.trans (heq.trans hn)
  · intro h
    apply Lp.ext
    filter_upwards [reflection_ae f, Lp.coeFn_neg f, h] with t hr hn heq
    simpa only [hr, hn, Pi.neg_apply] using heq

def physicalWindow (T : ℝ) : Physical →L[ℝ] Physical :=
  L2WindowRestriction.restrict volume (Icc (-T) T) measurableSet_Icc

/-- Original supported odd physical Hilbert subspace. -/
def supportedOdd (T : ℝ) : Submodule ℝ Physical :=
  (physicalWindow T - ContinuousLinearMap.id ℝ Physical).ker ⊓
    (reflection + ContinuousLinearMap.id ℝ Physical).ker

theorem mem_supportedOdd_iff (T : ℝ) (f : Physical) :
    f ∈ supportedOdd T ↔
      (∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0) ∧
      (∀ᵐ t ∂volume, f (-t) = -f t) := by
  change (physicalWindow T f - f = 0 ∧ reflection f + f = 0) ↔ _
  rw [sub_eq_zero, add_eq_zero_iff_eq_neg, reflection_eq_neg_iff]
  exact and_congr
    (L2WindowRestriction.restrict_eq_self_iff volume (Icc (-T) T) measurableSet_Icc f)
    Iff.rfl

theorem supportedOdd_isClosed (T : ℝ) : IsClosed (supportedOdd T : Set Physical) := by
  exact (physicalWindow T - ContinuousLinearMap.id ℝ Physical).isClosed_ker.inter
    (reflection + ContinuousLinearMap.id ℝ Physical).isClosed_ker

instance supportedOdd_complete (T : ℝ) : CompleteSpace (supportedOdd T) :=
  (supportedOdd_isClosed T).completeSpace_coe

abbrev WindowPhysical (T : ℝ) := supportedOdd T

def cutoffOnWindow (T : ℝ) (m : ℕ) : WindowPhysical T →L[ℝ] Energy :=
  (cutoff m).comp (supportedOdd T).subtypeL

abbrev windowGraph (T : ℝ) : Submodule ℝ (WindowPhysical T × Energy) :=
  ClosedMeasurementGraph.graph (cutoffOnWindow T) restriction

theorem windowGraph_isClosed (T : ℝ) :
    IsClosed (windowGraph T : Set (WindowPhysical T × Energy)) :=
  ClosedMeasurementGraph.graph_isClosed (cutoffOnWindow T) restriction

/-- Use the Hilbert product norm, not the ordinary product maximum norm. -/
def hilbertGraph (T : ℝ) : Submodule ℝ (WithLp 2 (WindowPhysical T × Energy)) :=
  (windowGraph T).comap (WithLp.linearEquiv 2 ℝ (WindowPhysical T × Energy)).toLinearMap

theorem hilbertGraph_isClosed (T : ℝ) :
    IsClosed (hilbertGraph T : Set (WithLp 2 (WindowPhysical T × Energy))) := by
  exact (windowGraph_isClosed T).preimage
    (WithLp.prodContinuousLinearEquiv 2 ℝ (WindowPhysical T) Energy).continuous

/-- The genuine complete Hilbert model of the maximal supported odd
form domain. Its points retain both input and uniquely determined energy. -/
abbrev FormDomain (T : ℝ) := hilbertGraph T

instance formDomain_complete (T : ℝ) : CompleteSpace (FormDomain T) :=
  (hilbertGraph_isClosed T).completeSpace_coe

def input (T : ℝ) : FormDomain T →L[ℝ] Physical :=
  (supportedOdd T).subtypeL.comp
    ((WithLp.fstL 2 ℝ (WindowPhysical T) Energy).comp (hilbertGraph T).subtypeL)

def output (T : ℝ) : FormDomain T →L[ℝ] Energy :=
  (WithLp.sndL 2 ℝ (WindowPhysical T) Energy).comp (hilbertGraph T).subtypeL

theorem form_observations (T : ℝ) (z : FormDomain T) (m : ℕ) :
    restriction m (output T z) = cutoff m (input T z) := z.property m

theorem form_input_supported (T : ℝ) (z : FormDomain T) :
    ∀ᵐ t ∂volume, t ∉ Icc (-T) T → input T z t = 0 :=
  ((mem_supportedOdd_iff T _).1 (WithLp.ofLp z.val).1.property).1

theorem form_input_odd (T : ℝ) (z : FormDomain T) :
    ∀ᵐ t ∂volume, input T z (-t) = -input T z t :=
  ((mem_supportedOdd_iff T _).1 (WithLp.ofLp z.val).1.property).2

theorem form_input_gamma_integrable (T : ℝ) (z : FormDomain T) :
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r (input T z)) (Ioi (0 : ℝ)) :=
  (jump_memLp_iff_gamma_integrable _).1
    ((exists_energy_iff _).1 ⟨output T z, form_observations T z⟩)

theorem form_output_norm_sq (T : ℝ) (z : FormDomain T) :
    ‖output T z‖ ^ 2 = oddArchimedeanEnergy (input T z) :=
  output_norm_sq _ _ (form_observations T z)

theorem form_norm_sq (T : ℝ) (z : FormDomain T) :
    ‖z‖ ^ 2 = ‖input T z‖ ^ 2 + oddArchimedeanEnergy (input T z) := by
  have hp := WithLp.prod_norm_sq_eq_of_L2 z.val
  change ‖z‖ ^ 2 = ‖input T z‖ ^ 2 + ‖output T z‖ ^ 2 at hp
  rw [form_output_norm_sq] at hp
  exact hp

/-- Every source-admissible physical input has exactly one energy lift. -/
theorem exists_form_lift (T : ℝ) (f : Physical)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (ho : ∀ᵐ t ∂volume, f (-t) = -f t)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi (0 : ℝ))) :
    ∃ z : FormDomain T, input T z = f := by
  have hf := (jump_memLp_iff_gamma_integrable f).2 he
  obtain ⟨G, hG⟩ := (exists_energy_iff f).2 hf
  let fT : WindowPhysical T := ⟨f, (mem_supportedOdd_iff T f).2 ⟨hs, ho⟩⟩
  let z : FormDomain T := ⟨WithLp.toLp 2 (fT, G), hG⟩
  exact ⟨z, rfl⟩

theorem input_injective (T : ℝ) : Function.Injective (input T) := by
  intro z w h
  have hout : output T z = output T w := by
    apply restrictions_separate
    intro m
    rw [form_observations, form_observations, h]
  apply Subtype.ext
  apply (WithLp.linearEquiv 2 ℝ (WindowPhysical T × Energy)).injective
  apply Prod.ext
  · exact Subtype.ext h
  · exact hout

/-- The cutoff energy vectors converge to the unique full energy lift. -/
theorem cutoff_tendsto_output (T : ℝ) (z : FormDomain T) :
    Tendsto (fun m : ℕ => cutoff m (input T z)) atTop (𝓝 (output T z)) := by
  have h := restrictions_tendsto (output T z)
  simpa only [form_observations] using h

theorem existsUnique_form_lift (T : ℝ) (f : Physical)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (ho : ∀ᵐ t ∂volume, f (-t) = -f t)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi (0 : ℝ))) :
    ∃! z : FormDomain T, input T z = f := by
  obtain ⟨z, hz⟩ := exists_form_lift T f hs ho he
  exact ⟨z, hz, fun w hw => input_injective T (hw.trans hz.symm)⟩

/-- The complete graph norm is exactly the previously defined gamma norm. -/
theorem form_norm_sq_eq_gammaNormSq (T : ℝ) (z : FormDomain T) :
    ‖z‖ ^ 2 = gammaNormSq (input T z) := by
  rw [form_norm_sq, gammaNormSq, norm_sq_integral volume]

/-- Original signed-source norms are equivalent on the actual complete
maximal domain. The constants depend on T and beta. -/
theorem form_sourceNormSq_equivalent (T β : ℝ) (hT : 0 ≤ T) (z : FormDomain T) :
    ‖z‖ ^ 2 ≤ sourceNormSq T β (input T z) ∧
      sourceNormSq T β (input T z) ≤ (2 * perturbationBound T β + 1) * ‖z‖ ^ 2 := by
  rw [form_norm_sq_eq_gammaNormSq]
  exact sourceNormSq_equivalent T β hT (Lp.memLp (input T z))
    (form_input_supported T z) (form_input_gamma_integrable T z)

/-- Translation-energy integrability is independent of the chosen a.e.
representative, including translated null sets for every fixed lag. -/
theorem zeroShiftEnergy_congr_ae {f g : ℝ → ℝ} (hfg : f =ᵐ[volume] g) (r : ℝ) :
    zeroShiftEnergy r f = zeroShiftEnergy r g := by
  apply integral_congr_ae
  filter_upwards [hfg, (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hfg]
    with t ht htr
  simp only [zeroShiftSquare, ht, htr]

/-- Return arbitrary original admissible source representatives to the
complete graph domain; the input is their actual L2 equivalence class. -/
theorem existsUnique_form_lift_of_source (T : ℝ) (f : ℝ → ℝ)
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (ho : ∀ᵐ t ∂volume, f (-t) = -f t)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi (0 : ℝ))) :
    ∃! z : FormDomain T, input T z = hf.toLp f := by
  let g : Physical := hf.toLp f
  have hg : g =ᵐ[volume] f := hf.coeFn_toLp
  have hgs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → g t = 0 := by
    filter_upwards [hg, hs] with t hgf hsf ht
    rw [hgf]
    exact hsf ht
  have hgo : ∀ᵐ t ∂volume, g (-t) = -g t := by
    filter_upwards [hg, (Measure.measurePreserving_neg volume).quasiMeasurePreserving.ae hg, ho]
      with t ht hneg hodd
    rw [hneg, ht, hodd]
  have hge : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi (0 : ℝ)) := by
    simpa only [zeroShiftEnergy_congr_ae hg] using he
  exact existsUnique_form_lift T g hgs hgo hge

end GRWTSK.NumberTheory.WeilQuadraticForm.TranslationEnergyDomain
