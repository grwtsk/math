# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tower.Variant03dc535f0982a092baec7f7c6fb63bf621994267f927205e0d2835b60488d29e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eca4f731bd6299dab1c9a5b58bebc7a7f0dbdae3` · SHA-256 `03dc535f0982a092baec7f7c6fb63bf621994267f927205e0d2835b60488d29e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
