/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Function
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Tactic.Ring

/-!
# CCC/0.1 framed ports

Endpoints retain an exact source identity and revision, a carrier, and an explicit
observer family. A port has a restricted traversal domain and a fixed,
nonnegative error budget for every observer. Its residual is the actual signed
target-minus-source discrepancy, with a universal bound on the whole domain.

Composition follows the actual maps, restricts the domain by the preimage of the
second domain, and adds both residuals and budgets. The common intermediate
endpoint is a type parameter, so a different revision or carrier cannot silently
be substituted. An invertible frame change and an information-losing reduction
have different types; the latter must retain a reconstructing discarded packet.

Gram transport and signed-form transport are independent proof obligations.
These abstractions assert no arithmetic cancellation or RH estimate.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w

/-- Versioned mathematical source metadata. Identity and revision are retained
as exact strings, without a claim that a string authenticates external evidence. -/
structure EndpointIdentity where
  source : String
  revision : String
  deriving DecidableEq

/-- A local chart is accompanied by the globally retained lifted address. -/
structure FrameAddress where
  chart : String
  unwrappedPhase : ℝ
  winding : ℤ
  sourceAddress : String

/-- The observer index is explicit and shared by a composable chain. These real
readouts are signed quantities, with no positivity premise. -/
structure FiberEndpoint (Observer : Type v) where
  identity : EndpointIdentity
  frame : FrameAddress
  Carrier : Type u
  observe : Observer → Carrier → ℝ

/-- A total backing map is usable only on `domain`. The fixed budget depends on
the declared observer, not on a source point sampled after traversal. -/
structure FramedPort {Observer : Type v}
    (source target : FiberEndpoint.{u, v} Observer) where
  domain : Set source.Carrier
  map : source.Carrier → target.Carrier
  residual : source.Carrier → Observer → ℝ
  residual_eq_defect : ∀ x ∈ domain, ∀ i,
    residual x i = target.observe i (map x) - source.observe i x
  errorBudget : Observer → ℝ
  errorBudget_nonnegative : ∀ i, 0 ≤ errorBudget i
  residual_bound : ∀ x ∈ domain, ∀ i, |residual x i| ≤ errorBudget i

namespace FramedPort

variable {Observer : Type v}
variable {A B C D : FiberEndpoint.{u, v} Observer}

/-- The full observer defect is bounded for every admitted input. -/
theorem defect_bound (P : FramedPort A B) (x : A.Carrier) (hx : x ∈ P.domain)
    (i : Observer) :
    |B.observe i (P.map x) - A.observe i x| ≤ P.errorBudget i := by
  rw [← P.residual_eq_defect x hx i]
  exact P.residual_bound x hx i

/-- Domain compatibility uses the actual intermediate state. -/
def comp (P : FramedPort A B) (Q : FramedPort B C) : FramedPort A C where
  domain := P.domain ∩ P.map ⁻¹' Q.domain
  map := Q.map ∘ P.map
  residual := fun x i => P.residual x i + Q.residual (P.map x) i
  residual_eq_defect := by
    intro x hx i
    rw [P.residual_eq_defect x hx.1 i, Q.residual_eq_defect (P.map x) hx.2 i]
    dsimp [Function.comp_def]
    ring
  errorBudget := fun i => P.errorBudget i + Q.errorBudget i
  errorBudget_nonnegative := fun i =>
    add_nonneg (P.errorBudget_nonnegative i) (Q.errorBudget_nonnegative i)
  residual_bound := by
    intro x hx i
    exact (abs_add_le (P.residual x i) (Q.residual (P.map x) i)).trans
      (add_le_add (P.residual_bound x hx.1 i) (Q.residual_bound (P.map x) hx.2 i))

@[simp]
theorem mem_comp_domain (P : FramedPort A B) (Q : FramedPort B C) (x : A.Carrier) :
    x ∈ (P.comp Q).domain ↔ x ∈ P.domain ∧ P.map x ∈ Q.domain := Iff.rfl

@[simp]
theorem comp_map (P : FramedPort A B) (Q : FramedPort B C) (x : A.Carrier) :
    (P.comp Q).map x = Q.map (P.map x) := rfl

/-- The second residual is evaluated after the first traversal. -/
@[simp]
theorem comp_residual (P : FramedPort A B) (Q : FramedPort B C)
    (x : A.Carrier) (i : Observer) :
    (P.comp Q).residual x i = P.residual x i + Q.residual (P.map x) i := rfl

@[simp]
theorem comp_errorBudget (P : FramedPort A B) (Q : FramedPort B C) (i : Observer) :
    (P.comp Q).errorBudget i = P.errorBudget i + Q.errorBudget i := rfl

/-- The consumer readout includes both signed residuals at their actual inputs. -/
theorem composition_observation (P : FramedPort A B) (Q : FramedPort B C)
    (x : A.Carrier) (hx : x ∈ (P.comp Q).domain) (i : Observer) :
    C.observe i (Q.map (P.map x)) =
      A.observe i x + P.residual x i + Q.residual (P.map x) i := by
  rw [P.residual_eq_defect x hx.1 i, Q.residual_eq_defect (P.map x) hx.2 i]
  ring

/-- The actual composite observation defect has the sum of the certified
observer budgets as a universal bound on the composite traversal domain. -/
theorem comp_defect_bound (P : FramedPort A B) (Q : FramedPort B C)
    (x : A.Carrier) (hx : x ∈ (P.comp Q).domain) (i : Observer) :
    |C.observe i (Q.map (P.map x)) - A.observe i x| ≤
      P.errorBudget i + Q.errorBudget i :=
  (P.comp Q).defect_bound x hx i

/-- Identity traversal is available everywhere with zero residual and budget. -/
def identity (A : FiberEndpoint.{u, v} Observer) : FramedPort A A where
  domain := Set.univ
  map := id
  residual := fun _ _ => 0
  residual_eq_defect := by
    intro x _ i
    exact (sub_self (A.observe i x)).symm
  errorBudget := fun _ => 0
  errorBudget_nonnegative := fun _ => le_refl 0
  residual_bound := by simp

@[simp]
theorem identity_domain (A : FiberEndpoint.{u, v} Observer) :
    (identity A).domain = Set.univ := rfl

@[simp]
theorem identity_map (A : FiberEndpoint.{u, v} Observer) (x : A.Carrier) :
    (identity A).map x = x := rfl

@[simp]
theorem identity_residual (A : FiberEndpoint.{u, v} Observer) (x : A.Carrier)
    (i : Observer) : (identity A).residual x i = 0 := rfl

@[simp]
theorem identity_errorBudget (A : FiberEndpoint.{u, v} Observer) (i : Observer) :
    (identity A).errorBudget i = 0 := rfl

@[simp]
theorem comp_identity_domain (P : FramedPort A B) :
    (P.comp (identity B)).domain = P.domain := by
  ext x
  simp [comp, identity]

@[simp]
theorem identity_comp_domain (P : FramedPort A B) :
    ((identity A).comp P).domain = P.domain := by
  ext x
  simp [comp, identity]

@[simp]
theorem comp_identity_map (P : FramedPort A B) :
    (P.comp (identity B)).map = P.map := rfl

@[simp]
theorem identity_comp_map (P : FramedPort A B) :
    ((identity A).comp P).map = P.map := rfl

@[simp]
theorem comp_identity_residual (P : FramedPort A B) (x : A.Carrier) (i : Observer) :
    (P.comp (identity B)).residual x i = P.residual x i := by
  simp

@[simp]
theorem identity_comp_residual (P : FramedPort A B) (x : A.Carrier) (i : Observer) :
    ((identity A).comp P).residual x i = P.residual x i := by
  simp

@[simp]
theorem comp_identity_errorBudget (P : FramedPort A B) (i : Observer) :
    (P.comp (identity B)).errorBudget i = P.errorBudget i := by
  simp

@[simp]
theorem identity_comp_errorBudget (P : FramedPort A B) (i : Observer) :
    ((identity A).comp P).errorBudget i = P.errorBudget i := by
  simp

theorem comp_domain_assoc (P : FramedPort A B) (Q : FramedPort B C)
    (R : FramedPort C D) :
    ((P.comp Q).comp R).domain = (P.comp (Q.comp R)).domain := by
  ext x
  exact and_assoc

theorem comp_map_assoc (P : FramedPort A B) (Q : FramedPort B C)
    (R : FramedPort C D) :
    ((P.comp Q).comp R).map = (P.comp (Q.comp R)).map := rfl

theorem comp_residual_assoc (P : FramedPort A B) (Q : FramedPort B C)
    (R : FramedPort C D) (x : A.Carrier) (i : Observer) :
    ((P.comp Q).comp R).residual x i = (P.comp (Q.comp R)).residual x i := by
  exact add_assoc _ _ _

theorem comp_errorBudget_assoc (P : FramedPort A B) (Q : FramedPort B C)
    (R : FramedPort C D) (i : Observer) :
    ((P.comp Q).comp R).errorBudget i = (P.comp (Q.comp R)).errorBudget i := by
  exact add_assoc _ _ _

/-- A zero residual preserves the declared source observation exactly. -/
theorem observe_eq_of_zero_residual (P : FramedPort A B)
    (x : A.Carrier) (hx : x ∈ P.domain) (i : Observer)
    (hzero : P.residual x i = 0) : B.observe i (P.map x) = A.observe i x := by
  have hdefect := P.residual_eq_defect x hx i
  rw [hzero] at hdefect
  exact sub_eq_zero.mp hdefect.symm

/-- A certified zero budget forces zero residual on the whole admitted domain. -/
theorem residual_eq_zero_of_zero_budget (P : FramedPort A B)
    (x : A.Carrier) (hx : x ∈ P.domain) (i : Observer)
    (hzero : P.errorBudget i = 0) : P.residual x i = 0 := by
  have hb := P.residual_bound x hx i
  rw [hzero] at hb
  exact abs_eq_zero.mp (le_antisymm hb (abs_nonneg _))

/-- Exact preservation is a consequence of the certified bound, not a claim
obtained merely by setting an unverified numeric budget to zero. -/
theorem observe_eq_of_zero_budget (P : FramedPort A B)
    (x : A.Carrier) (hx : x ∈ P.domain) (i : Observer)
    (hzero : P.errorBudget i = 0) : B.observe i (P.map x) = A.observe i x :=
  P.observe_eq_of_zero_residual x hx i (P.residual_eq_zero_of_zero_budget x hx i hzero)

end FramedPort

/-- An invertible change of coordinates includes an actual equivalence and an
independently checked intertwining equality for every declared observer. -/
structure InvertibleFrameChange {Observer : Type v}
    (source target : FiberEndpoint.{u, v} Observer) where
  equiv : source.Carrier ≃ target.Carrier
  observable_transport : ∀ i x, target.observe i (equiv x) = source.observe i x

namespace InvertibleFrameChange

variable {Observer : Type v} {A B : FiberEndpoint.{u, v} Observer}

/-- An exact frame change yields a full-domain, zero-budget port. -/
def toPort (F : InvertibleFrameChange A B) : FramedPort A B where
  domain := Set.univ
  map := F.equiv
  residual := fun _ _ => 0
  residual_eq_defect := by
    intro x _ i
    rw [F.observable_transport i x, sub_self]
  errorBudget := fun _ => 0
  errorBudget_nonnegative := fun _ => le_refl 0
  residual_bound := by simp

theorem reconstruct (F : InvertibleFrameChange A B) (x : A.Carrier) :
    F.equiv.symm (F.equiv x) = x := F.equiv.symm_apply_apply x

end InvertibleFrameChange

/-- A genuinely noninjective reduction must retain discarded data and an exact
reconstruction law. For arbitrary carriers, `losesDistinction` records the
information loss; a linear rank theorem would require separate linear data. -/
structure RankLosingReduction {Observer : Type v}
    (source target : FiberEndpoint.{u, v} Observer) (Discarded : Type w) where
  reduce : source.Carrier → target.Carrier
  discard : source.Carrier → Discarded
  reconstruct : target.Carrier → Discarded → source.Carrier
  reconstruct_packet : ∀ x, reconstruct (reduce x) (discard x) = x
  losesDistinction : ∃ x y, x ≠ y ∧ reduce x = reduce y

namespace RankLosingReduction

variable {Observer : Type v} {A B : FiberEndpoint.{u, v} Observer} {Discarded : Type w}

/-- Both retained and discarded pieces are addressable in the evidence packet. -/
def packet (R : RankLosingReduction A B Discarded) (x : A.Carrier) :
    B.Carrier × Discarded := (R.reduce x, R.discard x)

theorem reconstruct_packet_exact (R : RankLosingReduction A B Discarded)
    (x : A.Carrier) : R.reconstruct (R.packet x).1 (R.packet x).2 = x :=
  R.reconstruct_packet x

/-- The retained coordinate loses information, while the complete packet does
not. This proof uses the reconstruction certificate. -/
theorem packet_injective (R : RankLosingReduction A B Discarded) :
    Function.Injective R.packet := by
  intro x y h
  have hr := congrArg (fun p : B.Carrier × Discarded => R.reconstruct p.1 p.2) h
  simpa only [R.reconstruct_packet_exact] using hr

theorem reduce_not_injective (R : RankLosingReduction A B Discarded) :
    ¬ Function.Injective R.reduce := by
  intro h
  obtain ⟨x, y, hne, heq⟩ := R.losesDistinction
  exact hne (h heq)

/-- Every source observer can be recovered from the complete packet. No such
reconstruction is inferred from the retained coordinate alone. -/
theorem recover_source_observe (R : RankLosingReduction A B Discarded)
    (x : A.Carrier) (i : Observer) :
    A.observe i (R.reconstruct (R.packet x).1 (R.packet x).2) = A.observe i x := by
  rw [R.reconstruct_packet_exact]

end RankLosingReduction

/-- Positive Gram geometry is separate data from the signed observer family. -/
structure PortGram {Observer : Type v} (E : FiberEndpoint.{u, v} Observer) where
  pairing : E.Carrier → E.Carrier → ℝ
  symmetric : ∀ x y, pairing x y = pairing y x
  nonnegative : ∀ x, 0 ≤ pairing x x

/-- Gram preservation proves only the specified Gram equality. -/
def GramTransport {Observer : Type v} {A B : FiberEndpoint.{u, v} Observer}
    (sourceGram : PortGram A) (targetGram : PortGram B)
    (map : A.Carrier → B.Carrier) : Prop :=
  ∀ x y, targetGram.pairing (map x) (map y) = sourceGram.pairing x y

/-- An independently declared signed form requires its own transport proof. It
is not derived from positivity or preservation of `PortGram`. -/
def SignedFormTransport {Observer : Type v} {A B : FiberEndpoint.{u, v} Observer}
    (sourceForm : A.Carrier → A.Carrier → ℝ)
    (targetForm : B.Carrier → B.Carrier → ℝ)
    (map : A.Carrier → B.Carrier) : Prop :=
  ∀ x y, targetForm (map x) (map y) = sourceForm x y

end GRWTSK.ProofHorizon.CorkscrewChamberCap
