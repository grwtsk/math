# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3672be107f50e2274f9827216f20f53c2db555cd` · SHA-256 `6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Algebra
import Boolean.Formula.Semantics

namespace Boolean.Formula

universe u

variable {α : Type u}

abbrev join : Formula α → Formula α → Formula α :=
  Formula.disj

abbrev meet : Formula α → Formula α → Formula α :=
  Formula.conj

abbrev compl : Formula α → Formula α :=
  Formula.neg

abbrev bot : Formula α :=
  Formula.falsum

abbrev top : Formula α :=
  Formula.truth

theorem join_bot (p : Formula α) :
    Equivalent (.disj p .falsum) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_top (p : Formula α) :
    Equivalent (.conj p .truth) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem join_idem (p : Formula α) :
    Equivalent (.disj p p) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_idem (p : Formula α) :
    Equivalent (.conj p p) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem join_top (p : Formula α) :
    Equivalent (.disj p .truth) .truth := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_bot (p : Formula α) :
    Equivalent (.conj p .falsum) .falsum := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem join_absorb (p q : Formula α) :
    Equivalent (.disj p (.conj p q)) p := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem meet_absorb (p q : Formula α) :
    Equivalent (.conj p (.disj p q)) p := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem join_meet_distrib (p q r : Formula α) :
    Equivalent
      (.disj p (.conj q r))
      (.conj (.disj p q) (.disj p r)) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> cases hr : eval ν r <;> simp [eval, hp, hq, hr]

theorem meet_join_distrib (p q r : Formula α) :
    Equivalent
      (.conj p (.disj q r))
      (.disj (.conj p q) (.conj p r)) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> cases hr : eval ν r <;> simp [eval, hp, hq, hr]

theorem join_compl (p : Formula α) :
    Equivalent (.disj p (.neg p)) .truth := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_compl (p : Formula α) :
    Equivalent (.conj p (.neg p)) .falsum := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem compl_unique {p q : Formula α}
    (hJoin : Equivalent (.disj p q) .truth)
    (hMeet : Equivalent (.conj p q) .falsum) :
    Equivalent q (.neg p) := by
  intro ν
  have hJoinν := hJoin ν
  have hMeetν := hMeet ν
  cases hp : eval ν p <;> cases hq : eval ν q <;>
    simp [eval, hp, hq] at hJoinν hMeetν ⊢

theorem bot_ne_top :
    ¬ Equivalent (bot (α := α)) (top (α := α)) := by
  intro h
  have ht := h (fun _ => false)
  cases ht

end Boolean.Formula
```
