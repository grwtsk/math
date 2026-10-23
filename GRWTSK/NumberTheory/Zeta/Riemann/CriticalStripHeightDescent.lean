/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaCommutatorRoot
import GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion

set_option autoImplicit false

/-!
# Height-local restriction, gluing, and shell descent

Issues #225/#229/#231/#232/#234 require local proof obligations, not an assumption
that every bounded chart already implies global RH. This file uses the existing
concrete commutator root and the existing `BoundedHeightCriterion`; it neither chooses
a new zeta normalization nor replaces the canonical target.

`RHOn U` is the actual zero statement restricted to `U`. Restriction is one-way along
inclusion. Gluing requires coverage of every target zero, not pairwise equivalences
between whole chart propositions. This is logical localization of a fixed predicate,
not a sheaf of holomorphic functions or an analytic continuation theorem.

The signed root readout remains `Im z`. Windows use its absolute value and exhaust
both half-planes. Their natural cutoff is not a new point height or a chart-anchor
height. A successor proof requires a theorem for the new shell. No shell theorem,
zero enumeration, multiplicity theorem, analytic tail, or spectral realization is
constructed here. All declarations remain source-only until exact replay.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

/-- The canonical RH zero condition restricted to an actual set of complex points. -/
def RHOn (U : Set ℂ) : Prop :=
  ∀ z : ℂ, z ∈ U → NontrivialZetaZero z → z.re = 1 / 2

/-- Local statements restrict to smaller carriers; no reverse implication is inferred. -/
theorem rhOn_restrict {U V : Set ℂ} (hVU : V ⊆ U) (hU : RHOn U) : RHOn V := by
  intro z hz hzero
  exact hU z (hVU hz) hzero

/-- A zero-cover glues the exact restricted statement. Coverage is only required on
canonical target zeros, but it must be proved for all such zeros in the target set.
An empty local carrier is harmless; it cannot manufacture the coverage premise. -/
theorem rhOn_iff_on_zero_cover {ι : Type*} {U : Set ℂ}
    (V : ι → Set ℂ) (hsub : ∀ i, V i ⊆ U)
    (hcover : ∀ z, z ∈ U → NontrivialZetaZero z → ∃ i, z ∈ V i) :
    RHOn U ↔ ∀ i, RHOn (V i) := by
  constructor
  · intro hU i
    exact rhOn_restrict (hsub i) hU
  · intro hlocal z hz hzero
    obtain ⟨i, hi⟩ := hcover z hz hzero
    exact hlocal i z hi hzero

/-- Binary gluing illustrates the distinction from a global statement-equivalence
transition: both local pieces, not either one alone, supply the union statement. -/
theorem rhOn_union_iff (U V : Set ℂ) :
    RHOn (U ∪ V) ↔ RHOn U ∧ RHOn V := by
  constructor
  · intro h
    exact ⟨fun z hz hzero => h z (Or.inl hz) hzero,
      fun z hz hzero => h z (Or.inr hz) hzero⟩
  · rintro ⟨hU, hV⟩ z (hz | hz) hzero
    · exact hU z hz hzero
    · exact hV z hz hzero

/-- Signed commutator height is used without projecting the complex source point. -/
def heightWindow (N : ℕ) : Set ℂ :=
  {z | |ZetaCommutatorRoot.root.heightAt z| ≤ (N : ℝ)}

/-- The bounded local RH statement over the fixed concrete root. -/
def WindowRH (N : ℕ) : Prop :=
  RHOn (heightWindow N)

/-- The bounded root statement is exactly the existing bounded-height statement. -/
theorem windowRH_iff_rhThrough (N : ℕ) :
    WindowRH N ↔ GRWTSK.NumberTheory.Zeta.Riemann.RHThrough N := by
  constructor
  · intro h z hzero hheight
    exact h z (by
      change |ZetaCommutatorRoot.root.heightAt z| ≤ (N : ℝ)
      simpa only [ZetaCommutatorRoot.heightAt_eq_im] using hheight) hzero
  · intro h z hheight hzero
    apply h z hzero
    change |ZetaCommutatorRoot.root.heightAt z| ≤ (N : ℝ) at hheight
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using hheight

/-- Each window has an ambient point; no unproved zero-existence premise is used. -/
theorem heightWindow_nonempty (N : ℕ) : (heightWindow N).Nonempty := by
  refine ⟨0, ?_⟩
  change |ZetaCommutatorRoot.root.heightAt (0 : ℂ)| ≤ (N : ℝ)
  rw [ZetaCommutatorRoot.heightAt_eq_im]
  simp

/-- All complex source points, hence all canonical target zeros, are covered. -/
theorem heightWindows_cover (z : ℂ) : ∃ N : ℕ, z ∈ heightWindow N := by
  obtain ⟨N, hN⟩ := exists_nat_gt |ZetaCommutatorRoot.root.heightAt z|
  exact ⟨N, hN.le⟩

/-- Larger windows restrict to smaller windows, with the cutoff inequality explicit. -/
theorem windowRH_mono {M N : ℕ} (hN : WindowRH N) (hMN : M ≤ N) :
    WindowRH M := by
  apply rhOn_restrict (U := heightWindow N) (V := heightWindow M) _ hN
  intro z hz
  change |ZetaCommutatorRoot.root.heightAt z| ≤ (M : ℝ) at hz
  change |ZetaCommutatorRoot.root.heightAt z| ≤ (N : ℝ)
  exact hz.trans (by exact_mod_cast hMN)

/-- Reuse the repository's canonical all-height criterion, not a new terminal axiom. -/
theorem all_windowRH_iff_rh :
    (∀ N : ℕ, WindowRH N) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h
    apply GRWTSK.NumberTheory.Zeta.Riemann.riemannHypothesis_iff_all_heights.mpr
    intro N
    exact (windowRH_iff_rhThrough N).mp (h N)
  · intro hrh N
    apply (windowRH_iff_rhThrough N).mpr
    exact GRWTSK.NumberTheory.Zeta.Riemann.riemannHypothesis_iff_all_heights.mp hrh N

/-- A bounded chart carries the necessary direction only. No assertion is made that
its unprovided forward implication is false or independent of RH. -/
def windowProfile (N : ℕ) : LocalRHProfile (WindowRH N) :=
  LocalRHProfile.ofNecessary (fun hrh => all_windowRH_iff_rh.mpr hrh N)

@[simp] theorem windowProfile_status (N : ℕ) :
    (windowProfile N).status = .necessary := rfl

/-- Only the all-height local section is classified as equivalent here. -/
def allWindowsProfile : LocalRHProfile (∀ N : ℕ, WindowRH N) :=
  LocalRHProfile.ofEquivalence all_windowRH_iff_rh

@[simp] theorem allWindowsProfile_status :
    allWindowsProfile.status = .equivalent := rfl

/-- The new region between consecutive windows, with both endpoints explicit. -/
def heightShell (N : ℕ) : Set ℂ :=
  {z | (N : ℝ) < |ZetaCommutatorRoot.root.heightAt z| ∧
    |ZetaCommutatorRoot.root.heightAt z| ≤ ((N + 1 : ℕ) : ℝ)}

/-- Exact new proof obligation at one upward step. -/
def ShellRH (N : ℕ) : Prop := RHOn (heightShell N)

/-- Enlarging a window is equivalent to retaining the old proof and supplying the new
shell proof. Height monotonicity alone does not supply the latter. -/
theorem window_succ_iff (N : ℕ) :
    WindowRH (N + 1) ↔ WindowRH N ∧ ShellRH N := by
  constructor
  · intro h
    constructor
    · exact windowRH_mono h (Nat.le_succ N)
    · intro z hz hzero
      exact h z hz.2 hzero
  · rintro ⟨hN, hShell⟩ z hz hzero
    change |ZetaCommutatorRoot.root.heightAt z| ≤ ((N + 1 : ℕ) : ℝ) at hz
    by_cases hlow : |ZetaCommutatorRoot.root.heightAt z| ≤ (N : ℝ)
    · exact hN z hlow hzero
    · exact hShell z ⟨lt_of_not_ge hlow, hz⟩ hzero

/-- An actual total shell-extension theorem gives vertical induction. The premise
states the missing local mathematical supplier rather than assuming global RH. -/
theorem rh_of_base_and_shell_extension (hbase : WindowRH 0)
    (extend : ∀ N : ℕ, WindowRH N → ShellRH N) :
    _root_.RiemannHypothesis := by
  apply all_windowRH_iff_rh.mp
  intro N
  induction N with
  | zero => exact hbase
  | succ N ih => exact (window_succ_iff N).mpr ⟨ih, extend N ih⟩

/-- The complete base-plus-shell family is an exact RH reformulation. This theorem
constructs neither its base proof nor any of its shell proofs. -/
theorem base_and_shells_iff_rh :
    (WindowRH 0 ∧ ∀ N : ℕ, ShellRH N) ↔ _root_.RiemannHypothesis := by
  constructor
  · rintro ⟨hbase, hshells⟩
    exact rh_of_base_and_shell_extension hbase (fun N _ => hshells N)
  · intro hrh
    have hall := all_windowRH_iff_rh.mpr hrh
    exact ⟨hall 0, fun N => ((window_succ_iff N).mp (hall (N + 1))).2⟩

/-- A chosen sequence of windows suffices only with an explicit unbounded coverage
premise. Repeated or bounded cutoffs cannot replace this premise by metadata. -/
theorem cofinal_windows_iff_rh (levels : ℕ → ℕ)
    (hcofinal : ∀ N : ℕ, ∃ n : ℕ, N ≤ levels n) :
    (∀ n : ℕ, WindowRH (levels n)) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h
    apply all_windowRH_iff_rh.mp
    intro N
    obtain ⟨n, hn⟩ := hcofinal N
    exact windowRH_mono (h n) hn
  · intro hrh n
    exact all_windowRH_iff_rh.mpr hrh (levels n)

/-- A bounded cutoff schedule is not cofinal. This is a cutoff counterexample, not a
claim that the canonical zeta function has an off-line or omitted zero. -/
theorem bounded_levels_not_cofinal (levels : ℕ → ℕ) (B : ℕ)
    (hbounded : ∀ n, levels n ≤ B) :
    ¬ (∀ N : ℕ, ∃ n : ℕ, N ≤ levels n) := by
  intro h
  obtain ⟨n, hn⟩ := h (B + 1)
  have hbad : B + 1 ≤ B := hn.trans (hbounded n)
  omega

/-- A finite-height family does not cover the full ambient parameter space. The
witness is only a complex point; no zero predicate is asserted for it. -/
theorem bounded_windows_miss_point (B : ℕ) :
    ∃ z : ℂ, ∀ N : ℕ, N ≤ B → z ∉ heightWindow N := by
  refine ⟨⟨0, (B : ℝ) + 1⟩, ?_⟩
  intro N hNB hz
  change |ZetaCommutatorRoot.root.heightAt ⟨0, (B : ℝ) + 1⟩| ≤ (N : ℝ) at hz
  rw [ZetaCommutatorRoot.heightAt_eq_im] at hz
  change |(B : ℝ) + 1| ≤ (N : ℝ) at hz
  have hnonneg : (0 : ℝ) ≤ (B : ℝ) + 1 := by positivity
  rw [abs_of_nonneg hnonneg] at hz
  have hNBreal : (N : ℝ) ≤ (B : ℝ) := by exact_mod_cast hNB
  linarith

/-- Equal readout heights do not identify full complex coordinates. -/
theorem root_height_not_injective :
    ¬ Function.Injective ZetaCommutatorRoot.root.heightAt := by
  intro h
  have heq : ZetaCommutatorRoot.root.heightAt (0 : ℂ) =
      ZetaCommutatorRoot.root.heightAt (1 : ℂ) := by
    rw [ZetaCommutatorRoot.heightAt_eq_im, ZetaCommutatorRoot.heightAt_eq_im]
    norm_num
  exact zero_ne_one (h heq)

/-- The coordinate image consists of upper shifts whose pairwise products vanish.
The noncommutative represented algebra does not make this coordinate a ring map. -/
theorem coordinateOperator_mul (z w : ℂ) :
    ZetaCommutatorRoot.coordinateOperator z *
      ZetaCommutatorRoot.coordinateOperator w = 0 := by
  apply LinearMap.ext
  intro v
  ext <;> simp [ZetaCommutatorRoot.coordinateOperator, Module.End.mul_apply]

/-- A nonzero upper-shift fixture for the failure of multiplicativity. -/
theorem coordinateOperator_one_ne_zero :
    ZetaCommutatorRoot.coordinateOperator 1 ≠ 0 := by
  intro h
  have hAt := congrArg
    (fun T : ZetaCommutatorRoot.Operator => (T ((0 : ℂ), (1 : ℂ))).1) h
  have hone : (1 : ℂ) = 0 := by
    simp [ZetaCommutatorRoot.coordinateOperator] at hAt
  exact one_ne_zero hone

/-- The chosen parameter coordinate cannot be promoted to a multiplicative map. -/
theorem coordinateOperator_not_multiplicative :
    ¬ (∀ z w : ℂ, ZetaCommutatorRoot.coordinateOperator (z * w) =
      ZetaCommutatorRoot.coordinateOperator z *
        ZetaCommutatorRoot.coordinateOperator w) := by
  intro h
  have hOne := h 1 1
  rw [one_mul, coordinateOperator_mul] at hOne
  exact coordinateOperator_one_ne_zero hOne

/-- In particular, no ring homomorphism has this exact underlying coordinate map. -/
theorem no_coordinate_ringHom :
    ¬ (∃ f : ℂ →+* ZetaCommutatorRoot.Operator,
      ∀ z : ℂ, f z = ZetaCommutatorRoot.coordinateOperator z) := by
  rintro ⟨f, hf⟩
  apply coordinateOperator_not_multiplicative
  intro z w
  rw [← hf (z * w), map_mul, hf z, hf w]

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
