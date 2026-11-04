/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.RealFunctions.PartialMapComposition

/-!
# Exact preconditions and realized images of restricted maps

The existing `FramedPort` has a total backing map but a restricted domain.
`precondition P T` is the greatest set of inputs that are both admitted and
mapped into `T`. `realizedImage P S` includes only admitted inputs from `S`.
The distinction prevents a total backing function from being confused with an
available traversal.

The main identities are contravariant composition of preconditions and
covariant composition of realized images. Their proofs expand intersection,
inverse image, and direct image, retaining the actual intermediate point.
`composed_return` consumes an exact precondition and returns both the requested
postcondition and the repository's existing composite observer-error bound.
Thus reachability and quantitative fidelity remain separate proof obligations.

The `nowhere` counterexample has an injective backing map and zero error budget
but no admitted input. An invertible full-domain frame change, in contrast,
transports nonempty target sets to nonempty preconditions. This is an explicit
comparison of domains, not an inference from the numeric budget alone.

No runtime availability, authentication, or external accessibility claim is
asserted. The mathematical results are consequences of the supplied domains,
maps, and certificates; no prior-art novelty or independent review is claimed.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v

namespace FramedPort

variable {Observer : Type v}
variable {A B C : FiberEndpoint.{u, v} Observer}

/-- The greatest admitted source set guaranteeing a specified target set. -/
def precondition (P : FramedPort A B) (post : Set B.Carrier) : Set A.Carrier :=
  P.domain ∩ P.map ⁻¹' post

/-- Only inputs in the actual traversal domain contribute to this image. -/
def realizedImage (P : FramedPort A B) (input : Set A.Carrier) : Set B.Carrier :=
  P.map '' (input ∩ P.domain)

@[simp] theorem mem_precondition (P : FramedPort A B)
    (post : Set B.Carrier) (x : A.Carrier) :
    x ∈ P.precondition post ↔ x ∈ P.domain ∧ P.map x ∈ post := Iff.rfl

/-- Exact weakest-precondition characterization, including domain admission. -/
theorem subset_precondition_iff (P : FramedPort A B)
    (input : Set A.Carrier) (post : Set B.Carrier) :
    input ⊆ P.precondition post ↔
      input ⊆ P.domain ∧ Set.MapsTo P.map input post := by
  constructor
  · intro h
    exact ⟨fun _ hx => (h hx).1, fun _ hx => (h hx).2⟩
  · rintro ⟨hdomain, hmap⟩ x hx
    exact ⟨hdomain hx, hmap hx⟩

theorem precondition_mono (P : FramedPort A B) {s t : Set B.Carrier}
    (hst : s ⊆ t) : P.precondition s ⊆ P.precondition t :=
  fun _ hx => ⟨hx.1, hst hx.2⟩

theorem realizedImage_mono (P : FramedPort A B) {s t : Set A.Carrier}
    (hst : s ⊆ t) : P.realizedImage s ⊆ P.realizedImage t := by
  rintro y ⟨x, hx, rfl⟩
  exact ⟨x, ⟨hst hx.1, hx.2⟩, rfl⟩

@[simp] theorem precondition_univ (P : FramedPort A B) :
    P.precondition Set.univ = P.domain := by
  apply Set.ext
  intro x
  exact ⟨And.left, fun hx => ⟨hx, trivial⟩⟩

@[simp] theorem precondition_empty (P : FramedPort A B) :
    P.precondition ∅ = ∅ := by
  apply Set.ext
  intro x
  exact ⟨fun hx => hx.2, fun hx => False.elim hx⟩

theorem precondition_inter (P : FramedPort A B) (s t : Set B.Carrier) :
    P.precondition (s ∩ t) = P.precondition s ∩ P.precondition t := by
  apply Set.ext
  intro x
  constructor
  · intro hx
    exact ⟨⟨hx.1, hx.2.1⟩, ⟨hx.1, hx.2.2⟩⟩
  · intro hx
    exact ⟨hx.1.1, hx.1.2, hx.2.2⟩

theorem precondition_union (P : FramedPort A B) (s t : Set B.Carrier) :
    P.precondition (s ∪ t) = P.precondition s ∪ P.precondition t := by
  apply Set.ext
  intro x
  constructor
  · intro hx
    rcases hx.2 with hs | ht
    · exact Or.inl ⟨hx.1, hs⟩
    · exact Or.inr ⟨hx.1, ht⟩
  · intro hx
    rcases hx with hs | ht
    · exact ⟨hs.1, Or.inl hs.2⟩
    · exact ⟨ht.1, Or.inr ht.2⟩

/-- Arbitrary intersections retain the domain, including an empty index family. -/
theorem precondition_iInter {ι : Sort*} (P : FramedPort A B)
    (post : ι → Set B.Carrier) :
    P.precondition (⋂ i, post i) = P.domain ∩ ⋂ i, P.precondition (post i) := by
  apply Set.ext
  intro x
  simp only [mem_precondition, Set.mem_inter_iff, Set.mem_iInter]
  constructor
  · rintro ⟨hd, hpost⟩
    exact ⟨hd, fun i => ⟨hd, hpost i⟩⟩
  · rintro ⟨hd, hpost⟩
    exact ⟨hd, fun i => (hpost i).2⟩

/-- Preconditions compose backwards through the actual intermediate state. -/
theorem precondition_comp (P : FramedPort A B) (Q : FramedPort B C)
    (post : Set C.Carrier) :
    (P.comp Q).precondition post = P.precondition (Q.precondition post) := by
  apply Set.ext
  intro x
  change ((x ∈ P.domain ∧ P.map x ∈ Q.domain) ∧ Q.map (P.map x) ∈ post) ↔
    (x ∈ P.domain ∧ P.map x ∈ Q.domain ∧ Q.map (P.map x) ∈ post)
  exact and_assoc

@[simp] theorem precondition_identity (A : FiberEndpoint.{u, v} Observer)
    (post : Set A.Carrier) : (identity A).precondition post = post := by
  apply Set.ext
  intro x
  exact ⟨And.right, fun hx => ⟨trivial, hx⟩⟩

/-- Realized images compose forwards, with both domain obligations retained. -/
theorem realizedImage_comp (P : FramedPort A B) (Q : FramedPort B C)
    (input : Set A.Carrier) :
    (P.comp Q).realizedImage input = Q.realizedImage (P.realizedImage input) := by
  apply Set.ext
  intro z
  constructor
  · rintro ⟨x, hx, rfl⟩
    exact ⟨P.map x, ⟨⟨x, ⟨hx.1, hx.2.1⟩, rfl⟩, hx.2.2⟩, rfl⟩
  · rintro ⟨y, ⟨⟨x, hx, hxy⟩, hy⟩, hyz⟩
    refine ⟨x, ⟨hx.1, hx.2, ?_⟩, ?_⟩
    · exact hxy.symm ▸ hy
    · exact (congrArg Q.map hxy).trans hyz

/-- Image correctness alone ignores inadmissible inputs; admission is a separate conjunct. -/
theorem precondition_iff_admitted_and_image (P : FramedPort A B)
    (input : Set A.Carrier) (post : Set B.Carrier) :
    input ⊆ P.precondition post ↔
      input ⊆ P.domain ∧ P.realizedImage input ⊆ post := by
  constructor
  · intro h
    refine ⟨fun _ hx => (h hx).1, ?_⟩
    rintro y ⟨x, hx, rfl⟩
    exact (h hx.1).2
  · rintro ⟨hdomain, himage⟩ x hx
    exact ⟨hdomain hx, himage ⟨x, ⟨hx, hdomain hx⟩, rfl⟩⟩

/-- Realized nonemptiness is equivalent to an actual admitted input witness. -/
theorem realizedImage_nonempty_iff (P : FramedPort A B) (input : Set A.Carrier) :
    (P.realizedImage input).Nonempty ↔ (input ∩ P.domain).Nonempty := by
  constructor
  · rintro ⟨y, x, hx, _⟩
    exact ⟨x, hx⟩
  · rintro ⟨x, hx⟩
    exact ⟨P.map x, x, hx, rfl⟩

/-- The consumer receives both the requested result and the certified discrepancy bound. -/
theorem composed_return (P : FramedPort A B) (Q : FramedPort B C)
    (post : Set C.Carrier) (x : A.Carrier)
    (hx : x ∈ P.precondition (Q.precondition post)) (i : Observer) :
    Q.map (P.map x) ∈ post ∧
      |C.observe i (Q.map (P.map x)) - A.observe i x| ≤
        P.errorBudget i + Q.errorBudget i :=
  ⟨hx.2.2, P.comp_defect_bound Q x ⟨hx.1, hx.2.1⟩ i⟩

/-- A backing identity with an empty traversal domain. -/
def nowhere (A : FiberEndpoint.{u, v} Observer) : FramedPort A A where
  domain := ∅
  map := id
  residual := fun _ _ => 0
  residual_eq_defect := by
    intro x hx
    exact False.elim hx
  errorBudget := fun _ => 0
  errorBudget_nonnegative := fun _ => le_refl 0
  residual_bound := by
    intro x hx
    exact False.elim hx

/-- Neither injectivity nor perfect numerical fidelity proves domain availability. -/
theorem zero_error_injective_unavailable (A : FiberEndpoint.{u, v} Observer) :
    Function.Injective (nowhere A).map ∧
      (∀ i, (nowhere A).errorBudget i = 0) ∧ (nowhere A).domain = ∅ :=
  ⟨fun _ _ h => h, (fun _ => rfl), rfl⟩

@[simp] theorem nowhere_precondition (A : FiberEndpoint.{u, v} Observer)
    (post : Set A.Carrier) : (nowhere A).precondition post = ∅ := by
  apply Set.ext
  intro x
  exact ⟨fun hx => hx.1, fun hx => False.elim hx⟩

end FramedPort

namespace InvertibleFrameChange

variable {Observer : Type v} {A B : FiberEndpoint.{u, v} Observer}

/-- Full-domain invertible transport has no additional admission loss. -/
theorem toPort_precondition (F : InvertibleFrameChange A B) (post : Set B.Carrier) :
    F.toPort.precondition post = F.equiv ⁻¹' post := by
  apply Set.ext
  intro x
  exact ⟨And.right, fun hx => ⟨trivial, hx⟩⟩

/-- A target witness can be transported back to an admitted source witness. -/
theorem precondition_nonempty_iff (F : InvertibleFrameChange A B)
    (post : Set B.Carrier) :
    (F.toPort.precondition post).Nonempty ↔ post.Nonempty := by
  constructor
  · rintro ⟨x, hx⟩
    exact ⟨F.equiv x, hx.2⟩
  · rintro ⟨y, hy⟩
    refine ⟨F.equiv.symm y, trivial, ?_⟩
    change F.equiv (F.equiv.symm y) ∈ post
    rw [F.equiv.apply_symm_apply]
    exact hy

end InvertibleFrameChange

end GRWTSK.ProofHorizon.CorkscrewChamberCap
