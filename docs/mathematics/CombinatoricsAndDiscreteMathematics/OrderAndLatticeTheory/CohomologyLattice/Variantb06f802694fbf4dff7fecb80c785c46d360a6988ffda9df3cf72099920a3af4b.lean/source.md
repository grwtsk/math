# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CohomologyLattice.Variantb06f802694fbf4dff7fecb80c785c46d360a6988ffda9df3cf72099920a3af4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0118c1a54c0e5f88c3951d6fdc092b25b2bc42a` · SHA-256 `040747dccd8b6e36ef1522eb3230dd71e8856b02b2f161955372e1724e62a1fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FreeCohomologyLattice.Variant52922a3e574b565812fc0021703fe29a0cad67db6514005ffbf08f86d45b6005","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52922a3e574b565812fc0021703fe29a0cad67db6514005ffbf08f86d45b6005","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FreeCohomologyLattice.Variant52922a3e574b565812fc0021703fe29a0cad67db6514005ffbf08f86d45b6005","mathematical_subject":"Algebra.OrderTheory","original_sha256":"52922a3e574b565812fc0021703fe29a0cad67db6514005ffbf08f86d45b6005","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/CohomologyLattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.UniversalCoefficient
import Mathlib.Analysis.Normed.Module.FiniteDimension

/-!
# Free integral cohomology lattice

Integral torsion dies under real realization.  The surviving image is an
integer submodule of the real cohomology carrier, not a real submodule.
Discreteness and full span are explicit certified properties.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FreeCohomologyLattice.Variant52922a3e574b565812fc0021703fe29a0cad67db6514005ffbf08f86d45b6005

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
