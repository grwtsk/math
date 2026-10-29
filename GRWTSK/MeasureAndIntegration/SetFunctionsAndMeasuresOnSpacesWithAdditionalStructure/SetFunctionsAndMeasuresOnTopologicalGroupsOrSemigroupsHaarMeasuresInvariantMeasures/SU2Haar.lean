/- Copyright (c) 2026 grwtsk contributors. MIT.
The imported matrix group retains Shing Tak Lam's upstream authorship.
Mathlib's Haar construction and finite product measures retain Floris van
Doorn's upstream authorship; Haar uniqueness retains Sébastien Gouëzel's.
All imported Mathlib results retain their original Apache-2.0 license. -/
import GRWTSK.TopologicalGroupsLieGroups.CompactGroups.SU2Topology
import Mathlib.MeasureTheory.Measure.Haar.Unique
import Mathlib.MeasureTheory.Constructions.Pi

/-!
# Actual normalized Haar probability and finite link products for SU(2)

Normalize the maintained Haar construction on the whole compact group. The
normalizing compact set is literally `univ`, so its proved Haar mass is one.
Right invariance is derived from Haar uniqueness and preservation of total
mass under right translation; no commutativity of SU(2) is asserted.

Finite products are the actual `Measure.pi` products of this probability.
Coordinatewise two-sided multiplication is measure preserving, which is the
link-by-link consumer needed for vertex gauge transformations on a fixed
finite lattice. No measure invariance or probability property is supplied as
a research field or assumed as a premise.

Paper context: Arthur Jaffe and Edward Witten, Quantum Yang--Mills Theory,
section 6.5, https://www.claymath.org/wp-content/uploads/2022/06/yangmills.pdf.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.SU2Haar

open MeasureTheory Set TopologicalSpace
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Topology

/-- The Borel sigma algebra of the actual compact matrix subgroup. -/
instance measurableSpaceSU2 : MeasurableSpace SU2 := borel SU2

instance borelSpaceSU2 : BorelSpace SU2 := ⟨rfl⟩

/-- The entire compact group has nonempty interior in itself. -/
def haarNormalizer : PositiveCompacts SU2 :=
  ⟨⟨Set.univ, isCompact_univ⟩, by simp⟩

/-- The actual Haar construction, normalized on the entire compact group. -/
def haarProbability : Measure SU2 := Measure.haarMeasure haarNormalizer

theorem haarProbability_univ : haarProbability Set.univ = 1 := by
  change Measure.haarMeasure haarNormalizer (haarNormalizer : Set SU2) = 1
  exact Measure.haarMeasure_self

instance haarProbability_isProbabilityMeasure : IsProbabilityMeasure haarProbability :=
  ⟨haarProbability_univ⟩

instance haarProbability_isHaarMeasure : Measure.IsHaarMeasure haarProbability := by
  dsimp only [haarProbability]
  infer_instance

/-- Right translations preserve this normalized Haar measure. The proof
compares the translated left-invariant measure with Haar on the actual
compact group, then fixes the scalar by their common total mass one. -/
instance haarProbability_isMulRightInvariant : Measure.IsMulRightInvariant haarProbability where
  map_mul_right_eq_self g := by
    let μ' : Measure SU2 := Measure.map (fun u : SU2 => u * g) haarProbability
    letI : IsProbabilityMeasure μ' := ⟨by
      change (Measure.map (fun u : SU2 => u * g) haarProbability) Set.univ = 1
      rw [Measure.map_apply (measurable_mul_const g) MeasurableSet.univ]
      simpa only [Set.preimage_univ] using haarProbability_univ⟩
    letI : Measure.IsMulLeftInvariant μ' := by
      dsimp only [μ']
      infer_instance
    have heq : μ' = Measure.haarScalarFactor μ' haarProbability • haarProbability :=
      Measure.isMulInvariant_eq_smul_of_compactSpace μ' haarProbability
    have A (s : Set SU2) :
        μ' s = Measure.haarScalarFactor μ' haarProbability • haarProbability s := by
      simpa only [Measure.smul_apply] using congrArg (fun ν : Measure SU2 => ν s) heq
    have Z := A Set.univ
    simp only [measure_univ, ENNReal.smul_def, smul_eq_mul, mul_one,
      ENNReal.one_eq_coe] at Z
    change μ' = haarProbability
    ext s hs
    simp [A s, ← Z]

/-- A fixed left and right multiplier preserve the actual one-link measure. -/
theorem measurePreserving_twoSided (a b : SU2) :
    MeasurePreserving (fun u : SU2 => a * u * b) haarProbability haarProbability := by
  simpa only [Function.comp_def] using
    (measurePreserving_mul_right haarProbability b).comp
      (measurePreserving_mul_left haarProbability a)

/-- The actual finite product of normalized one-link Haar probabilities. -/
def productHaar (ι : Type*) [Fintype ι] : Measure (ι → SU2) :=
  Measure.pi (fun _ : ι => haarProbability)

instance productHaar_isProbabilityMeasure (ι : Type*) [Fintype ι] :
    IsProbabilityMeasure (productHaar ι) := by
  dsimp only [productHaar]
  infer_instance

theorem productHaar_univ (ι : Type*) [Fintype ι] : productHaar ι Set.univ = 1 :=
  measure_univ

/-- Linkwise two-sided multiplication preserves the constructed finite
product measure. The two multipliers may depend on the link label. -/
theorem measurePreserving_twoSidedProduct {ι : Type*} [Fintype ι]
    (a b : ι → SU2) :
    MeasurePreserving (fun U : ι → SU2 => fun e => a e * U e * b e)
      (productHaar ι) (productHaar ι) := by
  exact measurePreserving_pi (fun _ : ι => haarProbability)
    (fun _ : ι => haarProbability) (fun e => measurePreserving_twoSided (a e) (b e))

end GRWTSK.Geometry.GaugeTheory.SU2Haar
