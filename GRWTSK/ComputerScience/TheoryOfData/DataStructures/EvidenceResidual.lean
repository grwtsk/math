import Init

/-!
# Evidence union and the exact residual of verification obligations

Local attribution: grwtsk contributors.

Evidence collections are predicates. Binary merge is disjunction, ordered by
inclusion; the laws below establish its least-upper-bound property. A validity
relation transports evidence to supported obligations by existential image.
That image preserves union. Taking the relative complement in the independently
fixed required obligations reverses inclusion.

`residual_completion_iff` is the main consumer theorem: adding fresh evidence
completes the original requirements exactly when fresh evidence completes the
old residual. Its forward proof eliminates an old witness forbidden by the
residual; its reverse proof splits on whether an old witness exists. This is an
exact logical minimality result, not an algorithmic scheduling optimality claim.

Context transport requires explicit preservation of validity and requirements.
A revoked validity relation supplies a counterexample to time-monotone
acceptance despite unchanged retained observations. Neither set union nor an
empty residual grants permission to act; authorization is modeled separately.

Primary argument: pointwise propositional and existential reasoning. Novelty and
independent analytical review: not assessed. Compilation, fresh kernel checking,
and transitive axiom audit: NOT_RUN. No new axioms or admitted proof terms.
-/

namespace GRWTSK.Evidence

universe u v w

abbrev Collection (A : Type u) := A → Prop

namespace Collection

variable {A : Type u}

def Included (s t : Collection A) : Prop := ∀ a, s a → t a

def join (s t : Collection A) : Collection A := fun a => s a ∨ t a

def empty : Collection A := fun _ => False

theorem included_refl (s : Collection A) : Included s s := fun _ h => h

theorem included_trans {s t u : Collection A} (hst : Included s t)
    (htu : Included t u) : Included s u := fun a h => htu a (hst a h)

theorem included_antisymm {s t : Collection A} (hst : Included s t)
    (hts : Included t s) : s = t := by
  funext a
  exact propext ⟨hst a, hts a⟩

theorem join_comm (s t : Collection A) : join s t = join t s := by
  funext a
  exact propext ⟨Or.symm, Or.symm⟩

theorem join_assoc (s t u : Collection A) : join (join s t) u = join s (join t u) := by
  funext a
  apply propext
  constructor
  · intro h
    cases h with
    | inl h =>
        cases h with
        | inl hs => exact Or.inl hs
        | inr ht => exact Or.inr (Or.inl ht)
    | inr hu => exact Or.inr (Or.inr hu)
  · intro h
    cases h with
    | inl hs => exact Or.inl (Or.inl hs)
    | inr h =>
        cases h with
        | inl ht => exact Or.inl (Or.inr ht)
        | inr hu => exact Or.inr hu

theorem join_idempotent (s : Collection A) : join s s = s := by
  funext a
  exact propext ⟨fun h => h.elim (fun h => h) (fun h => h), Or.inl⟩

theorem join_empty (s : Collection A) : join s empty = s := by
  funext a
  exact propext ⟨fun h => h.elim (fun h => h) False.elim, Or.inl⟩

theorem left_included_join (s t : Collection A) : Included s (join s t) :=
  fun _ h => Or.inl h

theorem right_included_join (s t : Collection A) : Included t (join s t) :=
  fun _ h => Or.inr h

theorem join_least {s t upper : Collection A}
    (hs : Included s upper) (ht : Included t upper) : Included (join s t) upper := by
  intro a h
  exact h.elim (hs a) (ht a)

theorem join_included_iff (s t upper : Collection A) :
    Included (join s t) upper ↔ Included s upper ∧ Included t upper := by
  constructor
  · intro h
    exact ⟨fun a ha => h a (Or.inl ha), fun a ha => h a (Or.inr ha)⟩
  · intro h
    exact join_least h.1 h.2

end Collection

variable {E : Type u} {O : Type v} {C : Type w}

/-- Validity is supplied independently; membership alone is not validity. -/
def Supported (valid : E → O → Prop) (observed : Collection E) : Collection O :=
  fun obligation => ∃ evidence, observed evidence ∧ valid evidence obligation

def Missing (required : Collection O) (valid : E → O → Prop)
    (observed : Collection E) : Collection O :=
  fun obligation => required obligation ∧ ¬ Supported valid observed obligation

def Complete (required : Collection O) (valid : E → O → Prop)
    (observed : Collection E) : Prop :=
  ∀ obligation, required obligation → Supported valid observed obligation

theorem supported_mono {valid : E → O → Prop} {s t : Collection E}
    (h : Collection.Included s t) :
    Collection.Included (Supported valid s) (Supported valid t) := by
  intro o ho
  obtain ⟨e, he, hv⟩ := ho
  exact ⟨e, h e he, hv⟩

theorem supported_join (valid : E → O → Prop) (s t : Collection E) :
    Supported valid (Collection.join s t) =
      Collection.join (Supported valid s) (Supported valid t) := by
  funext o
  apply propext
  constructor
  · intro h
    obtain ⟨e, he, hv⟩ := h
    cases he with
    | inl hs => exact Or.inl ⟨e, hs, hv⟩
    | inr ht => exact Or.inr ⟨e, ht, hv⟩
  · intro h
    cases h with
    | inl hs =>
        obtain ⟨e, he, hv⟩ := hs
        exact ⟨e, Or.inl he, hv⟩
    | inr ht =>
        obtain ⟨e, he, hv⟩ := ht
        exact ⟨e, Or.inr he, hv⟩

theorem supported_empty (valid : E → O → Prop) :
    Supported valid Collection.empty = Collection.empty := by
  funext o
  apply propext
  constructor
  · intro h
    obtain ⟨_, he, _⟩ := h
    exact he
  · intro h
    exact False.elim h

theorem missing_antitone {required : Collection O} {valid : E → O → Prop}
    {s t : Collection E} (h : Collection.Included s t) :
    Collection.Included (Missing required valid t) (Missing required valid s) := by
  intro o ho
  exact ⟨ho.1, fun hs => ho.2 (supported_mono h o hs)⟩

theorem complete_mono {required : Collection O} {valid : E → O → Prop}
    {s t : Collection E} (h : Collection.Included s t)
    (complete : Complete required valid s) : Complete required valid t := by
  intro o ho
  exact supported_mono h o (complete o ho)

theorem complete_iff_no_missing (required : Collection O) (valid : E → O → Prop)
    (observed : Collection E) :
    Complete required valid observed ↔ ∀ o, ¬ Missing required valid observed o := by
  constructor
  · intro h o ho
    exact ho.2 (h o ho.1)
  · intro h o ho
    classical
    by_cases hs : Supported valid observed o
    · exact hs
    · exact False.elim (h o ⟨ho, hs⟩)

theorem missing_join_iff (required : Collection O) (valid : E → O → Prop)
    (s t : Collection E) (o : O) :
    Missing required valid (Collection.join s t) o ↔
      Missing required valid s o ∧ Missing required valid t o := by
  constructor
  · intro h
    constructor
    · exact ⟨h.1, fun hs => h.2 (supported_mono (Collection.left_included_join s t) o hs)⟩
    · exact ⟨h.1, fun ht => h.2 (supported_mono (Collection.right_included_join s t) o ht)⟩
  · intro h
    refine ⟨h.1.1, ?_⟩
    intro hs
    obtain ⟨e, he, hv⟩ := hs
    cases he with
    | inl he => exact h.1.2 ⟨e, he, hv⟩
    | inr he => exact h.2.2 ⟨e, he, hv⟩

/-- Necessary and sufficient evidence for exactly the still-missing work. -/
theorem residual_completion_iff (required : Collection O) (valid : E → O → Prop)
    (old fresh : Collection E) :
    Complete required valid (Collection.join old fresh) ↔
      Complete (Missing required valid old) valid fresh := by
  constructor
  · intro h o ho
    obtain ⟨e, he, hv⟩ := h o ho.1
    cases he with
    | inl he => exact False.elim (ho.2 ⟨e, he, hv⟩)
    | inr he => exact ⟨e, he, hv⟩
  · intro h o ho
    classical
    by_cases hs : Supported valid old o
    · exact supported_mono (Collection.left_included_join old fresh) o hs
    · exact supported_mono (Collection.right_included_join old fresh) o (h o ⟨ho, hs⟩)

/-- Any successful supplement necessarily covers the entire old residual. -/
theorem residual_is_necessary {required : Collection O} {valid : E → O → Prop}
    {old fresh : Collection E} (h : Complete required valid (Collection.join old fresh)) :
    Collection.Included (Missing required valid old) (Supported valid fresh) :=
  (residual_completion_iff required valid old fresh).mp h

/-- Verifying a superset of the residual suffices without changing old evidence. -/
theorem selected_work_suffices {required selected : Collection O}
    {valid : E → O → Prop} {old fresh : Collection E}
    (selected_all : Collection.Included (Missing required valid old) selected)
    (verified : Complete selected valid fresh) :
    Complete required valid (Collection.join old fresh) := by
  apply (residual_completion_iff required valid old fresh).mpr
  intro o ho
  exact verified o (selected_all o ho)

/-- Only obligations with a valid witness may disappear from the residual. -/
theorem missing_removed_has_fresh_witness {required : Collection O}
    {valid : E → O → Prop} {old fresh : Collection E} {o : O}
    (wasMissing : Missing required valid old o)
    (nowSupported : Supported valid (Collection.join old fresh) o) :
    Supported valid fresh o := by
  obtain ⟨e, he, hv⟩ := nowSupported
  cases he with
  | inl he => exact False.elim (wasMissing.2 ⟨e, he, hv⟩)
  | inr he => exact ⟨e, he, hv⟩

/-- Current validity, not mere possession of a historical record, licenses reuse. -/
theorem complete_transport {requiredOld requiredNew : Collection O}
    {validOld validNew : E → O → Prop} {observed : Collection E}
    (requirements : Collection.Included requiredNew requiredOld)
    (validity : ∀ e o, validOld e o → validNew e o)
    (h : Complete requiredOld validOld observed) :
    Complete requiredNew validNew observed := by
  intro o ho
  obtain ⟨e, he, hv⟩ := h o (requirements o ho)
  exact ⟨e, he, validity e o hv⟩

/-- Retained evidence may be identical while current admissibility is revoked. -/
theorem context_change_can_revoke :
    Complete (fun _ : Unit => True) (fun _ _ : Unit => (0 : Nat) = 0)
      (fun _ => True) ∧
    ¬ Complete (fun _ : Unit => True) (fun _ _ : Unit => (1 : Nat) = 0)
      (fun _ => True) := by
  constructor
  · intro _ _
    exact ⟨(), True.intro, rfl⟩
  · intro h
    obtain ⟨_, _, hv⟩ := h () True.intro
    cases hv

end GRWTSK.Evidence
