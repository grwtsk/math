/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficCheckedOptimization
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic

/-!
# Erasing nonnegative certified cycles without an extra shortening axiom

Every original certified transition has an exact signed readout return and
nonnegative allowance. A finite walk is represented here with its original
source, target, label, edge proof and intermediate vertices. This is an internal
witness for the existing `CertifiedTrace`, not a substitute edge language.

We construct a no-repeat source-to-target subwalk by deleting loops, each of
which has a nonnegative allowance. Every finite certified trace has a typed
walk witness; the new walk returns to the ORIGINAL `CertifiedTrace` with the
same endpoints, no larger allowance, and the SAME signed endpoint defect.

NoRepeat implies the list of all visited vertices is duplicate-free, so its
length is at most the original finite-state cardinality. This DISCHARGES the
`FiniteRationalCertifiedGraph.CardinalityReduction` premise without adding a
new geometric, arithmetic, physical or graph-search hypothesis.

The existing rational, decidable, finite-label presentation still supplies
exhaustive bounded enumeration. Finiteness of vertices alone does not make
arbitrary analytic/PDE source states finite, and a candidate or admissible
transition does not become a lower/certified edge.

The source includes no sorry or new axioms. Source publication is separate
from native Lean compilation, fresh kernel replay and axiom audit.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCycleErasure

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCheckedOptimization
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge

universe u v w z

/-- A TYPE-valued witness for the original PROP-valued `CertifiedTrace`.
Every edge retains its actual lower-relation proof and its original label.
The extra data makes internal vertices accessible to structural loop erasure. -/
inductive CertifiedWalk {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) : Vertex → Vertex → Type (max u v) where
  | stop (source : Vertex) : CertifiedWalk M source source
  | push (source middle target : Vertex) (label : Label)
      (edge : M.sandwich.lower source label middle)
      (tail : CertifiedWalk M middle target) : CertifiedWalk M source target

namespace CertifiedWalk

variable {Vertex : Type u} {Label : Type v}
  {M : DefectSoficSystem Vertex Label}

/-- Exact ordered original labels; no symbol equivalence or deduplication. -/
def word : {s t : Vertex} → CertifiedWalk M s t → List Label
  | _, _, .stop _ => []
  | _, _, .push _ _ _ label _ tail => label :: tail.word

/-- Original intermediate states INCLUDING both endpoints. -/
def vertices : {s t : Vertex} → CertifiedWalk M s t → List Vertex
  | _, _, .stop s => [s]
  | _, _, .push s _ _ _ _ tail => s :: tail.vertices

/-- Additive REAL signed defect of the same original edges. -/
def defect : {s t : Vertex} → CertifiedWalk M s t → ℝ
  | _, _, .stop _ => 0
  | _, _, .push s m _ label _ tail => M.edgeDefect s label m + tail.defect

/-- Additive REAL nonnegative allowance of the same original edges. -/
def allowance : {s t : Vertex} → CertifiedWalk M s t → ℝ
  | _, _, .stop _ => 0
  | _, _, .push s m _ label _ tail => M.edgeAllowance s label m + tail.allowance

/-- Internal definition of a simple directed path (the terminal vertex also
counts as visited). No assumption about symmetry or reversibility of edges. -/
def NoRepeat : {s t : Vertex} → CertifiedWalk M s t → Prop
  | _, _, .stop _ => True
  | _, _, .push s _ _ _ _ tail => s ∉ tail.vertices ∧ tail.NoRepeat

/-- Every constructed walk returns an actual original, signed certified trace. -/
def toTrace : ∀ {s t : Vertex}, (walk : CertifiedWalk M s t) →
    CertifiedTrace M s walk.word t walk.defect walk.allowance
  | _, _, .stop s => CertifiedTrace.nil s
  | _, _, .push _ _ _ _ edge tail => CertifiedTrace.cons edge tail.toTrace

/-- A simple walk has no repeated state in its exact state sequence. -/
theorem nodup_of_noRepeat : ∀ {s t : Vertex} (walk : CertifiedWalk M s t),
    walk.NoRepeat → walk.vertices.Nodup := by
  intro s t walk
  induction walk with
  | stop source =>
      intro _
      simp [vertices]
  | push source middle target label edge tail ih =>
      intro h
      change source ∉ tail.vertices ∧ tail.NoRepeat at h
      change (source :: tail.vertices).Nodup
      exact List.nodup_cons.mpr ⟨h.1, ih h.2⟩

/-- A directed walk with n edges visits exactly n+1 listed states. -/
theorem vertices_length : ∀ {s t : Vertex} (walk : CertifiedWalk M s t),
    walk.vertices.length = walk.word.length + 1 := by
  intro s t walk
  induction walk with
  | stop source => rfl
  | push source middle target label edge tail ih =>
      change (source :: tail.vertices).length =
        (label :: tail.word).length + 1
      simp only [List.length_cons]
      omega

/-- Every simple certified word on finite states is STRICTLY shorter than
number of states: its endpoint is included in the no-repeat state list. -/
theorem word_length_lt_card [Fintype Vertex]
    {s t : Vertex} (walk : CertifiedWalk M s t) (h : walk.NoRepeat) :
    walk.word.length < Fintype.card Vertex := by
  have hnodup : walk.vertices.Nodup := walk.nodup_of_noRepeat h
  have hcard : walk.vertices.length ≤ Fintype.card Vertex :=
    List.Nodup.length_le_card hnodup
  have hlen := walk.vertices_length
  omega

/-- On a simple path, a suffix beginning at ANY actually visited state
is still simple, and costs no more than the original path. A deleted prefix
can never require a negative cost because all ORIGINAL edge allowances
are proved nonnegative by `DefectSoficSystem`. -/
theorem suffix_of_mem : ∀ {s t : Vertex} (walk : CertifiedWalk M s t),
    ∀ {v : Vertex}, v ∈ walk.vertices → walk.NoRepeat →
      ∃ suffix : CertifiedWalk M v t,
        suffix.NoRepeat ∧ suffix.allowance ≤ walk.allowance := by
  intro s t walk
  induction walk with
  | stop source =>
      intro v hv _
      have heq : v = source := by simpa [vertices] using hv
      subst v
      exact ⟨.stop source, trivial, le_refl _⟩
  | push source middle target label edge tail ih =>
      intro v hv hsimple
      change v ∈ source :: tail.vertices at hv
      change source ∉ tail.vertices ∧ tail.NoRepeat at hsimple
      rcases List.mem_cons.mp hv with heq | htail
      · subst v
        exact ⟨.push source middle target label edge tail,
          ⟨hsimple.1, hsimple.2⟩, le_refl _⟩
      · obtain ⟨suffix, hsimple', hcost⟩ := ih htail hsimple.2
        refine ⟨suffix, hsimple', ?_⟩
        change suffix.allowance ≤ M.edgeAllowance source label middle + tail.allowance
        have hedge := M.edgeAllowance_nonneg edge
        linarith

/-- The cycle-removal algorithm is proved by induction on the ORIGINAL
walk. First erase loops in its tail. If its initial state reappears in the
simple tail, discard the whole prefix up to that state; otherwise prepend
the actual original edge. Every deleted segment has nonnegative cost.
No artificial transition is introduced, and endpoint/label data of the
remaining edges is preserved. -/
theorem simple_subwalk : ∀ {s t : Vertex} (walk : CertifiedWalk M s t),
    ∃ shorter : CertifiedWalk M s t,
      shorter.NoRepeat ∧ shorter.allowance ≤ walk.allowance := by
  classical
  intro s t walk
  induction walk with
  | stop source =>
      exact ⟨.stop source, trivial, le_refl _⟩
  | push source middle target label edge tail ih =>
      obtain ⟨simpleTail, hsimple, hcost⟩ := ih
      by_cases hmem : source ∈ simpleTail.vertices
      · obtain ⟨suffix, hs, hb⟩ :=
          simpleTail.suffix_of_mem hmem hsimple
        refine ⟨suffix, hs, ?_⟩
        change suffix.allowance ≤
          M.edgeAllowance source label middle + tail.allowance
        have hedge := M.edgeAllowance_nonneg edge
        linarith
      · refine ⟨.push source middle target label edge simpleTail,
          ⟨hmem, hsimple⟩, ?_⟩
        change M.edgeAllowance source label middle + simpleTail.allowance ≤
          M.edgeAllowance source label middle + tail.allowance
        exact add_le_add_left hcost _

end CertifiedWalk

/-- Every original PROP-valued certified trace has an original TYPE-valued
walk witness. This induction stays entirely inside Prop (an existential):
it does not illegally eliminate an arbitrary proof into computational data.
The original word, signed defect and real allowance are recovered EXACTLY. -/
theorem walk_of_certified_trace
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {s t : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M s word t defect allowance) :
    ∃ walk : CertifiedWalk M s t,
      walk.word = word ∧ walk.defect = defect ∧ walk.allowance = allowance := by
  induction trace with
  | nil vertex =>
      exact ⟨.stop vertex, rfl, rfl, rfl⟩
  | @cons source middle target label word defect allowance edge tail ih =>
      obtain ⟨walk, hw, hd, hb⟩ := ih
      refine ⟨.push source middle target label edge walk, ?_, ?_, ?_⟩
      · change label :: walk.word = label :: word
        rw [hw]
      · change M.edgeDefect source label middle + walk.defect =
          M.edgeDefect source label middle + defect
        rw [hd]
      · change M.edgeAllowance source label middle + walk.allowance =
          M.edgeAllowance source label middle + allowance
        rw [hb]

/-- UNCONDITIONAL cycle erasure for the actual `CertifiedTrace`: finite
vertices and the system's ALREADY PROVED nonnegative lower-edge allowances
suffice. The shortened path is a genuine certified path, not a candidate.
It retains the EXACT signed endpoint defect, although its word and allowance
may be smaller; there is no claim that the erased word equals the old word. -/
theorem certifiedTrace_cycle_erase
    {Vertex : Type u} {Label : Type v} [Fintype Vertex]
    (M : DefectSoficSystem Vertex Label)
    {s t : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M s word t defect allowance) :
    ∃ (shortWord : List Label) (shortDefect shortAllowance : ℝ),
      CertifiedTrace M s shortWord t shortDefect shortAllowance ∧
      shortWord.length < Fintype.card Vertex ∧
      shortAllowance ≤ allowance ∧ shortDefect = defect := by
  obtain ⟨walk, hw, hd, hb⟩ := walk_of_certified_trace trace
  obtain ⟨shorter, hsimple, hbudget⟩ := walk.simple_subwalk
  refine ⟨shorter.word, shorter.defect, shorter.allowance,
    shorter.toTrace, shorter.word_length_lt_card hsimple, ?_, ?_⟩
  · calc
      shorter.allowance ≤ walk.allowance := hbudget
      _ = allowance := hb
  · have h₁ := trace.exact_and_bounded.1
    have h₂ := shorter.toTrace.exact_and_bounded.1
    linarith

/-- The old `CardinalityReduction` field is now a THEOREM, not an extra
assumption, for EVERY finite original certified graph with nonnegative
edge allowances. No polynomial-time shortest-path bound is claimed:
bounded exhaustive enumeration can still be exponential. -/
theorem FiniteRationalCertifiedGraph.cardinalityReduction
    {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    (G : FiniteRationalCertifiedGraph Vertex Label) (s t : Vertex) :
    G.CardinalityReduction s t := by
  intro word defect allowance trace
  obtain ⟨w, d, b, shorter, hlen, hbudget, _⟩ :=
    certifiedTrace_cycle_erase G.system trace
  exact ⟨w, d, b, shorter, Nat.le_of_lt hlen, hbudget⟩

/-- MAIN CONSUMER: no external shortening witness or supplied catalogue.
Original lower-edge decidability, finite states/labels, exact rational costs
and actual source-target reachability are retained as explicit hypotheses. -/
theorem FiniteRationalCertifiedGraph.optimized_eq_infimum_unconditional
    {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    [DecidableEq Vertex] [DecidableEq Label]
    (G : FiniteRationalCertifiedGraph Vertex Label) (s t : Vertex)
    (hroute : (CertifiedAllowanceSet G.system s t).Nonempty) :
    (((G.completeCoverage s t hroute (G.cardinalityReduction s t)).optimizedCost : ℚ) : ℝ) =
      optimalCertifiedBudget G.system hroute := by
  exact G.optimized_eq_infimum s t hroute (G.cardinalityReduction s t)

/-- Reuses the original checked-application system: the globally optimal
actual word is annotated with a typed application whose EVERY premise is
discharged for each original certified edge. Candidate edges cannot qualify. -/
theorem CheckedFiniteRationalGraph.optimized_proof_without_reduction_premise
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    [Fintype Vertex] [Fintype Label]
    [DecidableEq Vertex] [DecidableEq Label]
    (D : CheckedFiniteRationalGraph Atom Meaning Vertex Label) (s t : Vertex)
    (hroute : (CertifiedAllowanceSet D.checked.quantitative s t).Nonempty) :
    ∃ r : RationalCertifiedRoute D.checked.quantitative s t,
      AppliedWord D.checked s r.word t ∧
      D.checked.quantitative.readout s =
        D.checked.quantitative.readout t + r.defect ∧
      |r.defect| ≤ r.allowance ∧
      ((r.rationalCost : ℚ) : ℝ) =
        optimalCertifiedBudget D.checked.quantitative hroute := by
  exact D.optimized_proof_and_bound s t hroute
    (D.presentation.cardinalityReduction s t)

/-- The immutable source retains its INITIAL readout defect plus the
computed optimal allowance. No physical data or arithmetic term is dropped.
The source-to-finite-graph equality remains an explicit hypothesis. -/
theorem SourceAnchored.finite_optimized_return_without_reduction_premise
    {Source : Type z} {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    [DecidableEq Vertex] [DecidableEq Label]
    (A : SourceAnchored Source Vertex Label)
    (G : FiniteRationalCertifiedGraph Vertex Label)
    (hG : G.system = A.system) (x : Source) (t : Vertex)
    (hroute : (CertifiedAllowanceSet G.system (A.encode x) t).Nonempty) :
    |A.original x - A.system.readout t| ≤
      A.initialAllowance x +
        ((G.completeCoverage (A.encode x) t hroute
          (G.cardinalityReduction (A.encode x) t)).optimizedCost : ℝ) := by
  exact A.automatic_finite_source_return G hG x t hroute
    (G.cardinalityReduction (A.encode x) t)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCycleErasure
