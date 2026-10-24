/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib induced topologies and homeomorphisms (Apache-2.0).
Formalization assistance: OpenAI.

Explicit finite-projection topologies on the actual canonical completion and
formal series, independently defined before proving the comparison continuous.
No global topology instance is replaced. Coefficients and finite-order quotient
rings are treated discretely, even when infinite. This is not an archimedean or
p-adic coefficient metric, an analytic convergence or compactness theorem,
a scheme-stalk identification, or an arithmetic height estimate.
Unelaborated source proof scripts.
-/
import GRWTSK.Topology.Algebra.DiscreteProjection
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalTransport

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionTopology

open FreyJetQuotient FreyAdicQuotients FreyCanonicalCompletion FreyCanonicalTransport

variable {R S : Type*} [CommRing R] [CommRing S]

/-- Positive canonical exponents define the topology. Exponent zero is the
zero quotient and adds no observation; jet order N still means exponent N+1. -/
def canonicalTopology (a b r : R) : TopologicalSpace (Canonical a b r) :=
  GRWTSK.Topology.Algebra.DiscreteProjection.topology
    (fun N => (canonicalProjection a b r (N + 1) : Canonical a b r → PowerQuotient a b r (N + 1)))

/-- Formal parameter topology defined from truncation modulo T^(N+1).
It does not inherit an analytic or arithmetic topology on R. -/
def seriesTopology (R : Type*) [CommRing R] : TopologicalSpace (PowerSeries R) :=
  GRWTSK.Topology.Algebra.DiscreteProjection.topology
    (fun N => (FreyParameterSeries.seriesTrunc (R := R) N))

/-- Ring operations are continuous for the chosen canonical projection topology. -/
theorem canonical_topologicalRing (a b r : R) :
    letI : TopologicalSpace (Canonical a b r) := canonicalTopology a b r
    IsTopologicalRing (Canonical a b r) :=
  GRWTSK.Topology.Algebra.DiscreteProjection.ring_structure
    (fun N => (canonicalProjection a b r (N + 1)).toRingHom)

/-- Ring operations on formal series are continuous for the parameter topology. -/
theorem series_topologicalRing (R : Type*) [CommRing R] :
    letI : TopologicalSpace (PowerSeries R) := seriesTopology R
    IsTopologicalRing (PowerSeries R) :=
  GRWTSK.Topology.Algebra.DiscreteProjection.ring_structure
    (fun N => (FreyParameterSeries.seriesTruncAlg (R := R) N).toRingHom)

/-- Forward continuity is supplied by the already-proved finite projection square. -/
theorem adicSeries_continuous (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    @Continuous (Canonical a b r) (PowerSeries R)
      (canonicalTopology a b r) (seriesTopology R) (adicSeriesEquiv a b r j hr hj) := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, fun u => algebraEquiv a b r j hr hj N (finiteEquiv a b r N u),
    fun u => adicSeries_projection a b r j hr hj N u⟩

/-- The inverse finite square is proved, not assumed as a continuity certificate. -/
theorem inverse_projection (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (F : PowerSeries R) :
    canonicalProjection a b r (N + 1) ((adicSeriesEquiv a b r j hr hj).symm F) =
      (finiteEquiv a b r N).symm
        ((algebraEquiv a b r j hr hj N).symm (FreyParameterSeries.seriesTrunc N F)) := by
  apply (finiteEquiv a b r N).injective
  apply (algebraEquiv a b r j hr hj N).injective
  have h := adicSeries_projection a b r j hr hj N ((adicSeriesEquiv a b r j hr hj).symm F)
  simpa only [AlgEquiv.apply_symm_apply] using h.symm

/-- Inverse continuity uses the independently defined topology on each side. -/
theorem adicSeries_symm_continuous (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    @Continuous (PowerSeries R) (Canonical a b r)
      (seriesTopology R) (canonicalTopology a b r) (adicSeriesEquiv a b r j hr hj).symm := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, fun u => (finiteEquiv a b r N).symm ((algebraEquiv a b r j hr hj N).symm u),
    fun F => inverse_projection a b r j hr hj N F⟩

/-- The homeomorphism has EXACTLY the old coefficient-algebra equivalence as
its underlying bijection. Neither topology is defined by transporting along it. -/
def adicSeriesHomeomorph (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    @Homeomorph (Canonical a b r) (PowerSeries R)
      (canonicalTopology a b r) (seriesTopology R) where
  toEquiv := (adicSeriesEquiv a b r j hr hj).toEquiv
  continuous_toFun := adicSeries_continuous a b r j hr hj
  continuous_invFun := adicSeries_symm_continuous a b r j hr hj

@[simp] theorem adicSeriesHomeomorph_apply (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (u : Canonical a b r) :
    adicSeriesHomeomorph a b r j hr hj u = adicSeriesEquiv a b r j hr hj u := rfl

/-- Coefficient transport is continuous even for noninjective residue maps.
It need not preserve exact order and is not asserted to be an embedding. -/
theorem canonicalMap_continuous (f : R →+* S) (a b r : R) :
    @Continuous (Canonical a b r) (Canonical (f a) (f b) (f r))
      (canonicalTopology a b r) (canonicalTopology (f a) (f b) (f r))
      (canonicalMap f a b r) := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, powerMap f a b r (N + 1), fun u => canonicalMap_projection f a b r (N + 1) u⟩

/-- Formal coefficient maps are continuous in the same independently defined topology. -/
theorem seriesMap_continuous (f : R →+* S) :
    @Continuous (PowerSeries R) (PowerSeries S) (seriesTopology R) (seriesTopology S)
      (PowerSeries.map f) := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, FreyJetBaseChange.parameterMap f N,
    fun F => FreyCompletionBaseChange.seriesTrunc_map f N F⟩

/-- Every exact finite congruence fiber is open, including the order-zero observation. -/
theorem canonical_fiber_open (a b r : R) (N : ℕ) (v : Canonical a b r) :
    @IsOpen (Canonical a b r) (canonicalTopology a b r)
      {u | canonicalProjection a b r (N + 1) u = canonicalProjection a b r (N + 1) v} :=
  GRWTSK.Topology.Algebra.DiscreteProjection.fiber_isOpen _ N _

/-- Exact finite congruence fibers are closed as well. -/
theorem canonical_fiber_closed (a b r : R) (N : ℕ) (v : Canonical a b r) :
    @IsClosed (Canonical a b r) (canonicalTopology a b r)
      {u | canonicalProjection a b r (N + 1) u = canonicalProjection a b r (N + 1) v} :=
  GRWTSK.Topology.Algebra.DiscreteProjection.fiber_isClosed _ N _

/-- The exact congruence fibers correspond to parameter-divisibility cosets.
This is not a norm bound on the coefficients of either element. -/
theorem congruence_iff_parameter_dvd (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (u v : Canonical a b r) :
    canonicalProjection a b r (N + 1) u = canonicalProjection a b r (N + 1) v ↔
      (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣
        adicSeriesEquiv a b r j hr hj u - adicSeriesEquiv a b r j hr hj v := by
  calc
    _ ↔ canonicalProjection a b r (N + 1) (u - v) = 0 := by rw [map_sub, sub_eq_zero]
    _ ↔ (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣
        adicSeriesEquiv a b r j hr hj (u - v) := adicSeries_filtration a b r j hr hj N (u - v)
    _ ↔ _ := by rw [map_sub]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionTopology

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The selected integral coefficient ring remains Z[1/d_i], with no arithmetic
completion or archimedean norm. Topologies are explicit parameters of the result. -/
def PrimitiveAdditiveTriple.freyCanonicalSectionHomeomorph
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    @Homeomorph (FreyCanonicalSectionCompletion t i) (PowerSeries (FreyJetChart t i))
      (FreyCompletionTopology.canonicalTopology (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
        (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)))
      (FreyCompletionTopology.seriesTopology (FreyJetChart t i)) :=
  FreyCompletionTopology.adicSeriesHomeomorph _ _ _ (t.freyChartInverse i)
    (t.freySectionJet_root i) (t.freySectionJet_inverse i)

/-- Topological packaging preserves the previous exact arithmetic source map. -/
theorem PrimitiveAdditiveTriple.freyCanonicalSectionHomeomorph_agrees
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (u : FreyCanonicalSectionCompletion t i) :
    t.freyCanonicalSectionHomeomorph i u = t.freyCanonicalSectionCompletionEquiv i u := rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
