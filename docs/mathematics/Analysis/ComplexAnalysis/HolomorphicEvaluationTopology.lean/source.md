# Complete source: GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b0f9089f9ca3f1a7ff6cf183306cfde6540e831` · SHA-256 `d4f96de6a626daf868d1ace489a6fb186b6e7b9f892e8657a3e2f815a6443413`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum

namespace GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology

open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing
open GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum

noncomputable section

/-- A holomorphic section is continuous on the actual domain subtype.
No openness of the domain or continuity assumption is added. -/
theorem section_continuous (A : Domain) (f : HolomorphicSection A) :
    Continuous (f : Section A) := by
  rcases f.property with ⟨F, hF, hEq⟩
  have hFun : (fun z : A.carrier => F (z : ℂ)) = (f : Section A) :=
    funext hEq
  have hCont : Continuous (fun z : A.carrier => F (z : ℂ)) :=
    hF.continuousOn.domRestrict
  rwa [hFun] at hCont

/-- Exact vanishing-locus formula for evaluation into the prime spectrum. -/
theorem preimage_zeroLocus (A : Domain) (s : Set (HolomorphicSection A)) :
    pointToSpectrum A ⁻¹' PrimeSpectrum.zeroLocus s =
      ⋂ f : s, {z : A.carrier | (f.1 : Section A) z = 0} := by
  ext z
  change (s ⊆ (evaluationPrime A z).asIdeal) ↔
    z ∈ ⋂ f : s, {z : A.carrier | (f.1 : Section A) z = 0}
  simp only [Set.mem_iInter, Set.mem_setOf_eq]
  constructor
  · intro h f
    exact h f.property
  · intro h f hf
    exact h ⟨f, hf⟩

/-- Analytic evaluation is continuous into the Zariski topology.

A Zariski closed set pulls back to an arbitrary intersection of closed zero sets of continuous
holomorphic sections. This does not identify the analytic topology with the Zariski topology. -/
theorem pointToSpectrum_continuous (A : Domain) :
    Continuous (pointToSpectrum A) := by
  rw [continuous_iff_isClosed]
  intro Z hZ
  rcases (PrimeSpectrum.isClosed_iff_zeroLocus Z).mp hZ with ⟨s, rfl⟩
  rw [preimage_zeroLocus]
  exact isClosed_iInter fun f =>
    isClosed_eq (section_continuous A f.1) continuous_const

/-- The same evaluation map bundled with the continuity theorem. -/
def continuousPointToSpectrum (A : Domain) :
    ContinuousMap A.carrier (PrimeSpectrum (HolomorphicSection A)) where
  toFun := pointToSpectrum A
  continuous_toFun := pointToSpectrum_continuous A

/-- Constant sections have explicit ambient holomorphic witnesses. -/
def constantSection (A : Domain) (c : ℂ) : HolomorphicSection A :=
  ⟨fun _ => c,
    ⟨fun _ : ℂ => c, (differentiable_const c).differentiableOn, fun _ => rfl⟩⟩

/-- The ambient coordinate restricts to an actual holomorphic section. -/
def coordinateSection (A : Domain) : HolomorphicSection A :=
  ⟨fun z => (z : ℂ),
    ⟨id, differentiable_id.differentiableOn, fun _ => rfl⟩⟩

/-- Point evaluation is surjective because constants realize every complex value. -/
theorem evaluationRingHom_surjective (A : Domain) (z : A.carrier) :
    Function.Surjective (evaluationRingHom A z) := by
  intro c
  exact ⟨constantSection A c, rfl⟩

/-- Distinct analytic points have distinct evaluation kernels.

The separating section is the coordinate minus a constant. Injectivity together with continuity
is not asserted to give a topological embedding. -/
theorem pointToSpectrum_injective (A : Domain) :
    Function.Injective (pointToSpectrum A) := by
  intro z w h
  let f : HolomorphicSection A := coordinateSection A - constantSection A (z : ℂ)
  have hz : f ∈ (evaluationPrime A z).asIdeal := by
    change (z : ℂ) - (z : ℂ) = 0
    exact sub_self _
  have hIdeal : (evaluationPrime A z).asIdeal = (evaluationPrime A w).asIdeal :=
    congrArg (fun q : PrimeSpectrum (HolomorphicSection A) => q.asIdeal) h
  rw [hIdeal] at hz
  change (w : ℂ) - (z : ℂ) = 0 at hz
  exact Subtype.ext (sub_eq_zero.mp hz).symm

/-- The restriction square commutes as an equality of continuous maps, not just pointwise labels. -/
theorem continuous_restriction_naturality {A B : Domain} (p : Port A B) :
    (ContinuousMap.mk
      (PrimeSpectrum.comap
        (GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom p))
      (PrimeSpectrum.continuous_comap
        (GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom p))).comp
        (continuousPointToSpectrum B) =
    (continuousPointToSpectrum A).comp
      (ContinuousMap.mk
        (fun z : B.carrier => (⟨z.1, p.subset z.2⟩ : A.carrier))
        (continuous_subtype_val.subtype_mk (fun z : B.carrier => p.subset z.2))) := by
  ext z
  exact evaluationPrime_comap p z

end

end GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology
```
