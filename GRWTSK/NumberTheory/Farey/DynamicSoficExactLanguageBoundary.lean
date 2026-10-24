/-
Copyright (c) 2026 grwtsk contributors. MIT.
Upstream Mathlib and repository authorship is retained.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No root import before exact pinned Lean compilation, fresh kernel checking
and transitive axiom audit.
-/
import GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover
import GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
import Mathlib

/-!
# Exact-prefix sofic boundary for dynamic, lossless spectral covers

An *actual* finite labeled graph admits a language of finite paths. For any
stream over a finite alphabet, the one-vertex full-shift graph admits ALL of
its prefixes. Consequently mere graph-path admissibility cannot certify
that a stream is non-sofic, or force irrationality of a zero ordinate.

The stronger proposed arithmetic target is an eventual finite graph which
recognizes EXACTLY the singleton prefix language of a selected one-sided
trace. This is a precisely typed, deliberately stringent condition; it is
not automatically equivalent to standard soficity of an orbit closure.

Finite refinements here can have a GROWING number of cells. The stagewise
coarsening maps commute with the source clock and the finite cell clocks.
Above a graph is a full-precision left-invertible spectral process, whose
lift commutes with the source step and projects to genuine labeled edges.
Finite graph projection may lose information which the lift retains.

Neither a source heat-flow identification nor actual zeta-zero trace
non-soficity nor an arithmetic ordinate-to-regular-language theorem is
obtained. GRH enters ONLY in a separate conditional critical-line theorem.
-/

set_option autoImplicit false
noncomputable section

universe u v w z

namespace GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary

open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
open GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover

/-- n-th stage has size(n)+1 *finite* cells. Coherence rather than
a static quotient relates successive stages and their evolutions. -/
abbrev StageCells (size : ℕ → ℕ) (n : ℕ) : Type :=
  Fin (size n + 1)

structure GrowingRefinement (X : Type u) (sourceStep : X → X) where
  size : ℕ → ℕ
  classify : (n : ℕ) → X → StageCells size n
  coarsen : (n : ℕ) → StageCells size (n + 1) → StageCells size n
  coarsen_classify :
    ∀ n x, coarsen n (classify (n + 1) x) = classify n x
  finiteStep : (n : ℕ) → StageCells size n → StageCells size n
  classify_step :
    ∀ n x, classify n (sourceStep x) = finiteStep n (classify n x)
  coarsen_step :
    ∀ n c, coarsen n (finiteStep (n + 1) c) =
      finiteStep n (coarsen n c)

/-- Once distinguished, a source pair cannot merge at the next finer
stage without violating the defining partition commute square. -/
theorem GrowingRefinement.distinction_persists
    {X : Type u} {sourceStep : X → X}
    (R : GrowingRefinement X sourceStep)
    {n : ℕ} {x y : X}
    (h : R.classify n x ≠ R.classify n y) :
    R.classify (n + 1) x ≠ R.classify (n + 1) y := by
  intro hSame
  apply h
  calc
    R.classify n x = R.coarsen n (R.classify (n + 1) x) :=
      (R.coarsen_classify n x).symm
    _ = R.coarsen n (R.classify (n + 1) y) :=
      congrArg (R.coarsen n) hSame
    _ = R.classify n y := R.coarsen_classify n y

/-- Finite, rooted, explicitly labeled directed graph. This refines
the existing finite-edge interface with a distinguished initial state. -/
structure RootedSoficGraph (Label : Type u) [Fintype Label] where
  Vertex : Type v
  finiteVertex : Fintype Vertex
  start : Vertex
  edge : Vertex → Label → Vertex → Prop

/-- This is the exact edge datum of the existing SoficGraph type;
the root is extra data. -/
def RootedSoficGraph.asSoficGraph
    {Label : Type u} [Fintype Label]
    (G : RootedSoficGraph Label) :
    @SoficGraph G.Vertex Label G.finiteVertex (inferInstance) := by
  letI := G.finiteVertex
  exact { edge := G.edge }

/-- An admitted word carries a literal path witness and an end state. -/
inductive LabeledPath {Label : Type u} [Fintype Label]
    (G : RootedSoficGraph Label) :
    G.Vertex → List Label → G.Vertex → Prop where
  | nil (s : G.Vertex) : LabeledPath G s [] s
  | cons {s t finish : G.Vertex} {label : Label} {rest : List Label}
      (hedge : G.edge s label t)
      (htail : LabeledPath G t rest finish) :
      LabeledPath G s (label :: rest) finish

def Accepts {Label : Type u} [Fintype Label]
    (G : RootedSoficGraph Label) (word : List Label) : Prop :=
  ∃ finish : G.Vertex, LabeledPath G G.start word finish

/-- Chronological finite prefix of a one-sided sequence. -/
def «prefix» {Label : Type u} (trace : ℕ → Label) (n : ℕ) :
    List Label :=
  (List.range n).map trace

def AdmitsStream {Label : Type u} [Fintype Label]
    (G : RootedSoficGraph Label) (trace : ℕ → Label) : Prop :=
  ∀ n, Accepts G («prefix» trace n)

/-- Exact singleton-prefix presentation, NOT just permission to follow
one path through a graph that admits many unrelated words. -/
def ExactPrefixPresented {Label : Type u} [Fintype Label]
    (G : RootedSoficGraph Label) (trace : ℕ → Label) : Prop :=
  ∀ word, Accepts G word ↔
    ∃ n : ℕ, word = «prefix» trace n

/-- Chosen arithmetic-to-finite-state conclusion: AFTER some finite
initial history is discarded, the remaining exact prefix language
has a finite rooted labeled graph presentation. -/
def EventuallyExactPrefixPresented
    {Label : Type u} [Fintype Label]
    (trace : ℕ → Label) : Prop :=
  ∃ offset : ℕ, ∃ G : RootedSoficGraph.{u, v} Label,
    ExactPrefixPresented G (fun n => trace (offset + n))

/-- One vertex, one loop with every alphabet symbol. A genuine
finite labeled graph; its paths accept every finite word. -/
def fullShiftGraph (Label : Type u) [Fintype Label] :
    RootedSoficGraph Label where
  Vertex := PUnit
  finiteVertex := inferInstance
  start := PUnit.unit
  edge := fun _ _ _ => True

theorem fullShift_path {Label : Type u} [Fintype Label]
    (word : List Label) :
    LabeledPath (fullShiftGraph Label) PUnit.unit word PUnit.unit := by
  induction word with
  | nil => exact LabeledPath.nil _
  | cons a word ih => exact LabeledPath.cons trivial ih

/-- Every infinite trace, whatever its arithmetic complexity, is
admitted by one fixed full-shift graph. In particular nonperiodicity
or a varying spectral cover is not a non-soficity certificate. -/
theorem every_stream_admitted
    {Label : Type u} [Fintype Label]
    (trace : ℕ → Label) :
    AdmitsStream (fullShiftGraph Label) trace := by
  intro n
  exact ⟨PUnit.unit, fullShift_path («prefix» trace n)⟩

/-- It is impossible that every finite graph rejects some prefix.
The graph-admissibility version of the proposed contradiction is false. -/
theorem no_universal_prefix_rejection
    {Label : Type u} [Fintype Label]
    (trace : ℕ → Label) :
    ¬ (∀ G : RootedSoficGraph Label,
        ∃ n, ¬ Accepts G («prefix» trace n)) := by
  intro h
  obtain ⟨n, hn⟩ := h (fullShiftGraph Label)
  exact hn (every_stream_admitted trace n)

/-- The full-shift graph is NOT an exact prefix presentation of the
all-false trace, even though it admits that trace. -/
theorem fullShift_not_exact_for_constant_false :
    ¬ ExactPrefixPresented (fullShiftGraph Bool) (fun _ => false) := by
  intro h
  have hAccept : Accepts (fullShiftGraph Bool) [true] :=
    ⟨PUnit.unit, fullShift_path [true]⟩
  obtain ⟨n, hword⟩ := (h [true]).mp hAccept
  have hTrue : true ∈ «prefix» (fun _ : ℕ => false) n := by
    rw [← hword]
    simp
  simp [«prefix»] at hTrue

/-- A full-precision process has its own states and exact recovery.
A finite graph projection labels each actual spectral evolution step,
but the projection itself is not assumed invertible. -/
structure CommutingLosslessGraphCover
    {Label : Type u} [Fintype Label]
    (G : RootedSoficGraph Label)
    (X : Type w) (sourceStep : X → X) where
  Spectrum : Type z
  lift : X → Spectrum
  recover : Spectrum → X
  recover_lift : ∀ x, recover (lift x) = x
  advance : Spectrum → Spectrum
  advance_lift : ∀ x, advance (lift x) = lift (sourceStep x)
  project : Spectrum → G.Vertex
  emit : Spectrum → Label
  actualEdge :
    ∀ s, G.edge (project s) (emit s) (project (advance s))
  start_lift : ∀ x, project (lift x) = G.start

theorem CommutingLosslessGraphCover.lift_injective
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {X : Type w} {sourceStep : X → X}
    (C : CommutingLosslessGraphCover G X sourceStep) :
    Function.Injective C.lift := by
  intro x y hEqual
  calc
    x = C.recover (C.lift x) := (C.recover_lift x).symm
    _ = C.recover (C.lift y) := congrArg C.recover hEqual
    _ = y := C.recover_lift y

/-- Even an ordinate can be read back from the lossless spectrum.
No claim is made that a graph vertex or two moments decode it. -/
theorem CommutingLosslessGraphCover.readout_factors
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {X : Type w} {sourceStep : X → X}
    (C : CommutingLosslessGraphCover G X sourceStep)
    {Y : Type v} (readout : X → Y) :
    FactorsThrough C.lift readout := by
  refine ⟨readout ∘ C.recover, ?_⟩
  funext x
  change readout x = readout (C.recover (C.lift x))
  rw [C.recover_lift]

/-- If the spectral lift itself is only a postprocessing of a
collided statistic, it cannot have the declared left inverse. -/
theorem CommutingLosslessGraphCover.no_recovery_after_collision
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {X : Type w} {sourceStep : X → X}
    (C : CommutingLosslessGraphCover G X sourceStep)
    {Statistic : Type v} (measure : X → Statistic)
    (postprocess : Statistic → C.Spectrum)
    (hFactor : ∀ x, C.lift x = postprocess (measure x))
    {x y : X} (hEqual : measure x = measure y)
    (hDifferent : x ≠ y) : False := by
  apply hDifferent
  apply C.lift_injective
  calc
    C.lift x = postprocess (measure x) := hFactor x
    _ = postprocess (measure y) := congrArg postprocess hEqual
    _ = C.lift y := (hFactor y).symm

/-- Actual emitted finite word of length n from a chosen spectral
start state, advancing the genuine spectral dynamical process. -/
def emittedWord {Spectrum : Type w} {Label : Type u}
    (advance : Spectrum → Spectrum) (emit : Spectrum → Label)
    (s : Spectrum) : ℕ → List Label
  | 0 => []
  | n + 1 => emit s :: emittedWord advance emit (advance s) n

/-- Every emitted word projects to an actual labeled path.
This proves finite graph ADMISSIBILITY, not exact singleton-prefix
recognition or eventually sofic compression. -/
theorem CommutingLosslessGraphCover.emittedWord_is_path
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {X : Type w} {sourceStep : X → X}
    (C : CommutingLosslessGraphCover G X sourceStep)
    (s : C.Spectrum) (n : ℕ) :
    ∃ finish : G.Vertex,
      LabeledPath G (C.project s)
        (emittedWord C.advance C.emit s n) finish := by
  induction n generalizing s with
  | zero =>
      exact ⟨C.project s, LabeledPath.nil _⟩
  | succ n ih =>
      obtain ⟨finish, hpath⟩ := ih (C.advance s)
      exact ⟨finish, LabeledPath.cons (C.actualEdge s) hpath⟩

/-- A dynamic five-stage diagram. Infinite levels can have growing
finite cardinalities; one chosen stage maps to the graph, and the
spectral lift lies above that coarse observation. -/
structure GrowingSoficSpectralDiagram
    {Label : Type u} [Fintype Label]
    (G : RootedSoficGraph Label)
    (X : Type w) (sourceStep : X → X) where
  partition : GrowingRefinement X sourceStep
  spectral : CommutingLosslessGraphCover.{u, w, z, v} G X sourceStep
  observedStage : ℕ
  present : StageCells partition.size observedStage → G.Vertex
  present_lift :
    ∀ x, spectral.project (spectral.lift x) =
      present (partition.classify observedStage x)

/-- A collision at the specified finite stage collapses the
FINITE graph projection, not the lossless spectral state. -/
theorem GrowingSoficSpectralDiagram.graph_projection_collision
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {X : Type w} {sourceStep : X → X}
    (D : GrowingSoficSpectralDiagram G X sourceStep)
    {x y : X}
    (hCell : D.partition.classify D.observedStage x =
      D.partition.classify D.observedStage y) :
    D.spectral.project (D.spectral.lift x) =
      D.spectral.project (D.spectral.lift y) := by
  calc
    D.spectral.project (D.spectral.lift x) =
        D.present (D.partition.classify D.observedStage x) :=
      D.present_lift x
    _ = D.present (D.partition.classify D.observedStage y) :=
      congrArg D.present hCell
    _ = D.spectral.project (D.spectral.lift y) :=
      (D.present_lift y).symm

/-- The graph projection by itself cannot decode two distinct
source states that the observed finite partition has identified. -/
theorem GrowingSoficSpectralDiagram.no_vertex_only_decoder
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {X : Type w} {sourceStep : X → X}
    (D : GrowingSoficSpectralDiagram G X sourceStep)
    {x y : X}
    (hCell : D.partition.classify D.observedStage x =
      D.partition.classify D.observedStage y)
    (hDifferent : x ≠ y) :
    ¬ ∃ decode : G.Vertex → X,
      ∀ t, decode (D.spectral.project (D.spectral.lift t)) = t := by
  rintro ⟨decode, hdecode⟩
  apply hDifferent
  calc
    x = decode (D.spectral.project (D.spectral.lift x)) :=
      (hdecode x).symm
    _ = decode (D.spectral.project (D.spectral.lift y)) :=
      congrArg decode (D.graph_projection_collision hCell)
    _ = y := hdecode y

-- The graph and spectral carriers intentionally have independent universes.
set_option linter.checkUnivs false in
/-- Source analytic stage + dynamic partition + rooted finite sofic
graph + commuting left-invertible spectrum + ordinate readout.
The 7/8→3/4 analytic estimates are an explicit supplied field. -/
structure AnalyticDynamicSoficPipeline
    (X : Type w) (Label : Type u) [Fintype Label] where
  sourceStep : X → X
  analytic : ThreeQuarterRefinement X
  graph : RootedSoficGraph.{u, v} Label
  diagram : GrowingSoficSpectralDiagram.{u, v, w, z} graph X sourceStep
  ordinate : X → ℝ

/-- The 3/4 strict half-plane follows only from cofinality AND ALL
analytic stages, not from the graph, losslessness or overhead alone. -/
theorem AnalyticDynamicSoficPipeline.limit_zeroFree
    {X : Type w} {Label : Type u} [Fintype Label]
    (P : AnalyticDynamicSoficPipeline X Label) :
    ZeroFreeRightOf P.analytic.realPart P.analytic.isZero (3 / 4 : ℝ) :=
  P.analytic.limit_zeroFree

/-- Source-accurate ordinate readout requires full spectral lift data;
the finite graph state is not asserted to be sufficient. -/
theorem AnalyticDynamicSoficPipeline.ordinate_from_spectrum
    {X : Type w} {Label : Type u} [Fintype Label]
    (P : AnalyticDynamicSoficPipeline X Label) :
    FactorsThrough P.diagram.spectral.lift P.ordinate :=
  P.diagram.spectral.readout_factors P.ordinate

/-- The actual arithmetic-to-exact-prefix and non-presentation
suppliers remain separate from the graph and the analytic pipeline. -/
structure OrdinateExactLanguageSuppliers
    (Zero : Type w) (Height : Type v)
    (Label : Type u) [Fintype Label] where
  arithmetic : HeightArithmetic Height
  isZero : Zero → Prop
  onCriticalLine : Zero → Prop
  height : Zero → Height
  trace : Zero → ℕ → Label
  rational_to_exact :
    ∀ z, isZero z → arithmetic.rational (height z) →
      EventuallyExactPrefixPresented.{u, z} (trace z)
  algebraic_on_line_to_exact :
    ∀ z, isZero z → onCriticalLine z →
      arithmetic.algebraic (height z) →
        EventuallyExactPrefixPresented.{u, z} (trace z)
  trace_not_eventually_exact :
    ∀ z, isZero z → ¬ EventuallyExactPrefixPresented.{u, z} (trace z)

/-- Rational height implies eventual exact graph presentation, opposed by
a genuine non-presentation theorem: irrationality WITHOUT GRH. -/
theorem OrdinateExactLanguageSuppliers.irrational_without_grh
    {Zero : Type w} {Height : Type v}
    {Label : Type u} [Fintype Label]
    (S : OrdinateExactLanguageSuppliers Zero Height Label)
    (z : Zero) (hz : S.isZero z) :
    IsIrrational S.arithmetic (S.height z) := by
  intro hRational
  exact S.trace_not_eventually_exact z hz
    (S.rational_to_exact z hz hRational)

/-- GRH only places the selected zeros on the critical line.
Algebraic-height-to-exact-graph plus non-presentation are
INDEPENDENT, presently unresolved hypotheses for zeta traces. -/
theorem OrdinateExactLanguageSuppliers.grh_critical_and_transcendental
    {Zero : Type w} {Height : Type v}
    {Label : Type u} [Fintype Label]
    (S : OrdinateExactLanguageSuppliers Zero Height Label)
    (hGRH : GRHFor S.isZero S.onCriticalLine) :
    ∀ z, S.isZero z →
      IsIrrational S.arithmetic (S.height z) ∧
        S.onCriticalLine z ∧
        IsTranscendental S.arithmetic (S.height z) := by
  intro z hz
  have hi := S.irrational_without_grh z hz
  have hl : S.onCriticalLine z := hGRH z hz
  have ht : IsTranscendental S.arithmetic (S.height z) := by
    intro ha
    exact S.trace_not_eventually_exact z hz
      (S.algebraic_on_line_to_exact z hz hl ha)
  exact ⟨hi, hl, ht⟩

end GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary
