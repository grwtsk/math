/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.DefectEnrichedSoficLanguage
import Mathlib.Tactic

/-!
# Probe-indexed error-enriched sofic return (Yoneda-style, no false faithfulness)

A SINGLE certified word is evaluated by ALL typed probes without changing the
original graph states or labels. Each probe pays its OWN exact signed defect and
its OWN proved nonnegative upper allowance. This is compatible with a family
of arithmetic, geometric or PDE scalar observations.

If the family of probes separates vertices and all these costs vanish, the
endpoints must agree. Without separation, equality of observations does not
imply source equality: the explicit Bool/Unit counterexample proves this.

The theorem is analogous to the faithfulness mechanism in Yoneda but NOT an
implementation of the full categorical Yoneda lemma, a complete finite probe
inventory, or a kernel-verified proof until native verification succeeds.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ProbeSoficYoneda

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

universe u v w

/-- Every observation probe sees the SAME certified graph, but each retains
an independent signed return and an independent numerical allowance. -/
structure ProbeSoficSystem (Vertex : Type u) (Label : Type v)
    (Probe : Type w) where
  sandwich : LabeledSandwich Vertex Label
  value : Probe → Vertex → ℝ
  signed : Probe → Vertex → Label → Vertex → ℝ
  allowance : Probe → Vertex → Label → Vertex → ℝ
  edgeReturn : ∀ (p : Probe) {source target : Vertex} {label : Label},
    sandwich.lower source label target →
      value p source = value p target + signed p source label target
  edgeNonneg : ∀ (p : Probe) {source target : Vertex} {label : Label},
    sandwich.lower source label target →
      0 ≤ allowance p source label target
  edgeBound : ∀ (p : Probe) {source target : Vertex} {label : Label},
    sandwich.lower source label target →
      |signed p source label target| ≤ allowance p source label target

/-- This is the existing, unchanged scalar error-sofic construction applied
to a particular typed probe, not another independent path semantics. -/
def ProbeSoficSystem.toScalar
    {Vertex : Type u} {Label : Type v} {Probe : Type w}
    (M : ProbeSoficSystem Vertex Label Probe) (p : Probe) :
    DefectSoficSystem Vertex Label where
  sandwich := M.sandwich
  readout := M.value p
  edgeDefect := M.signed p
  edgeAllowance := M.allowance p
  edgeReturn := by
    intro source target label h
    exact M.edgeReturn p h
  edgeAllowance_nonneg := by
    intro source target label h
    exact M.edgeNonneg p h
  edgeBound := by
    intro source target label h
    exact M.edgeBound p h

/-- ONE underlying certified word admits an independently paid quantitative
return for every probe. The choice of real defect can depend on the probe;
the state/word/path cannot silently change. -/
theorem ProbeSoficSystem.all_probe_returns
    {Vertex : Type u} {Label : Type v} {Probe : Type w}
    (M : ProbeSoficSystem Vertex Label Probe)
    {source target : Vertex} {word : List Label}
    (path : WordPath M.sandwich.lower source word target) :
    ∀ p : Probe, ∃ defect allowance : ℝ,
      CertifiedTrace (M.toScalar p) source word target defect allowance ∧
      M.value p source = M.value p target + defect ∧
      0 ≤ allowance ∧ |defect| ≤ allowance := by
  intro p
  obtain ⟨defect, allowance, trace⟩ :=
    exists_certifiedTrace (M := M.toScalar p) path
  obtain ⟨heq, hnonneg, hbound⟩ := trace.exact_and_bounded
  exact ⟨defect, allowance, trace, heq, hnonneg, hbound⟩

/-- Exact zero allowance for every CERTIFIED edge and every probe forces
equality of every component in the common source observation signature. -/
theorem ProbeSoficSystem.zero_budget_signature
    {Vertex : Type u} {Label : Type v} {Probe : Type w}
    (M : ProbeSoficSystem Vertex Label Probe)
    (hzero : ∀ (p : Probe) {source target : Vertex} {label : Label},
      M.sandwich.lower source label target →
        M.allowance p source label target = 0)
    {source target : Vertex} {word : List Label}
    (path : WordPath M.sandwich.lower source word target) :
    ∀ p : Probe, M.value p source = M.value p target := by
  intro p
  obtain ⟨defect, allowance, trace, heq, _, hbound⟩ :=
    M.all_probe_returns path p
  have hallow : allowance = 0 :=
    CertifiedTrace.zeroAllowance (M := M.toScalar p)
      (by
        intro s t label h
        exact hzero p h) trace
  have hdefect : defect = 0 := by
    apply abs_eq_zero.mp
    apply le_antisymm
    · simpa only [hallow] using hbound
    · exact abs_nonneg _
  simpa only [hdefect, add_zero] using heq

/-- A Yoneda-like separation *hypothesis* is needed: a finite family of
unfaithful probes cannot manufacture equality of original source states. -/
def ProbeSoficSystem.Separates
    {Vertex : Type u} {Label : Type v} {Probe : Type w}
    (M : ProbeSoficSystem Vertex Label Probe) : Prop :=
  ∀ a b : Vertex, (∀ p : Probe, M.value p a = M.value p b) → a = b

/-- A zero-cost certified word is an identity of source states only after
proving that the full selected observation signature separates states. -/
theorem ProbeSoficSystem.zero_budget_eq_of_separates
    {Vertex : Type u} {Label : Type v} {Probe : Type w}
    (M : ProbeSoficSystem Vertex Label Probe)
    (hzero : ∀ (p : Probe) {source target : Vertex} {label : Label},
      M.sandwich.lower source label target →
        M.allowance p source label target = 0)
    (hsep : M.Separates)
    {source target : Vertex} {word : List Label}
    (path : WordPath M.sandwich.lower source word target) :
    source = target :=
  hsep source target (M.zero_budget_signature hzero path)

/-- A genuine obstruction to treating a single finite probe as Yoneda-complete:
two distinct Boolean states have the identical constant scalar signature. -/
theorem constant_probe_not_separating :
    ¬ Function.Injective (fun (_ : Bool) => fun (_ : Unit) => (0 : ℝ)) := by
  intro hinj
  have contradiction : (false : Bool) = true := hinj rfl
  cases contradiction

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ProbeSoficYoneda
