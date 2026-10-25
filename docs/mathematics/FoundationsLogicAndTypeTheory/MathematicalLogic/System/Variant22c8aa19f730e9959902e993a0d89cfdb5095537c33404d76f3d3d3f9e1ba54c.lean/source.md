# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.System.Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75cb8e640e0c4dcd17cc11fc5d3d28b0e451e573` · SHA-256 `22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Quot
import Mathlib.Logic.Equiv.Defs

/-!
# Dependent observable transition systems

`DAF.System` is the representation-independent transition-system object used
by the certified architecture.  Its observations form a dependent family:
each resolution may have its own result type.  A morphism translates source
inputs and states forward, pulls target resolutions back, and then translates
the resulting observation value forward.

The equality laws on `System.Iso` are equalities of complete morphisms.  They
therefore cover inputs, states, pulled resolutions, dependent observation
maps, and both naturality proofs—not merely an equivalence of state types.
-/

universe uI uX uR uO

namespace DAF

/-- An input-labelled deterministic system with dependent observations. -/
structure System where
  Input : Type uI
  State : Type uX
  Resolution : Type uR
  Observation : Resolution → Type uO
  step : Input → State → State
  observe : (r : Resolution) → State → Observation r

namespace System

variable {L M N P : System}

/-! ## Finite input traces -/

/-- Process an input word from left to right. -/
def run (M : System) : List M.Input → M.State → M.State
  | [], x => x
  | i :: is, x => M.run is (M.step i x)

@[simp]
theorem run_nil (M : System) (x : M.State) : M.run [] x = x :=
  rfl

@[simp]
theorem run_cons
    (M : System)
    (i : M.Input)
    (is : List M.Input)
    (x : M.State) :
    M.run (i :: is) x = M.run is (M.step i x) :=
  rfl

theorem run_append
    (M : System)
    (first second : List M.Input)
    (x : M.State) :
    M.run (first ++ second) x = M.run second (M.run first x) := by
  induction first generalizing x with
  | nil => rfl
  | cons i rest ih =>
      simp only [List.cons_append, run_cons]
      exact ih (M.step i x)

@[simp]
theorem run_singleton (M : System) (i : M.Input) (x : M.State) :
    M.run [i] x = M.step i x :=
  rfl

/-! ## Morphisms -/

/--
A structure-preserving map of dependent observable transition systems.

The resolution map is contravariant because a target observer must be pulled
back before observing the source state.  Observation values are then mapped
covariantly into the target's result family.
-/
structure Hom (M N : System) where
  mapInput : M.Input → N.Input
  mapState : M.State → N.State
  pullResolution : N.Resolution → M.Resolution
  mapObservation :
    (r : N.Resolution) →
      M.Observation (pullResolution r) → N.Observation r
  step_natural :
    ∀ i x,
      mapState (M.step i x) =
        N.step (mapInput i) (mapState x)
  observe_natural :
    ∀ r x,
      mapObservation r (M.observe (pullResolution r) x) =
        N.observe r (mapState x)

namespace Hom

/-- The identity system morphism. -/
def id (M : System) : M.Hom M where
  mapInput := _root_.id
  mapState := _root_.id
  pullResolution := _root_.id
  mapObservation := fun _ observation => observation
  step_natural := by intros; rfl
  observe_natural := by intros; rfl

/-- Composition, written as `g` after `f`. -/
def comp (g : M.Hom N) (f : L.Hom M) : L.Hom N where
  mapInput := fun i => g.mapInput (f.mapInput i)
  mapState := fun x => g.mapState (f.mapState x)
  pullResolution := fun r => f.pullResolution (g.pullResolution r)
  mapObservation := fun r observation =>
    g.mapObservation r
      (f.mapObservation (g.pullResolution r) observation)
  step_natural := by
    intro i x
    rw [f.step_natural, g.step_natural]
  observe_natural := by
    intro r x
    rw [f.observe_natural, g.observe_natural]

/-- Extensionality for morphisms, including the dependent observation map. -/
@[ext]
theorem ext
    {f g : M.Hom N}
    (hInput : f.mapInput = g.mapInput)
    (hState : f.mapState = g.mapState)
    (hResolution : f.pullResolution = g.pullResolution)
    (hObservation : HEq f.mapObservation g.mapObservation) :
    f = g := by
  cases f
  cases g
  simp_all

@[simp]
theorem id_mapInput (M : System) : (id M).mapInput = _root_.id :=
  rfl

@[simp]
theorem id_mapState (M : System) : (id M).mapState = _root_.id :=
  rfl

@[simp]
theorem id_pullResolution (M : System) :
    (id M).pullResolution = _root_.id :=
  rfl

@[simp]
theorem comp_mapInput (g : M.Hom N) (f : L.Hom M) :
    (g.comp f).mapInput = g.mapInput ∘ f.mapInput :=
  rfl

@[simp]
theorem comp_mapState (g : M.Hom N) (f : L.Hom M) :
    (g.comp f).mapState = g.mapState ∘ f.mapState :=
  rfl

@[simp]
theorem comp_pullResolution (g : M.Hom N) (f : L.Hom M) :
    (g.comp f).pullResolution = f.pullResolution ∘ g.pullResolution :=
  rfl

/-- A homomorphism commutes with execution of every translated input word. -/
theorem map_run
    (F : M.Hom N)
    (inputs : List M.Input)
    (x : M.State) :
    F.mapState (M.run inputs x) =
      N.run (inputs.map F.mapInput) (F.mapState x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons i rest ih =>
      simp only [run_cons, List.map_cons]
      rw [ih, F.step_natural]

@[simp]
theorem id_comp (f : M.Hom N) : (id N).comp f = f := by
  apply ext
  · rfl
  · rfl
  · rfl
  · rfl

@[simp]
theorem comp_id (f : M.Hom N) : f.comp (id M) = f := by
  apply ext
  · rfl
  · rfl
  · rfl
  · rfl

theorem comp_assoc
    (h : N.Hom P)
    (g : M.Hom N)
    (f : L.Hom M) :
    (h.comp g).comp f = h.comp (g.comp f) := by
  apply ext
  · rfl
  · rfl
  · rfl
  · rfl

end Hom

/-! ## Factors and isomorphisms -/

/-- A system factor is a morphism surjective on concrete states. -/
structure Factor (M N : System) extends M.Hom N where
  state_surjective : Function.Surjective mapState

namespace Factor

@[simp]
theorem toHom_mapInput (F : M.Factor N) :
    F.toHom.mapInput = F.mapInput :=
  rfl

@[simp]
theorem toHom_mapState (F : M.Factor N) :
    F.toHom.mapState = F.mapState :=
  rfl

end Factor

/--
A state-only factor between systems whose input and resolution interfaces are
identified.  The equality witnesses make the two interface identifications
explicit; `mapInput_eq` and `pullResolution_eq` certify that the underlying
factor uses exactly those transports.  With `rfl` witnesses these translations
are definitionally the identity, which is the intended reducer/quotient case.
-/
structure StateFactor
    (M N : System)
    (hInput : M.Input = N.Input)
    (hResolution : M.Resolution = N.Resolution) where
  toFactor : M.Factor N
  mapInput_eq : toFactor.mapInput = Equiv.cast hInput
  pullResolution_eq :
    toFactor.pullResolution = Equiv.cast hResolution.symm

namespace StateFactor

theorem state_surjective
    {hInput : M.Input = N.Input}
    {hResolution : M.Resolution = N.Resolution}
    (F : StateFactor M N hInput hResolution) :
    Function.Surjective F.toFactor.mapState :=
  F.toFactor.state_surjective

end StateFactor

/--
A structural system isomorphism.

The two inverse laws are equalities in the complete homomorphism structure,
so they include the dependent observation translations as well as the input,
state, and resolution functions.
-/
structure Iso (M N : System) where
  hom : M.Hom N
  inv : N.Hom M
  hom_inv : hom.comp inv = Hom.id N
  inv_hom : inv.comp hom = Hom.id M

namespace Iso

/-- The identity system isomorphism. -/
def refl (M : System) : M.Iso M where
  hom := Hom.id M
  inv := Hom.id M
  hom_inv := Hom.id_comp _
  inv_hom := Hom.id_comp _

/-- Reverse a system isomorphism. -/
def symm (F : M.Iso N) : N.Iso M where
  hom := F.inv
  inv := F.hom
  hom_inv := F.inv_hom
  inv_hom := F.hom_inv

/-- Compose structural system isomorphisms. -/
def trans (F : L.Iso M) (G : M.Iso N) : L.Iso N where
  hom := G.hom.comp F.hom
  inv := F.inv.comp G.inv
  hom_inv := by
    rw [Hom.comp_assoc]
    rw [← Hom.comp_assoc F.hom F.inv G.inv]
    rw [F.hom_inv, Hom.id_comp, G.hom_inv]
  inv_hom := by
    rw [Hom.comp_assoc]
    rw [← Hom.comp_assoc G.inv G.hom F.hom]
    rw [G.inv_hom, Hom.id_comp, F.inv_hom]

/-- The inverse state map is a left inverse of the forward state map. -/
theorem hom_inv_state (F : M.Iso N) :
    Function.LeftInverse F.inv.mapState F.hom.mapState := by
  intro x
  have h := congrArg Hom.mapState F.inv_hom
  exact congrFun h x

/-- The inverse state map is a right inverse of the forward state map. -/
theorem inv_hom_state (F : M.Iso N) :
    Function.RightInverse F.inv.mapState F.hom.mapState := by
  intro x
  have h := congrArg Hom.mapState F.hom_inv
  exact congrFun h x

theorem hom_inv_input (F : M.Iso N) :
    Function.LeftInverse F.inv.mapInput F.hom.mapInput := by
  intro i
  have h := congrArg Hom.mapInput F.inv_hom
  exact congrFun h i

theorem inv_hom_input (F : M.Iso N) :
    Function.RightInverse F.inv.mapInput F.hom.mapInput := by
  intro i
  have h := congrArg Hom.mapInput F.hom_inv
  exact congrFun h i

/-- Pulling a source resolution forward and then back is the identity. -/
theorem hom_inv_resolution (F : M.Iso N) :
    Function.LeftInverse F.hom.pullResolution F.inv.pullResolution := by
  intro r
  have h := congrArg Hom.pullResolution F.inv_hom
  exact congrFun h r

/-- Pulling a target resolution back and then forward is the identity. -/
theorem inv_hom_resolution (F : M.Iso N) :
    Function.RightInverse F.hom.pullResolution F.inv.pullResolution := by
  intro r
  have h := congrArg Hom.pullResolution F.hom_inv
  exact congrFun h r

theorem hom_state_bijective (F : M.Iso N) :
    Function.Bijective F.hom.mapState :=
  ⟨F.hom_inv_state.injective, F.inv_hom_state.surjective⟩

theorem hom_input_bijective (F : M.Iso N) :
    Function.Bijective F.hom.mapInput :=
  ⟨F.hom_inv_input.injective, F.inv_hom_input.surjective⟩

end Iso

end System

end DAF
```
