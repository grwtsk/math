# Complete source: GRWTSK.Algebra.LinearAlgebra.FilteredCoreGramLiteralSnippet.Variant043dfb6fbab7f221e0f8fe6a436a1af7c262680c53db30c4b4764a9da6ff508e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f9c1bd5ccc6d23bfc7aceeff55b0f1882b4b115` · SHA-256 `acad1cb2bf7c9a99a78267263ec67edb6201694115ef843d1882f664da28c4df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SourceUnit.Variant2d6e0c1b8d2f3c8c9d412b244589a5f399bed0d59b40d1b72eef01fbafff2165","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d6e0c1b8d2f3c8c9d412b244589a5f399bed0d59b40d1b72eef01fbafff2165","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SourceUnit.Variant2d6e0c1b8d2f3c8c9d412b244589a5f399bed0d59b40d1b72eef01fbafff2165","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2d6e0c1b8d2f3c8c9d412b244589a5f399bed0d59b40d1b72eef01fbafff2165","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/signed-covariance-core/filtered-core-gram-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Algebra.LinearAlgebra.SourceUnit.Variant2d6e0c1b8d2f3c8c9d412b244589a5f399bed0d59b40d1b72eef01fbafff2165

noncomputable section
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open FilteredCoreGramScratch CoreTailSplit SourceWeightedMultiplier
open HalfLineExtension MobiusEndpointBudget

example (Y : ℝ) (d : ℕ) : coreBasisFunction Y d =
    (Icc (0 : ℝ) (Real.log Y)).indicator (fun u => (Real.exp (-u / 2) : ℂ) *
      (if d = 0 then (if 1 ≤ Real.exp u then 1 else 0)
      else ((Int.fract (Real.exp u / (d : ℝ)) : ℝ) : ℂ))) := rfl

example (Y : ℝ) (d : ℕ) : MemLp (coreBasisFunction Y d) 2 volume :=
  coreBasisFunction_memLp Y d

example (Y : ℝ) (d : ℕ) : coreBasisVector Y d =
    ((coreBasisFunction_memLp Y d).toLp (coreBasisFunction Y d) : FullH) := rfl

example (Y : ℝ) (d : ℕ) : coreBasisVector Y d =ᵐ[volume] coreBasisFunction Y d :=
  coreBasisVector_ae Y d

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) : coreResidualVector X ε hX Y =
    ∑ d ∈ insert 0 (Finset.Icc 1 X),
      (if d = 0 then (1 : ℂ) else (dampedCoefficient X ε d : ℂ)) • coreBasisVector Y d :=
  coreResidualVector_eq_basis_sum X ε hX Y

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ ^ 2 =
      (∑ i ∈ insert 0 (Finset.Icc 1 X), ∑ j ∈ insert 0 (Finset.Icc 1 X),
        star (if i = 0 then (1 : ℂ) else (dampedCoefficient X ε i : ℂ)) *
          (if j = 0 then (1 : ℂ) else (dampedCoefficient X ε j : ℂ)) *
          inner ℂ (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y i))
            (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y j))).re :=
  filtered_core_norm_sq_gram X ε hX Y h hε hsmall hh
end
```
