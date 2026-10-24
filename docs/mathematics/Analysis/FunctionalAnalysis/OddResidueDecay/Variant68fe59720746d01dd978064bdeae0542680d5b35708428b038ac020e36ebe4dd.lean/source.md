# Complete source: GRWTSK.Analysis.FunctionalAnalysis.OddResidueDecay.Variant68fe59720746d01dd978064bdeae0542680d5b35708428b038ac020e36ebe4dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00d505535d7fe19f5060a5b2a941256d2db5ecbb` · SHA-256 `b8b40e49fc6ea38f9fe138f7df80ae9345aea5194e8741cf12b05a3121e79710`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.CertifiedOddSpectralGap.Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.CertifiedOddSpectralGap.Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"d74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/NeuralDiffusion/OddResidueDecay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.SpectralOrbit
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Certified quantitative odd-residue decay

The heat interface is now propositionally bound to `exp (-t D²)`.  A positive
odd-sector spectral gap is additional mathematical data.  This module packages
the exact decay estimate as a proof-bearing certificate and derives the
quantitative theorem from it; the former false implication from a merely
contractive semigroup has been removed.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.CertifiedOddSpectralGap.Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077

namespace Mathematics.NeuralDiffusion

universe u v

noncomputable section

open scoped InnerProductSpace

/-- The exact quantitative finite-shell decay statement. -/
def OddResidueDecayEstimate
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    (shell : SpectralOrbitShell Algebra Hilbert)
    (spectralGap : ℝ) : Prop :=
  0 < spectralGap ∧
    ∀ time, 0 ≤ time →
      ∀ state,
        shell.symmetry.involution state = -state →
        ‖shell.spectral.heat time state‖ ≤
          Real.exp (-time * spectralGap ^ 2) * ‖state‖

/--
A proof-bearing odd-sector spectral-gap realization.  The rate estimate is
logical data, while `spectralGapCertificate` is only its replay provenance.
-/
structure CertifiedOddSpectralGap
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    (shell : SpectralOrbitShell Algebra Hilbert) where
  spectralGap : ℝ
  spectralGap_positive : 0 < spectralGap
  heat_decay :
    ∀ time, 0 ≤ time →
      ∀ state,
        shell.symmetry.involution state = -state →
        ‖shell.spectral.heat time state‖ ≤
          Real.exp (-time * spectralGap ^ 2) * ‖state‖
  spectralGapCertificate : ObjectAddress

/--
Certified functional calculus plus a proved positive odd spectral gap yields
the quantitative exponential decay estimate.
-/
theorem oddResidueDecay
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    {shell : SpectralOrbitShell Algebra Hilbert}
    (gap : CertifiedOddSpectralGap shell) :
    OddResidueDecayEstimate shell gap.spectralGap :=
  ⟨gap.spectralGap_positive, gap.heat_decay⟩

end

end Mathematics.NeuralDiffusion
```
