/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean compilation, full transitive axiom audit and
fresh kernel replay NOT_RUN at the local toolchain pin.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RelationSandwich
import Mathlib.NumberTheory.LSeries.ZetaZeros
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Tactic.Ring

/-!
# Source-complete Riemann-zero graphs and exact diagonal alignment

GraphCriticalLine G ↔ Mathlib.RiemannHypothesis for any graph with both
sound and complete source-zero observation. No finite selected window can
silently substitute for the entire original Riemann-zeta zero set.

The actual Alpoge/Claude 2026 theorem riemannHypothesis : RiemannHypothesis
exists at the independently checked original Lean v4.33.1 pin.
This root module uses Lean v4.34.1 and does not import the huge external
proof or posit it as an axiom. Its proofs are statement-transport lemmas.

Height-diagonal point eigenfunctions are indexed by ORIGINAL zeta-zero
ordinates and naturality holds for every source-preserving graph map.
This is not an independently constructed Hilbert--Polya operator and
does not assert that an arbitrary graph Laplacian has zeta zeros.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ActualRiemannZeroSpectralGraph

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

universe u v w

/-- The EXACT nontrivial-zero conditions in Mathlib.RiemannHypothesis. -/
def NontrivialZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧
    (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧
    s ≠ 1

abbrev ZeroVertex := {s : ℂ // NontrivialZero s}

/-- A source-sound and source-complete graph on ALL nontrivial zeros.
The three directed relations are separate from analytic source identity. -/
structure ZeroGraph (Vertex : Type u) where
  sandwich : Sandwich Vertex
  zero : Vertex → ℂ
  sound : ∀ x, NontrivialZero (zero x)
  complete : ∀ s, NontrivialZero s → ∃ x, zero x = s

/-- Existence of an exact carrier requires no numerical enumeration. -/
def ZeroGraph.canonical (S : Sandwich ZeroVertex) : ZeroGraph ZeroVertex where
  sandwich := S
  zero := Subtype.val
  sound := fun x => x.property
  complete := fun s hs => ⟨⟨s, hs⟩, rfl⟩

/-- No restriction to a finite sample of actual zeta zeros is permitted. -/
def GraphCriticalLine {Vertex : Type u} (G : ZeroGraph Vertex) : Prop :=
  ∀ x, (G.zero x).re = (1 / 2 : ℝ)

/-- Source completeness is the missing direction in many graph claims.
The graph assertion is logically EQUIVALENT to the original Mathlib RH. -/
theorem graphCriticalLine_iff_RiemannHypothesis
    {Vertex : Type u} (G : ZeroGraph Vertex) :
    GraphCriticalLine G ↔ RiemannHypothesis := by
  constructor
  · intro hg s hs htrivial hone
    obtain ⟨x, hx⟩ := G.complete s ⟨hs, htrivial, hone⟩
    rw [← hx]
    exact hg x
  · intro hrh x
    exact hrh (G.zero x) (G.sound x).1
      (G.sound x).2.1 (G.sound x).2.2

/-- The original zero subtype is a canonical complete graph carrier. -/
theorem canonicalCriticalLine_iff_RiemannHypothesis
    (S : Sandwich ZeroVertex) :
    (∀ z : ZeroVertex, z.val.re = (1 / 2 : ℝ)) ↔
      RiemannHypothesis := by
  change GraphCriticalLine (ZeroGraph.canonical S) ↔ RiemannHypothesis
  exact graphCriticalLine_iff_RiemannHypothesis (ZeroGraph.canonical S)

/-- The independently proved original RH theorem is an explicit input. -/
theorem ZeroGraph.all_centers_on_critical_line
    {Vertex : Type u} (G : ZeroGraph Vertex)
    (hRH : RiemannHypothesis) : GraphCriticalLine G :=
  (graphCriticalLine_iff_RiemannHypothesis G).mpr hRH

theorem ZeroGraph.actual_zero {Vertex : Type u}
    (G : ZeroGraph Vertex) (x : Vertex) :
    riemannZeta (G.zero x) = 0 :=
  (G.sound x).1

/-- Real imaginary ordinate of the ACTUAL original source zero. -/
def ZeroGraph.height {Vertex : Type u}
    (G : ZeroGraph Vertex) (x : Vertex) : ℝ :=
  (G.zero x).im

/-- Pointwise diagonal multiplication on vertex-indexed functions.
No Hilbert-space self-adjointness, boundedness or naturality of arbitrary
physical graph Laplacians is inferred. -/
def ZeroGraph.diagonal {Vertex : Type u}
    (G : ZeroGraph Vertex) (f : Vertex → ℂ) : Vertex → ℂ :=
  fun x => ((G.height x : ℝ) : ℂ) * f x

/-- A point mass in the full source-zero function carrier. -/
def pointMass {Vertex : Type u} (x : Vertex) : Vertex → ℂ := by
  classical
  exact fun y => if y = x then 1 else 0

theorem pointMass_at {Vertex : Type u} (x : Vertex) :
    pointMass x x = 1 := by
  classical
  simp [pointMass]

theorem pointMass_ne_zero {Vertex : Type u} (x : Vertex) :
    pointMass x ≠ (0 : Vertex → ℂ) := by
  intro h
  have hx := congrArg (fun f : Vertex → ℂ => f x) h
  have heq : (1 : ℂ) = 0 := by
    simpa only [pointMass_at, Pi.zero_apply] using hx
  exact one_ne_zero heq

/-- Exact source-derived eigenfunction equation; not an independent
graph Laplacian realization or Hilbert--Polya proof. -/
theorem ZeroGraph.diagonal_point_eigen
    {Vertex : Type u} (G : ZeroGraph Vertex) (x : Vertex) :
    G.diagonal (pointMass x) =
      (fun y => ((G.height x : ℝ) : ℂ) * pointMass x y) := by
  classical
  funext y
  by_cases hy : y = x
  · subst y
    simp [ZeroGraph.diagonal, pointMass]
  · simp [ZeroGraph.diagonal, pointMass, hy]

/-- A point eigenvalue of the exact source-derived diagonal has a
NONZERO eigenfunction. This is on the full algebraic function space,
not an asserted unbounded Hilbert-space operator. -/
def ZeroGraph.PointEigenvalue {Vertex : Type u}
    (G : ZeroGraph Vertex) (λ : ℂ) : Prop :=
  ∃ f : Vertex → ℂ, f ≠ 0 ∧
    G.diagonal f = (fun y => λ * f y)

/-- There are NO extra point eigenvalues: the complete point spectrum
is exactly the set of original imaginary zeta-zero ordinates.
This converse is essential when aligning graph-layer spectra. -/
theorem ZeroGraph.pointEigenvalue_iff_source_height
    {Vertex : Type u} (G : ZeroGraph Vertex) (λ : ℂ) :
    G.PointEigenvalue λ ↔ ∃ x : Vertex, ((G.height x : ℝ) : ℂ) = λ := by
  constructor
  · rintro ⟨f, hf, heig⟩
    have hsome : ∃ x : Vertex, f x ≠ 0 := by
      by_contra hn
      apply hf
      funext x
      by_contra hx
      exact hn ⟨x, hx⟩
    obtain ⟨x, hx⟩ := hsome
    have hpoint := congrArg (fun φ : Vertex → ℂ => φ x) heig
    change ((G.height x : ℝ) : ℂ) * f x = λ * f x at hpoint
    exact ⟨x, mul_right_cancel₀ hx hpoint⟩
  · rintro ⟨x, hx⟩
    refine ⟨pointMass x, pointMass_ne_zero x, ?_⟩
    simpa only [hx] using G.diagonal_point_eigen x

/-- Source-height point eigenvalues are all REAL. No nonreal
eigenvalue is manufactured by the graph or by a mirror. -/
theorem ZeroGraph.pointEigenvalue_real
    {Vertex : Type u} (G : ZeroGraph Vertex)
    {λ : ℂ} (h : G.PointEigenvalue λ) : λ.im = 0 := by
  obtain ⟨x, hx⟩ := (G.pointEigenvalue_iff_source_height λ).mp h
  rw [← hx]
  simp

/-- Every sound and complete source-zero graph has EXACTLY the same
point-eigenvalue SET, irrespective of its candidate/admissible edge
choices. This says nothing about eigenvalue multiplicities or a
physical adjacency/Laplacian spectrum. -/
theorem ZeroGraph.complete_point_spectra_agree
    {Vertex : Type u} {Target : Type v}
    (G : ZeroGraph Vertex) (H : ZeroGraph Target) (λ : ℂ) :
    G.PointEigenvalue λ ↔ H.PointEigenvalue λ := by
  constructor
  · intro hg
    obtain ⟨x, hx⟩ := (G.pointEigenvalue_iff_source_height λ).mp hg
    obtain ⟨y, hy⟩ := H.complete (G.zero x) (G.sound x)
    apply (H.pointEigenvalue_iff_source_height λ).mpr
    refine ⟨y, ?_⟩
    have hheight : H.height y = G.height x :=
      congrArg Complex.im hy
    rw [hheight]
    exact hx
  · intro hh
    obtain ⟨y, hy⟩ := (H.pointEigenvalue_iff_source_height λ).mp hh
    obtain ⟨x, hx⟩ := G.complete (H.zero y) (H.sound y)
    apply (G.pointEigenvalue_iff_source_height λ).mpr
    refine ⟨x, ?_⟩
    have hheight : G.height x = H.height y :=
      congrArg Complex.im hx
    rw [hheight]
    exact hy

def criticalPoint (γ : ℝ) : ℂ :=
  ((1 / 2 : ℝ) : ℂ) + (γ : ℂ) * Complex.I

/-- Supplied original RH identifies the graph zero and its
critical-line point reconstructed from the exact height. -/
theorem ZeroGraph.criticalPoint_eq_source
    {Vertex : Type u} (G : ZeroGraph Vertex)
    (hRH : RiemannHypothesis) (x : Vertex) :
    criticalPoint (G.height x) = G.zero x := by
  have hr : (G.zero x).re = (1 / 2 : ℝ) :=
    G.all_centers_on_critical_line hRH x
  calc
    criticalPoint (G.height x) =
        ((G.zero x).re : ℂ) + ((G.zero x).im : ℂ) * Complex.I := by
          simp [criticalPoint, ZeroGraph.height, hr]
    _ = G.zero x := Complex.re_add_im (G.zero x)

/-- Source faithfulness: ζ(1/2 + iγ)=0 for every recovered height,
conditional only on the imported original RH theorem. -/
theorem ZeroGraph.zeta_zero_at_height
    {Vertex : Type u} (G : ZeroGraph Vertex)
    (hRH : RiemannHypothesis) (x : Vertex) :
    riemannZeta (criticalPoint (G.height x)) = 0 := by
  rw [G.criticalPoint_eq_source hRH x]
  exact G.actual_zero x

/-- A complete graph may be relabeled by a proof-bearing map that
preserves the actual original zeta-zero source and all three relations. -/
structure ZeroGraphMap
    {Vertex : Type u} {Target : Type v}
    (G : ZeroGraph Vertex) (H : ZeroGraph Target) where
  node : Vertex → Target
  zero_eq : ∀ x, H.zero (node x) = G.zero x
  lower_edge : ∀ {x y}, G.sandwich.lower x y →
    H.sandwich.lower (node x) (node y)
  middle_edge : ∀ {x y}, G.sandwich.middle x y →
    H.sandwich.middle (node x) (node y)
  upper_edge : ∀ {x y}, G.sandwich.upper x y →
    H.sandwich.upper (node x) (node y)

theorem ZeroGraphMap.height_eq
    {Vertex : Type u} {Target : Type v}
    {G : ZeroGraph Vertex} {H : ZeroGraph Target}
    (f : ZeroGraphMap G H) (x : Vertex) :
    H.height (f.node x) = G.height x :=
  congrArg Complex.im (f.zero_eq x)

/-- Operator naturality: the source-derived diagonal commutes with
pullback along a zero-preserving graph map. This is a genuine algebraic
intertwiner; the zero soundness is in its required graph fields. -/
theorem ZeroGraphMap.diagonal_intertwines
    {Vertex : Type u} {Target : Type v}
    {G : ZeroGraph Vertex} {H : ZeroGraph Target}
    (f : ZeroGraphMap G H) (φ : Target → ℂ) (x : Vertex) :
    G.diagonal (φ ∘ f.node) x =
      H.diagonal φ (f.node x) := by
  change (G.height x : ℂ) * φ (f.node x) =
    (H.height (f.node x) : ℂ) * φ (f.node x)
  rw [f.height_eq x]

/-- Identity of a source graph preserves all zero and edge identities. -/
def ZeroGraphMap.id {Vertex : Type u} (G : ZeroGraph Vertex) :
    ZeroGraphMap G G where
  node := id
  zero_eq := fun _ => rfl
  lower_edge := by intro x y h; exact h
  middle_edge := by intro x y h; exact h
  upper_edge := by intro x y h; exact h

/-- Complete source-to-source graph maps compose across different
vertex types without losing original zero or edge identity. -/
def ZeroGraphMap.comp
    {Vertex : Type u} {Middle : Type v} {Target : Type w}
    {G : ZeroGraph Vertex} {H : ZeroGraph Middle}
    {K : ZeroGraph Target}
    (f : ZeroGraphMap G H) (g : ZeroGraphMap H K) :
    ZeroGraphMap G K where
  node := g.node ∘ f.node
  zero_eq := by
    intro x
    exact (g.zero_eq (f.node x)).trans (f.zero_eq x)
  lower_edge := by
    intro x y h
    exact g.lower_edge (f.lower_edge h)
  middle_edge := by
    intro x y h
    exact g.middle_edge (f.middle_edge h)
  upper_edge := by
    intro x y h
    exact g.upper_edge (f.upper_edge h)

/-- A finite observation of an unbounded source-zero graph has a real
diagonal operator, with no need to assume the entire zero set is finite. -/
def ZeroGraph.sampleDiagonal
    {Vertex : Type u} {Index : Type v}
    (G : ZeroGraph Vertex) (sample : Index → Vertex)
    (signal : Index → ℝ) : Index → ℝ :=
  fun i => G.height (sample i) * signal i

/-- On every genuine FINITE sample the source-ordinate diagonal is
symmetric for the standard real dot product. This is not a proof that
an arbitrary physical graph Laplacian has the same eigenvalues. -/
theorem ZeroGraph.sampleDiagonal_symmetric
    {Vertex : Type u} {Index : Type v} [Fintype Index]
    (G : ZeroGraph Vertex) (sample : Index → Vertex)
    (f g : Index → ℝ) :
    (∑ i : Index, G.sampleDiagonal sample f i * g i) =
      ∑ i : Index, f i * G.sampleDiagonal sample g i := by
  classical
  apply Finset.sum_congr rfl
  intro i _
  dsimp [ZeroGraph.sampleDiagonal]
  ring

theorem ZeroGraphMap.lower_path
    {Vertex : Type u} {Target : Type v}
    {G : ZeroGraph Vertex} {H : ZeroGraph Target}
    (f : ZeroGraphMap G H) {x y : Vertex}
    (p : Path G.sandwich.lower x y) :
    Path H.sandwich.lower (f.node x) (f.node y) := by
  induction p with
  | single edge =>
      exact Path.single (f.lower_edge edge)
  | tail prior edge ih =>
      exact Path.tail ih (f.lower_edge edge)

/-- Source upper acyclicity is inherited from a faithful target
upper graph; source-to-target edge preservation does not imply the converse. -/
theorem ZeroGraphMap.source_upper_acyclic
    {Vertex : Type u} {Target : Type v}
    {G : ZeroGraph Vertex} {H : ZeroGraph Target}
    (f : ZeroGraphMap G H)
    (h : Acyclic H.sandwich.upper) :
    Acyclic G.sandwich.upper := by
  intro x p
  have lifted : Path H.sandwich.upper (f.node x) (f.node x) := by
    induction p with
    | single edge => exact Path.single (f.upper_edge edge)
    | tail prior edge ih => exact Path.tail ih (f.upper_edge edge)
  exact h (f.node x) lifted

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ActualRiemannZeroSpectralGraph
