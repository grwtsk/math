# Complete source: GRWTSK.Algebra.LinearAlgebra.FilteredCoreGramLiteralSnippet.Variant2d6e0c1b8d2f3c8c9d412b244589a5f399bed0d59b40d1b72eef01fbafff2165

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `759d5c6592cfbe1bb5542966d5ab29809b63045f` · SHA-256 `2d6e0c1b8d2f3c8c9d412b244589a5f399bed0d59b40d1b72eef01fbafff2165`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
