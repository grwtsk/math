import Boolean.Formula.Semantics

namespace Boolean

universe u

namespace Formula

variable {α : Type u}

theorem equivalent_refl (p : Formula α) :
    Equivalent p p := by
  intro ν
  rfl

theorem equivalent_symm {p q : Formula α} (h : Equivalent p q) :
    Equivalent q p := by
  intro ν
  exact (h ν).symm

theorem equivalent_trans {p q r : Formula α}
    (hpq : Equivalent p q) (hqr : Equivalent q r) :
    Equivalent p r := by
  intro ν
  exact (hpq ν).trans (hqr ν)

theorem entails_refl (p : Formula α) :
    Entails p p := by
  intro ν hp
  exact hp

theorem entails_trans {p q r : Formula α}
    (hpq : Entails p q) (hqr : Entails q r) :
    Entails p r := by
  intro ν hp
  exact hqr ν (hpq ν hp)

theorem entails_of_equivalent {p q : Formula α} (h : Equivalent p q) :
    Entails p q := by
  intro ν hp
  rw [← h ν]
  exact hp

theorem valid_of_equivalent {p q : Formula α} (h : Equivalent p q) :
    Valid p → Valid q := by
  intro hp ν
  rw [← h ν]
  exact hp ν

theorem satisfiable_of_equivalent {p q : Formula α} (h : Equivalent p q) :
    Satisfiable p → Satisfiable q := by
  intro hp
  rcases hp with ⟨ν, hpν⟩
  exact ⟨ν, by
    rw [← h ν]
    exact hpν⟩

theorem unsatisfiable_of_equivalent {p q : Formula α} (h : Equivalent p q) :
    Unsatisfiable p → Unsatisfiable q := by
  intro hp ν
  rw [← h ν]
  exact hp ν

theorem equivalent_neg {p q : Formula α} (h : Equivalent p q) :
    Equivalent (.neg p) (.neg q) := by
  intro ν
  simp [eval, h ν]

theorem equivalent_conj {p p' q q' : Formula α}
    (hp : Equivalent p p') (hq : Equivalent q q') :
    Equivalent (.conj p q) (.conj p' q') := by
  intro ν
  simp [eval, hp ν, hq ν]

theorem equivalent_disj {p p' q q' : Formula α}
    (hp : Equivalent p p') (hq : Equivalent q q') :
    Equivalent (.disj p q) (.disj p' q') := by
  intro ν
  simp [eval, hp ν, hq ν]

theorem equivalent_impl {p p' q q' : Formula α}
    (hp : Equivalent p p') (hq : Equivalent q q') :
    Equivalent (.impl p q) (.impl p' q') := by
  intro ν
  simp [eval, hp ν, hq ν]

theorem equivalent_eqv {p p' q q' : Formula α}
    (hp : Equivalent p p') (hq : Equivalent q q') :
    Equivalent (.eqv p q) (.eqv p' q') := by
  intro ν
  simp [eval, hp ν, hq ν]

@[simp] theorem valid_truth :
    Valid (Formula.truth : Formula α) := by
  intro ν
  rfl

@[simp] theorem unsatisfiable_falsum :
    Unsatisfiable (Formula.falsum : Formula α) := by
  intro ν
  rfl

theorem satisfiable_truth :
    Satisfiable (Formula.truth : Formula α) := by
  exact ⟨fun _ => false, rfl⟩

theorem not_satisfiable_falsum :
    ¬ Satisfiable (Formula.falsum : Formula α) := by
  intro h
  rcases h with ⟨ν, hν⟩
  cases hν

theorem satisfiable_of_valid (p : Formula α) (h : Valid p) :
    Satisfiable p := by
  exact ⟨fun _ => false, h (fun _ => false)⟩

theorem valid_neg_of_unsatisfiable {p : Formula α} (h : Unsatisfiable p) :
    Valid (.neg p) := by
  intro ν
  simp [eval, h ν]

theorem unsatisfiable_of_valid_neg {p : Formula α} (h : Valid (.neg p)) :
    Unsatisfiable p := by
  intro ν
  have hn : eval ν (.neg p) = true := h ν
  cases hp : eval ν p
  · rfl
  · have impossible : False := by
      simp [eval, hp] at hn
    exact False.elim impossible

theorem valid_neg_iff_unsatisfiable (p : Formula α) :
    Valid (.neg p) ↔ Unsatisfiable p := by
  constructor
  · intro h
    exact unsatisfiable_of_valid_neg h
  · intro h
    exact valid_neg_of_unsatisfiable h

theorem unsatisfiable_iff_not_satisfiable (p : Formula α) :
    Unsatisfiable p ↔ ¬ Satisfiable p := by
  constructor
  · intro hu hs
    rcases hs with ⟨ν, hν⟩
    have hf := hu ν
    rw [hν] at hf
    cases hf
  · intro h ν
    cases hp : eval ν p
    · rfl
    · have hs : Satisfiable p := ⟨ν, hp⟩
      exact False.elim (h hs)

theorem valid_iff_not_satisfiable_neg (p : Formula α) :
    Valid p ↔ ¬ Satisfiable (.neg p) := by
  constructor
  · intro hp hs
    rcases hs with ⟨ν, hν⟩
    have hpν := hp ν
    have impossible : False := by
      simp [eval, hpν] at hν
    exact impossible
  · intro h ν
    cases hp : eval ν p
    · have hs : Satisfiable (.neg p) := ⟨ν, by simp [eval, hp]⟩
      exact False.elim (h hs)
    · rfl

theorem equivalent_double_neg (p : Formula α) :
    Equivalent (.neg (.neg p)) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem equivalent_conj_comm (p q : Formula α) :
    Equivalent (.conj p q) (.conj q p) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem equivalent_disj_comm (p q : Formula α) :
    Equivalent (.disj p q) (.disj q p) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem equivalent_conj_assoc (p q r : Formula α) :
    Equivalent (.conj (.conj p q) r) (.conj p (.conj q r)) := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    cases hr : eval ν r <;>
    simp [eval, hp, hq, hr]

theorem equivalent_disj_assoc (p q r : Formula α) :
    Equivalent (.disj (.disj p q) r) (.disj p (.disj q r)) := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    cases hr : eval ν r <;>
    simp [eval, hp, hq, hr]

theorem equivalent_impl_disj (p q : Formula α) :
    Equivalent (.impl p q) (.disj (.neg p) q) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem equivalent_deMorgan_conj (p q : Formula α) :
    Equivalent (.neg (.conj p q)) (.disj (.neg p) (.neg q)) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem equivalent_deMorgan_disj (p q : Formula α) :
    Equivalent (.neg (.disj p q)) (.conj (.neg p) (.neg q)) := by
  intro ν
  cases hp : eval ν p <;> cases hq : eval ν q <;> simp [eval, hp, hq]

theorem valid_impl_refl (p : Formula α) :
    Valid (.impl p p) := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem valid_eqv_refl (p : Formula α) :
    Valid (.eqv p p) := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

end Formula

end Boolean
