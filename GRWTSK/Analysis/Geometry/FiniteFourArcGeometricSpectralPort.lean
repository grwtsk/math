/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib source retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcReturnMetric
import GRWTSK.Analysis.Geometry.FiniteFourArcGap
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Source-derived geometric ↔ finite spectral contact-mode adapter

The two *actual* geometric vertex coordinate functions are eigenmodes
of the four-contact graph Laplacian, with eigenvalue two. The linear
synthesis map embeds one real geometric plane into the four-dimensional
vertex-cochain carrier. A separately constructed analysis map
reconstructs both original coordinates exactly.

This is an actual source map between the two existing finite carriers,
not an equation based on matching two numerically close eigenvalues.
Its image is just the eigenvalue-two sector: it neither includes the
constant zero mode nor the alternating eigenvalue-four mode.

The source-map identities do not imply an arithmetic screw or zeta
spectral realization, a Hilbert-Polya operator, or an infinite limit.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- The coordinate field of the four *actual* arc vertices. -/
def vertexMode (j : Fin 2) : FourCochain := fun i => vertex i j

/-- Synthesize one real geometric vector into a contact vertex
0-cochain using the true geometric source vertices as coefficients. -/
def vertexSynthesis (p : Plane) : FourCochain :=
  fun i => p 0 * vertex i 0 + p 1 * vertex i 1

/-- The linear map associated to the explicit source-derived vertex mode
fields; no arbitrary embedding matrix is assumed. -/
def sourceToContact : Plane →ₗ[ℝ] FourCochain where
  toFun := vertexSynthesis
  map_add' p q := by
    funext i
    simp [vertexSynthesis, Pi.add_apply]
    ring
  map_smul' c p := by
    funext i
    simp [vertexSynthesis, Pi.smul_apply, smul_eq_mul]
    ring

/-- The exact analysis/reconstruction map divides by the actual norm
squared 2 of each source coordinate mode. -/
def contactToSource : FourCochain →ₗ[ℝ] Plane where
  toFun f j := (∑ i, f i * vertex i j) / 2
  map_add' f g := by
    funext j
    simp [Pi.add_apply, Finset.sum_add_distrib]
    ring
  map_smul' c f := by
    funext j
    simp [Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    ring

/-- On the original true four-vertex source, the coordinate synthesis
is the ordered tuple (x,y,-x,-y). -/
theorem sourceToContact_coordinates (p : Plane) :
    sourceToContact p =
      fun i : Fin 4 =>
        if i = 0 then p 0
        else if i = 1 then p 1
        else if i = 2 then -p 0
        else -p 1 := by
  funext i
  fin_cases i <;>
    norm_num [sourceToContact, vertexSynthesis, vertex, xy]

/-- Both geometric coordinates are recovered from the entire chosen
four-contact mode; the map is injective, with a named left inverse. -/
theorem contactToSource_sourceToContact (p : Plane) :
    contactToSource (sourceToContact p) = p := by
  funext j
  fin_cases j <;>
    norm_num [contactToSource, sourceToContact, vertexSynthesis,
      vertex, xy, Fin.sum_univ_four] <;> ring

theorem sourceToContact_injective :
    Function.Injective sourceToContact := by
  intro p q h
  have hr := congrArg contactToSource h
  simpa only [contactToSource_sourceToContact] using hr

/-- Exact positive pairing relation. The two independent geometric
coordinates are preserved with known constant 2, not an unstated
condition number or indefinite Hermite pairing. -/
theorem sourceToContact_pairing (p q : Plane) :
    fourDot (sourceToContact p) (sourceToContact q) =
      2 * pointDot p q := by
  simp [fourDot, pointDot, sourceToContact_coordinates,
    Fin.sum_univ_four] <;> ring

/-- Actual geometric coordinates live in the eigenvalue-two subspace
of the independently constructed positive contact graph Laplacian. -/
theorem cycleLaplacian_sourceToContact (p : Plane) :
    cycleLaplacian (sourceToContact p) =
      2 • sourceToContact p := by
  funext i
  fin_cases i <;>
    norm_num [cycleLaplacian, edgeAdjoint, edgeDifference,
      prev, next, sourceToContact_coordinates, Pi.smul_apply] <;>
    ring

/-- The actual quarter-turn on the geometric source becomes cyclic
predecessor shift on its four contact-coordinate readings. This is
the desired concrete source-preserving transport/intertwining map. -/
theorem sourceToContact_quarterTurn (p : Plane) :
    sourceToContact (quarterTurn p) =
      fun i : Fin 4 => sourceToContact p (prev i) := by
  funext i
  fin_cases i <;>
    norm_num [sourceToContact_coordinates, quarterTurn,
      quarterPoint, prev] <;> ring

/-- Strictly retain both the faithful source reconstruction and the
source-derived spectral eigenmode in one typed theorem packet. -/
theorem geometric_spectral_port_certificate (p : Plane) :
    contactToSource (sourceToContact p) = p ∧
      cycleLaplacian (sourceToContact p) =
        2 • sourceToContact p ∧
      fourDot (sourceToContact p) (sourceToContact p) =
        2 * pointDot p p ∧
      sourceToContact (quarterTurn p) =
        (fun i : Fin 4 => sourceToContact p (prev i)) := by
  exact ⟨contactToSource_sourceToContact p,
    cycleLaplacian_sourceToContact p,
    sourceToContact_pairing p p,
    sourceToContact_quarterTurn p⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
