/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.ThetaCentralBoundaryPolarization
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.ThetaSectionOrderCoboundary
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact H¹ representative-change gauge law for a central theta extension

For a genuine semilinear Galois action on the ACTUAL elliptic theta
group, changing the E[n]-cocycle representative by a 0-coboundary
lifts to the genuine nonabelian gauge transformation

  u'σ = v⁻¹ uσ (σ v).

The connecting factor is unchanged up to central conjugation:

  b(u')_(σ,τ) = v⁻¹ b(u)_(σ,τ) v = b(u)_(σ,τ).

Comparing this gauged lift with the originally chosen lift of
the new cohomology representative produces a UNIQUE central
scalar 1-cochain kσ. The two *scalar* theta factors then differ
by its precise 2-coboundary

  c_a(σ,τ) = kσ · σ(kτ) · k_(στ)⁻¹ · c_b(σ,τ).

This group law is not the same as the geometric theta
commutator=Weil-pairing theorem. Neither theta Galois
continuity, the original E[n] cocycle quotient, nor a
new perfect pairing is assumed here.

The original source-specific H¹ equality, scalar-fibre torsor
and continuous kσ are supplied by the separate Tau Ceti adapter.
No BSD, local Tate perfection or regulator claim follows.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaHOneGaugeBoundary

open GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization

variable {G Θ : Type*} [Group G] [Group Θ] [MulDistribMulAction G Θ]

/-- Actual change of a theta lift under a nonabelian 0-cochain. -/
def gaugeLift (u : G → Θ) (v : Θ) (σ : G) : Θ :=
  v⁻¹ * u σ * (σ • v)

/-- Group identity: the connecting factor of a gauged lift is
the original factor conjugated by the SAME fixed group element.
No centrality hypothesis is needed for this identity. -/
theorem boundary_gaugeLift
    (u : G → Θ) (v : Θ) (σ τ : G) :
    boundary (gaugeLift u v) σ τ =
      v⁻¹ * boundary u σ τ * v := by
  change (v⁻¹ * u σ * (σ • v)) *
      (σ • (v⁻¹ * u τ * (τ • v))) *
      (v⁻¹ * u (σ * τ) * ((σ * τ) • v))⁻¹ =
      v⁻¹ * (u σ * (σ • u τ) * (u (σ * τ))⁻¹) * v
  simp only [smul_mul', smul_inv', mul_smul]
  group

/-- A genuinely central original theta factor is invariant
under the exact gauge transform (before passing to H²). -/
theorem boundary_gaugeLift_eq_of_central
    (u : G → Θ) (v : Θ) (σ τ : G)
    (hcentral : Commute (boundary u σ τ) v) :
    boundary (gaugeLift u v) σ τ = boundary u σ τ := by
  rw [boundary_gaugeLift]
  calc
    v⁻¹ * boundary u σ τ * v =
      v⁻¹ * (boundary u σ τ * v) := by group
    _ = v⁻¹ * (v * boundary u σ τ) := by rw [hcentral.eq]
    _ = boundary u σ τ := by group

section Scalar

variable {C : Type*} [CommGroup C] [MulDistribMulAction G C]

/-- Scalar multiplicative 1-cochain differential for the
ORIGINAL signed inhomogeneous cohomology convention. -/
def scalarCoboundary (k : G → C) (σ τ : G) : C :=
  k σ * (σ • k τ) * (k (σ * τ))⁻¹

/-- Central comparison of TWO chosen lift families. Given
the genuine original Galois-equivariant central scalar map,
the scalar correction is an exact 2-coboundary, not a
chosen cohomology class or assumed local duality theorem. -/
theorem boundary_of_scalar_comparison
    (i : C →* Θ)
    (hequiv : ∀ (σ : G) (c : C), i (σ • c) = σ • i c)
    (hcentral : ∀ (c : C) (x : Θ), Commute (i c) x)
    (u u' : G → Θ) (k : G → C)
    (hcomp : ∀ σ, u σ = i (k σ) * u' σ)
    (σ τ : G) :
    boundary u σ τ =
      i (scalarCoboundary k σ τ) * boundary u' σ τ := by
  have hs : u = (fun g => i (k g) * u' g) := by
    funext g
    exact hcomp g
  have hshift :
      u' σ * (σ • i (k τ)) = (σ • i (k τ)) * u' σ := by
    rw [← hequiv σ (k τ)]
    exact (hcentral (σ • k τ) (u' σ)).eq.symm
  have hend :
      boundary u' σ τ * (i (k (σ * τ)))⁻¹ =
        (i (k (σ * τ)))⁻¹ * boundary u' σ τ := by
    have hc := (hcentral (k (σ * τ)) (boundary u' σ τ)).eq
    calc
      boundary u' σ τ * (i (k (σ * τ)))⁻¹ =
        (i (k (σ * τ)))⁻¹ * i (k (σ * τ)) *
          boundary u' σ τ * (i (k (σ * τ)))⁻¹ := by group
      _ = (i (k (σ * τ)))⁻¹ *
          (i (k (σ * τ)) * boundary u' σ τ) *
          (i (k (σ * τ)))⁻¹ := by group
      _ = (i (k (σ * τ)))⁻¹ *
          (boundary u' σ τ * i (k (σ * τ))) *
          (i (k (σ * τ)))⁻¹ := by rw [hc]
      _ = (i (k (σ * τ)))⁻¹ * boundary u' σ τ := by group
  rw [hs]
  have hp :=
    GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaSectionOrderCoboundary.boundary_mul_central
      (fun g => i (k g)) u' σ τ hshift hend
  calc
    boundary (fun g => i (k g) * u' g) σ τ =
        (i (k σ) * (σ • i (k τ)) * (i (k (σ * τ)))⁻¹) *
          boundary u' σ τ := hp
    _ = i (scalarCoboundary k σ τ) * boundary u' σ τ := by
      simp only [scalarCoboundary, map_mul, map_inv, hequiv]

/-- The ORIGINAL gauge transformation of a cocycle and an
arbitrary new section differ only by the genuine scalar
1-cochain correction. No central-cocycle statement is
assumed beyond the authentic image centrality. -/
theorem boundary_representative_change
    (i : C →* Θ)
    (hequiv : ∀ (σ : G) (c : C), i (σ • c) = σ • i c)
    (hcentral : ∀ (c : C) (x : Θ), Commute (i c) x)
    (u u' : G → Θ) (v : Θ) (k : G → C)
    (hcomp : ∀ σ, gaugeLift u v σ = i (k σ) * u' σ)
    (hc : ∀ σ τ, ∃ c : C, boundary u σ τ = i c)
    (σ τ : G) :
    boundary u σ τ =
      i (scalarCoboundary k σ τ) * boundary u' σ τ := by
  have hcent : Commute (boundary u σ τ) v := by
    obtain ⟨c,hc'⟩ := hc σ τ
    rw [hc']
    exact hcentral c v
  calc
    boundary u σ τ = boundary (gaugeLift u v) σ τ :=
      (boundary_gaugeLift_eq_of_central u v σ τ hcent).symm
    _ = i (scalarCoboundary k σ τ) * boundary u' σ τ :=
      boundary_of_scalar_comparison i hequiv hcentral
        (gaugeLift u v) u' k hcomp σ τ

end Scalar

end GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaHOneGaugeBoundary
