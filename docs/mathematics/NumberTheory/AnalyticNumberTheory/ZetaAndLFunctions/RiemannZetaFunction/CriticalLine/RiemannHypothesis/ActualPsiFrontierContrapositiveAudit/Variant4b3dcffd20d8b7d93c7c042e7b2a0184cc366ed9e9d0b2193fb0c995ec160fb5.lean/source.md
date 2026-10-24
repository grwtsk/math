# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPsiFrontierContrapositiveAudit.Variant4b3dcffd20d8b7d93c7c042e7b2a0184cc366ed9e9d0b2193fb0c995ec160fb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b073387cfceeb1320d28eda254bc9b14358e605` · SHA-256 `4b3dcffd20d8b7d93c7c042e7b2a0184cc366ed9e9d0b2193fb0c995ec160fb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPsiIntegerExact
import FormalResearch.RiemannHypothesis.Landau.Bridge

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
open FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
open FormalResearch.RiemannHypothesis.Landau.Bridge

example (hnot : ¬ _root_.RiemannHypothesis) (K R : ℝ) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ K < actualPsiFloorPairing A := by
  by_contra h
  have hup : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K := by
    intro A hRA
    by_contra hA
    exact h ⟨A, hRA, lt_of_not_ge hA⟩
  exact hnot (riemann_hypothesis_of_uniform_lower_bound
    (original_estimate_of_actual_psi_floor_upper hR hup))
```
