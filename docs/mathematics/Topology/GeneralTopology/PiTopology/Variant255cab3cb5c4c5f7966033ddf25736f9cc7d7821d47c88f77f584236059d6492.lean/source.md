# Complete source: GRWTSK.Topology.GeneralTopology.PiTopology.Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0301ad841b5368792e98e1ffbc756d7fde31a6bd` · SHA-256 `5ab5e3974b747dd15dc7cc5fabebf8ee91a984f807a236acbe16530cd5ca200d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.InstT0Space.Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.InstT0Space.Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/PowerSeries/PiTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Antoine Chambert-Loir, María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir, María Inés de Frutos-Fernández
-/
import Mathlib.RingTheory.MvPowerSeries.PiTopology
import Mathlib.RingTheory.PowerSeries.Basic
import Mathlib.RingTheory.PowerSeries.Trunc
import Mathlib.LinearAlgebra.Finsupp.Pi

/-! # Product topology on power series

Let `R` be with `Semiring R` and `TopologicalSpace R`
In this file we define the topology on `PowerSeries σ R`
that corresponds to the simple convergence on its coefficients.
It is the coarsest topology for which all coefficients maps are continuous.

When `R` has `UniformSpace R`, we define the corresponding uniform structure.

This topology can be included by writing `open scoped PowerSeries.WithPiTopology`.

When the type of coefficients has the discrete topology, it corresponds to the topology defined by
[N. Bourbaki, *Algebra {II}*, Chapter 4, §4, n°2][bourbaki1981].

It corresponds with the adic topology but this is not proved here.

- `PowerSeries.WithPiTopology.isTopologicallyNilpotent_of_constantCoeff_isNilpotent`,
`PowerSeries.WithPiTopology.isTopologicallyNilpotent_of_constantCoeff_zero`: if the constant
coefficient of `f` is nilpotent, or vanishes, then `f` is topologically nilpotent.

- `PowerSeries.WithPiTopology.isTopologicallyNilpotent_iff_constantCoeff_isNilpotent` :
assuming the base ring has the discrete topology, `f` is topologically nilpotent iff the constant
coefficient of `f` is nilpotent.

- `PowerSeries.WithPiTopology.hasSum_of_monomials_self` : viewed as an infinite sum, a power
series converges to itself.

TODO: add the similar result for the series of homogeneous components.

## Instances

- If `R` is a topological (semi)ring, then so is `PowerSeries σ R`.
- If the topology of `R` is T0 or T2, then so is that of `PowerSeries σ R`.
- If `R` is a `IsUniformAddGroup`, then so is `PowerSeries σ R`.
- If `R` is complete, then so is `PowerSeries σ R`.

-/



namespace GRWTSK.Topology.GeneralTopology.InstT0Space.Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87

namespace PowerSeries

open Filter Function

variable (R : Type*)

section Topological

variable [TopologicalSpace R]

namespace WithPiTopology

open scoped Topology

/-- The pointwise topology on `PowerSeries` -/
scoped instance : TopologicalSpace (PowerSeries R) :=
  Pi.topologicalSpace

/-- Separation of the topology on `PowerSeries` -/
@[scoped instance]
theorem instT0Space [T0Space R] : T0Space (PowerSeries R) :=
  MvPowerSeries.WithPiTopology.instT0Space

/-- `PowerSeries` on a `T2Space` form a `T2Space` -/
@[scoped instance]
theorem instT2Space [T2Space R] : T2Space (PowerSeries R) :=
  MvPowerSeries.WithPiTopology.instT2Space

/-- Coefficients are continuous -/
theorem continuous_coeff [Semiring R] (d : ℕ) : Continuous (PowerSeries.coeff R d) :=
  continuous_pi_iff.mp continuous_id (Finsupp.single () d)

/-- The constant coefficient is continuous -/
theorem continuous_constantCoeff [Semiring R] : Continuous (constantCoeff R) :=
  coeff_zero_eq_constantCoeff (R := R) ▸ continuous_coeff R 0

/-- A family of power series converges iff it converges coefficientwise -/
theorem tendsto_iff_coeff_tendsto [Semiring R] {ι : Type*}
    (f : ι → PowerSeries R) (u : Filter ι) (g : PowerSeries R) :
    Tendsto f u (nhds g) ↔
    ∀ d : ℕ, Tendsto (fun i => coeff R d (f i)) u (nhds (coeff R d g)) := by
  rw [MvPowerSeries.WithPiTopology.tendsto_iff_coeff_tendsto]
  apply (Finsupp.LinearEquiv.finsuppUnique ℕ ℕ Unit).toEquiv.forall_congr
  intro d
  simp only [LinearEquiv.coe_toEquiv, Finsupp.LinearEquiv.finsuppUnique_apply,
    PUnit.default_eq_unit, coeff]
  apply iff_of_eq
  congr
  · ext _; congr; ext; simp
  · ext; simp

theorem tendsto_trunc_atTop [CommSemiring R] (f : R⟦X⟧) :
    Tendsto (fun d ↦ (trunc d f : R⟦X⟧)) atTop (𝓝 f) := by
  rw [tendsto_iff_coeff_tendsto]
  intro d
  exact tendsto_atTop_of_eventually_const fun n (hdn : d < n) ↦ (by simp [coeff_trunc, hdn])

/-- The inclusion of polynomials into power series has dense image -/
theorem denseRange_toPowerSeries [CommSemiring R] :
    DenseRange (Polynomial.toPowerSeries (R := R)) := fun f =>
  mem_closure_of_tendsto (tendsto_trunc_atTop R f) <| .of_forall fun _ ↦ Set.mem_range_self _

/-- The semiring topology on `PowerSeries` of a topological semiring -/
@[scoped instance]
theorem instIsTopologicalSemiring [Semiring R] [IsTopologicalSemiring R] :
    IsTopologicalSemiring (PowerSeries R) :=
  MvPowerSeries.WithPiTopology.instIsTopologicalSemiring Unit R

/-- The ring topology on `PowerSeries` of a topological ring -/
@[scoped instance]
theorem instIsTopologicalRing [Ring R] [IsTopologicalRing R] :
    IsTopologicalRing (PowerSeries R) :=
  MvPowerSeries.WithPiTopology.instIsTopologicalRing Unit R

end WithPiTopology

end Topological

section Uniform

namespace WithPiTopology

variable [UniformSpace R]

/-- The product uniformity on `PowerSeries` -/
scoped instance : UniformSpace (PowerSeries R) :=
  MvPowerSeries.WithPiTopology.instUniformSpace

/-- Coefficients are uniformly continuous -/
theorem uniformContinuous_coeff [Semiring R] (d : ℕ) :
    UniformContinuous fun f : PowerSeries R ↦ coeff R d f :=
  uniformContinuous_pi.mp uniformContinuous_id (Finsupp.single () d)

/-- Completeness of the uniform structure on `PowerSeries` -/
@[scoped instance]
theorem instCompleteSpace [CompleteSpace R] :
    CompleteSpace (PowerSeries R) :=
  MvPowerSeries.WithPiTopology.instCompleteSpace

/-- The `IsUniformAddGroup` structure on `PowerSeries` of a `IsUniformAddGroup` -/
@[scoped instance]
theorem instIsUniformAddGroup [AddGroup R] [IsUniformAddGroup R] :
    IsUniformAddGroup (PowerSeries R) :=
  MvPowerSeries.WithPiTopology.instIsUniformAddGroup

@[deprecated (since := "2025-03-27")] alias instUniformAddGroup := instIsUniformAddGroup

end WithPiTopology

end Uniform

section

variable {R}

variable [TopologicalSpace R]

namespace WithPiTopology

open MvPowerSeries.WithPiTopology

theorem continuous_C [Semiring R] : Continuous (C R) :=
  MvPowerSeries.WithPiTopology.continuous_C

theorem isTopologicallyNilpotent_of_constantCoeff_isNilpotent [CommSemiring R]
    {f : PowerSeries R} (hf : IsNilpotent (constantCoeff R f)) :
    Tendsto (fun n : ℕ => f ^ n) atTop (nhds 0) :=
  MvPowerSeries.WithPiTopology.isTopologicallyNilpotent_of_constantCoeff_isNilpotent hf

theorem isTopologicallyNilpotent_of_constantCoeff_zero [CommSemiring R]
    {f : PowerSeries R} (hf : constantCoeff R f = 0) :
    Tendsto (fun n : ℕ => f ^ n) atTop (nhds 0) :=
  MvPowerSeries.WithPiTopology.isTopologicallyNilpotent_of_constantCoeff_zero hf

/-- Assuming the base ring has a discrete topology, the powers of a `PowerSeries` converge to 0
iff its constant coefficient is nilpotent.
[N. Bourbaki, *Algebra {II}*, Chapter 4, §4, n°2, corollary of prop. 3][bourbaki1981] -/
theorem isTopologicallyNilpotent_iff_constantCoeff_isNilpotent
    [CommRing R] [DiscreteTopology R] (f : PowerSeries R) :
    Tendsto (fun n : ℕ => f ^ n) atTop (nhds 0) ↔
      IsNilpotent (constantCoeff R f) :=
  MvPowerSeries.WithPiTopology.isTopologicallyNilpotent_iff_constantCoeff_isNilpotent f

end WithPiTopology

end

section Summable

variable [Semiring R] [TopologicalSpace R]

open WithPiTopology MvPowerSeries.WithPiTopology

variable {R}

-- NOTE : one needs an API to apply `Finsupp.LinearEquiv.finsuppUnique`
/-- A power series is the sum (in the sense of summable families) of its monomials -/
theorem hasSum_of_monomials_self (f : PowerSeries R) :
    HasSum (fun d : ℕ => monomial R d (coeff R d f)) f := by
  rw [← (Finsupp.LinearEquiv.finsuppUnique ℕ ℕ Unit).toEquiv.hasSum_iff]
  convert MvPowerSeries.WithPiTopology.hasSum_of_monomials_self f
  simp only [LinearEquiv.coe_toEquiv, comp_apply, monomial, coeff,
    Finsupp.LinearEquiv.finsuppUnique_apply, PUnit.default_eq_unit]
  congr
  all_goals { ext; simp }

/-- If the coefficient space is T2, then the power series is `tsum` of its monomials -/
theorem as_tsum [T2Space R] (f : PowerSeries R) :
    f = tsum fun d : ℕ => monomial R d (coeff R d f) :=
  (HasSum.tsum_eq (hasSum_of_monomials_self f)).symm

end Summable

end PowerSeries
```
