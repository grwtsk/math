# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Rounding.Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b30086ab11a080428c64eda3abd9aaea19adf225` · SHA-256 `39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.GramField

/-!
# Branch-preserving cohomological rounding

Rounding is the complete nearest-lattice-point set.  A Voronoi-wall tie is
retained as multiple branches; there is no authoritative default minimizer.
-/

namespace Mathematics.Homology

open Set

universe u v

noncomputable section

variable
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]

/-- All integral lattice points minimizing the Gram distance to `point`. -/
def RoundingSet
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) :
    Set lattice.lattice :=
  {integralPoint |
    ∀ competitor : lattice.lattice,
      gram.squaredDistance point integralPoint ≤
        gram.squaredDistance point competitor}

/-- A point lies on a Voronoi wall exactly when it has distinct minimizers. -/
def OnVoronoiWall
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) : Prop :=
  ∃ left right : lattice.lattice,
    left ≠ right ∧
      left ∈ RoundingSet lattice gram point ∧
      right ∈ RoundingSet lattice gram point

/-- Existence is certificate-bearing until derived from lattice compactness. -/
structure RoundingExistenceCertificate
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology) where
  exists_minimizer :
    ∀ point, (RoundingSet lattice gram point).Nonempty
  certificate : ObjectAddress

/-- Persisted exact finite enumeration of every tied minimizer. -/
structure FiniteRoundingCertificate
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) where
  minimizers : Finset lattice.lattice
  nonempty : minimizers.Nonempty
  exact :
    ∀ integralPoint,
      integralPoint ∈ minimizers ↔
        integralPoint ∈ RoundingSet lattice gram point
  receipt : ObjectAddress

/-- One explicitly selected branch from the complete rounding fiber. -/
structure RoundedBranch
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (point : RealCohomology) where
  integral : lattice.lattice
  minimizes : integral ∈ RoundingSet lattice gram point
  selectionCertificate : ObjectAddress

namespace RoundedBranch

variable
    {lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology}
    {gram : PositiveGram RealCohomology}
    {point : RealCohomology}
    (branch : RoundedBranch lattice gram point)

/-- Continuous stretch residue after selecting one certified branch. -/
def residue : RealCohomology :=
  point - branch.integral

/-- Exact cohomological split `ω = λ + ε`. -/
theorem integral_add_residue :
    (branch.integral : RealCohomology) + branch.residue = point := by
  simp [residue]

/-- Every retained minimizer has the same Gram cost. -/
theorem equal_cost
    (other : RoundedBranch lattice gram point) :
    gram.squaredDistance point branch.integral =
      gram.squaredDistance point other.integral :=
  le_antisymm
    (branch.minimizes other.integral)
    (other.minimizes branch.integral)

end RoundedBranch

end

end Mathematics.Homology
```
