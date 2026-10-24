# Complete source: GRWTSK.Combinatorics.Matching.CyclicDutyDeficiency

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e6a8f8a46ac0dccb0830b5a6e37879c0425167c` · SHA-256 `4b3cc3cf497bd00564bfa9f9cb3d9a50034abaeeade76a0d291d95db6aee20c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Finset.Card
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Partial finite duty matching: capacity and missing-duty obstructions

Four marked circle sites and nine separately typed duties are distinct. This
module only establishes finite matching-capacity facts. It does not construct
a cyclic continuous trajectory, prove Hall's full deficiency theorem, provide
runtime scheduling, certify a mathematical capsule or prove any RH statement.

A matching includes source-compatible assignments as an actual injection,
not merely a number claimed to be a maximum matching. The basic shortage
bound holds for any compatible matching and thus also for an optimal one,
when an independently checked optimality theorem is supplied later.

Not run by Lean under the current coordinated F06 hold; source-only proposal.
-/

namespace GRWTSK.Combinatorics.Matching.CyclicDutyDeficiency

universe u v

/-- Four checkpoint labels, distinct in type from the nine duty labels. -/
structure Checkpoint where
  index : Fin 4
  deriving DecidableEq

/-- Nine concrete duty labels; no cast is provided from Checkpoint. -/
structure NineDuty where
  index : Fin 9
  deriving DecidableEq

/-- A partial, compatible one-player-per-duty matching on a required finite set.
covered is the actual assigned duty set, not the merely feasible duty set. -/
structure PartialDutyMatching (Player : Type u) (Duty : Type v)
    [DecidableEq Duty] (compatible : Player → Duty → Prop)
    (required : Finset Duty) where
  covered : Finset Duty
  withinRequired : covered ⊆ required
  playerFor : {q : Duty // q ∈ covered} → Player
  injective : Function.Injective playerFor
  respectsCompatibility : ∀ q, compatible (playerFor q) q.val

section Capacity

variable {Player : Type u} {Duty : Type v}
  [Fintype Player] [Fintype Duty] [DecidableEq Duty]
  {compatible : Player → Duty → Prop} {required : Finset Duty}

/-- Count missing required duties, independently of the reason for the shortage. -/
def PartialDutyMatching.deficiency
    (m : PartialDutyMatching Player Duty compatible required) : ℕ :=
  required.card - m.covered.card

/-- Injectivity bounds the number of simultaneously assigned duties. -/
theorem PartialDutyMatching.covered_card_le_players
    (m : PartialDutyMatching Player Duty compatible required) :
    m.covered.card ≤ Fintype.card Player := by
  have h : Fintype.card {q : Duty // q ∈ m.covered} ≤ Fintype.card Player :=
    Fintype.card_le_of_injective m.playerFor m.injective
  simpa using h

/-- A deficiency cannot be smaller than the cardinal shortage. Compatibility
and other constraints can only increase the missing-duty count. -/
theorem PartialDutyMatching.shortage_le_deficiency
    (m : PartialDutyMatching Player Duty compatible required) :
    required.card - Fintype.card Player ≤ m.deficiency := by
  have h := m.covered_card_le_players
  unfold PartialDutyMatching.deficiency
  omega

/-- A complete simultaneous assignment requires enough players. -/
theorem PartialDutyMatching.complete_requires_capacity
    (m : PartialDutyMatching Player Duty compatible required)
    (complete : m.covered = required) :
    required.card ≤ Fintype.card Player := by
  simpa only [complete] using m.covered_card_le_players

end Capacity

/-- No compatibility relation can assign more than four of nine duties
simultaneously to four players. The deficit is at least five. -/
theorem nine_duties_four_players_have_five_missing
    (compatible : Fin 4 → Fin 9 → Prop)
    (m : PartialDutyMatching (Fin 4) (Fin 9) compatible Finset.univ) :
    5 ≤ m.deficiency := by
  have h := m.shortage_le_deficiency
  norm_num at h ⊢
  exact h

/-- Even a complete compatibility graph cannot yield a full nine-to-four assignment. -/
theorem nine_duties_four_players_not_complete
    (compatible : Fin 4 → Fin 9 → Prop)
    (m : PartialDutyMatching (Fin 4) (Fin 9) compatible Finset.univ) :
    m.covered ≠ Finset.univ := by
  intro complete
  have h := m.complete_requires_capacity complete
  norm_num at h

/-- Exact rational examples of nine-tag deviation. The general balanced
integer minimum theorem remains a separate obligation. -/
theorem four_players_nine_tags_discrepancy :
    4 * |(1 : ℚ) / 4 - 1 / 9| + 5 * |(0 : ℚ) - 1 / 9| = 10 / 9 := by
  norm_num

theorem ten_players_nine_tags_discrepancy :
    |(2 : ℚ) / 10 - 1 / 9| + 8 * |(1 : ℚ) / 10 - 1 / 9| = 8 / 45 := by
  norm_num

/-- Adding a constraint can invalidate the identity map on admitted states. -/
def admissionBefore (_state : Fin 2) : Prop := True

def admissionAfter (state : Fin 2) : Prop := state = 0

theorem admission_after_constraint_not_identity_total :
    ¬ ∀ state : Fin 2, admissionBefore state → admissionAfter state := by
  intro all
  have contradiction : (1 : Fin 2) = 0 := all 1 True.intro
  norm_num at contradiction

end GRWTSK.Combinatorics.Matching.CyclicDutyDeficiency
```
