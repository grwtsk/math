# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `434579e29c5d860b4dcbcb25938e98f12f6505be` · SHA-256 `b7f7f76dbabdc738badb53fdaf3f1b392afba8caa41b06b0b72da0871f2bfa29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAtlas

set_option autoImplicit false

/-!
# Machine-readable gap reports for the critical-strip proof atlas

This file supplies the source-only logical-audit interface requested in issue #231.
An audit entry is attached to an actual chart of an actual `CriticalStripAtlas`; its
local proposition and proof-carrying `LocalRHProfile` therefore cannot be replaced by
an unrelated prose label.

The report distinguishes theorem absence, refutation, unavailability, source movement,
non-applicability, and discharge. It also keeps the two RH directions separate. A
sufficient chart must retain an open reverse gap, a necessary chart must retain an
open forward gap, and a neutral chart must retain both. The final theorem is only a
structural implication: a report covering every chart whose two directional gaps are
discharged yields `GapFree`. It does not discharge any gap itself.
-/

namespace GRWTSK.RiemannHypothesis

/-- Exact kinds of missing evidence tracked by the critical-strip atlas. -/
inductive AtlasGapKind where
  | missingForwardImplication
  | missingReverseImplication
  | carrierVacuity
  | rootCoordinateMismatch
  | sourceMismatch
  | normalizationMismatch
  | missingOverlap
  | missingIdentityLaw
  | missingInverseLaw
  | missingCocycleLaw
  | missingVerticalStep
  | missingTopologicalEquivalence
  | missingHomotopy
  | missingRingHomomorphism
  | missingHolomorphy
  | missingCompatibilitySquare
  | missingReplayEvidence
  | refutedLocalStatement
  deriving DecidableEq, Repr

/-- Status of one reported obligation. `refuted` means that the proposed obligation or
chart claim is false at the declared binding; it is still blocking, unlike
`notApplicable` or `discharged`. -/
inductive GapDisposition where
  | unproved
  | refuted
  | unavailable
  | sourceMoved
  | notApplicable
  | discharged
  deriving DecidableEq, Repr

namespace GapDisposition

/-- A disposition is open precisely when it still blocks atlas completion. -/
def IsOpen : GapDisposition → Prop
  | .notApplicable => False
  | .discharged => False
  | _ => True

end GapDisposition

/-- Immutable source identity used by one audited chart. -/
structure SourceBinding where
  sourceId : String
  revision : String
  normalizationId : String
  deriving DecidableEq, Repr

namespace SourceBinding

/-- The audit binding agrees with all source identities carried by the chart. -/
def Matches
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (binding : SourceBinding) (chart : CriticalStripChart root) : Prop :=
  binding.sourceId = chart.sourceId ∧
    binding.revision = chart.revision ∧
      binding.normalizationId = chart.normalizationId

end SourceBinding

/-- One exact, source-bound missing obligation. The declaration name fields used by an
audit are diagnostic references only; proof authority remains in Lean terms. -/
structure AtlasGap where
  chartId : String
  kind : AtlasGapKind
  disposition : GapDisposition
  owner : String
  obligation : String
  binding : SourceBinding
  deriving DecidableEq, Repr

namespace AtlasGap

/-- Whether this gap remains a blocker. -/
def IsOpen (gap : AtlasGap) : Prop :=
  gap.disposition.IsOpen

end AtlasGap

/-- A list contains an open gap of the selected exact kind. -/
def HasOpenGap (gaps : List AtlasGap) (kind : AtlasGapKind) : Prop :=
  ∃ gap, gap ∈ gaps ∧ gap.kind = kind ∧ gap.IsOpen

namespace LocalRHProfile

/-- The profile contains an available proof from the chart statement to RH. -/
def HasForward {P : Prop} (profile : LocalRHProfile P) : Prop :=
  profile.status = .equivalent ∨ profile.status = .sufficient

/-- The profile contains an available proof from RH to the chart statement. -/
def HasReverse {P : Prop} (profile : LocalRHProfile P) : Prop :=
  profile.status = .equivalent ∨ profile.status = .necessary

/-- Both directional proof terms force the exact `equivalent` status. In particular,
separate sufficient and necessary labels cannot be silently combined on one profile. -/
theorem status_eq_equivalent_of_hasForward_hasReverse
    {P : Prop} (profile : LocalRHProfile P)
    (hforward : profile.HasForward) (hreverse : profile.HasReverse) :
    profile.status = .equivalent := by
  rcases hforward with hEquivalent | hSufficient
  · exact hEquivalent
  rcases hreverse with hEquivalent | hNecessary
  · exact hEquivalent
  rw [hSufficient] at hNecessary
  cases hNecessary

end LocalRHProfile

/-- Exact logical audit for one actual atlas chart.

The chart's nonvacuity and root-coordinate theorem already live in `CriticalStripChart`.
The audit binds their source identity, names the declaration references when a direction
is present, and requires an exact open gap when a direction is absent. -/
structure ChartAuditEntry
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (i : ι) where
  chartId : String
  binding : SourceBinding
  binding_matches : binding.Matches (atlas.chart i)
  forwardDeclaration : Option String
  reverseDeclaration : Option String
  suppliers : List String
  consumers : List String
  gaps : List AtlasGap
  forward_declaration_present :
    (atlas.comparison i).HasForward →
      ∃ declaration, forwardDeclaration = some declaration
  reverse_declaration_present :
    (atlas.comparison i).HasReverse →
      ∃ declaration, reverseDeclaration = some declaration
  forward_present_no_gap :
    (atlas.comparison i).HasForward →
      ¬ HasOpenGap gaps .missingForwardImplication
  reverse_present_no_gap :
    (atlas.comparison i).HasReverse →
      ¬ HasOpenGap gaps .missingReverseImplication
  forward_absent_reported :
    ¬ (atlas.comparison i).HasForward →
      HasOpenGap gaps .missingForwardImplication
  reverse_absent_reported :
    ¬ (atlas.comparison i).HasReverse →
      HasOpenGap gaps .missingReverseImplication

namespace ChartAuditEntry

/-- Every audited chart has an actual point in its carrier; an empty carrier cannot be
used to pass the logical audit. -/
theorem carrier_nonempty
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i : ι}
    (_entry : ChartAuditEntry atlas i) :
    ∃ x, (atlas.chart i).carrier x :=
  ⟨(atlas.chart i).anchor, (atlas.chart i).anchor_mem⟩

/-- A neutral chart exposes both missing RH directions. -/
theorem neutral_reports_both_directional_gaps
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i : ι}
    (entry : ChartAuditEntry atlas i)
    (hstatus : (atlas.comparison i).status = .neutral) :
    HasOpenGap entry.gaps .missingForwardImplication ∧
      HasOpenGap entry.gaps .missingReverseImplication := by
  constructor
  · apply entry.forward_absent_reported
    intro hforward
    rcases hforward with hEquivalent | hSufficient
    · rw [hstatus] at hEquivalent
      cases hEquivalent
    · rw [hstatus] at hSufficient
      cases hSufficient
  · apply entry.reverse_absent_reported
    intro hreverse
    rcases hreverse with hEquivalent | hNecessary
    · rw [hstatus] at hEquivalent
      cases hEquivalent
    · rw [hstatus] at hNecessary
      cases hNecessary

/-- A sufficient chart keeps the reverse-realization obligation open. -/
theorem sufficient_reports_reverse_gap
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i : ι}
    (entry : ChartAuditEntry atlas i)
    (hstatus : (atlas.comparison i).status = .sufficient) :
    HasOpenGap entry.gaps .missingReverseImplication := by
  apply entry.reverse_absent_reported
  intro hreverse
  rcases hreverse with hEquivalent | hNecessary
  · rw [hstatus] at hEquivalent
    cases hEquivalent
  · rw [hstatus] at hNecessary
    cases hNecessary

/-- A necessary chart keeps the forward-realization obligation open. -/
theorem necessary_reports_forward_gap
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i : ι}
    (entry : ChartAuditEntry atlas i)
    (hstatus : (atlas.comparison i).status = .necessary) :
    HasOpenGap entry.gaps .missingForwardImplication := by
  apply entry.forward_absent_reported
  intro hforward
  rcases hforward with hEquivalent | hSufficient
  · rw [hstatus] at hEquivalent
    cases hEquivalent
  · rw [hstatus] at hSufficient
    cases hSufficient

/-- An equivalent chart cannot retain stale open directional gaps. -/
theorem equivalent_closes_directional_gaps
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i : ι}
    (entry : ChartAuditEntry atlas i)
    (hstatus : (atlas.comparison i).status = .equivalent) :
    ¬ HasOpenGap entry.gaps .missingForwardImplication ∧
      ¬ HasOpenGap entry.gaps .missingReverseImplication :=
  ⟨entry.forward_present_no_gap (Or.inl hstatus),
    entry.reverse_present_no_gap (Or.inl hstatus)⟩

end ChartAuditEntry

/-- Machine-readable audit over the exact subset of charts required by a proof route. -/
structure AtlasGapReport
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) where
  reportId : String
  sourceRevision : String
  required : ι → Prop
  required_nonempty : ∃ i, required i
  audit : ∀ i, required i → ChartAuditEntry atlas i

namespace AtlasGapReport

/-- The report audits every chart in the atlas. -/
def CoversAll
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    (report : AtlasGapReport atlas) : Prop :=
  ∀ i, report.required i

/-- Every required chart has both directional gaps closed. Other structural gaps remain
independent obligations. -/
def DirectionalGapsDischarged
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    (report : AtlasGapReport atlas) : Prop :=
  ∀ i (hi : report.required i),
    ¬ HasOpenGap (report.audit i hi).gaps .missingForwardImplication ∧
      ¬ HasOpenGap (report.audit i hi).gaps .missingReverseImplication

/-- Exact report coverage plus discharge of both logical directions yields the atlas's
existing `GapFree` predicate. This theorem does not close any structural, analytic,
source, overlap, vertical-path, or replay gap. -/
theorem gapFree_of_directionalGapsDischarged
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    (report : AtlasGapReport atlas)
    (hcover : report.CoversAll)
    (hdischarged : report.DirectionalGapsDischarged) :
    atlas.GapFree := by
  intro i
  have hi : report.required i := hcover i
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

end GRWTSK.RiemannHypothesis
```
