# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CohomologyLattice.Variant52922a3e574b565812fc0021703fe29a0cad67db6514005ffbf08f86d45b6005

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f39f0afabbec0c9363734d6ae0e744a477d06a2` · SHA-256 `52922a3e574b565812fc0021703fe29a0cad67db6514005ffbf08f86d45b6005`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.UniversalCoefficient
import Mathlib.Analysis.Normed.Module.FiniteDimension

/-!
# Free integral cohomology lattice

Integral torsion dies under real realization.  The surviving image is an
integer submodule of the real cohomology carrier, not a real submodule.
Discreteness and full span are explicit certified properties.
-/

namespace Mathematics.Homology

universe u v

noncomputable section

/-- The free integral image inside finite-dimensional real cohomology. -/
structure FreeCohomologyLattice
    (IntegralCohomology : Type u)
    (RealCohomology : Type v)
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology] where
  toReal : IntegralCohomology →+ RealCohomology
  integralTorsion : AddSubgroup IntegralCohomology
  kernel_is_torsion :
    AddMonoidHom.ker toReal = integralTorsion
  lattice : Submodule ℤ RealCohomology
  range_is_lattice :
    AddMonoidHom.range toReal = lattice.toAddSubgroup
  latticeDiscrete : DiscreteTopology lattice
  fullSpan :
    Submodule.span ℝ (lattice : Set RealCohomology) = ⊤
  realizationCertificate : ObjectAddress
  latticeDigest : Digest

namespace FreeCohomologyLattice

variable
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)

/-- An integral class maps to zero over `ℝ` exactly when it is torsion. -/
theorem toReal_eq_zero_iff
    (integralClass : IntegralCohomology) :
    lattice.toReal integralClass = 0 ↔
      integralClass ∈ lattice.integralTorsion := by
  change integralClass ∈ AddMonoidHom.ker lattice.toReal ↔ _
  rw [lattice.kernel_is_torsion]

end FreeCohomologyLattice

end

end Mathematics.Homology
```
