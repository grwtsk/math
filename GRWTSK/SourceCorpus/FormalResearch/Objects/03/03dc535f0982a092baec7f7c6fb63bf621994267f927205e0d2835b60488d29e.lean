import Mathematics.Progression.Canonical

/-! # Persistent progression towers -/

namespace Mathematics.Progression

universe u

/-- A progression is a persistent, nonempty sequence. Appending constructs a
new value and does not mutate the predecessor. -/
structure Tower (Payload : Type u) where
  id : ProgressionId
  states : List (State Payload)
  nonempty : states ≠ []
  progressionDigest : Digest

def Tower.append
    (tower : Tower Payload)
    (next : State Payload)
    (nextDigest : Digest) :
    Tower Payload where
  id := tower.id
  states := tower.states ++ [next]
  nonempty := by simp
  progressionDigest := nextDigest

theorem Tower.append_preserves_prefix
    (tower : Tower Payload)
    (next : State Payload)
    (nextDigest : Digest) :
    ∃ suffix,
      (tower.append next nextDigest).states = tower.states ++ suffix := by
  exact ⟨[next], rfl⟩

end Mathematics.Progression
