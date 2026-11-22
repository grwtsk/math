# HS-95 lane 04 · Reverse composition of calibrated heat

Local source attribution is grwtsk contributors. Formalization and checking assistance by OpenAI Codex.

[InverseHeatSchedule.lean](InverseHeatSchedule.lean) extends the ordered schedule and the 95-prime dwell model. Each forward stage acts on the previous stage's full state. The inverse of a prefix applies the last stage's inverse first. For any source, an encoder and a left inverse on its image then give exact zero-noise recovery after all 95 stages. [Ordered schedule](OrderedHeatSchedule.lean) · [Calibrated prime window](../NumberTheory/PrimeWindowHeatSchedule.lean)

## Error budget

For stages Fⱼ and left inverses Gⱼ in one pseudometric space, let aⱼ ≥ 0 bound the Lipschitz gain of Gⱼ. Let the observed states yⱼ satisfy dist(yⱼ₊₁, Fⱼ yⱼ) ≤ εⱼ. For any initial target x and stage count n, the reverse inverse recovers from yₙ with error at most

```text
dist(y₀,x) + Σ_{j<n} εⱼ ∏_{k≤j} aₖ.
```

The primary argument compares the recovered prefixes at times j and j+1. The inverse through j maps the unperturbed Fⱼ yⱼ back to the recovered prefix at j. Its Lipschitz constant is the product through j, so the triangle inequality adds exactly that coefficient to the local error allowance. `undo_run` gives the exact zero-noise return and `undo_error_le` gives this bound. The initial error enters with coefficient one.

For the finite heat specialization, stage j uses a spectral chart that is an isometry for the same physical metric and the Euclidean coefficient metric. Each stage may have a different chart. The negative-time map is an exact inverse by the single-stage heat group law. If Bⱼ bounds its eigenvalues and sⱼ ≥ 0 is its calibrated dwell, each inverse gain is at most exp(sⱼBⱼ), by bounding every coordinate difference then summing the squared differences. `prime_window_undo_error_le` uses the exact window times sⱼ = κⱼ times the integrated bit dwell. Its 95-stage budget charges εⱼ by exp(Σ_{k≤j} sₖBₖ). The bound uses the original gate horizon and calibration data. [Binary gate](../MeasureAndIntegration/BinaryGateDwellTime.lean)

Uniform bounds on the summed exposure maxima suffice uniformly across resolutions. The product bound may be conservative. If each stage heats its own coordinate at unit exposure, the stage maxima sum to n and each coordinate's cumulative exposure is one. The inverse is uniformly bounded by exp(1) on this tower. The same-chart exact exposure criterion remains available when the stages share a chart. [Finite heat semigroup](FiniteHeatSemigroup.lean)

## Falsification and source return

For a pair of two-mode stages with attenuation 1/2 in distinct orthogonal bases, the reverse order recovers (0,1). Chronological application of the same inverse maps gives (−3/16,17/16). The Lean control evaluates both exactly. This checks ordering independently of the norm estimate. The Euler control in the finite heat module gives a different boundary, since a stochastic Euler step can lose injectivity.

The inverse estimates apply to full-state observations. The peer terminal-readout candidate treats a further obstruction when the sensor first collapses the heated coefficients to a scalar. A deployed HS sensor still needs an exact source factorization for its realized arithmetic data, including the signed prime-power observations when those are the consumer. [Original arithmetic consumer](https://github.com/grwtsk/math/issues/1819)

For the Rodgers–Tao source, the multiplier in Hₜ is exp(tu²). The forward spectral sign exp(−su²) corresponds to t = −s. This sign comparison supplies the convention for a potential coefficient interface. A proof that an actual finite HS encoder and sensor recover the original half-line integral still needs the quadrature and tail obligations. [Rodgers–Tao, Forum of Mathematics, Pi 8 (2020), e6, §1](https://doi.org/10.1017/fmp.2020.6) · [Rodgers–Tao source model in Lean](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RodgersTaoHeatSource.lean)

```text
Gate measure + calibration → actual dwell for each prime position
Spectral chart + modal bound → inverse step + Lipschitz gain
Reverse composition + local residuals → exact recovery + prefix-weighted error
Arithmetic encoder + observation factorization → source return
```

## Exact source and verification

The new source has SHA-256 `ff2fcb733b69c5bfe99cfda440ab1086636abc1355a4e91c54ddc0133c566a0c`. The checked peer dependencies are Git blobs `f0e406a06b35443b3687d41614c1033fd8f085da` for `OrderedHeatSchedule.lean` and `bfbb4c60190219bfcffcf30f7d3dc9a6ab38f200` for `PrimeWindowHeatSchedule.lean`.

The targeted Lake build, direct compilation with `--trust=0` and warnings as errors, and targeted kernel replay passed on Lean `4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. A transitive audit of ten principal declarations found only subsets of `propext`, `Classical.choice`, and `Quot.sound`. The full import-closure kernel replay, deployed HS sensor validation, and independent scholarly review are `NOT_RUN`.
