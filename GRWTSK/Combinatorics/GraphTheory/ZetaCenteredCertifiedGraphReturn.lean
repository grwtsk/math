/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean compilation, independent kernel replay,
transitive axiom audit and independent semantic review: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.ZetaCenteredLayerSandwich
import GRWTSK.Combinatorics.GraphTheory.DefectEnrichedSoficLanguage

/-!
# Certified quantitative graph-layer transport at actual zeta zero centers

The original signed source readout is a REQUIRED source-defined field:
the graph does not construct Weil's functional or a zeta spectral
determinant. Only certified LOWER sandwich transitions carry a genuine
signed readout-return equation and a nonnegative error allowance.
Middle and upper edges remain discovery-only.

The central new transport theorem preserves the ENTIRE finite label
word, source/target nodes, original signed defect, and original error
allowance across a checked map of quantitative sandwich layers. Layer
maps compose. A zeta-anchored source-return bound then composes with the
transported certified word without dropping the initial source error.

Candidate edges cannot be promoted to certificates: an explicit finite
countermodel witnesses a middle edge absent from the lower relation.
Neither graph construction nor the center's exact zero proof implies RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ZetaCenteredCertifiedGraphReturn

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ZetaCenteredLayerSandwich
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage

universe u v w z

/-- A faithful quantitative map between two *different vertex types*.
All three labeled graph relations are preserved. For certified edges
the signed defect, allowance and vertex readout are also identical. -/
structure QuantitativeLayerMap
    {Vertex : Type u} {Target : Type v} {Label : Type w}
    (A : DefectSoficSystem Vertex Label)
    (B : DefectSoficSystem Target Label) where
  node : Vertex → Target
  lower_edge : ∀ {x y label}, A.sandwich.lower x label y →
    B.sandwich.lower (node x) label (node y)
  middle_edge : ∀ {x y label}, A.sandwich.middle x label y →
    B.sandwich.middle (node x) label (node y)
  upper_edge : ∀ {x y label}, A.sandwich.upper x label y →
    B.sandwich.upper (node x) label (node y)
  readout_eq : ∀ x, B.readout (node x) = A.readout x
  defect_eq : ∀ x label y,
    B.edgeDefect (node x) label (node y) = A.edgeDefect x label y
  allowance_eq : ∀ x label y,
    B.edgeAllowance (node x) label (node y) = A.edgeAllowance x label y

def QuantitativeLayerMap.id
    {Vertex : Type u} {Label : Type w}
    (A : DefectSoficSystem Vertex Label) :
    QuantitativeLayerMap A A where
  node := id
  lower_edge := by intro x y label edge; exact edge
  middle_edge := by intro x y label edge; exact edge
  upper_edge := by intro x y label edge; exact edge
  readout_eq := fun _ => rfl
  defect_eq := fun _ _ _ => rfl
  allowance_eq := fun _ _ _ => rfl

/-- Source-to-target layer maps compose without changing the lower word,
numerical defect, or nonnegative allowance. -/
def QuantitativeLayerMap.comp
    {Vertex : Type u} {Middle : Type v} {Target : Type z}
    {Label : Type w}
    {A : DefectSoficSystem Vertex Label}
    {B : DefectSoficSystem Middle Label}
    {C : DefectSoficSystem Target Label}
    (f : QuantitativeLayerMap A B)
    (g : QuantitativeLayerMap B C) : QuantitativeLayerMap A C where
  node := g.node ∘ f.node
  lower_edge := by
    intro x y label edge
    exact g.lower_edge (f.lower_edge edge)
  middle_edge := by
    intro x y label edge
    exact g.middle_edge (f.middle_edge edge)
  upper_edge := by
    intro x y label edge
    exact g.upper_edge (f.upper_edge edge)
  readout_eq := by
    intro x
    exact (g.readout_eq (f.node x)).trans (f.readout_eq x)
  defect_eq := by
    intro x label y
    exact (g.defect_eq (f.node x) label (f.node y)).trans
      (f.defect_eq x label y)
  allowance_eq := by
    intro x label y
    exact (g.allowance_eq (f.node x) label (f.node y)).trans
      (f.allowance_eq x label y)

/-- Full proof-bearing transport, not only an unlabeled reachability
statement: the original certified WORD, signed defect and budget
survive a source-faithful graph-layer mapping exactly. -/
theorem QuantitativeLayerMap.map_certified_trace
    {Vertex : Type u} {Target : Type v} {Label : Type w}
    {A : DefectSoficSystem Vertex Label}
    {B : DefectSoficSystem Target Label}
    (f : QuantitativeLayerMap A B)
    {x y : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace A x word y defect allowance) :
    CertifiedTrace B (f.node x) word (f.node y) defect allowance := by
  induction trace with
  | nil vertex =>
      exact CertifiedTrace.nil (f.node vertex)
  | @cons source middle target label word defect allowance edge tail ih =>
      have transported :
          CertifiedTrace B (f.node source) (label :: word) (f.node target)
            (B.edgeDefect (f.node source) label (f.node middle) + defect)
            (B.edgeAllowance (f.node source) label (f.node middle) + allowance) :=
        CertifiedTrace.cons (f.lower_edge edge) ih
      simpa only [f.defect_eq, f.allowance_eq] using transported

/-- Exact signed readout return and the original cumulative error
survive quantitative transport. No hidden improvement of the budget. -/
theorem QuantitativeLayerMap.transported_return
    {Vertex : Type u} {Target : Type v} {Label : Type w}
    {A : DefectSoficSystem Vertex Label}
    {B : DefectSoficSystem Target Label}
    (f : QuantitativeLayerMap A B)
    {x y : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace A x word y defect allowance) :
    B.readout (f.node x) = B.readout (f.node y) + defect ∧
      0 ≤ allowance ∧
      |B.readout (f.node x) - B.readout (f.node y)| ≤ allowance :=
  (f.map_certified_trace trace).exact_and_bounded

/-- Negative signed readouts cannot be erased through exact transport. -/
theorem QuantitativeLayerMap.preserves_negative
    {Vertex : Type u} {Target : Type v} {Label : Type w}
    {A : DefectSoficSystem Vertex Label}
    {B : DefectSoficSystem Target Label}
    (f : QuantitativeLayerMap A B) (x : Vertex)
    (h : A.readout x < 0) : B.readout (f.node x) < 0 := by
  rw [f.readout_eq]
  exact h

/-- The original source is an actual Riemann-zeta zero together with
an independently SUPPLIED real source functional and initial
signed discrepancy. No automatic zeta/Weil interpretation of the
real-valued field is asserted. -/
structure SignedZetaLayer (Vertex : Type u) (Label : Type w) where
  center : ZetaZeroCenter
  source : SourceAnchored ZetaZeroCenter Vertex Label
  observe : Vertex → ℂ
  observe_center : observe (source.encode center) = center.value

theorem SignedZetaLayer.center_is_actual_zeta_zero
    {Vertex : Type u} {Label : Type w}
    (A : SignedZetaLayer Vertex Label) :
    riemannZeta (A.observe (A.source.encode A.center)) = 0 := by
  rw [A.observe_center]
  exact A.center.actual_zero

/-- The original source readout equals the final graph readout plus
the EXACT initial and certified-path signed defects, with their full
nonnegative error allowance retained. -/
theorem SignedZetaLayer.source_return
    {Vertex : Type u} {Label : Type w}
    (A : SignedZetaLayer Vertex Label)
    {finish : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace A.source.system
      (A.source.encode A.center) word finish defect allowance) :
    A.source.original A.center =
      A.source.system.readout finish +
        (A.source.initialDefect A.center + defect) ∧
      |A.source.original A.center - A.source.system.readout finish| ≤
        A.source.initialAllowance A.center + allowance :=
  A.source.path_return A.center trace

/-- Zero initial and path error are genuinely required for exact
original source equality; no numerical or graph magic removes them. -/
theorem SignedZetaLayer.exact_return_of_zero_budget
    {Vertex : Type u} {Label : Type w}
    (A : SignedZetaLayer Vertex Label)
    {finish : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace A.source.system
      (A.source.encode A.center) word finish defect allowance)
    (hsource : A.source.initialAllowance A.center = 0)
    (hpath : allowance = 0) :
    A.source.original A.center = A.source.system.readout finish :=
  A.source.exact_of_zero_budget A.center trace hsource hpath

/-- A new signed layer must preserve the actual source identity,
the certified graph map, initial source error, root and observations.
The source-original comparison is a REQUIRED premise, not inferred. -/
structure SignedLayerTransport
    {Vertex : Type u} {Target : Type v} {Label : Type w}
    (A : SignedZetaLayer Vertex Label)
    (B : SignedZetaLayer Target Label) where
  graphMap : QuantitativeLayerMap A.source.system B.source.system
  center_eq : A.center.value = B.center.value
  root_eq : graphMap.node (A.source.encode A.center) =
    B.source.encode B.center
  original_eq : A.source.original A.center = B.source.original B.center
  initialDefect_eq : A.source.initialDefect A.center =
    B.source.initialDefect B.center
  initialAllowance_eq : A.source.initialAllowance A.center =
    B.source.initialAllowance B.center
  observe_eq : ∀ x, B.observe (graphMap.node x) = A.observe x

/-- Signed original-source return survives composition to another
graph layer, with the unchanged finite word, residual and full budget. -/
theorem SignedLayerTransport.source_return
    {Vertex : Type u} {Target : Type v} {Label : Type w}
    {A : SignedZetaLayer Vertex Label}
    {B : SignedZetaLayer Target Label}
    (f : SignedLayerTransport A B)
    {finish : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace A.source.system
      (A.source.encode A.center) word finish defect allowance) :
    A.source.original A.center =
      B.source.system.readout (f.graphMap.node finish) +
        (B.source.initialDefect B.center + defect) ∧
      |A.source.original A.center -
        B.source.system.readout (f.graphMap.node finish)| ≤
        B.source.initialAllowance B.center + allowance := by
  have mapped : CertifiedTrace B.source.system
      (B.source.encode B.center) word
      (f.graphMap.node finish) defect allowance := by
    simpa only [f.root_eq] using f.graphMap.map_certified_trace trace
  have h := B.source.path_return B.center mapped
  simpa only [f.original_eq] using h

/-- The transported root remains an EXACT source zero, even though the
graph itself has no proven zeta spectral interpretation. -/
theorem SignedLayerTransport.center_zero_preserved
    {Vertex : Type u} {Target : Type v} {Label : Type w}
    {A : SignedZetaLayer Vertex Label}
    {B : SignedZetaLayer Target Label}
    (f : SignedLayerTransport A B) :
    riemannZeta (B.observe
      (f.graphMap.node (A.source.encode A.center))) = 0 := by
  rw [f.observe_eq]
  exact A.center_is_actual_zeta_zero

/-- Concrete finite counterexample: a candidate graph edge can exist
without a certified lower edge. -/
def untrustedCandidateSandwich : LabeledSandwich Unit Unit where
  lower := fun _ _ _ => False
  middle := fun _ _ _ => True
  upper := fun _ _ _ => True
  lower_le_middle := by
    intro x y label h
    exact False.elim h
  middle_le_upper := by
    intro x y label h
    trivial

theorem candidate_edge_does_not_imply_certificate :
    untrustedCandidateSandwich.middle () () () ∧
      ¬ untrustedCandidateSandwich.lower () () () := by
  constructor
  · trivial
  · intro h
    exact h

/-- A complete candidate one-step WORD has no certified counterpart
even on a finite one-vertex graph. -/
theorem candidate_word_has_no_certified_path :
    WordPath untrustedCandidateSandwich.middle () [()] () ∧
      ¬ WordPath untrustedCandidateSandwich.lower () [()] () := by
  constructor
  · exact WordPath.cons trivial (WordPath.nil ())
  · intro h
    cases h with
    | cons edge tail => exact edge

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ZetaCenteredCertifiedGraphReturn
