# Complete source: GRWTSK.Analysis.MeasureTheory.Notation.Variantbd2d7001987f0d72887a9edcf041530097d69e88c12248e39197412186758dc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63beed340bc7bff3ec38f2a7fdbbe229291c6493` · SHA-256 `bd2d7001987f0d72887a9edcf041530097d69e88c12248e39197412186758dc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.ProbabilityMassFunction.Basic
import Mathlib.MeasureTheory.Function.ConditionalExpectation.Basic
import Mathlib.MeasureTheory.Decomposition.Lebesgue

#align_import probability.notation from "leanprover-community/mathlib"@"00abe0695d8767201e6d008afa22393978bb324d"

/-! # Notations for probability theory

This file defines the following notations, for functions `X,Y`, measures `P, Q` defined on a
measurable space `m0`, and another measurable space structure `m` with `hm : m ≤ m0`,
- `P[X] = ∫ a, X a ∂P`
- `𝔼[X] = ∫ a, X a`
- `𝔼[X|m]`: conditional expectation of `X` with respect to the measure `volume` and the
  measurable space `m`. The similar `P[X|m]` for a measure `P` is defined in
  `MeasureTheory.Function.ConditionalExpectation.Basic`.
- `P⟦s|m⟧ = P[s.indicator (fun ω => (1 : ℝ)) | m]`, conditional probability of a set.
- `X =ₐₛ Y`: `X =ᵐ[volume] Y`
- `X ≤ₐₛ Y`: `X ≤ᵐ[volume] Y`
- `∂P/∂Q = P.rnDeriv Q`
We note that the notation `∂P/∂Q` applies to three different cases, namely,
`MeasureTheory.Measure.rnDeriv`, `MeasureTheory.SignedMeasure.rnDeriv` and
`MeasureTheory.ComplexMeasure.rnDeriv`.

- `ℙ` is a notation for `volume` on a measured space.
-/


open MeasureTheory

open scoped MeasureTheory

-- We define notations `𝔼[f|m]` for the conditional expectation of `f` with respect to `m`.
scoped[ProbabilityTheory] notation "𝔼[" X "|" m "]" =>
  MeasureTheory.condexp m MeasureTheory.MeasureSpace.volume X

set_option quotPrecheck false in
scoped[ProbabilityTheory] notation P "[" X "]" => ∫ x, ↑(X x) ∂P

scoped[ProbabilityTheory] notation "𝔼[" X "]" => ∫ a, X a

scoped[ProbabilityTheory] notation P "⟦" s "|" m "⟧" =>
  MeasureTheory.condexp m P (Set.indicator s fun ω => (1 : ℝ))

scoped[ProbabilityTheory] notation:50 X " =ₐₛ " Y:50 => X =ᵐ[MeasureTheory.MeasureSpace.volume] Y

scoped[ProbabilityTheory] notation:50 X " ≤ₐₛ " Y:50 => X ≤ᵐ[MeasureTheory.MeasureSpace.volume] Y

scoped[ProbabilityTheory] notation "∂" P "/∂" Q:100 => MeasureTheory.Measure.rnDeriv P Q

scoped[ProbabilityTheory] notation "ℙ" => MeasureTheory.MeasureSpace.volume
```
