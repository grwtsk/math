# Complete source: GRWTSK.Topology.GeneralTopology.CandidateCausalityLiteralSnippet.Variant3b09d270da48904f5bf529d8c23792e8ae9e028e8ac4de979fe56c693a94beb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76c8f676b76bb63c03f6a261a21e0c24e2bf5807` · SHA-256 `3b09d270da48904f5bf529d8c23792e8ae9e028e8ac4de979fe56c693a94beb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
open MeasureTheory Filter Complex
open CandidateCausalityScratch
open FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
open scoped Topology

example (F : ℂ → ℂ) (x : ℝ) : boundaryInverse F x =
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, Complex.exp ((x : ℂ) * ((t : ℂ) * Complex.I)) * F ((t : ℂ) * Complex.I) := rfl

example (F : ℂ → ℂ) (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (x : ℝ) (hx : x < 0) : boundaryInverse F x = 0 :=
  boundaryInverse_eq_zero_of_neg F hF φ hφ hb htop hbot x hx

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ φ : ℝ → ℝ, Integrable φ ∧ Tendsto φ atTop (nhds 0) ∧
      Tendsto φ atBot (nhds 0) ∧
      ∀ σ t : ℝ, 0 ≤ σ → ‖candidate X ε h ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t :=
  candidate_boundary_majorant X hX ε h hε hh hh1

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε)
    (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) (hx : x < 0) :
    boundaryInverse (candidate X ε h) x = 0 :=
  candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 x hx
```
