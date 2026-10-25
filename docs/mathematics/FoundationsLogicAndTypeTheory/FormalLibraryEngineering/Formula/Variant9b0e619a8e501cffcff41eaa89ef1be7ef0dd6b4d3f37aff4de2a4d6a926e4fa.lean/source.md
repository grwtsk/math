# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variant9b0e619a8e501cffcff41eaa89ef1be7ef0dd6b4d3f37aff4de2a4d6a926e4fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4e6500dea309799c4f2c1703e429f9a822d1c41` · SHA-256 `9b0e619a8e501cffcff41eaa89ef1be7ef0dd6b4d3f37aff4de2a4d6a926e4fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Algebra.Basic

namespace Surface.Boolean.Formula

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

theorem semantic_join_bot (p : Formula α) :
    Equivalent (.disj p .falsum) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_meet_top (p : Formula α) :
    Equivalent (.conj p .truth) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_join_idem (p : Formula α) :
    Equivalent (.disj p p) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_meet_idem (p : Formula α) :
    Equivalent (.conj p p) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_join_top (p : Formula α) :
    Equivalent (.disj p .truth) .truth := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_meet_bot (p : Formula α) :
    Equivalent (.conj p .falsum) .falsum := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_join_absorb (p q : Formula α) :
    Equivalent (.disj p (.conj p q)) p := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem semantic_meet_absorb (p q : Formula α) :
    Equivalent (.conj p (.disj p q)) p := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem semantic_join_meet_distrib (p q r : Formula α) :
    Equivalent
      (.disj p (.conj q r))
      (.conj (.disj p q) (.disj p r)) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> cases hr : eval ν r <;> simp [eval, hp, hq, hr]

theorem semantic_meet_join_distrib (p q r : Formula α) :
    Equivalent
      (.conj p (.disj q r))
      (.disj (.conj p q) (.conj p r)) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> cases hr : eval ν r <;> simp [eval, hp, hq, hr]

theorem semantic_join_compl (p : Formula α) :
    Equivalent (.disj p (.neg p)) .truth := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_meet_compl (p : Formula α) :
    Equivalent (.conj p (.neg p)) .falsum := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem semantic_compl_unique {p q : Formula α}
    (hJoin : Equivalent (.disj p q) .truth)
    (hMeet : Equivalent (.conj p q) .falsum) :
    Equivalent q (.neg p) := by
  intro ν
  have hJoinν := hJoin ν
  have hMeetν := hMeet ν
  cases hp : eval ν p <;> cases hq : eval ν q <;>
    simp [eval, hp, hq] at hJoinν hMeetν ⊢

theorem semantic_bot_ne_top :
    ¬ Equivalent (bot (α := α)) (top (α := α)) := by
  intro h
  have ht := h (fun _ => false)
  cases ht

end Surface.Boolean.Formula
```
