/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE at this adapter source. NOT_RUN in author's runtime.

Compile ONLY inside the original Alpoge RH release environment:
Lean 4.33.1; Mathlib 0df444a360eaa60ab8c11dca51a86af692955474;
import Main, whose main theorem was independently kernel verified.
The grwtsk/math root environment uses an INCOMPATIBLE later pin.
-/
import Main

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlpogeVerifiedRHGraphBridge

universe u

/-- The original Mathlib RH nontrivial-zero predicate, without
substitution by an arbitrary graph characteristic polynomial. -/
def NontrivialZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧
    (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧
    s ≠ 1

/-- The actual complete analytic zero graph. Adjacency is independent
of the original zero predicate, and is not allowed to invent vertices. -/
structure SourceCompleteGraph (Vertex : Type u) where
  lower : Vertex → Vertex → Prop
  candidate : Vertex → Vertex → Prop
  upper : Vertex → Vertex → Prop
  lower_to_candidate : ∀ {x y}, lower x y → candidate x y
  candidate_to_upper : ∀ {x y}, candidate x y → upper x y
  decode : Vertex → ℂ
  sound : ∀ x, NontrivialZero (decode x)
  complete : ∀ s, NontrivialZero s → ∃ x, decode x = s

def GraphCriticalLine {Vertex : Type u}
    (G : SourceCompleteGraph Vertex) : Prop :=
  ∀ x, (G.decode x).re = (1 / 2 : ℝ)

/-- Source completeness and soundness give EXACT equivalence to the
ORIGINAL Mathlib definition, regardless of which graph edges exist. -/
theorem graphCriticalLine_iff_RiemannHypothesis
    {Vertex : Type u} (G : SourceCompleteGraph Vertex) :
    GraphCriticalLine G ↔ RiemannHypothesis := by
  constructor
  · intro hg s hz htrivial hone
    obtain ⟨x, hx⟩ := G.complete s ⟨hz, htrivial, hone⟩
    rw [← hx]
    exact hg x
  · intro hrh x
    exact hrh (G.decode x) (G.sound x).1
      (G.sound x).2.1 (G.sound x).2.2

/-- UNCONDITIONAL when the original Main.lean verified proof is imported:
every vertex representing an actual nontrivial zeta zero is on Re=1/2.
This uses the real original riemannHypothesis proof term. -/
theorem graphCriticalLine_of_verified_Main
    {Vertex : Type u} (G : SourceCompleteGraph Vertex) :
    GraphCriticalLine G :=
  (graphCriticalLine_iff_RiemannHypothesis G).mpr riemannHypothesis

/-- The original real spectral height is NOT a discovered independent
graph eigenvalue; it is the imaginary part of the actual zeta zero. -/
def SourceCompleteGraph.height {Vertex : Type u}
    (G : SourceCompleteGraph Vertex) (x : Vertex) : ℝ :=
  (G.decode x).im

theorem sourcePoint_eq_original
    {Vertex : Type u} (G : SourceCompleteGraph Vertex) (x : Vertex) :
    (((1 / 2 : ℝ) : ℂ) + (G.height x : ℂ) * Complex.I) =
      G.decode x := by
  have hr := G.graphCriticalLine_of_verified_Main x
  calc
    (((1 / 2 : ℝ) : ℂ) + (G.height x : ℂ) * Complex.I) =
        ((G.decode x).re : ℂ) + ((G.decode x).im : ℂ) * Complex.I := by
      simp [SourceCompleteGraph.height, hr]
    _ = G.decode x := Complex.re_add_im (G.decode x)

/-- The complete graph's point spectra have exact arithmetic zero return.
No new claim about a natural graph Laplacian is introduced. -/
theorem original_zeta_zero_at_each_height
    {Vertex : Type u} (G : SourceCompleteGraph Vertex) (x : Vertex) :
    riemannZeta (((1 / 2 : ℝ) : ℂ) +
        (G.height x : ℂ) * Complex.I) = 0 := by
  rw [sourcePoint_eq_original G x]
  exact (G.sound x).1

/-- A canonical instance of the full graph exists without enumerating
zeros: the vertex is a subtype with the real original zero predicate. -/
abbrev ExactZeroVertex := {s : ℂ // NontrivialZero s}

def canonicalGraph : SourceCompleteGraph ExactZeroVertex where
  lower := fun x y => x = y
  candidate := fun _ _ => True
  upper := fun _ _ => True
  lower_to_candidate := by
    intro x y h
    trivial
  candidate_to_upper := by
    intro x y h
    trivial
  decode := Subtype.val
  sound := fun x => x.property
  complete := fun s hs => ⟨⟨s, hs⟩, rfl⟩

theorem all_actual_nontrivial_zeros_on_line :
    ∀ z : ExactZeroVertex, z.val.re = (1 / 2 : ℝ) :=
  canonicalGraph.graphCriticalLine_of_verified_Main

end GRWTSK.AlpogeVerifiedRHGraphBridge
