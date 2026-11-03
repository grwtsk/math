/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.ThetaCentralBoundaryPolarization
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Turn the ORIGINAL central theta factor into a genuine group 2-cocycle

The earlier theta geometry constructs a raw scalar from
  u_sigma * (sigma • u_tau) * (u_(sigma*tau))^{-1}.
The missing ALGEBRAIC bridge is the 2-cocycle identity.
This module proves the identity directly from the same
semilinear action, the actual central scalar kernel,
and an injective equivariant scalar inclusion.

No `IsCocycle₂` or desired H² class is assumed as a field.
The only inputs are structural group/centrality facts
provided by the original rational-function theta group.
The original Galois continuity and the source
`UnitsCoeff F`/Brauer H² comparison remain separately
necessary for an accepted elliptic theorem.

A strict crossed Kummer lift gives the identity scalar
factor at every pair, not a prescribed obstruction value.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralFactorCocycle

open GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization

variable {G Θ C : Type*}
variable [Group G] [Group Θ] [CommGroup C]
variable [MulAction G Θ] [MulDistribMulAction G Θ]
variable [MulAction G C] [MulDistribMulAction G C]

/-- The ORIGINAL theta scalar kernel is an injective
equivariant map from nonzero constants into the theta
group, and its image is central. It does not contain
a chosen Weil form or a cohomology class. -/
structure CentralScalarInclusion (G Θ C : Type*)
    [Group G] [Group Θ] [CommGroup C]
    [MulAction G Θ] [MulDistribMulAction G Θ]
    [MulAction G C] [MulDistribMulAction G C] where
  scalar : C →* Θ
  scalar_injective : Function.Injective scalar
  scalar_equivariant : ∀ (σ : G) (c : C),
    scalar (σ • c) = σ • scalar c
  scalar_central : ∀ (c : C) (z : Θ),
    Commute (scalar c) z

/-- A factor is NOT an arbitrary 2-cochain selected to
fit a desired pairing: its scalar image must equal
the exact nonabelian boundary of the actual theta lifts.
This requirement is a function-level source equation,
not an assumed cocycle law. -/
structure FactorData (S : CentralScalarInclusion G Θ C)
    (u : G → Θ) where
  factor : G → G → C
  factor_spec : ∀ σ τ,
    S.scalar (factor σ τ) = boundary u σ τ

/-- The only group-word identity required for the
2-cocycle law, with the precise noncommutative
commutation made explicit. -/
private theorem central_boundary_word
    (A B C₀ D E F : Θ)
    (hc : (B * C₀ * E⁻¹) * A =
      A * (B * C₀ * E⁻¹)) :
    (A * B * D⁻¹) * (D * C₀ * F⁻¹) =
      (B * C₀ * E⁻¹) * (A * E * F⁻¹) := by
  calc
    (A * B * D⁻¹) * (D * C₀ * F⁻¹) =
        A * B * C₀ * F⁻¹ := by group
    _ = (B * C₀ * E⁻¹) * (A * E * F⁻¹) := by
      rw [hc]
      group

/-- A CENTRAL nonabelian boundary satisfies the
genuine multiplicative group-cohomological 2-cocycle
identity. The centrality of the `tau,rho` defect
after the Galois action is the only nontrivial
commutation in the computation. -/
theorem boundary_twoCocycle_of_central
    (u : G → Θ) (σ τ ρ : G)
    (hc : Commute (σ • boundary u τ ρ) (u σ)) :
    boundary u σ τ * boundary u (σ * τ) ρ =
      (σ • boundary u τ ρ) *
        boundary u σ (τ * ρ) := by
  let A : Θ := u σ
  let B : Θ := σ • u τ
  let C₀ : Θ := (σ * τ) • u ρ
  let D : Θ := u (σ * τ)
  let E : Θ := σ • u (τ * ρ)
  let F : Θ := u (σ * (τ * ρ))
  have hsmul : σ • boundary u τ ρ =
      B * C₀ * E⁻¹ := by
    simp [B, C₀, E, boundary, smul_mul, smul_inv, mul_smul]
  have hh : (B * C₀ * E⁻¹) * A =
      A * (B * C₀ * E⁻¹) := by
    rw [← hsmul]
    exact hc.eq
  have hword := central_boundary_word A B C₀ D E F hh
  simpa [A, B, C₀, D, E, F, boundary, smul_mul, smul_inv,
    mul_smul, mul_assoc] using hword

/-- The factor of the ACTUAL central extension obeys
the 2-cocycle identity. This is DERIVED from source
group multiplication and centrality, not included
in the FactorData structure as a premise. -/
theorem FactorData.factor_twoCocycle
    (S : CentralScalarInclusion G Θ C) (u : G → Θ)
    (D : FactorData S u) (σ τ ρ : G) :
    D.factor σ τ * D.factor (σ * τ) ρ =
      (σ • D.factor τ ρ) *
        D.factor σ (τ * ρ) := by
  apply S.scalar_injective
  have hcentral : Commute (σ • boundary u τ ρ) (u σ) := by
    rw [← D.factor_spec τ ρ, ← S.scalar_equivariant σ (D.factor τ ρ)]
    exact S.scalar_central _ _
  simpa only [map_mul, S.scalar_equivariant, D.factor_spec] using
    boundary_twoCocycle_of_central u σ τ ρ hcentral

/-- A genuine strict crossed Kummer lift has the
IDENTICALLY TRIVIAL scalar factor: no `theta=0`
assumption or artificial quadratic map is introduced. -/
theorem FactorData.factor_eq_one_of_crossed
    (S : CentralScalarInclusion G Θ C) (u : G → Θ)
    (D : FactorData S u)
    (hcrossed : ∀ σ τ, u σ * (σ • u τ) = u (σ * τ))
    (σ τ : G) : D.factor σ τ = 1 := by
  apply S.scalar_injective
  rw [D.factor_spec, map_one]
  exact boundary_eq_one_of_crossed u hcrossed σ τ

end GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralFactorCocycle
