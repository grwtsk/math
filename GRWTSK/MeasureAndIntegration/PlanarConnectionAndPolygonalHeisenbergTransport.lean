import FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Analysis.Convex.PathConnected
import Mathlib.Topology.Homotopy.Path

/-!
# Planar connection and polygonal Heisenberg transport

The actual one-form is `alpha_p(v) = det(p,v)/2`. Its straight-edge
integral is the symmetric Heisenberg phase. Triangle subdivision retains the
signed area defect. An actual projected square path contracts, while the
horizontal lift has central endpoint one. This constructs a polygonal
connection consumer; a smooth thin-path functor and bundle comparison remain
separate obligations.

Human direction, theorem selection and evaluation: grwtsk contributors.
AI-assisted formalization: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/

namespace FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergPathTransport

noncomputable section
open HeisenbergCocycle

local instance : AddCommGroup ℝ := (inferInstance : NormedAddCommGroup ℝ).toAddCommGroup
local instance : Module ℝ ℝ := (inferInstance : NormedSpace ℝ ℝ).toModule
local instance : AddCommGroup Vector := (inferInstance : NormedAddCommGroup Vector).toAddCommGroup
local instance : Module ℝ Vector := (inferInstance : NormedSpace ℝ Vector).toModule
local instance : TopologicalSpace Vector :=
  (inferInstance : NormedAddCommGroup Vector).toMetricSpace.toPseudoMetricSpace.toUniformSpace
    |>.toTopologicalSpace

/-- The planar connection one-form, with its actual real coefficients. -/
def connection (p : Vector) : Vector →ₗ[ℝ] ℝ where
  toFun := beta p
  map_add' v w := by simp only [beta, determinant, Prod.fst_add, Prod.snd_add]; ring
  map_smul' t v := by
    change (p.1 * (t * v.2) - p.2 * (t * v.1)) / 2 =
      t * ((p.1 * v.2 - p.2 * v.1) / 2)
    ring

def edge (p q : Vector) (t : ℝ) : Vector := p + t • (q - p)

theorem edge_hasDerivAt (p q : Vector) (t : ℝ) :
    HasDerivAt (edge p q) (q - p) t := by
  simpa [edge] using (hasDerivAt_const t p).add ((hasDerivAt_id' t).smul_const (q - p))

theorem connection_edge (p q : Vector) (t : ℝ) :
    connection (edge p q t) (q - p) = beta p q := by
  simp only [connection, edge, beta, determinant, LinearMap.coe_mk, AddHom.coe_mk,
    Prod.fst_add, Prod.snd_add, Prod.smul_def,
    Prod.fst_sub, Prod.snd_sub, smul_eq_mul]
  ring

def edgePhase (p q : Vector) : ℝ :=
  ∫ t in (0 : ℝ)..1, connection (edge p q t) (q - p)

theorem edgePhase_eq (p q : Vector) : edgePhase p q = beta p q := by
  simp only [edgePhase, connection_edge]
  simp

/-- The horizontal central coordinate along the actual affine base path. -/
def edgeCenter (p q : Vector) (z t : ℝ) : ℝ := z + t * beta p q

theorem edgeCenter_hasDerivAt (p q : Vector) (z t : ℝ) :
    HasDerivAt (edgeCenter p q z) (connection (edge p q t) (q - p)) t := by
  rw [connection_edge]
  simpa [edgeCenter] using
    (hasDerivAt_const t z).add ((hasDerivAt_id' t).mul_const (beta p q))

def edgeTransport (p q : Vector) (z : ℝ) : Element := ⟨q, z + edgePhase p q⟩

/-- The connection transport agrees with the actual group displacement. -/
theorem edgeTransport_eq_multiply (p q : Vector) (z : ℝ) :
    edgeTransport p q z = (⟨p, z⟩ : Element) * ⟨q - p, 0⟩ := by
  apply Element.ext
  · simp [Element.mul_base, edgeTransport]
  · simp only [Element.mul_center, edgeTransport, edgePhase_eq]
    simp only [beta, determinant, Prod.fst_sub, Prod.snd_sub]
    ring

/-- The two-edge versus one-edge defect is the oriented triangle area. -/
theorem triangle_phase (p q r : Vector) :
    edgePhase p q + edgePhase q r - edgePhase p r = determinant (q - p) (r - p) / 2 := by
  simp only [edgePhase_eq, beta, determinant, Prod.fst_sub, Prod.snd_sub]
  ring

theorem collinear_refinement (p q : Vector) (t : ℝ) :
    edgePhase p (edge p q t) + edgePhase (edge p q t) q = edgePhase p q := by
  simp only [edgePhase_eq, edge, beta, determinant, Prod.fst_add, Prod.snd_add,
    Prod.smul_def, Prod.fst_sub, Prod.snd_sub, smul_eq_mul]
  ring

theorem reverse_phase (p q : Vector) : edgePhase q p = -edgePhase p q := by
  simp only [edgePhase_eq, beta, determinant]
  ring

theorem scaled_phase (p q : Vector) (ρ : ℝ) :
    edgePhase (ρ • p) (ρ • q) = ρ ^ 2 * edgePhase p q := by
  simp only [edgePhase_eq, beta, determinant, Prod.smul_def, smul_eq_mul]
  ring

def squareLoop : Path (0 : Vector) 0 :=
  ((Path.segment 0 (1, 0)).trans (Path.segment (1, 0) (1, 1))).trans
    ((Path.segment (1, 1) (0, 1)).trans (Path.segment (0, 1) 0))

/-- Ordinary contraction is actual continuous path-homotopy data in `Type`.
It does not identify horizontal transports through its comparison surfaces. -/
def projectedContraction (γ : Path (0 : Vector) 0) : γ.Homotopy (Path.refl 0) where
  toFun st := (1 - (st.1 : ℝ)) • γ st.2
  continuous_toFun := by fun_prop
  map_zero_left t := by simp
  map_one_left t := by simp
  prop' s t ht := by
    rcases ht with ht | ht
    · subst t; simp
    · subst t; simp

def squareContraction : squareLoop.Homotopy (Path.refl 0) := projectedContraction squareLoop

def squarePhase (ρ : ℝ) : ℝ :=
  edgePhase 0 (ρ, 0) + edgePhase (ρ, 0) (ρ, ρ) +
    edgePhase (ρ, ρ) (0, ρ) + edgePhase (0, ρ) 0

theorem squarePhase_eq (ρ : ℝ) : squarePhase ρ = ρ ^ 2 := by
  simp [squarePhase, edgePhase_eq, beta, determinant]
  ring

/-- The actual four horizontal displacement elements retain central holonomy. -/
theorem square_horizontal_endpoint :
    (⟨(1, 0), 0⟩ : Element) * ⟨(0, 1), 0⟩ * ⟨(-1, 0), 0⟩ * ⟨(0, -1), 0⟩ =
      central 1 := by
  ext <;> norm_num [Element.mul_base, Element.mul_center, central, beta, determinant]

theorem square_horizontal_endpoint_ne_one :
    (⟨(1, 0), 0⟩ : Element) * ⟨(0, 1), 0⟩ * ⟨(-1, 0), 0⟩ * ⟨(0, -1), 0⟩ ≠ 1 := by
  rw [square_horizontal_endpoint]
  intro h
  have hc := congrArg Element.center h
  change (1 : ℝ) = 0 at hc
  norm_num at hc

theorem ordinary_contraction_retains_phase :
    Nonempty (squareLoop.Homotopy (Path.refl 0)) ∧ squarePhase 1 ≠ 0 := by
  exact ⟨⟨squareContraction⟩, by rw [squarePhase_eq]; norm_num⟩

theorem square_matrix_endpoint :
    matrix ((⟨(1, 0), 0⟩ : Element) * ⟨(0, 1), 0⟩ * ⟨(-1, 0), 0⟩ * ⟨(0, -1), 0⟩) =
      Heisenberg.central 1 := by
  rw [square_horizontal_endpoint, matrix_central]

end

end FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergPathTransport
