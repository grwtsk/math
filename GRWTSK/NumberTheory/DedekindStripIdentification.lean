module

public import Mathlib.NumberTheory.NumberField.DedekindZeta
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Mathlib.Analysis.Normed.Module.Connected
public import Mathlib.Analysis.Meromorphic.Order

/-!
# Identifying the Dedekind zeta continuations used in prime-field factorization

Local source attribution: grwtsk contributors. OpenAI #142, analytic section, uses
the Dedekind zeta functions of a cyclotomic field and a cyclic Kummer extension.
The statement of Cureton–Thorner's `DedekindZetaZeroFree.main` provides another
candidate for each field. Its quantitative zero exclusion remains an explicit
premise. Source editions and unresolved suppliers are recorded in
`DedekindStripIdentification.md`.
-/

@[expose] public section

namespace GRWTSK.PrimeFieldFactoring
open Set Filter
open scoped Topology

/-- Two punctured-plane holomorphic continuations of a single right-half-plane
function agree everywhere away from the permitted principal pole. -/
theorem continuation_eq_on_punctured {f g : ℂ → ℂ}
    (hf : DifferentiableOn ℂ f ({1}ᶜ : Set ℂ))
    (hg : DifferentiableOn ℂ g ({1}ᶜ : Set ℂ))
    (hs : ∀ s : ℂ, 1 < s.re → f s = g s) :
    EqOn f g ({1}ᶜ : Set ℂ) := by
  have hV : {z : ℂ | 1 < z.re} ∈ 𝓝 (2 : ℂ) :=
    (Complex.continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by simp)
  exact (hf.analyticOnNhd isOpen_compl_singleton).eqOn_of_preconnected_of_eventuallyEq
    (hg.analyticOnNhd isOpen_compl_singleton)
    (isConnected_compl_singleton_of_one_lt_rank (by simp) 1).isPreconnected
    (by norm_num : (2 : ℂ) ∈ ({1}ᶜ : Set ℂ))
    (Filter.eventually_of_mem hV fun s hs' => hs s hs')

/-- The real class-number residue transfers from the ideal Dirichlet series.
This is a one-sided limit; identifying the full pole requires local continuation
information at one. -/
theorem right_residue_of_agreement (K : Type*) [Field K] [NumberField K] {f : ℂ → ℂ}
    (h : ∀ s : ℂ, 1 < s.re → f s = NumberField.dedekindZeta K s) :
    Tendsto (fun x : ℝ => ((x : ℂ) - 1) * f x) (𝓝[>] 1)
      (𝓝 (NumberField.dedekindZeta_residue K : ℂ)) := by
  apply (NumberField.tendsto_sub_one_mul_dedekindZeta_nhdsGT K).congr'
  filter_upwards [self_mem_nhdsWithin] with x hx
  rw [h x hx]

/-- Once meromorphicity at one is supplied, the one-sided class-number formula
forces the full complex residue and a simple pole. Classifying the order of
(z-1)f rules out divergence and zero along the real approach. -/
theorem simple_pole_of_meromorphic_agreement (K : Type*) [Field K] [NumberField K]
    {f : ℂ → ℂ} (hm : MeromorphicAt f 1)
    (h : ∀ s : ℂ, 1 < s.re → f s = NumberField.dedekindZeta K s) :
    meromorphicOrderAt f 1 = -1 ∧
      Tendsto (fun z : ℂ => (z - 1) * f z) (𝓝[≠] 1)
        (𝓝 (NumberField.dedekindZeta_residue K : ℂ)) := by
  let F : ℂ → ℂ := fun z => (z - 1) * f z
  have hfactor : MeromorphicAt (fun z : ℂ => z - 1) 1 :=
    (analyticAt_id.sub analyticAt_const).meromorphicAt
  have hF : MeromorphicAt F 1 := hfactor.mul hm
  have hpath : Tendsto ((↑) : ℝ → ℂ) (𝓝[>] 1) (𝓝[≠] 1) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · exact (Complex.continuous_ofReal.tendsto' 1 1 rfl).mono_left nhdsWithin_le_nhds
    · filter_upwards [self_mem_nhdsWithin] with x hx
      change (x : ℂ) ≠ 1
      exact_mod_cast (ne_of_gt hx)
  have hR : Tendsto (F ∘ ((↑) : ℝ → ℂ)) (𝓝[>] 1)
      (𝓝 (NumberField.dedekindZeta_residue K : ℂ)) := right_residue_of_agreement K h
  have hR0 : (NumberField.dedekindZeta_residue K : ℂ) ≠ 0 := by
    exact_mod_cast NumberField.dedekindZeta_residue_ne_zero K
  have hn : 0 ≤ meromorphicOrderAt F 1 := by
    by_contra! hh
    exact hR.not_tendsto (Metric.disjoint_nhds_cobounded _)
      ((tendsto_cobounded_of_meromorphicOrderAt_neg hh).comp hpath)
  obtain ⟨c, hc⟩ := tendsto_nhds_of_meromorphicOrderAt_nonneg hF hn
  have heq := tendsto_nhds_unique (hc.comp hpath) hR
  subst c
  have horder := (tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero hF).mp ⟨_, hR0, hc⟩
  refine ⟨?_, hc⟩
  change meromorphicOrderAt ((fun z : ℂ => z - 1) * f) 1 = 0 at horder
  rw [meromorphicOrderAt_mul hfactor hm, meromorphicOrderAt_id_sub_const] at horder
  cases e : meromorphicOrderAt f 1 with
  | top => simp [e] at horder
  | coe z =>
    rw [e] at horder
    exact eq_neg_of_add_eq_zero_right horder

/-- A regularized principal L-function of the shape supplied by
`PrincipalRayHeckeData` gives precisely the meromorphic germ required above.
Only the positivity half-plane near one is used. -/
theorem meromorphic_of_principal_regularization {f R : ℂ → ℂ}
    (hR : AnalyticAt ℂ R 1)
    (hmatch : ∀ z : ℂ, 0 < z.re → z ≠ 1 → R z = (z-1) * f z) :
    MeromorphicAt f 1 := by
  have hq : MeromorphicAt (fun z : ℂ => R z / (z-1)) 1 :=
    hR.meromorphicAt.div (analyticAt_id.sub analyticAt_const).meromorphicAt
  apply (MeromorphicAt.meromorphicAt_congr (f := fun z : ℂ => R z / (z-1)) (g := f) ?_).mp hq
  have hp : {z : ℂ | 0 < z.re} ∈ 𝓝 (1 : ℂ) :=
    (Complex.continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by simp)
  filter_upwards [nhdsWithin_le_nhds hp, self_mem_nhdsWithin] with z hz hz1
  have hne : z-1 ≠ 0 := sub_ne_zero.mpr hz1
  simpa [hmatch z hz hz1, hne]

/-- Source normalization of both continuations is the ordinary Mathlib
Dedekind series at Re(s)>1. Universality over fields can be applied directly
to each of the two fields; no factorization into Hecke characters enters this
transfer. -/
theorem dedekind_target_strip (K : Type*) [Field K] [NumberField K]
    (provider : ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (∀ s : ℂ, 1 < s.re → f s = NumberField.dedekindZeta K s) ∧
      ∀ s : ℂ, 31 / 32 < s.re → s ≠ 1 → f s ≠ 0)
    (g : ℂ → ℂ) (hg : DifferentiableOn ℂ g ({1}ᶜ : Set ℂ))
    (hgseries : ∀ s : ℂ, 1 < s.re → g s = NumberField.dedekindZeta K s) :
    (∀ s : ℂ, 1 - (1 : ℝ) / 1000000 < s.re → s ≠ 1 → g s ≠ 0) ∧
      Tendsto (fun x : ℝ => ((x : ℂ) - 1) * g x) (𝓝[>] 1)
        (𝓝 (NumberField.dedekindZeta_residue K : ℂ)) := by
  obtain ⟨f, hf, hfseries, hzero⟩ := provider
  have hid := continuation_eq_on_punctured hf hg (fun s hs =>
    (hfseries s hs).trans (hgseries s hs).symm)
  refine ⟨?_, right_residue_of_agreement K hgseries⟩
  intro s hs h1
  rw [← hid (show s ∈ ({1}ᶜ : Set ℂ) from h1)]
  exact hzero s (lt_trans (by norm_num) hs) h1

end GRWTSK.PrimeFieldFactoring
