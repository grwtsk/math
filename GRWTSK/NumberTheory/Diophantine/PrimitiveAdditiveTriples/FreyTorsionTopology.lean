/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the existing nonlinear torsion completion and projection topologies.
Formalization assistance: OpenAI.

Topology of the SAME inter-anchor map, not a replacement parameter fit.
Each topology was independently defined from discrete finite quotients.
The unit-ab hypothesis suffices on canonical completions; formal-disc
frames still require both inverse Jacobians. These topologies do not
support a nonconstant continuous connected-time waveform. No intrinsic
Hodge/heat, coefficient norm, lattice, conductor or height claim is made.
Unelaborated source proof scripts only.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionCompletion
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionTopology
import GRWTSK.Topology.Algebra.DiscreteProjectionRigidity

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTopology

open FreyJetQuotient FreyAdicQuotients FreyCanonicalCompletion
open FreyTorsionUnlocalizedJets FreyTorsionCompletion FreyCompletionTopology

variable {R : Type*} [CommRing R]

/-- Continuity follows from the old nonlinear quotient square at every exponent. -/
theorem completion_continuous (a b l : R) (hl : a * b * l = 1) :
    @Continuous (Canonical a b (-b)) (Canonical a b a)
      (canonicalTopology a b (-b)) (canonicalTopology a b a)
      (completionEquiv a b l hl) := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, unlocalizedEquiv a b l hl (N + 1),
    fun u => completion_projection a b l hl (N + 1) u⟩

/-- The reverse chart direction has its own continuity proof. -/
theorem completion_symm_continuous (a b l : R) (hl : a * b * l = 1) :
    @Continuous (Canonical a b a) (Canonical a b (-b))
      (canonicalTopology a b a) (canonicalTopology a b (-b))
      (completionEquiv a b l hl).symm := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, (unlocalizedEquiv a b l hl (N + 1)).symm,
    fun u => completion_symm_projection a b l hl (N + 1) u⟩

/-- Topological packaging changes neither the ring map nor the old topologies.
It does not require smoothness, including at eligible singular fibers. -/
def completionHomeomorph (a b l : R) (hl : a * b * l = 1) :
    @Homeomorph (Canonical a b (-b)) (Canonical a b a)
      (canonicalTopology a b (-b)) (canonicalTopology a b a) where
  toEquiv := (completionEquiv a b l hl).toEquiv
  continuous_toFun := completion_continuous a b l hl
  continuous_invFun := completion_symm_continuous a b l hl

@[simp] theorem completionHomeomorph_apply (a b l : R) (hl : a * b * l = 1)
    (u : Canonical a b (-b)) :
    completionHomeomorph a b l hl u = completionEquiv a b l hl u := rfl

/-- The complete preimage of each congruence fiber retains its actual finite
inverse map and exponent. This is not a sampled neighborhood comparison. -/
theorem completion_fiber_preimage (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (w : PowerQuotient a b a n) :
    (completionEquiv a b l hl) ⁻¹' {v | canonicalProjection a b a n v = w} =
      {u | canonicalProjection a b (-b) n u = (unlocalizedEquiv a b l hl n).symm w} := by
  ext u
  change canonicalProjection a b a n (completionEquiv a b l hl u) = w ↔ _
  rw [completion_projection]
  constructor
  · intro h
    apply (unlocalizedEquiv a b l hl n).injective
    simpa only [RingEquiv.apply_symm_apply] using h
  · intro h
    rw [h, RingEquiv.apply_symm_apply]

/-- Derive the inverse formal finite square from the old forward square and
both actual inverses. The raw forward series is not used for the reverse map. -/
theorem series_symm_projection (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (N : ℕ) (F : PowerSeries R) :
    FreyParameterSeries.seriesTrunc N ((seriesPullback a b l jA jB hl hA hB).symm F) =
      (parameterEquiv a b l jA jB hl hA hB N).symm
        (FreyParameterSeries.seriesTrunc N F) := by
  apply (parameterEquiv a b l jA jB hl hA hB N).injective
  rw [RingEquiv.apply_symm_apply]
  have h := series_projection a b l jA jB hl hA hB N
    ((seriesPullback a b l jA jB hl hA hB).symm F)
  simpa only [AlgEquiv.apply_symm_apply] using h.symm

theorem series_continuous (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1) :
    @Continuous (PowerSeries R) (PowerSeries R) (seriesTopology R) (seriesTopology R)
      (seriesPullback a b l jA jB hl hA hB) := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, parameterEquiv a b l jA jB hl hA hB N,
    fun F => series_projection a b l jA jB hl hA hB N F⟩

theorem series_symm_continuous (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1) :
    @Continuous (PowerSeries R) (PowerSeries R) (seriesTopology R) (seriesTopology R)
      (seriesPullback a b l jA jB hl hA hB).symm := by
  apply GRWTSK.Topology.Algebra.DiscreteProjection.continuous_of_factor
  intro N
  exact ⟨N, (parameterEquiv a b l jA jB hl hA hB N).symm,
    fun F => series_symm_projection a b l jA jB hl hA hB N F⟩

/-- The underlying function remains the full nonlinear pullback in the old frames. -/
def seriesHomeomorph (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1) :
    @Homeomorph (PowerSeries R) (PowerSeries R) (seriesTopology R) (seriesTopology R) where
  toEquiv := (seriesPullback a b l jA jB hl hA hB).toEquiv
  continuous_toFun := series_continuous a b l jA jB hl hA hB
  continuous_invFun := series_symm_continuous a b l jA jB hl hA hB

@[simp] theorem seriesHomeomorph_apply (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (F : PowerSeries R) :
    seriesHomeomorph a b l jA jB hl hA hB F =
      seriesPullback a b l jA jB hl hA hB F := rfl

/-- Exact parameter congruence is reflected for every pair, not only at zero. -/
theorem series_difference_filtration (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (N : ℕ) (F G : PowerSeries R) :
    (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣
        seriesPullback a b l jA jB hl hA hB F - seriesPullback a b l jA jB hl hA hB G ↔
      (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣ F - G := by
  simpa only [map_sub] using series_filtration_iff a b l jA jB hl hA hB N (F - G)

section ConnectedTime
variable {T : Type*} [TopologicalSpace T] [PreconnectedSpace T]

/-- Positive finite projections separate canonical completion elements.
Apply a downward transition to handle canonical exponent zero without deleting it. -/
theorem canonical_path_constant (a b r : R) (f : T → Canonical a b r)
    (hf : @Continuous T (Canonical a b r) inferInstance (canonicalTopology a b r) f)
    (s t : T) : f s = f t := by
  refine GRWTSK.Topology.Algebra.DiscreteProjectionRigidity.path_eq
    (fun N => (canonicalProjection a b r (N + 1) :
      Canonical a b r → PowerQuotient a b r (N + 1))) ?_ f hf s t
  intro u v huv
  apply AdicCompletion.ext_evalₐ
  intro n
  have h := congrArg (transition a b r n (n + 1) (Nat.le_succ n)) (huv n)
  simpa only [canonicalProjection_transition] using h

/-- Formal parameter topology with discrete coefficients has no nonconstant
continuous connected-time path, even when the coefficient field is real. -/
theorem series_path_constant (f : T → PowerSeries R)
    (hf : @Continuous T (PowerSeries R) inferInstance (seriesTopology R) f)
    (s t : T) : f s = f t := by
  refine GRWTSK.Topology.Algebra.DiscreteProjectionRigidity.path_eq
    (fun N => FreyParameterSeries.seriesTrunc (R := R) N) ?_ f hf s t
  intro F G h
  exact FreyParameterSeries.series_ext F G h

end ConnectedTime

/-- Even varying only the constant coefficient is not continuous from a
nontrivial preconnected coefficient space into the discrete-jet topology.
In particular this applies to usual real time. No coefficient topology is changed. -/
theorem scalar_path_not_continuous [TopologicalSpace R] [PreconnectedSpace R] [Nontrivial R] :
    ¬ @Continuous R (PowerSeries R) inferInstance (seriesTopology R)
      (PowerSeries.C : R → PowerSeries R) := by
  intro hc
  have h := series_path_constant (PowerSeries.C : R → PowerSeries R) hc 0 1
  have h0 := congrArg (PowerSeries.coeff 0) h
  exact zero_ne_one (by simpa using h0)

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTopology

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The original rational two-torsion completion map, now with both continuity laws. -/
def PrimitiveAdditiveTriple.freyT0CanonicalHomeomorph (t : PrimitiveAdditiveTriple) :
    @Homeomorph
      (FreyCanonicalCompletion.Canonical (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ)))
      (FreyCanonicalCompletion.Canonical (t.a : ℚ) (t.b : ℚ) (t.a : ℚ))
      (FreyCompletionTopology.canonicalTopology (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ)))
      (FreyCompletionTopology.canonicalTopology (t.a : ℚ) (t.b : ℚ) (t.a : ℚ)) :=
  FreyTorsionTopology.completionHomeomorph _ _ _ t.freyOpen_ab_inverse

/-- This is exactly the old native algebra map, not a homeomorphic replacement. -/
theorem PrimitiveAdditiveTriple.freyT0CanonicalHomeomorph_agrees
    (t : PrimitiveAdditiveTriple)
    (u : FreyCanonicalCompletion.Canonical (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ))) :
    t.freyT0CanonicalHomeomorph u = t.freyT0CanonicalPullback u := rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
