import GRWTSK.ComputerScience.TheoryOfData.DataStructures.EvidenceResidual

/-!
# Revocation, finite evidence certificates, and execution independence

Local attribution: grwtsk contributors.

This extends `GRWTSK.Evidence`, rather than defining another collection algebra.
The exact revocation law separates old missing obligations from obligations that
lose their last valid witness. Revoking one of several witnesses is not the same
as revoking support. For a finite list of requirements, completeness has a finite
certificate with at most one selected witness per listed requirement. Its proof
selects a head witness and inducts over the tail; duplicate requirements do not
invalidate the bound. This supplies a mathematical consumer for evidence pruning.

Independence is indexed by execution identity, not record identity. Copying a
record, including it twice, or reserializing it cannot manufacture two distinct
executions. These are logical limits on claimed evidence, not authentication or
an implementation of retention. Novelty and independent analytical review: not
assessed. Compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Evidence.PolicyChange

universe u v w

variable {E : Type u} {O : Type v} {I : Type w}

/-- Support disappears only when every formerly sufficient route is unavailable. -/
def Lost (before after : E → O → Prop) (observed : Collection E) (o : O) : Prop :=
  Supported before observed o ∧ ¬ Supported after observed o

/-- A revocation-only policy change enlarges the residual. -/
theorem revocation_enlarges_residual {before after : E → O → Prop}
    (restricts : ∀ e o, after e o → before e o)
    (required : Collection O) (observed : Collection E) :
    Collection.Included (Missing required before observed)
      (Missing required after observed) := by
  intro o h
  refine ⟨h.1, ?_⟩
  intro supported
  obtain ⟨e, he, hv⟩ := supported
  exact h.2 ⟨e, he, restricts e o hv⟩

/-- Exact decomposition; the restriction hypothesis is essential to this form. -/
theorem residual_after_revocation {before after : E → O → Prop}
    (restricts : ∀ e o, after e o → before e o)
    (required : Collection O) (observed : Collection E) (o : O) :
    Missing required after observed o ↔
      Missing required before observed o ∨ (required o ∧ Lost before after observed o) := by
  classical
  constructor
  · intro h
    by_cases old : Supported before observed o
    · exact Or.inr ⟨h.1, old, h.2⟩
    · exact Or.inl ⟨h.1, old⟩
  · intro h
    cases h with
    | inl old => exact revocation_enlarges_residual restricts required observed o old
    | inr lost => exact ⟨lost.1, lost.2.2⟩

/-- An alternative live witness defeats a claim that support has been lost. -/
theorem surviving_witness_prevents_loss {before after : E → O → Prop}
    {observed : Collection E} {o : O} {e : E}
    (present : observed e) (live : after e o) : ¬ Lost before after observed o :=
  fun lost => lost.2 ⟨e, present, live⟩

/-- With arbitrary policy changes, both old and newly valid witnesses are possible. -/
theorem current_support_partition (before after : E → O → Prop)
    (observed : Collection E) (o : O) :
    Supported after observed o ↔
      (∃ e, observed e ∧ before e o ∧ after e o) ∨
      (∃ e, observed e ∧ ¬ before e o ∧ after e o) := by
  classical
  constructor
  · intro h
    obtain ⟨e, he, hv⟩ := h
    by_cases old : before e o
    · exact Or.inl ⟨e, he, old, hv⟩
    · exact Or.inr ⟨e, he, old, hv⟩
  · intro h
    cases h with
    | inl old =>
        obtain ⟨e, he, _, hv⟩ := old
        exact ⟨e, he, hv⟩
    | inr fresh =>
        obtain ⟨e, he, _, hv⟩ := fresh
        exact ⟨e, he, hv⟩

/-- Pruning cannot create evidence, even if it is called cache optimization. -/
theorem pruning_support {valid : E → O → Prop} {observed : Collection E}
    (keep : E → Prop) :
    Collection.Included (Supported valid (fun e => observed e ∧ keep e))
      (Supported valid observed) :=
  supported_mono (fun _ h => h.1)

/-- Pruning is exact at a consumer whose valid witnesses all survive. -/
theorem pruning_exact_at {valid : E → O → Prop} {observed : Collection E}
    {keep : E → Prop} {o : O}
    (retains : ∀ e, observed e → valid e o → keep e) :
    Supported valid (fun e => observed e ∧ keep e) o ↔ Supported valid observed o := by
  constructor
  · exact pruning_support keep o
  · intro h
    obtain ⟨e, he, hv⟩ := h
    exact ⟨e, ⟨he, retains e he hv⟩, hv⟩

/-- A witness may instead be replaced by another admissible witness. -/
theorem completeness_under_witness_replacement {required : Collection O}
    {valid : E → O → Prop} {old retained : Collection E}
    (complete : Complete required valid old)
    (replace : ∀ e o, old e → valid e o → required o →
      ∃ replacement, retained replacement ∧ valid replacement o) :
    Complete required valid retained := by
  intro o ho
  obtain ⟨e, he, hv⟩ := complete o ho
  exact replace e o he hv ho

/-- Finite requirements admit bounded certificates even in an infinite evidence space. -/
theorem finite_certificate (requirements : List O) (valid : E → O → Prop)
    (observed : Collection E) :
    Complete (fun o => o ∈ requirements) valid observed →
      ∃ certificate : List E,
        (∀ e, e ∈ certificate → observed e) ∧
        Complete (fun o => o ∈ requirements) valid (fun e => e ∈ certificate) ∧
        certificate.length ≤ requirements.length := by
  induction requirements with
  | nil =>
      intro _
      refine ⟨[], ?_, ?_, Nat.le_refl 0⟩
      · intro e he
        cases he
      · intro o ho
        cases ho
  | cons o tail ih =>
      intro complete
      obtain ⟨e, present, validHead⟩ := complete o (by simp)
      have completeTail : Complete (fun q => q ∈ tail) valid observed := by
        intro q hq
        exact complete q (by simp [hq])
      obtain ⟨certificate, members, covered, size⟩ := ih completeTail
      refine ⟨e :: certificate, ?_, ?_, Nat.succ_le_succ size⟩
      · intro q hq
        simp only [List.mem_cons] at hq
        cases hq with
        | inl h =>
            cases h
            exact present
        | inr h => exact members q h
      · intro q hq
        simp only [List.mem_cons] at hq
        cases hq with
        | inl h =>
            cases h
            exact ⟨e, by simp, validHead⟩
        | inr h =>
            obtain ⟨witness, member, proof⟩ := covered q h
            exact ⟨witness, by simp [member], proof⟩

/-- Separate execution identity from the identity or number of retained records. -/
def IndependentWitnesses (execution : E → I) (valid : E → O → Prop)
    (observed : Collection E) (o : O) : Prop :=
  ∃ a b, observed a ∧ observed b ∧ valid a o ∧ valid b o ∧
    execution a ≠ execution b

theorem independent_witnesses_support {execution : E → I} {valid : E → O → Prop}
    {observed : Collection E} {o : O}
    (h : IndependentWitnesses execution valid observed o) : Supported valid observed o := by
  obtain ⟨a, _, ha, _, hv, _, _⟩ := h
  exact ⟨a, ha, hv⟩

theorem one_execution_is_not_independence {execution : E → I}
    {valid : E → O → Prop} {observed : Collection E} {o : O} {identity : I}
    (same : ∀ e, observed e → execution e = identity) :
    ¬ IndependentWitnesses execution valid observed o := by
  intro h
  obtain ⟨a, b, ha, hb, _, _, distinct⟩ := h
  exact distinct ((same a ha).trans (same b hb).symm)

theorem duplicate_records_do_not_add_independence (execution : E → I)
    (valid : E → O → Prop) (observed : Collection E) (o : O) :
    IndependentWitnesses execution valid (Collection.join observed observed) o ↔
      IndependentWitnesses execution valid observed o := by
  rw [Collection.join_idempotent]

/-- One revoked witness and one live witness: no lost support. -/
theorem redundant_witness_example :
    (¬ (fun e : Bool => e = true) false) ∧
    Complete (fun _ : Unit => True) (fun e _ => e = true) (fun _ : Bool => True) := by
  constructor
  · intro h
    cases h
  · intro _ _
    exact ⟨true, True.intro, rfl⟩

/-- A newly permitted witness can shrink a residual, so arbitrary changes are not revocations. -/
theorem policy_extension_counterexample :
    Missing (fun _ : Unit => True) (fun _ _ : Unit => False) (fun _ => True) () ∧
    ¬ Missing (fun _ : Unit => True) (fun _ _ : Unit => True) (fun _ => True) () := by
  constructor
  · refine ⟨True.intro, ?_⟩
    intro h
    obtain ⟨_, _, hv⟩ := h
    exact hv
  · intro h
    exact h.2 ⟨(), True.intro, True.intro⟩

end GRWTSK.Evidence.PolicyChange
