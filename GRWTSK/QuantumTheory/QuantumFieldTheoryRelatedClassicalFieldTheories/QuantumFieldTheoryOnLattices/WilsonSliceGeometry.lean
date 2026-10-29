/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's finite types and periodic arithmetic retain their upstream
authorship and Apache-2.0 license. Other imports retain their licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FinitePeriodicLattice
import Mathlib.Tactic

/-!
# Literal spatial slices of the existing four-dimensional periodic lattice

Time is coordinate0; spatial direction i is the actual Fin4 direction i.succ.
The vertex, link and plaquette equivalences retain every original index.
The six ordered direction pairs split into three spatial pairs and three
temporal pairs. Configuration assembly is inverse to the literal slice and
temporal-link restrictions; no gauge fixing or support restriction is used.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice

abbrev SpatialVertex (L : ℕ) := Fin 3 → ZMod L
abbrev SpatialLink (L : ℕ) := SpatialVertex L × Fin 3
abbrev SpatialDirections := {p : Fin 3 × Fin 3 // p.1 < p.2}
abbrev SpatialPlaquette (L : ℕ) := SpatialVertex L × SpatialDirections

def joinVertex {L : ℕ} (r : ZMod L) (s : SpatialVertex L) : Vertex L := Fin.cases r s
def spatialPart {L : ℕ} (x : Vertex L) : SpatialVertex L := fun i => x i.succ

@[simp] theorem join_time {L : ℕ} (r : ZMod L) (s : SpatialVertex L) :
    joinVertex r s 0 = r := rfl
@[simp] theorem join_space {L : ℕ} (r : ZMod L) (s : SpatialVertex L) (i : Fin 3) :
    joinVertex r s i.succ = s i := rfl
@[simp] theorem spatialPart_join {L : ℕ} (r : ZMod L) (s : SpatialVertex L) :
    spatialPart (joinVertex r s) = s := rfl

@[simp] theorem join_split {L : ℕ} (x : Vertex L) :
    joinVertex (x 0) (spatialPart x) = x := by
  funext j
  refine Fin.cases ?_ (fun i => ?_) j <;> rfl

def vertexEquiv (L : ℕ) : ZMod L × SpatialVertex L ≃ Vertex L where
  toFun p := joinVertex p.1 p.2
  invFun x := (x 0, spatialPart x)
  left_inv p := by cases p; rfl
  right_inv := join_split

def spatialShift {L : ℕ} (s : SpatialVertex L) (i : Fin 3) : SpatialVertex L :=
  fun j => s j + if j = i then 1 else 0

theorem shift_join_time {L : ℕ} (r : ZMod L) (s : SpatialVertex L) :
    shift (joinVertex r s) 0 = joinVertex (r + 1) s := by
  funext j
  refine Fin.cases ?_ (fun i => ?_) j
  · simp [shift, joinVertex]
  · simp [shift, joinVertex, Fin.succ_ne_zero]

theorem shift_join_space {L : ℕ} (r : ZMod L) (s : SpatialVertex L) (i : Fin 3) :
    shift (joinVertex r s) i.succ = joinVertex r (spatialShift s i) := by
  funext j
  refine Fin.cases ?_ (fun k => ?_) j
  · simp [shift, joinVertex, Fin.succ_ne_zero]
  · simp [shift, joinVertex, spatialShift, Fin.succ_inj]

abbrev LinkIndex (L : ℕ) :=
  (ZMod L × SpatialLink L) ⊕ (ZMod L × SpatialVertex L)

def linkIndex {L : ℕ} : LinkIndex L → Link L
  | .inl (r, (s, i)) => (joinVertex r s, i.succ)
  | .inr (r, s) => (joinVertex r s, 0)

def splitLink {L : ℕ} (e : Link L) : LinkIndex L :=
  Fin.cases (.inr (e.1 0, spatialPart e.1))
    (fun i => .inl (e.1 0, (spatialPart e.1, i))) e.2

def linkIndexEquiv (L : ℕ) : LinkIndex L ≃ Link L where
  toFun := linkIndex
  invFun := splitLink
  left_inv k := by
    rcases k with ⟨r, s, i⟩ | ⟨r, s⟩ <;> rfl
  right_inv e := by
    rcases e with ⟨x, μ⟩
    refine Fin.cases ?_ (fun i => ?_) μ <;> simp [splitLink, linkIndex]

def directionIndex : SpatialDirections ⊕ Fin 3 → DirectionPair
  | .inl d => ⟨(d.val.1.succ, d.val.2.succ), Nat.succ_lt_succ d.prop⟩
  | .inr i => ⟨(0, i.succ), Nat.succ_pos i.val⟩

/-- An ordinary finite kernel proof, not native_decide. Every ordered pair
appears exactly once, including each temporal direction. -/
def directionPairEquiv : SpatialDirections ⊕ Fin 3 ≃ DirectionPair :=
  Equiv.ofBijective directionIndex (by constructor <;> decide)

abbrev PlaquetteIndex (L : ℕ) :=
  (ZMod L × SpatialPlaquette L) ⊕ (ZMod L × SpatialLink L)

def plaquetteIndex {L : ℕ} : PlaquetteIndex L → Plaquette L
  | .inl (r, (s, d)) => (joinVertex r s, directionPairEquiv (.inl d))
  | .inr (r, (s, i)) => (joinVertex r s, directionPairEquiv (.inr i))

def splitPlaquette {L : ℕ} (p : Plaquette L) : PlaquetteIndex L :=
  match directionPairEquiv.symm p.2 with
  | .inl d => .inl (p.1 0, (spatialPart p.1, d))
  | .inr i => .inr (p.1 0, (spatialPart p.1, i))

def plaquetteIndexEquiv (L : ℕ) : PlaquetteIndex L ≃ Plaquette L where
  toFun := plaquetteIndex
  invFun := splitPlaquette
  left_inv p := by
    rcases p with ⟨r, s, d⟩ | ⟨r, s, i⟩ <;>
      simp [splitPlaquette, plaquetteIndex, Equiv.symm_apply_apply]
  right_inv p := by
    have hd := directionPairEquiv.apply_symm_apply p.2
    cases h : directionPairEquiv.symm p.2 with
    | inl d =>
      rw [h] at hd
      change plaquetteIndex (splitPlaquette p) = p
      simp only [splitPlaquette, h, plaquetteIndex]
      exact Prod.ext (join_split p.1) hd
    | inr i =>
      rw [h] at hd
      change plaquetteIndex (splitPlaquette p) = p
      simp only [splitPlaquette, h, plaquetteIndex]
      exact Prod.ext (join_split p.1) hd

abbrev Slice (L : ℕ) (G : Type*) := SpatialLink L → G
abbrev SliceGauge (L : ℕ) (G : Type*) := SpatialVertex L → G
abbrev SpatialHistory (L : ℕ) (G : Type*) := ZMod L → Slice L G
abbrev TemporalHistory (L : ℕ) (G : Type*) := ZMod L → SliceGauge L G

def spatialHistory {L : ℕ} {G : Type*} (U : Configuration L G) : SpatialHistory L G :=
  fun r e => U (joinVertex r e.1, e.2.succ)
def temporalHistory {L : ℕ} {G : Type*} (U : Configuration L G) : TemporalHistory L G :=
  fun r s => U (joinVertex r s, 0)

/-- All original positive links are assembled, including every temporal layer. -/
def assemble {L : ℕ} {G : Type*} (a : SpatialHistory L G) (g : TemporalHistory L G) :
    Configuration L G :=
  fun e => Fin.cases (g (e.1 0) (spatialPart e.1))
    (fun i => a (e.1 0) (spatialPart e.1, i)) e.2

@[simp] theorem assemble_space {L : ℕ} {G : Type*}
    (a : SpatialHistory L G) (g : TemporalHistory L G)
    (r : ZMod L) (s : SpatialVertex L) (i : Fin 3) :
    assemble a g (joinVertex r s, i.succ) = a r (s, i) := rfl

@[simp] theorem assemble_time {L : ℕ} {G : Type*}
    (a : SpatialHistory L G) (g : TemporalHistory L G)
    (r : ZMod L) (s : SpatialVertex L) :
    assemble a g (joinVertex r s, 0) = g r s := rfl

@[simp] theorem spatialHistory_assemble {L : ℕ} {G : Type*}
    (a : SpatialHistory L G) (g : TemporalHistory L G) :
    spatialHistory (assemble a g) = a := rfl
@[simp] theorem temporalHistory_assemble {L : ℕ} {G : Type*}
    (a : SpatialHistory L G) (g : TemporalHistory L G) :
    temporalHistory (assemble a g) = g := rfl

@[simp] theorem assemble_histories {L : ℕ} {G : Type*} (U : Configuration L G) :
    assemble (spatialHistory U) (temporalHistory U) = U := by
  funext e
  rcases e with ⟨x, μ⟩
  refine Fin.cases ?_ (fun i => ?_) μ <;>
    simp [assemble, spatialHistory, temporalHistory]

def configurationEquiv (L : ℕ) (G : Type*) :
    SpatialHistory L G × TemporalHistory L G ≃ Configuration L G where
  toFun p := assemble p.1 p.2
  invFun U := (spatialHistory U, temporalHistory U)
  left_inv p := by cases p; rfl
  right_inv := assemble_histories

theorem continuous_spatialHistory {L : ℕ} {G : Type*} [TopologicalSpace G] :
    Continuous (spatialHistory : Configuration L G → SpatialHistory L G) := by
  apply continuous_pi
  intro r
  apply continuous_pi
  intro e
  exact continuous_apply (joinVertex r e.1, e.2.succ)

theorem continuous_temporalHistory {L : ℕ} {G : Type*} [TopologicalSpace G] :
    Continuous (temporalHistory : Configuration L G → TemporalHistory L G) := by
  apply continuous_pi
  intro r
  apply continuous_pi
  intro s
  exact continuous_apply (joinVertex r s, 0)

theorem continuous_assemble {L : ℕ} {G : Type*} [TopologicalSpace G] :
    Continuous (fun p : SpatialHistory L G × TemporalHistory L G => assemble p.1 p.2) := by
  apply continuous_pi
  intro e
  rcases e with ⟨x, μ⟩
  cases μ using Fin.cases with
  | zero =>
    exact ((continuous_apply (spatialPart x)).comp
      (continuous_apply (x 0))).comp continuous_snd
  | succ i =>
    exact ((continuous_apply (spatialPart x, i)).comp
      (continuous_apply (x 0))).comp continuous_fst

def configurationHomeomorph (L : ℕ) (G : Type*) [TopologicalSpace G] :
    SpatialHistory L G × TemporalHistory L G ≃ₜ Configuration L G where
  toEquiv := configurationEquiv L G
  continuous_toFun := continuous_assemble
  continuous_invFun := continuous_spatialHistory.prodMk continuous_temporalHistory

end GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry

