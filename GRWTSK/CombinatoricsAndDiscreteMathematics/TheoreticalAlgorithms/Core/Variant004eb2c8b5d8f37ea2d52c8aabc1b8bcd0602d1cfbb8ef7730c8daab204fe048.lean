namespace Surface

namespace Boolean

universe u v w

/-- A Boolean valuation for atoms of type `α`. -/
abbrev Valuation (α : Type u) := α → Bool

/-- Propositional Boolean formulae over atoms of type `α`. -/
inductive Formula (α : Type u) : Type u where
  | var : α → Formula α
  | falsum : Formula α
  | truth : Formula α
  | neg : Formula α → Formula α
  | conj : Formula α → Formula α → Formula α
  | disj : Formula α → Formula α → Formula α
  | impl : Formula α → Formula α → Formula α
  | eqv : Formula α → Formula α → Formula α
deriving Repr, DecidableEq

namespace Formula

variable {α : Type u} {β : Type v} {γ : Type w}

/-- The constant Boolean formula determined by a Boolean value. -/
def const : Bool → Formula α
  | false => .falsum
  | true => .truth

/-- Evaluate a formula under a valuation. -/
def eval (ν : Valuation α) : Formula α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(eval ν p)
  | .conj p q => eval ν p && eval ν q
  | .disj p q => eval ν p || eval ν q
  | .impl p q => !(eval ν p) || eval ν q
  | .eqv p q => eval ν p == eval ν q

@[simp] theorem eval_var (ν : Valuation α) (a : α) :
    eval ν (.var a) = ν a := rfl

@[simp] theorem eval_falsum (ν : Valuation α) :
    eval ν (Formula.falsum : Formula α) = false := rfl

@[simp] theorem eval_truth (ν : Valuation α) :
    eval ν (Formula.truth : Formula α) = true := rfl

@[simp] theorem eval_neg (ν : Valuation α) (p : Formula α) :
    eval ν (.neg p) = !(eval ν p) := rfl

@[simp] theorem eval_conj (ν : Valuation α) (p q : Formula α) :
    eval ν (.conj p q) = (eval ν p && eval ν q) := rfl

@[simp] theorem eval_disj (ν : Valuation α) (p q : Formula α) :
    eval ν (.disj p q) = (eval ν p || eval ν q) := rfl

@[simp] theorem eval_impl (ν : Valuation α) (p q : Formula α) :
    eval ν (.impl p q) = (!(eval ν p) || eval ν q) := rfl

@[simp] theorem eval_eqv (ν : Valuation α) (p q : Formula α) :
    eval ν (.eqv p q) = (eval ν p == eval ν q) := rfl

@[simp] theorem eval_const (ν : Valuation α) (b : Bool) :
    eval ν (const (α := α) b) = b := by
  cases b <;> rfl

/-- Rename the atoms of a formula. -/
def mapAtoms (f : α → β) : Formula α → Formula β
  | .var a => .var (f a)
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => .neg (mapAtoms f p)
  | .conj p q => .conj (mapAtoms f p) (mapAtoms f q)
  | .disj p q => .disj (mapAtoms f p) (mapAtoms f q)
  | .impl p q => .impl (mapAtoms f p) (mapAtoms f q)
  | .eqv p q => .eqv (mapAtoms f p) (mapAtoms f q)

@[simp] theorem mapAtoms_const (f : α → β) (b : Bool) :
    mapAtoms f (const (α := α) b) = const (α := β) b := by
  cases b <;> rfl

@[simp] theorem mapAtoms_id (p : Formula α) :
    mapAtoms (fun a : α => a) p = p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [mapAtoms, ih]
  | conj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [mapAtoms, ihp, ihq]

@[simp] theorem mapAtoms_comp (g : β → γ) (f : α → β) (p : Formula α) :
    mapAtoms g (mapAtoms f p) = mapAtoms (fun a : α => g (f a)) p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [mapAtoms, ih]
  | conj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [mapAtoms, ihp, ihq]

@[simp] theorem eval_mapAtoms (ν : Valuation β) (f : α → β) (p : Formula α) :
    eval ν (mapAtoms f p) = eval (fun a : α => ν (f a)) p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [mapAtoms, eval, ih]
  | conj p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]
  | disj p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]
  | impl p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]
  | eqv p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]

/-- The list of atoms appearing in a formula, with repetitions preserved. -/
def atoms : Formula α → List α
  | .var a => [a]
  | .falsum => []
  | .truth => []
  | .neg p => atoms p
  | .conj p q => atoms p ++ atoms q
  | .disj p q => atoms p ++ atoms q
  | .impl p q => atoms p ++ atoms q
  | .eqv p q => atoms p ++ atoms q

/-- The number of connective and atom nodes in a formula. -/
def size : Formula α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => size p + 1
  | .conj p q => size p + size q + 1
  | .disj p q => size p + size q + 1
  | .impl p q => size p + size q + 1
  | .eqv p q => size p + size q + 1

/-- The depth of a formula tree. -/
def depth : Formula α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => depth p + 1
  | .conj p q => Nat.max (depth p) (depth q) + 1
  | .disj p q => Nat.max (depth p) (depth q) + 1
  | .impl p q => Nat.max (depth p) (depth q) + 1
  | .eqv p q => Nat.max (depth p) (depth q) + 1

@[simp] theorem size_mapAtoms (f : α → β) (p : Formula α) :
    size (mapAtoms f p) = size p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [size, mapAtoms, ih]
  | conj p q ihp ihq => simp [size, mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [size, mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [size, mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [size, mapAtoms, ihp, ihq]

@[simp] theorem depth_mapAtoms (f : α → β) (p : Formula α) :
    depth (mapAtoms f p) = depth p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [depth, mapAtoms, ih]
  | conj p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]

/-- Evaluation is extensional in the valuation. -/
theorem eval_congr {ν μ : Valuation α} (h : ∀ a, ν a = μ a) (p : Formula α) :
    eval ν p = eval μ p := by
  induction p with
  | var a => exact h a
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [eval, ih]
  | conj p q ihp ihq => simp [eval, ihp, ihq]
  | disj p q ihp ihq => simp [eval, ihp, ihq]
  | impl p q ihp ihq => simp [eval, ihp, ihq]
  | eqv p q ihp ihq => simp [eval, ihp, ihq]

/-- Satisfaction under a valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- A formula true under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- A formula true under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- A formula false under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

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

end Surface
