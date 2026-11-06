/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Source APIs inspected at grwtsk/math e90b10114023c691744f1f6c2b5583850126a31b.
Complex norm APIs inspected at mathlib4 d13f23b723b8a846827a245b89c10fc7d3f11612.
-/
import GRWTSK.Combinatorics.GraphTheory.ProbeSoficYoneda
import Mathlib.Analysis.Complex.Basic

/-!
# Complex observation return along an existing certified sofic word

The probes are all unit complex phases.  For a complex observation `z`, the
probe at `u` is `Re (conj u * z)`.  Its absolute value is at most `‖z‖`, and
the family recovers the norm with no loss: a phase in the direction of a
nonzero discrepancy attains its norm.  The zero discrepancy is treated using
the phase `1`, which also rules out a negative proposed allowance.  This is
ordinary complex norm duality; it needs no zero exclusion for the original
arithmetic or analytic source.

The graph, labels, certified lower edges and `WordPath` are exactly those of
`ProbeSoficYoneda` and `DefectEnrichedSoficLanguage`.  `word_error_bound`
evaluates ONE preexisting word path at every point and phase, then uses the
existing `CertifiedTrace.allowance_le_length`.  `trace_budget` consumes sharper
explicit trace allowances on a fixed word.  Neither theorem constructs a
small allowance or an arithmetic-to-analytic comparison.

For the zeta/Weil consumer, `Point` can be a boundary point and the immutable
complex observations can be the actual zeta source, its Euler--Maclaurin
approximant, and the existing finite spectral product.  A certified first
edge can pay the genuine-source approximation error.  A second edge MUST pay
the approximation-to-product mismatch.  Its bound remains an independent
obligation.  A finite graph does not make the phase or boundary probe family
finite, and a finite-height word does not imply a uniform all-height family.

This module is a reusable conditional source candidate.  It claims neither
full categorical Yoneda, graph completeness, zero exclusion, RH nor GRH.
No compilation, fresh kernel replay, transitive axiom audit or independent
mathematical review has been run for these declarations.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComplexProbeSoficReturn

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ProbeSoficYoneda
open scoped ComplexConjugate

universe u v w

/-- The full circle of unit phases, not an assumed finite complete probe set. -/
abbrev UnitPhase := {u : ℂ // ‖u‖ = 1}

/-- A real directional observation of the actual complex source value. -/
def phaseReadout (u : UnitPhase) (z : ℂ) : ℝ :=
  (conj (u : ℂ) * z).re

/-- The phase `1` exists even when the source discrepancy vanishes. -/
def phaseOne : UnitPhase := ⟨1, norm_one⟩

@[simp]
theorem phaseReadout_zero (u : UnitPhase) : phaseReadout u 0 = 0 := by
  simp [phaseReadout]

@[simp]
theorem phaseReadout_one (z : ℂ) : phaseReadout phaseOne z = z.re := by
  simp [phaseReadout, phaseOne]

/-- Directional observations preserve the exact signed source difference. -/
theorem phaseReadout_sub (u : UnitPhase) (z w : ℂ) :
    phaseReadout u (z - w) = phaseReadout u z - phaseReadout u w := by
  simp only [phaseReadout, mul_sub, Complex.sub_re]

/-- Passing to a unit directional probe incurs no extra multiplicative loss. -/
theorem abs_phaseReadout_le_norm (u : UnitPhase) (z : ℂ) :
    |phaseReadout u z| ≤ ‖z‖ := by
  calc
    |phaseReadout u z| ≤ ‖conj (u : ℂ) * z‖ := Complex.abs_re_le_norm _
    _ = ‖z‖ := by rw [norm_mul, Complex.norm_conj, u.property, one_mul]

/-- A bound for all unit probes must be nonnegative, including for `z = 0`. -/
theorem unit_probe_bound_nonneg {z : ℂ} {B : ℝ}
    (h : ∀ u : UnitPhase, |phaseReadout u z| ≤ B) : 0 ≤ B :=
  (abs_nonneg (phaseReadout phaseOne z)).trans (h phaseOne)

/-- Sharp complex norm duality.  No nonvanishing premise is imposed on `z`
or on an analytic source from which `z` may have been formed. -/
theorem norm_le_of_unit_probes {z : ℂ} {B : ℝ}
    (h : ∀ u : UnitPhase, |phaseReadout u z| ≤ B) : ‖z‖ ≤ B := by
  by_cases hz : z = 0
  · simpa only [hz, norm_zero] using unit_probe_bound_nonneg h
  · obtain ⟨c, hc, hcz⟩ := Complex.exists_norm_eq_mul_self z
    let u : UnitPhase := ⟨conj c, by simpa only [Complex.norm_conj] using hc⟩
    have hread : phaseReadout u z = ‖z‖ := by
      change (conj (conj c) * z).re = ‖z‖
      simpa using congrArg Complex.re hcz.symm
    simpa only [hread, abs_of_nonneg (norm_nonneg z)] using h u

/-- The statement is valid for arbitrary real `B`; a negative budget makes
both sides false, rather than being silently admitted when `z = 0`. -/
theorem norm_le_iff_unit_probes {z : ℂ} {B : ℝ} :
    ‖z‖ ≤ B ↔ ∀ u : UnitPhase, |phaseReadout u z| ≤ B := by
  constructor
  · intro h u
    exact (abs_phaseReadout_le_norm u z).trans h
  · exact norm_le_of_unit_probes

/-- A single real-part probe cannot recover a complex source value. -/
theorem real_probe_misses_imaginary :
    phaseReadout phaseOne Complex.I = 0 ∧ ‖Complex.I‖ = 1 := by
  simp

/-- Construct the existing probe system from genuine complex edge bounds.
The supplied sandwich and all its states and labels remain unchanged.
Proving `hedge` is precisely the application-specific source comparison. -/
def ofNormBounds {Vertex : Type u} {Label : Type v} {Point : Type w}
    (sandwich : LabeledSandwich Vertex Label)
    (observation : Vertex → Point → ℂ)
    (allowance : Point → Vertex → Label → Vertex → ℝ)
    (hnonneg : ∀ (p : Point) {source target : Vertex} {label : Label},
      sandwich.lower source label target → 0 ≤ allowance p source label target)
    (hedge : ∀ (p : Point) {source target : Vertex} {label : Label},
      sandwich.lower source label target →
        ‖observation source p - observation target p‖ ≤ allowance p source label target) :
    ProbeSoficSystem Vertex Label (Point × UnitPhase) where
  sandwich := sandwich
  value p vertex := phaseReadout p.2 (observation vertex p.1)
  signed p source _label target :=
    phaseReadout p.2 (observation source p.1 - observation target p.1)
  allowance p source label target := allowance p.1 source label target
  edgeReturn := by
    intro p source target label h
    rw [phaseReadout_sub]
    ring
  edgeNonneg := by
    intro p source target label h
    exact hnonneg p.1 h
  edgeBound := by
    intro p source target label h
    exact (abs_phaseReadout_le_norm p.2 _).trans (hedge p.1 h)

/-- Recover a complex error bound from independently supplied certified trace
allowances, preserving the same endpoint, word and complex observation map.
The trace witnesses and their signed defects may depend on point and phase;
no global bound is inferred from graph finiteness or from probe separation. -/
theorem trace_budget
    {Vertex : Type u} {Label : Type v} {Point : Type w}
    (M : ProbeSoficSystem Vertex Label (Point × UnitPhase))
    (observation : Vertex → Point → ℂ)
    (hvalue : ∀ (p : Point × UnitPhase) (vertex : Vertex),
      M.value p vertex = phaseReadout p.2 (observation vertex p.1))
    {source target : Vertex} {word : List Label} {B : Point → ℝ}
    (htrace : ∀ (s : Point) (u : UnitPhase), ∃ defect allowance : ℝ,
      CertifiedTrace (M.toScalar (s, u)) source word target defect allowance ∧
        allowance ≤ B s) :
    ∀ s : Point, ‖observation source s - observation target s‖ ≤ B s := by
  intro s
  apply norm_le_of_unit_probes
  intro u
  obtain ⟨defect, allowance, trace, hbudget⟩ := htrace s u
  obtain ⟨hreturn, _hnonneg, hbound⟩ := trace.exact_and_bounded
  have hreturn' : phaseReadout u (observation source s) =
      phaseReadout u (observation target s) + defect := by
    change M.value (s, u) source = M.value (s, u) target + defect at hreturn
    simpa only [hvalue] using hreturn
  have hdefect : phaseReadout u (observation source s - observation target s) =
      defect := by
    rw [phaseReadout_sub]
    linarith only [hreturn']
  calc
    |phaseReadout u (observation source s - observation target s)| = |defect| := by
      rw [hdefect]
    _ ≤ allowance := hbound
    _ ≤ B s := hbudget

/-- A fixed preexisting word path and an independently proved uniform budget
on its certified traces return a complex norm bound for all point probes.
This uses the existing `all_probe_returns`, without replacing its path
semantics or making a new path choice for each probe. -/
theorem path_budget_bound
    {Vertex : Type u} {Label : Type v} {Point : Type w}
    (M : ProbeSoficSystem Vertex Label (Point × UnitPhase))
    (observation : Vertex → Point → ℂ)
    (hvalue : ∀ (p : Point × UnitPhase) (vertex : Vertex),
      M.value p vertex = phaseReadout p.2 (observation vertex p.1))
    {source target : Vertex} {word : List Label} {B : Point → ℝ}
    (path : WordPath M.sandwich.lower source word target)
    (hbudget : ∀ (s : Point) (u : UnitPhase) {defect allowance : ℝ},
      CertifiedTrace (M.toScalar (s, u)) source word target defect allowance →
        allowance ≤ B s) :
    ∀ s : Point, ‖observation source s - observation target s‖ ≤ B s := by
  apply trace_budget M observation hvalue
  intro s u
  obtain ⟨defect, allowance, trace, _hreturn, _hnonneg, _hbound⟩ :=
    M.all_probe_returns path (s, u)
  exact ⟨defect, allowance, trace, hbudget s u trace⟩

/-- One word is fixed BEFORE all point and phase probes.  A proved per-edge
allowance gives the existing length budget.  The numerical product can grow
with word length; this theorem supplies no automatic smallness or coverage. -/
theorem word_error_bound
    {Vertex : Type u} {Label : Type v} {Point : Type w}
    (M : ProbeSoficSystem Vertex Label (Point × UnitPhase))
    (observation : Vertex → Point → ℂ)
    (hvalue : ∀ (p : Point × UnitPhase) (vertex : Vertex),
      M.value p vertex = phaseReadout p.2 (observation vertex p.1))
    {source target : Vertex} {word : List Label} {ε : Point → ℝ}
    (path : WordPath M.sandwich.lower source word target)
    (hedge : ∀ (p : Point × UnitPhase) {s t : Vertex} {label : Label},
      M.sandwich.lower s label t → M.allowance p s label t ≤ ε p.1) :
    ∀ s : Point,
      ‖observation source s - observation target s‖ ≤ (word.length : ℝ) * ε s := by
  apply path_budget_bound M observation hvalue path
  intro s u defect allowance trace
  exact CertifiedTrace.allowance_le_length
    (M := M.toScalar (s, u)) (by
      intro a b label edge
      exact hedge (s, u) edge) trace

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComplexProbeSoficReturn
