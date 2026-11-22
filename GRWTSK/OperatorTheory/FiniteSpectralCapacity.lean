/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Analysis.Normed.Operator.Banach
import Mathlib.LinearAlgebra.Eigenspace.Basic

/-!
# Spectral capacity of finite operator spaces

Distinct spectral points of a finite-dimensional endomorphism are distinct
eigenvalues. Choosing one nonzero vector from each eigenspace gives a linearly
independent family. For geometric multiplicities, the addition map from the
direct sum of the eigenspaces is injective and therefore the sum of their
dimensions obeys the same budget.

The 95-coordinate application uses the Euclidean carrier and its actual
continuous-linear-map spectrum. A family of 96 distinct source parameters
forces a missing point for every operator on this carrier. This applies to a
single operator at any stage of a 95-position scheme. The source must still
supply the distinct parameters and their normalizing map.

Moving 95-coordinate windows also impose a limit obstruction on any family
of resolvents that factors through those windows. If 96 test vectors have
independent images under the proposed limit, openness of finite linear
independence would make the same images independent eventually. Each
factorization has an intermediate space of dimension 95, which rules this out.
-/

set_option autoImplicit false

namespace GRWTSK.OperatorTheory.FiniteSpectralCapacity

open scoped BigOperators DirectSum Topology

variable {E : Type*} [AddCommGroup E] [Module ℂ E] [FiniteDimensional ℂ E]

/-- The total geometric multiplicity over any finite family of distinct
parameters fits in the dimension of the carrier. -/
theorem sum_eigenspace_finrank_le {ι : Type*} [Fintype ι] (A : Module.End ℂ E)
    (parameter : ι → ℂ) (hparameter : Function.Injective parameter) :
    (∑ i, Module.finrank ℂ (A.eigenspace (parameter i))) ≤ Module.finrank ℂ E := by
  classical
  have hinj := (A.eigenspaces_iSupIndep.comp hparameter).dfinsupp_lsum_injective
  rw [← Module.finrank_directSum]
  exact LinearMap.finrank_le_finrank_of_injective hinj

/-- Every point in the spectrum of a finite endomorphism consumes at least
one dimension when the parameters are distinct. -/
theorem card_le_finrank_of_spectral_family {ι : Type*} [Fintype ι] (A : Module.End ℂ E)
    (parameter : ι → ℂ) (hparameter : Function.Injective parameter)
    (hmem : ∀ i, parameter i ∈ spectrum ℂ A) :
    Fintype.card ι ≤ Module.finrank ℂ E := by
  classical
  have heig : ∀ i, A.HasEigenvalue (parameter i) := fun i =>
    Module.End.hasEigenvalue_iff_mem_spectrum.mpr (hmem i)
  choose v hv using fun i => (heig i).exists_hasEigenvector
  exact (A.eigenvectors_linearIndependent' parameter hparameter v hv).fintype_card_le_finrank

/-- If a distinct family exceeds the carrier dimension, at least one of its
points lies outside the spectrum. -/
theorem exists_missing_spectral_point {ι : Type*} [Fintype ι] (A : Module.End ℂ E)
    (parameter : ι → ℂ) (hparameter : Function.Injective parameter)
    (hcard : Module.finrank ℂ E < Fintype.card ι) :
    ∃ i, parameter i ∉ spectrum ℂ A := by
  by_contra! hmem
  exact (Nat.not_le_of_gt hcard) (card_le_finrank_of_spectral_family A parameter hparameter hmem)

/-- An injective infinite source family has a missing point for any fixed
finite-dimensional endomorphism. -/
theorem exists_missing_spectral_point_of_infinite {ι : Type*} [Infinite ι] (A : Module.End ℂ E)
    (parameter : ι → ℂ) (hparameter : Function.Injective parameter) :
    ∃ i, parameter i ∉ spectrum ℂ A := by
  let sample : Fin (Module.finrank ℂ E + 1) ↪ ι :=
    Fin.valEmbedding.trans (Infinite.natEmbedding ι)
  obtain ⟨i, hi⟩ := exists_missing_spectral_point A (parameter ∘ sample)
    (hparameter.comp sample.injective) (by simp)
  exact ⟨sample i, hi⟩

/-- Any 96 distinct normalized source points exceed the spectral capacity
of a fixed 95-coordinate Euclidean realization. -/
theorem exists_missing_spectral_point_on_95_positions
    (A : EuclideanSpace ℂ (Fin 95) →L[ℂ] EuclideanSpace ℂ (Fin 95))
    (parameter : Fin 96 → ℂ) (hparameter : Function.Injective parameter) :
    ∃ i, parameter i ∉ spectrum ℂ A := by
  rw [ContinuousLinearMap.spectrum_eq]
  exact exists_missing_spectral_point A.toLinearMap parameter hparameter (by simp)

/-- A pointwise limit of maps that factor through small finite-dimensional
spaces cannot have a larger finite independent family of images. -/
theorem not_tendsto_of_finite_factorizations {H J ι : Type*}
    [NormedAddCommGroup H] [NormedSpace ℂ H] [Fintype ι]
    (F : Filter J) [F.NeBot] {W : J → Type*} [∀ j, AddCommGroup (W j)]
    [∀ j, Module ℂ (W j)] [∀ j, Module.Finite ℂ (W j)]
    (restriction : ∀ j, H →ₗ[ℂ] W j) (extension : ∀ j, W j →ₗ[ℂ] H)
    (hsize : ∀ j, Module.finrank ℂ (W j) < Fintype.card ι) (test : ι → H)
    (R : H → H) (hR : LinearIndependent ℂ (fun i => R (test i))) :
    ¬ ∀ x, Filter.Tendsto (fun j => extension j (restriction j x)) F (𝓝 (R x)) := by
  intro hconv
  have htest : Filter.Tendsto (fun j i => extension j (restriction j (test i))) F
      (𝓝 (fun i => R (test i))) := tendsto_pi_nhds.mpr fun i => hconv (test i)
  obtain ⟨j, hj⟩ := (htest.eventually hR.eventually).exists
  have hrestricted : LinearIndependent ℂ (fun i => restriction j (test i)) :=
    LinearIndependent.of_comp (extension j) hj
  exact (Nat.not_le_of_gt (hsize j)) hrestricted.fintype_card_le_finrank

/-- Moving 95-coordinate factorizations cannot converge strongly to an
injective resolvent on a carrier with 96 independent test vectors. -/
theorem not_tendsto_injective_on_95_positions {H J : Type*}
    [NormedAddCommGroup H] [NormedSpace ℂ H] (F : Filter J) [F.NeBot]
    (restriction : J → H →L[ℂ] EuclideanSpace ℂ (Fin 95))
    (extension : J → EuclideanSpace ℂ (Fin 95) →L[ℂ] H)
    (test : Fin 96 → H) (htest : LinearIndependent ℂ test)
    (R : H →L[ℂ] H) (hR : Function.Injective R) :
    ¬ ∀ x, Filter.Tendsto (fun j => extension j (restriction j x)) F (𝓝 (R x)) := by
  apply not_tendsto_of_finite_factorizations F
    (fun j => (restriction j).toLinearMap) (fun j => (extension j).toLinearMap)
    (by simp) test R
  exact htest.map' R.toLinearMap (LinearMap.ker_eq_bot.mpr hR)

end GRWTSK.OperatorTheory.FiniteSpectralCapacity
