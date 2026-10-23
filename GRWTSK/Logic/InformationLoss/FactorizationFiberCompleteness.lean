/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This standalone supplier is deliberately outside the public GRWTSK root until
pinned warning-clean elaboration, fresh kernel replay and transitive axioms
have been checked on an immutable revision.
-/
import GRWTSK.Logic.InformationLoss.FactorizationFiber

/-!
# When fiber constancy is sufficient for information reconstruction

The original generic obstruction shows that any readout factoring through an
observable must be constant on its fibers. The converse needs an exact
codomain restriction: a surjective observable admits a (classically chosen)
decoder, and every observable becomes surjective onto its *actual image*.

A decoder on arbitrary unobserved values is not implied. In particular, an
empty source and nonempty observable codomain can make the fiber condition
vacuous while no total decoder into an empty readout codomain exists.

These theorems are nonquantitative; they do not construct an effective
algorithm, a bounded linear inverse, a classical Weil form, or a spectral
channel.
-/

set_option autoImplicit false
noncomputable section

universe u v w

namespace GRWTSK.Logic.InformationLoss

/-- For a surjective observable, equality on every observable fiber is
necessary and sufficient for existence of a (possibly noncomputable) decoder.
No ambient nonemptiness assumption is needed. -/
theorem factorsThrough_iff_fiberConstant_of_surjective
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (hsurj : Function.Surjective profile) :
    FactorsThrough profile readout ↔
      ∀ x y : X, profile x = profile y → readout x = readout y := by
  constructor
  · intro hfactor x y hxy
    exact eq_of_factorsThrough profile readout hfactor hxy
  · intro hconstant
    classical
    let decode : Y → Z := fun y => readout (Classical.choose (hsurj y))
    refine ⟨decode, ?_⟩
    funext x
    change readout x = readout (Classical.choose (hsurj (profile x)))
    apply hconstant
    exact (Classical.choose_spec (hsurj (profile x))).symm

/-- Restrict the observable codomain to values actually attained by it.
The original source coordinates and all original fibers are preserved. -/
def observedProfile
    {X : Type u} {Y : Type v}
    (profile : X → Y) : X → Set.range profile :=
  fun x => ⟨profile x, ⟨x, rfl⟩⟩

/-- Every observed value has an original source witness, by construction. -/
theorem observedProfile_surjective
    {X : Type u} {Y : Type v}
    (profile : X → Y) :
    Function.Surjective (observedProfile profile) := by
  rintro ⟨y, hy⟩
  obtain ⟨x, hx⟩ := hy
  refine ⟨x, ?_⟩
  exact Subtype.ext hx

/-- Restricting the output to its range loses no information about fibers. -/
theorem observedProfile_eq_iff
    {X : Type u} {Y : Type v}
    (profile : X → Y) (x y : X) :
    observedProfile profile x = observedProfile profile y ↔
      profile x = profile y := by
  constructor
  · intro h
    exact congrArg Subtype.val h
  · intro h
    exact Subtype.ext h

/-- Exact necessary-and-sufficient criterion, without assuming the original
observable is surjective on its declared ambient codomain. Reconstruction
takes place on the observed range, not on arbitrary unused output values. -/
theorem factorsThrough_observedProfile_iff
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z) :
    FactorsThrough (observedProfile profile) readout ↔
      ∀ x y : X, profile x = profile y → readout x = readout y := by
  constructor
  · intro hf x y hxy
    exact eq_of_factorsThrough (observedProfile profile) readout hf
      ((observedProfile_eq_iff profile x y).2 hxy)
  · intro hc
    apply (factorsThrough_iff_fiberConstant_of_surjective
      (observedProfile profile) readout
      (observedProfile_surjective profile)).2
    intro x y hxy
    exact hc x y ((observedProfile_eq_iff profile x y).1 hxy)

/-- When the target is inhabited, any unattained observable values can
be assigned a fixed default target. Thus exact constancy on fibers is also
sufficient for a total decoder on the *ambient* observable codomain.
Unlike surjectivity, this hypothesis is about the readout target type only.

The chosen decoder is classical and not asserted to be effective, continuous,
measurable, linear or bounded. -/
theorem factorsThrough_iff_fiberConstant_of_inhabited_target
    {X : Type u} {Y : Type v} {Z : Type w}
    [Nonempty Z]
    (profile : X → Y) (readout : X → Z) :
    FactorsThrough profile readout ↔
      ∀ x y : X, profile x = profile y → readout x = readout y := by
  constructor
  · intro hfactor x y hxy
    exact eq_of_factorsThrough profile readout hfactor hxy
  · intro hconstant
    classical
    let decode : Y → Z := fun y =>
      if h : ∃ x : X, profile x = y then
        readout (Classical.choose h)
      else Classical.choice (inferInstance : Nonempty Z)
    refine ⟨decode, ?_⟩
    funext x
    have hx : ∃ t : X, profile t = profile x := ⟨x, rfl⟩
    change readout x = decode (profile x)
    dsimp [decode]
    rw [dif_pos hx]
    exact hconstant x (Classical.choose hx)
      (Classical.choose_spec hx).symm

/-- A nonempty source automatically provides an inhabited target through
the supplied readout. This yields ambient-codomain reconstruction from fiber
constancy without requiring the observable itself to be surjective. -/
theorem factorsThrough_iff_fiberConstant_of_nonempty_source
    {X : Type u} {Y : Type v} {Z : Type w}
    [Nonempty X]
    (profile : X → Y) (readout : X → Z) :
    FactorsThrough profile readout ↔
      ∀ x y : X, profile x = profile y → readout x = readout y := by
  letI : Nonempty Z :=
    ⟨readout (Classical.choice (inferInstance : Nonempty X))⟩
  exact factorsThrough_iff_fiberConstant_of_inhabited_target profile readout

/-- The augmented observable can always recover the supplied extra
measurement: the second projection is an exact decoder. This does not make
the augmented observable injective or computable. -/
theorem readout_factorsThrough_augmentedProfile
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z) :
    FactorsThrough (augmentedProfile profile readout) readout := by
  refine ⟨Prod.snd, ?_⟩
  funext x
  rfl

/-- Hostile empty-source case: fiber constancy is vacuous, but there is no
total decoder from the unobserved Unit value into the empty readout type.
The observed-range theorem above avoids precisely this codomain mistake. -/
theorem empty_source_fiber_constant_without_total_decoder :
    (∀ x y : Empty,
        (fun _ : Empty => ()) x = (fun _ : Empty => ()) y →
          (fun t : Empty => t) x = (fun t : Empty => t) y) ∧
      ¬ FactorsThrough (fun _ : Empty => ()) (fun t : Empty => t) := by
  constructor
  · intro x
    exact x.elim
  · rintro ⟨decode, _⟩
    exact (decode ()).elim

end GRWTSK.Logic.InformationLoss
