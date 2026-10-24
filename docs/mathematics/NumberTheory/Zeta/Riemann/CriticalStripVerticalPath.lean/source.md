# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripVerticalPath

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5caf53356e86b5763b6c9ded0d9c0ab48ba541f` · SHA-256 `a660547894940235054923642f19ccbb229ddb37fbe745b0bee027063735fd50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOverlapAudit

set_option autoImplicit false

/-!
# Source-bound vertical proof paths

This file supplies the source-only vertical-coverage interface requested in issue #234.
A path is a dependent list of actual `VerticalStep` terms. Consequently every edge
carries both the common-root height inequality and the proof implication; issue order,
subject names, and file imports cannot inhabit the path.

Edges also carry exact source/revision/normalization bindings. Coordinate-equivalence
edges must point to exact #232 coordinate evidence, including merely directional
logical outcomes. Logical and height proofs remain independently present through the
wrapped `VerticalStep`. Complete coverage places every
required chart between an admitted source and an RH-equivalent terminal chart. Omitted
charts require an exact derivability theorem from the required charts rather than a
prose assertion of independence.

Paths live in `Type`, not `Prop`. Propositional coverage therefore uses `Nonempty`
without erasing the data-bearing path type. Proofs eliminate these existence witnesses
only into propositions; no choice or path extraction into data is needed here.

The terminal equivalence still requires the #231 reverse-direction audit. Path
existence alone proves only the forward transport to an RH-equivalent terminal.
This is a sufficient-route coverage interface, not a geometric-cover theorem for
arbitrary bounded local claims. In particular, including an independently proved
required statement already makes a completed coverage witness sufficient for RH.
-/

namespace GRWTSK.RiemannHypothesis

/-- Semantic evidence carried by one vertical edge. Multiple tags may be present only
when the corresponding proof fields are available. -/
inductive VerticalEdgeKind where
  | coordinateEquivalence
  | logicalImplication
  | heightMonotone
  | structuredTransport
  | terminalEquivalence
  deriving DecidableEq, Repr

namespace OverlapAuditOutcome

/-- The legacy logically exact constructor test. Coordinate admission instead uses
`HasExactCoordinate`, which also accepts merely directional logical outcomes. -/
def IsExact
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root} :
    OverlapAuditOutcome left right → Prop
  | .exact _ _ => True
  | _ => False

end OverlapAuditOutcome

/-- The optional evidence contains exact coordinates, not necessarily logical equivalence. -/
def HasExactCoordinateEvidence
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (evidence : Option (OverlapAuditOutcome left right)) : Prop :=
  ∃ outcome, evidence = some outcome ∧ outcome.HasExactCoordinate

/-- One vertical edge with exact source binding and optional overlap evidence.

Every edge is logically and height-valid because it wraps `VerticalStep`. Additional
coordinate-equivalence and terminal-equivalence tags require their own evidence. -/
structure SourceBoundVerticalStep
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (lower upper : ι) where
  step : VerticalStep atlas lower upper
  lowerBinding : SourceBinding
  upperBinding : SourceBinding
  lower_binding_matches : lowerBinding.Matches (atlas.chart lower)
  upper_binding_matches : upperBinding.Matches (atlas.chart upper)
  binding_eq : lowerBinding = upperBinding
  kinds : List VerticalEdgeKind
  kinds_nonempty : kinds ≠ []
  logical_kind_present : .logicalImplication ∈ kinds
  height_kind_present : .heightMonotone ∈ kinds
  coordinateEvidence : Option
    (OverlapAuditOutcome (atlas.chart lower) (atlas.chart upper))
  coordinate_evidence_exact :
    .coordinateEquivalence ∈ kinds →
      HasExactCoordinateEvidence coordinateEvidence
  terminal_status_exact :
    .terminalEquivalence ∈ kinds →
      (atlas.comparison upper).status = .equivalent

/-- A finite composable vertical path. Its indices enforce endpoint agreement between
consecutive edges. -/
inductive VerticalPath
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) : ι → ι → Type _ where
  | refl (i : ι) : VerticalPath atlas i i
  | cons {i j k : ι}
      (first : SourceBoundVerticalStep atlas i j)
      (rest : VerticalPath atlas j k) :
      VerticalPath atlas i k

namespace VerticalPath

/-- Forget source metadata while retaining the exact height and proof transport. -/
theorem toVerticalStep
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i j : ι} :
    VerticalPath atlas i j → VerticalStep atlas i j
  | .refl _ => VerticalStep.refl atlas i
  | .cons first rest =>
      VerticalStep.trans first.step (toVerticalStep rest)

/-- Concatenate two endpoint-compatible paths. -/
def trans
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i j k : ι}
    (first : VerticalPath atlas i j)
    (second : VerticalPath atlas j k) :
    VerticalPath atlas i k :=
  match first with
  | .refl _ => second
  | .cons edge rest => .cons edge (trans rest second)

/-- The composed path transports the source local statement to the target statement. -/
theorem transports
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i j : ι}
    (path : VerticalPath atlas i j) :
    (atlas.chart i).localStatement → (atlas.chart j).localStatement :=
  path.toVerticalStep.transport

/-- The composed path is monotone in the common represented-commutator height. -/
theorem height_mono
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i j : ι}
    (path : VerticalPath atlas i j) :
    (atlas.chart i).rootHeight ≤ (atlas.chart j).rootHeight :=
  path.toVerticalStep.height_mono

/-- Existence of composable paths composes propositionally, without selecting a path
as computational data. -/
theorem nonempty_trans
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i j k : ι}
    (first : Nonempty (VerticalPath atlas i j))
    (second : Nonempty (VerticalPath atlas j k)) :
    Nonempty (VerticalPath atlas i k) := by
  rcases first with ⟨first⟩
  rcases second with ⟨second⟩
  exact ⟨first.trans second⟩

end VerticalPath

namespace AtlasGapReport

/-- Directional discharge determines exact equivalence for one required chart. This is
the local form of the all-chart theorem in `CriticalStripGapReport`. -/
theorem required_status_eq_equivalent_of_directionalGapsDischarged
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    (report : AtlasGapReport atlas)
    (hdischarged : report.DirectionalGapsDischarged)
    {i : ι} (hi : report.required i) :
    (atlas.comparison i).status = .equivalent := by
  let entry : ChartAuditEntry atlas i := report.audit i hi
  have hclosed := hdischarged i hi
  have hforward : (atlas.comparison i).HasForward := by
    by_contra hmissing
    exact hclosed.1 (entry.forward_absent_reported hmissing)
  have hreverse : (atlas.comparison i).HasReverse := by
    by_contra hmissing
    exact hclosed.2 (entry.reverse_absent_reported hmissing)
  exact LocalRHProfile.status_eq_equivalent_of_hasForward_hasReverse
    (atlas.comparison i) hforward hreverse

end AtlasGapReport

/-- Complete source-to-terminal coverage for the required chart set.

An omitted chart is accepted only with a theorem deriving its local statement from all
required chart statements. This is the proof-level meaning of independence used here.
Each required statement is sufficient for RH through its terminal path; merely local
bounded-height statements need a separate cover-and-gluing interface. -/
structure CompleteVerticalCoverage
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    (report : AtlasGapReport atlas) where
  source : ι → Prop
  terminal : ι → Prop
  source_nonempty : ∃ i, source i
  terminal_nonempty : ∃ i, terminal i
  source_required : ∀ i, source i → report.required i
  terminal_required : ∀ i, terminal i → report.required i
  terminal_equivalent :
    ∀ i, terminal i → (atlas.comparison i).status = .equivalent
  pathThrough :
    ∀ i, report.required i →
      ∃ sourceIndex terminalIndex,
        source sourceIndex ∧ terminal terminalIndex ∧
          Nonempty (VerticalPath atlas sourceIndex i) ∧
            Nonempty (VerticalPath atlas i terminalIndex)
  omitted_independent :
    ∀ i, ¬ report.required i →
      (∀ j, report.required j → (atlas.chart j).localStatement) →
        (atlas.chart i).localStatement

namespace CompleteVerticalCoverage

/-- Compose the two path halves around any required chart. -/
theorem fullPathThrough
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    {report : AtlasGapReport atlas}
    (coverage : CompleteVerticalCoverage report)
    {i : ι} (hi : report.required i) :
    ∃ sourceIndex terminalIndex,
      coverage.source sourceIndex ∧ coverage.terminal terminalIndex ∧
        Nonempty (VerticalPath atlas sourceIndex terminalIndex) := by
  rcases coverage.pathThrough i hi with
    ⟨sourceIndex, terminalIndex, hsource, hterminal, sourcePath, terminalPath⟩
  exact ⟨sourceIndex, terminalIndex, hsource, hterminal,
    VerticalPath.nonempty_trans sourcePath terminalPath⟩

/-- Every required chart statement transports forward to RH through its declared
terminal path. No reverse implication is inferred from the path. -/
theorem required_statement_implies_rh
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    {report : AtlasGapReport atlas}
    (coverage : CompleteVerticalCoverage report)
    {i : ι} (hi : report.required i) :
    (atlas.chart i).localStatement → _root_.RiemannHypothesis := by
  rcases coverage.pathThrough i hi with
    ⟨_sourceIndex, terminalIndex, _hsource, hterminal, _sourcePath, ⟨terminalPath⟩⟩
  intro hlocal
  have hterminalStatement : (atlas.chart terminalIndex).localStatement :=
    terminalPath.transports hlocal
  have hstatus : (atlas.comparison terminalIndex).status = .equivalent :=
    coverage.terminal_equivalent terminalIndex hterminal
  exact (atlas.comparison terminalIndex).forward (Or.inl hstatus)
    hterminalStatement

/-- A proved required lemma plus complete sufficient-route coverage already yields RH.
This diagnostic makes the strength of coverage explicit: it is not supplied merely by
constructing a root, a geometric cover, or a connected dependency graph. -/
theorem rh_of_proved_required_statement
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    {report : AtlasGapReport atlas}
    (coverage : CompleteVerticalCoverage report)
    {i : ι} (hi : report.required i)
    (hproved : (atlas.chart i).localStatement) :
    _root_.RiemannHypothesis :=
  coverage.required_statement_implies_rh hi hproved

/-- Complete paths plus the independent #231 reverse-direction discharge yield the
exact global RH equivalence. Path existence alone is intentionally insufficient. -/
theorem globalStatement_iff_rh_of_complete
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    {report : AtlasGapReport atlas}
    (coverage : CompleteVerticalCoverage report)
    (hdischarged : report.DirectionalGapsDischarged) :
    atlas.GlobalStatement ↔ _root_.RiemannHypothesis := by
  constructor
  · intro hglobal
    rcases report.required_nonempty with ⟨i, hi⟩
    exact coverage.required_statement_implies_rh hi (hglobal i)
  · intro hrh i
    classical
    by_cases hi : report.required i
    · have hstatus :=
        report.required_status_eq_equivalent_of_directionalGapsDischarged
          hdischarged hi
      exact (atlas.comparison i).reverse (Or.inl hstatus) hrh
    · apply coverage.omitted_independent i hi
      intro j hj
      have hstatus :=
        report.required_status_eq_equivalent_of_directionalGapsDischarged
          hdischarged hj
      exact (atlas.comparison j).reverse (Or.inl hstatus) hrh

end CompleteVerticalCoverage

end GRWTSK.RiemannHypothesis
```
