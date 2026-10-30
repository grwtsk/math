/- Copyright (c) 2026 grwtsk contributors. MIT.

Exact source comparison and theorem return: mathematical foundations for
theoretical review prior to promoted proof-capsule admission. No runtime gate,
human judgment or source-authentication mechanism is asserted.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel checking, transitive axiom
audit: NOT_RUN.
-/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option autoImplicit false

namespace GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification

universe u v

/-- A change of mathematical objects with both actual inverse laws. -/
structure ExactRepresentation (Source : Type u) (Model : Type v) where
  encode : Source → Model
  decode : Model → Source
  decode_encode : ∀ s, decode (encode s) = s
  encode_decode : ∀ m, encode (decode m) = m

/-- Object round trips and a separate property bridge transport a universal
theorem in both directions. Neither is inferred from a shared type/name. -/
theorem source_forall_iff_model_forall
    {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (P : Source → Prop) (Q : Model → Prop)
    (hcompare : ∀ s, P s ↔ Q (r.encode s)) :
    (∀ s, P s) ↔ (∀ m, Q m) := by
  constructor
  · intro h m
    have hm : Q (r.encode (r.decode m)) :=
      (hcompare (r.decode m)).mp (h (r.decode m))
    simpa [r.encode_decode m] using hm
  · intro h s
    exact (hcompare s).mpr (h (r.encode s))

/-- A codec round trip alone does not justify moving an unrelated theorem
about another predicate into the original mathematical source. -/
theorem representation_without_property_bridge_is_insufficient :
    ¬ (∀ (P Q : Unit → Prop) (r : ExactRepresentation Unit Unit),
        (∀ m, Q m) → ∀ s, P s) := by
  intro h
  let r : ExactRepresentation Unit Unit := {
    encode := id
    decode := id
    decode_encode := by intro s; rfl
    encode_decode := by intro m; rfl
  }
  have hq : ∀ m : Unit, True := by intro m; trivial
  have hfalse : False :=
    h (fun _ : Unit => False) (fun _ : Unit => True) r hq ()
  exact hfalse

/-- The original source, model and complete signed residual are related by
an exact mathematical identity, not an adjustable error flag. -/
structure SignedComparison (Index : Type u) where
  source : Index → ℝ
  model : Index → ℝ
  residual : Index → ℝ
  source_eq_model_add_residual :
    ∀ i, source i = model i + residual i

theorem SignedComparison.residual_eq_sub
    {Index : Type u} (c : SignedComparison Index) (i : Index) :
    c.residual i = c.source i - c.model i := by
  rw [c.source_eq_model_add_residual i]
  ring

/-- A one-sided bound on the complete signed observation returns to
the original source without discarding cancellation. -/
theorem SignedComparison.source_upper_of_signed_bound
    {Index : Type u} (c : SignedComparison Index) (upper : Index → ℝ)
    (h : ∀ i, c.model i + c.residual i ≤ upper i) :
    ∀ i, c.source i ≤ upper i := by
  intro i
  rw [c.source_eq_model_add_residual i]
  exact h i

/-- Separate allowances are valid but may lose the complete signed
cancellation that the preceding theorem retains. -/
theorem SignedComparison.source_upper_of_separate_bounds
    {Index : Type u} (c : SignedComparison Index)
    (modelUpper residualUpper : Index → ℝ)
    (hm : ∀ i, c.model i ≤ modelUpper i)
    (hr : ∀ i, c.residual i ≤ residualUpper i) :
    ∀ i, c.source i ≤ modelUpper i + residualUpper i := by
  intro i
  rw [c.source_eq_model_add_residual i]
  exact add_le_add (hm i) (hr i)

/-- An actual negative residual can exactly cancel a positive model term.
This must not be hidden by an absolute-error-only presentation. -/
theorem signed_cancellation_fixture :
    ∃ c : SignedComparison Unit,
      c.source () = 0 ∧ c.model () = 5 ∧ c.residual () = -5 := by
  refine ⟨{
    source := fun _ => 0
    model := fun _ => 5
    residual := fun _ => -5
    source_eq_model_add_residual := by intro _; norm_num
  }, rfl, rfl, rfl⟩

/-- A model-only estimate says nothing about an unrelated source. -/
theorem model_bound_without_comparison_is_insufficient :
    ¬ (∀ (source model : Unit → ℝ),
        (∀ i, model i ≤ 0) → ∀ i, source i ≤ 0) := by
  intro h
  have hmodel : ∀ i : Unit, (fun _ : Unit => (0 : ℝ)) i ≤ 0 := by
    intro i
    norm_num
  have hbad : (1 : ℝ) ≤ 0 :=
    h (fun _ : Unit => (1 : ℝ))
      (fun _ : Unit => (0 : ℝ)) hmodel ()
  norm_num at hbad

/-- Typechecking P → Q does not discharge P or establish Q. -/
theorem conditional_is_not_unconditional :
    ¬ (∀ P Q : Prop, (P → Q) → Q) := by
  intro h
  have hfalse : False := h False False (fun hp => hp)
  exact hfalse

/-- A proved premise gives a legitimate ordinary logical return. -/
theorem conditional_return (P Q : Prop) (himp : P → Q) (hp : P) : Q :=
  himp hp

end GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification
