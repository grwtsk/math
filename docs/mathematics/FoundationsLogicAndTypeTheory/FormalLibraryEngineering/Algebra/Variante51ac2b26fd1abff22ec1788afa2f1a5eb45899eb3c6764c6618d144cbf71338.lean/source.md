# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Algebra.Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f750324bc112c1135287330d44421e3966b1d8f7` · SHA-256 `e51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Formula.Semantics

/-!
# Boolean algebra of formulas modulo semantics

The syntax itself is free, so these laws use semantic equivalence rather than
syntactic equality.  They close the exact dependency chain ending at the
retained `Algebra/Formula.lean` corpus module.
-/

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

abbrev join : Formula α → Formula α → Formula α := Formula.disj
abbrev meet : Formula α → Formula α → Formula α := Formula.conj
abbrev compl : Formula α → Formula α := Formula.neg
abbrev bot : Formula α := Formula.falsum
abbrev top : Formula α := Formula.truth

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
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    simp [eval, hp, hq]

theorem meet_absorb (p q : Formula α) :
    Equivalent (.conj p (.disj p q)) p := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    simp [eval, hp, hq]

theorem join_meet_distrib (p q r : Formula α) :
    Equivalent
      (.disj p (.conj q r))
      (.conj (.disj p q) (.disj p r)) := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    cases hr : eval ν r <;>
    simp [eval, hp, hq, hr]

theorem meet_join_distrib (p q r : Formula α) :
    Equivalent
      (.conj p (.disj q r))
      (.disj (.conj p q) (.conj p r)) := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    cases hr : eval ν r <;>
    simp [eval, hp, hq, hr]

theorem join_compl (p : Formula α) :
    Equivalent (.disj p (.neg p)) .truth := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_compl (p : Formula α) :
    Equivalent (.conj p (.neg p)) .falsum := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem compl_unique
    {p q : Formula α}
    (hJoin : Equivalent (.disj p q) .truth)
    (hMeet : Equivalent (.conj p q) .falsum) :
    Equivalent q (.neg p) := by
  intro ν
  have hJoinν := hJoin ν
  have hMeetν := hMeet ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    simp [eval, hp, hq] at hJoinν hMeetν ⊢

theorem bot_ne_top :
    ¬ Equivalent (bot (α := α)) (top (α := α)) := by
  intro h
  have ht := h (fun _ => false)
  cases ht

end Mathematics.Boolean.Formula
```
