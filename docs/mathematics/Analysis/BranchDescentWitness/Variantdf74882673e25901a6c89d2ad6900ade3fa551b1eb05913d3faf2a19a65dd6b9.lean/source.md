# Complete source: GRWTSK.Analysis.BranchDescentWitness.Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ccefab6bacf618fecf4182f542b2367444656c9` · SHA-256 `df74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchRayleighVariation
import FormalResearch.RiemannHypothesis.Conversation.BranchSourceSymmetry
import Mathlib.Analysis.Calculus.LocalExtr.Basic
import Mathlib.Data.Setoid.Basic
import Mathlib.Order.FixedPoints

/-!
# Observation accounting, admissible descent and frozen scope

Inspired by the user-supplied Rob–ESC/0.2 model (2026-10-10). A diagnostic
observation and an admissible improving witness are separate data. The
accounting criterion applies to arbitrary observation fibers, while strict
descent transports only with a transition map and matching values. Reverse
transport additionally requires a witness-lifting hypothesis.

Batch 26, `exact-profile-descent.md`, sections 2 and 5, revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`: the existing literal readout
descends to the correlation quotient. The exact affine Rayleigh quotient
has arbitrarily small improving steps precisely when its first coefficient
is nonzero or its second coefficient is negative. Instantiation as an
admissible native profile variation still requires the actual path and
nonstationarity inputs.

Frozen scope is the least expansion-closed set containing the declared
seed. This corrects the unseeded least-fixed-point expression in section 2
of Rob–ESC/0.2. These are abstract mathematical accounting results; no
administrative authority or imported almost Mathieu theorem is supplied.

Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchDescentWitness

open Set Filter
open scoped Topology
open BranchSourceSymmetry
open FormalResearch.RiemannHypothesis.Conversation.BranchRayleighVariation

variable {State Obs Value : Type*}

/-- A strict improvement includes an actual admissible transition from the given state. -/
def HasDescent [LT Value] (step : State → State → Prop) (value : State → Value)
    (x : State) : Prop := ∃ y, step x y ∧ value y < value x

/-- Accounting is well-defined on the observation quotient exactly when equal
observations have equal values. -/
theorem accounting_descends_iff (observe : State → Obs) (value : State → Value) :
    (∃ account : Quotient (Setoid.ker observe) → Value,
      ∀ x, account (Quotient.mk _ x) = value x) ↔
    ∀ x y, observe x = observe y → value x = value y := by
  constructor
  · rintro ⟨account, haccount⟩ x y hxy
    rw [← haccount x, ← haccount y]
    exact congrArg account (Quotient.sound hxy)
  · intro h
    exact ⟨Quotient.lift value (fun x y hxy ↦ h x y hxy), fun _ ↦ rfl⟩

section Ordered

variable [Preorder Value]

/-- A faithful value and transition map transports an actual witness. -/
theorem hasDescent_map (observe : State → Obs) (step : State → State → Prop)
    (observedStep : Obs → Obs → Prop) (value : State → Value) (observedValue : Obs → Value)
    (hstep : ∀ x y, step x y → observedStep (observe x) (observe y))
    (hvalue : ∀ x, observedValue (observe x) = value x) {x : State}
    (h : HasDescent step value x) : HasDescent observedStep observedValue (observe x) := by
  obtain ⟨y, hy, hlt⟩ := h
  refine ⟨observe y, hstep x y hy, ?_⟩
  rwa [hvalue y, hvalue x]

/-- Observation-level descent reflects only if every relevant target witness can be lifted. -/
theorem hasDescent_of_lifting (observe : State → Obs) (step : State → State → Prop)
    (observedStep : Obs → Obs → Prop) (value : State → Value) (observedValue : Obs → Value)
    (hvalue : ∀ x, observedValue (observe x) = value x) {x : State}
    (hlift : ∀ z, observedStep (observe x) z → ∃ y, step x y ∧ observe y = z)
    (h : HasDescent observedStep observedValue (observe x)) : HasDescent step value x := by
  obtain ⟨z, hz, hlt⟩ := h
  obtain ⟨y, hy, he⟩ := hlift z hz
  refine ⟨y, hy, ?_⟩
  rw [← hvalue y, ← hvalue x, he]
  exact hlt

/-- The two descent predicates agree when transition projection and witness lifting both hold. -/
theorem hasDescent_iff_of_lifting (observe : State → Obs) (step : State → State → Prop)
    (observedStep : Obs → Obs → Prop) (value : State → Value) (observedValue : Obs → Value)
    (hstep : ∀ x y, step x y → observedStep (observe x) (observe y))
    (hvalue : ∀ x, observedValue (observe x) = value x) {x : State}
    (hlift : ∀ z, observedStep (observe x) z → ∃ y, step x y ∧ observe y = z) :
    HasDescent step value x ↔ HasDescent observedStep observedValue (observe x) :=
  ⟨hasDescent_map observe step observedStep value observedValue hstep hvalue,
    hasDescent_of_lifting observe step observedStep value observedValue hvalue hlift⟩

/-- A strict improving witness must change any observation that determines the value. -/
theorem descent_changes_observation (observe : State → Obs) (value : State → Value)
    (hvalue : ∀ x y, observe x = observe y → value x = value y)
    {x y : State} (hlt : value y < value x) : observe y ≠ observe x := by
  intro he
  exact (ne_of_lt hlt) (hvalue y x he)

/-- Observation-preserving admissible edges cannot furnish strict descent for this accounting. -/
theorem no_descent_of_observation_invariant (observe : State → Obs)
    (step : State → State → Prop) (value : State → Value)
    (hvalue : ∀ x y, observe x = observe y → value x = value y)
    (hstep : ∀ x y, step x y → observe y = observe x) (x : State) :
    ¬ HasDescent step value x := by
  rintro ⟨y, hy, hlt⟩
  exact descent_changes_observation observe value hvalue hlt (hstep x y hy)

end Ordered

/-- Even a surjective, faithful observation and a forward transition map do
not reflect descent when the observed improving edge has no source lift. -/
theorem surjective_observation_does_not_lift_witness :
    Function.Surjective (id : Bool → Bool) ∧
    (∀ x y : Bool, (fun _ _ : Bool ↦ False) x y → (fun _ _ : Bool ↦ True) x y) ∧
    HasDescent (fun _ _ : Bool ↦ True) (fun b ↦ if b then (0 : ℝ) else 1) false ∧
    ¬ HasDescent (fun _ _ : Bool ↦ False) (fun b ↦ if b then (0 : ℝ) else 1) false := by
  refine ⟨(fun b ↦ ⟨b, rfl⟩), (fun _ _ _ ↦ trivial), ⟨true, trivial, ?_⟩, ?_⟩
  · norm_num
  · rintro ⟨y, hy, _hlt⟩
    exact hy

/-- A diagnostic gate restricts the base transition relation by its target condition. -/
def gatedStep (step : State → State → Prop) (gate : State → Prop) (x y : State) : Prop :=
  step x y ∧ gate y

/-- A gate cannot invent a base improving transition or remove its required hypotheses. -/
theorem gated_descent_projects [Preorder Value] (step : State → State → Prop)
    (gate : State → Prop) (value : State → Value) {x : State}
    (h : HasDescent (gatedStep step gate) value x) : HasDescent step value x := by
  obtain ⟨y, hy, hlt⟩ := h
  exact ⟨y, hy.1, hlt⟩

/-- Independent positive diagnostic data do not logically imply core acceptance. -/
theorem diagnostic_pass_not_core_accept : ¬ (∀ pass core : Prop, pass → core) := by
  intro h
  exact h True False trivial

/-- The original complete Mangoldt readout is well-defined on the actual correlation quotient. -/
theorem source_readout_descends_to_correlation_quotient (A : ℝ) :
    ∃ account : Quotient (Setoid.ker autocorrelation) → ℝ,
      ∀ q, account (Quotient.mk _ q) = sourceReadout A q := by
  apply (accounting_descends_iff autocorrelation (sourceReadout A)).2
  intro q r h
  exact sourceReadout_eq_of_correlation_eq A (fun t ↦ congrFun h t)

/-- Any specified family of correlation-preserving profile transitions has no scalar descent. -/
theorem correlation_preserving_edges_no_source_descent (A : ℝ)
    (step : (ℝ → ℝ) → (ℝ → ℝ) → Prop)
    (hstep : ∀ q r, step q r → autocorrelation r = autocorrelation q) (q : ℝ → ℝ) :
    ¬ HasDescent step (sourceReadout A) q := by
  apply no_descent_of_observation_invariant autocorrelation step (sourceReadout A) _ hstep q
  intro f g h
  exact sourceReadout_eq_of_correlation_eq A (fun t ↦ congrFun h t)

/-- Expansion with the initial obligations retained at every stage. -/
def scopeStep (seed : Set State) (expand : Set State →o Set State) : Set State →o Set State where
  toFun X := seed ∪ X ∪ expand X
  monotone' _X _Y h := union_subset_union (union_subset_union_right seed h) (expand.monotone h)

/-- The least closed scope containing the declared seed. -/
def frozenScope (seed : Set State) (expand : Set State →o Set State) : Set State :=
  (scopeStep seed expand).lfp

/-- The seed cannot disappear from the frozen scope. -/
theorem seed_subset_frozenScope (seed : Set State) (expand : Set State →o Set State) :
    seed ⊆ frozenScope seed expand := by
  have he := (scopeStep seed expand).map_lfp
  change seed ∪ frozenScope seed expand ∪ expand (frozenScope seed expand) =
    frozenScope seed expand at he
  intro x hx
  rw [← he]
  exact Or.inl (Or.inl hx)

/-- All generated dependencies and required reviews remain inside the stabilized scope. -/
theorem frozenScope_closed (seed : Set State) (expand : Set State →o Set State) :
    expand (frozenScope seed expand) ⊆ frozenScope seed expand := by
  have he := (scopeStep seed expand).map_lfp
  change seed ∪ frozenScope seed expand ∪ expand (frozenScope seed expand) =
    frozenScope seed expand at he
  intro x hx
  rw [← he]
  exact Or.inr hx

/-- Every closed set containing the seed also contains the frozen scope. -/
theorem frozenScope_le (seed : Set State) (expand : Set State →o Set State)
    {X : Set State} (hseed : seed ⊆ X) (hclosed : expand X ⊆ X) :
    frozenScope seed expand ⊆ X := by
  apply OrderHom.lfp_le
  intro x hx
  rcases hx with (hs | hx) | he
  · exact hseed hs
  · exact hx
  · exact hclosed he

/-- A declared invariant universe bounds every generated obligation. -/
theorem frozenScope_subset_universe (seed : Set State) (expand : Set State →o Set State)
    {U : Set State} (hseed : seed ⊆ U) (hbound : expand U ⊆ U) :
    frozenScope seed expand ⊆ U := frozenScope_le seed expand hseed hbound

/-- A finite declared invariant universe gives a finite frozen obligation set. -/
theorem frozenScope_finite (seed : Set State) (expand : Set State →o Set State)
    {U : Set State} (hU : U.Finite) (hseed : seed ⊆ U) (hbound : expand U ⊆ U) :
    (frozenScope seed expand).Finite :=
  hU.subset (frozenScope_subset_universe seed expand hseed hbound)

/-- Reclosing an already frozen scope under the same expansion adds nothing. -/
theorem frozenScope_idempotent (seed : Set State) (expand : Set State →o Set State) :
    frozenScope (frozenScope seed expand) expand = frozenScope seed expand := by
  apply Subset.antisymm
  · exact frozenScope_le _ expand Subset.rfl (frozenScope_closed seed expand)
  · exact seed_subset_frozenScope _ expand

/-- Discovery outside the old scope forces a strictly larger reclosed universe,
even when the next version has its own expansion rule. -/
theorem discovered_obligation_strictly_expands {old : Set State} {o : State} (ho : o ∉ old)
    (nextExpand : Set State →o Set State) : old ⊂ frozenScope (insert o old) nextExpand := by
  have hs := seed_subset_frozenScope (insert o old) nextExpand
  refine ⟨(subset_insert o old).trans hs, ?_⟩
  intro h
  exact ho (h (hs (mem_insert o old)))

/-- Nonzero first variation furnishes a positive-denominator improving step
inside every prescribed positive radius. -/
theorem exists_small_rayleigh_descent_of_first {a d ell H : ℝ} (ha : a ≠ 0)
    {radius : ℝ} (hradius : 0 < radius) :
    ∃ e : ℝ, 0 < |e| ∧ |e| < radius ∧ 0 < denominator ell H e ∧
      increment a d ell H e < 0 := by
  have hden : ContinuousAt (denominator ell H) 0 := by
    unfold denominator
    fun_prop
  have hd : ∀ᶠ e in 𝓝 (0 : ℝ), 0 < denominator ell H e :=
    hden.eventually_const_lt (by simp [denominator])
  have hr : ∀ᶠ e in 𝓝 (0 : ℝ), |e| < radius :=
    continuous_abs.continuousAt.eventually_lt_const (by simpa using hradius)
  by_contra hn
  have hm : IsLocalMin (increment a d ell H) 0 := by
    filter_upwards [hd, hr] with e hde hre
    have he : 0 ≤ increment a d ell H e := by
      by_contra hge
      have hlt : increment a d ell H e < 0 := lt_of_not_ge hge
      have he0 : e ≠ 0 := by
        intro heq
        subst e
        simp [increment] at hlt
      exact hn ⟨e, abs_pos.mpr he0, hre, hde, hlt⟩
    simpa [increment] using he
  have hzero := hm.hasDerivAt_eq_zero (first_variation a d ell H)
  exact ha (by linarith)

/-- A negative second coefficient supplies small descent even with zero first variation. -/
theorem exists_small_rayleigh_descent_of_second {d ell H : ℝ} (hd : d < 0)
    {radius : ℝ} (hradius : 0 < radius) :
    ∃ e : ℝ, 0 < |e| ∧ |e| < radius ∧ 0 < denominator ell H e ∧
      increment 0 d ell H e < 0 := by
  have hden : ContinuousAt (denominator ell H) 0 := by
    unfold denominator
    fun_prop
  have hp : ∀ᶠ e in 𝓝[≠] (0 : ℝ), 0 < denominator ell H e :=
    (hden.eventually_const_lt (by simp [denominator])).filter_mono nhdsWithin_le_nhds
  have hr0 : ∀ᶠ e in 𝓝 (0 : ℝ), |e| < radius :=
    continuous_abs.continuousAt.eventually_lt_const (by simpa using hradius)
  have hr : ∀ᶠ e in 𝓝[≠] (0 : ℝ), |e| < radius :=
    hr0.filter_mono nhdsWithin_le_nhds
  obtain ⟨e, hpe, hre, he⟩ := (hp.and (hr.and self_mem_nhdsWithin)).exists
  have he0 : e ≠ 0 := he
  refine ⟨e, abs_pos.mpr he0, hre, hpe, ?_⟩
  apply negative_increment _ _ _ _ _ hpe
  simpa only [mul_zero, add_zero, zero_add] using mul_neg_of_pos_of_neg (sq_pos_of_ne_zero he0) hd

/-- Complete local classification for the exact affine quotient, including all denominator terms. -/
theorem small_rayleigh_descent_iff (a d ell H : ℝ) {radius : ℝ} (hradius : 0 < radius) :
    (∃ e : ℝ, 0 < |e| ∧ |e| < radius ∧ 0 < denominator ell H e ∧
      increment a d ell H e < 0) ↔ a ≠ 0 ∨ d < 0 := by
  constructor
  · rintro ⟨e, _he0, _her, hden, hlt⟩
    by_cases ha : a ≠ 0
    · exact Or.inl ha
    · right
      have ha0 : a = 0 := not_ne_iff.mp ha
      by_contra hd
      have hd0 : 0 ≤ d := le_of_not_gt hd
      have hn : 0 ≤ increment a d ell H e := by
        unfold increment
        rw [ha0]
        simp only [mul_zero, zero_add]
        exact div_nonneg (mul_nonneg (sq_nonneg e) hd0) hden.le
      exact not_lt_of_ge hn hlt
  · rintro (ha | hd)
    · exact exists_small_rayleigh_descent_of_first ha hradius
    · by_cases ha : a = 0
      · subst a
        exact exists_small_rayleigh_descent_of_second hd hradius
      · exact exists_small_rayleigh_descent_of_first ha hradius

/-- The scalar step becomes a state witness only after the actual path is proved
admissible and its accounting is identified with the exact quotient increment. -/
theorem has_descent_of_rayleigh_path (step : State → State → Prop) (value : State → ℝ)
    (x : State) (path : ℝ → State) (a d ell H : ℝ) {radius : ℝ} (hradius : 0 < radius)
    (hvariation : a ≠ 0 ∨ d < 0)
    (hadmissible : ∀ e, |e| < radius → step x (path e))
    (haccount : ∀ e, |e| < radius → value (path e) - value x = increment a d ell H e) :
    HasDescent step value x := by
  obtain ⟨e, _he0, hre, _hden, hlt⟩ := (small_rayleigh_descent_iff a d ell H hradius).2 hvariation
  refine ⟨path e, hadmissible e hre, ?_⟩
  exact sub_neg.mp ((haccount e hre).trans_lt hlt)

end FormalResearch.RiemannHypothesis.BranchDescentWitness
```
