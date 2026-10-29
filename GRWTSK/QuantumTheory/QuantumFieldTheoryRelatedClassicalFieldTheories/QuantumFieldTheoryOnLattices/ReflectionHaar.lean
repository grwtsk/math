/- Copyright (c) 2026 grwtsk contributors. MIT.
The imported group-measure and finite-product theory retain Floris van Doorn's
upstream authorship; Haar uniqueness retains Sébastien Gouëzel's. Imported
Mathlib and GRWTSK sources retain their original attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTimeReflection

/-!
# Actual Haar and Wilson measure preservation under bond time reflection

Inversion is not a group homomorphism of SU(2). Its preservation of the actual
normalized Haar probability is instead proved from right invariance, compact
Haar uniqueness and total mass one. The reflected link labels form an actual
finite permutation, which preserves the product of identical Haar marginals.
Combining that permutation with temporal-coordinate inversion gives the
literal full configuration reflection. Neither crossing temporal layer is
removed from the product measure or its integrations.

The actual Wilson density is preserved by that reference-measure symmetry
and the proved reflected action identity. Gauge invariance is not used as a
substitute for reflection invariance. The terminal consumer supplies the
measure-preserving involution needed by the Hermitian reflection form.

These finite measure symmetries do not establish reflection positivity,
a Hilbert norm, a physical Hamiltonian, a continuum limit or a mass gap.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.ReflectionHaar

open MeasureTheory Set
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.WilsonTimeReflection
open GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization

/-- The actual normalized Haar probability on the noncommutative group SU(2)
is inversion invariant. Right invariance, rather than commutativity, makes
the inverted measure left invariant. Its total mass fixes the Haar scalar. -/
instance haarProbability_isInvInvariant : Measure.IsInvInvariant haarProbability where
  inv_eq_self := by
    let μ' : Measure SU2 := haarProbability.inv
    letI : IsProbabilityMeasure μ' := ⟨by
      change (Measure.map (Inv.inv : SU2 → SU2) haarProbability) univ = 1
      rw [Measure.map_apply measurable_inv MeasurableSet.univ]
      simpa only [Set.preimage_univ] using haarProbability_univ⟩
    letI : Measure.IsMulLeftInvariant μ' := by
      dsimp only [μ']
      infer_instance
    have heq : μ' = Measure.haarScalarFactor μ' haarProbability • haarProbability :=
      Measure.isMulInvariant_eq_smul_of_compactSpace μ' haarProbability
    have A (s : Set SU2) :
        μ' s = Measure.haarScalarFactor μ' haarProbability • haarProbability s := by
      simpa only [Measure.smul_apply] using congrArg (fun ν : Measure SU2 => ν s) heq
    have Z := A univ
    simp only [measure_univ, ENNReal.smul_def, smul_eq_mul, mul_one,
      ENNReal.one_eq_coe] at Z
    change μ' = haarProbability
    ext s hs
    simp [A s, ← Z]

/-- The one-link inversion map preserves the constructed Haar probability. -/
theorem measurePreserving_haarInverse :
    MeasurePreserving (Inv.inv : SU2 → SU2) haarProbability haarProbability :=
  Measure.measurePreserving_inv haarProbability

/-- Invert a declared collection of coordinates and retain every other
coordinate. The full finite product inventory is unchanged. -/
def selectiveInverse {ι : Type*} (p : ι → Prop) [DecidablePred p]
    (U : ι → SU2) : ι → SU2 :=
  fun i => if p i then (U i)⁻¹ else U i

/-- Independent inversion of the chosen coordinates preserves the actual
finite product of normalized one-link Haar measures. -/
theorem measurePreserving_selectiveInverse {ι : Type*} [Fintype ι]
    (p : ι → Prop) [DecidablePred p] :
    MeasurePreserving (selectiveInverse p) (productHaar ι) (productHaar ι) := by
  unfold selectiveInverse
  apply measurePreserving_pi (fun _ : ι => haarProbability)
    (fun _ : ι => haarProbability)
  intro i
  by_cases hi : p i
  · simpa only [if_pos hi] using measurePreserving_haarInverse
  · have hid : MeasurePreserving (fun u : SU2 => u) haarProbability haarProbability :=
      ⟨measurable_id, by simp⟩
    simpa only [if_neg hi] using hid

/-- A finite permutation of link labels preserves the product of the same
actual Haar marginal at every label. This is a genuine reindexing theorem. -/
theorem measurePreserving_reindex {ι : Type*} [Fintype ι] (e : ι ≃ ι) :
    MeasurePreserving (fun U : ι → SU2 => fun i => U (e i))
      (productHaar ι) (productHaar ι) := by
  have hf :
      (MeasurableEquiv.piCongrLeft (fun _ : ι => SU2) e.symm :
        (ι → SU2) → (ι → SU2)) = (fun U : ι → SU2 => fun i => U (e i)) := by
    funext U i
    have h := MeasurableEquiv.piCongrLeft_apply_apply
      (β := fun _ : ι => SU2) e.symm U (e i)
    simpa only [Equiv.symm_apply_apply] using h
  rw [← hf]
  exact measurePreserving_piCongrLeft (α := fun _ : ι => SU2)
    (fun _ : ι => haarProbability) e.symm

section Lattice

variable (L : ℕ) [NeZero L]

/-- The actual configuration reflection preserves the actual reference
product Haar measure. Temporal inversion and coordinate permutation are
both proved measure preserving; neither is inferred from gauge symmetry. -/
theorem measurePreserving_reference_reflection :
    MeasurePreserving (reflection : Configuration L SU2 → Configuration L SU2)
      (referenceMeasure L) (referenceMeasure L) := by
  exact (measurePreserving_selectiveInverse (fun e : Link L => e.2 = 0)).comp
    (measurePreserving_reindex (reflectLinkEquiv L))

/-- Reflection preserves the constructed Wilson density measure by actual
Haar preservation and actual reflected action invariance. Symmetry itself
holds for every real beta; probability and integrability use beta>=0. -/
theorem wilsonMeasure_map_reflection (β : ℝ) :
    (wilsonMeasure L β).map
      (reflection : Configuration L SU2 → Configuration L SU2) = wilsonMeasure L β :=
  boltzmannMeasure_map_eq (referenceMeasure L) (measurable_wilsonAction L)
    (measurePreserving_reference_reflection L) (wilsonAction_reflection L)

/-- The actual measure-preserving involution consumed by the reflection form.
Its probability property for beta>=0 is established by the maintained finite
Wilson normalization theorem, independently of this symmetry statement. -/
theorem measurePreserving_wilson_reflection (β : ℝ) :
    MeasurePreserving (reflection : Configuration L SU2 → Configuration L SU2)
      (wilsonMeasure L β) (wilsonMeasure L β) :=
  ⟨continuous_reflection.measurable, wilsonMeasure_map_reflection L β⟩

end Lattice

end GRWTSK.Geometry.GaugeTheory.ReflectionHaar
