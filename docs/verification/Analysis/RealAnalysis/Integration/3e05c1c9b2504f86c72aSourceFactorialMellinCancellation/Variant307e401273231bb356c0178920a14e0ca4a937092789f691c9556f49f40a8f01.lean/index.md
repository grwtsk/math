# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.3e05c1c9b2504f86c72aSourceFactorialMellinCancellation.Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27931456e3be25930d1c7c81e650e20b5db8e720",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27931456e3be25930d1c7c81e650e20b5db8e720`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFactorialTailDecomposition` — import line 1; external provider; requires a separately pinned dependency.
- `SourceFullPositiveKappa` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveUnitCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/positiveunitcoefficient--38ac6a5cf0909052d762b1d1.md) | 24 | `declaration-track:38ac6a5cf0909052d762b1d16ab892315ae1c6f8282592c4b4637aa0f9fb4036` |
| 2 | `theorem` | [positiveUnitCoefficient_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/positiveunitcoefficient-sum--d3db214388bf65a40205c9a2.md) | 26 | `result-track:d3db214388bf65a40205c9a24f133a79e02255a8e78fa9e8c5dae4567d071036` |
| 3 | `theorem` | [factorial_log_closed_Abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorial-log-closed-abel--f4e608adc6e07720c754228d.md) | 39 | `result-track:f4e608adc6e07720c754228de6bed92a44a92bbd923608e4732261572edbc522` |
| 4 | `theorem` | [factorialLogDefect_eq_fractional_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factoriallogdefect-eq-fractional-primitive--27fba0ea9702dd9402139db7.md) | 77 | `result-track:27fba0ea9702dd9402139db74161648cacfe2589bbdb58bdb4c662cc4533ddf7` |
| 5 | `theorem` | [factorialLogDefect_eq_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factoriallogdefect-eq-lower--f1c270d55374cc88ab8c5fd1.md) | 129 | `result-track:f1c270d55374cc88ab8c5fd12e10c23a1c4c00407f838a63ed55f5685b8864f6` |
| 6 | `def` | [fractionalTriangle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionaltriangle--0781d1770f15d9780e1a14f9.md) | 137 | `declaration-track:0781d1770f15d9780e1a14f9ac6cbaf9f22db259e94d998053baf015bc8a7687` |
| 7 | `theorem` | [negativeThreeHalves_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/negativethreehalves-measurable--1b442e50d7c06d8317922462.md) | 140 | `result-track:1b442e50d7c06d8317922462086b414d07f0beb0e0774cd07fb6cfe8bd456897` |
| 8 | `theorem` | [fractionalTriangle_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionaltriangle-measurable--9bd227ce2fbf26e182c7e834.md) | 156 | `result-track:9bd227ce2fbf26e182c7e83476eb8c27d69ac358862862f911a01933afed0739` |
| 9 | `theorem` | [fractionalTriangle_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionaltriangle-nonneg--03bacec15c65e734dcf47bd0.md) | 162 | `result-track:03bacec15c65e734dcf47bd034cf044f40b55d872da5a252eea304b5dfe15ef6` |
| 10 | `theorem` | [fractionalTriangle_right_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionaltriangle-right-integrable--5c503950ed68879edb78a847.md) | 170 | `result-track:5c503950ed68879edb78a847395db8ba17847e61c8f348cf3eb2c00fe1454874` |
| 11 | `theorem` | [fractionalTriangle_right_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionaltriangle-right-integral--34ad462ca9576df049291b4b.md) | 181 | `result-track:34ad462ca9576df049291b4b4e33913549d27e90d1336bb6fc3d528f89ac0369` |
| 12 | `theorem` | [fractionalTriangle_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionaltriangle-integrable--1cbd1e759c7e80397f8287d7.md) | 208 | `result-track:1cbd1e759c7e80397f8287d7c67d7d22a15b4bfa5c5a40b5d215d7a3856ee395` |
| 13 | `theorem` | [fractionalTriangle_left_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionaltriangle-left-integral--7487dc2da4ee90a069c27f3e.md) | 230 | `result-track:7487dc2da4ee90a069c27f3e499c9723a8348be984aeeb6b0eff0fe40697146c` |
| 14 | `theorem` | [fractionalPrimitive_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionalprimitive-mellin-integrable--d2117bf4dfbf95b15fe22e85.md) | 242 | `result-track:d2117bf4dfbf95b15fe22e85dc64cb388579010d0d5c29d352bb2e7f6a479036` |
| 15 | `theorem` | [fractionalPrimitive_mellin_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fractionalprimitive-mellin-integral--9416d5727299c13850e0f5d2.md) | 250 | `result-track:9416d5727299c13850e0f5d24305c46ddf06d0aec97a73ec48ce82aa39aeb0af` |
| 16 | `def` | [factorialMellinWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight--a05d8eb6fc145e38c039c2b5.md) | 273 | `declaration-track:a05d8eb6fc145e38c039c2b5d4a74f25883c072fd848b0f9d82ae2905f2a743f` |
| 17 | `theorem` | [factorialMellinWeight_eq_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight-eq-lower--2c248b68429c65eda7f5283e.md) | 276 | `result-track:2c248b68429c65eda7f5283e8ca889c36dea8036d3d39315c7aeadc3ffb13699` |
| 18 | `theorem` | [factorialMellinWeight_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight-lower-integrable--ee7cfbab11c959d1e52e2fda.md) | 291 | `result-track:ee7cfbab11c959d1e52e2fda42cba9c282de03340295ea9b4306b93a329fe088` |
| 19 | `theorem` | [factorialMellinWeight_lower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight-lower-integral--b8cca8b22b20a737d680059b.md) | 299 | `result-track:b8cca8b22b20a737d680059bb4638675a2e5f97133d7701f67cb1ddeb0751b00` |
| 20 | `theorem` | [factorialMellinWeight_eq_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight-eq-upper--57a80d19f2bd06da17810882.md) | 306 | `result-track:57a80d19f2bd06da1781088235a01a1c9a44217d63582ea2718ab6ff1da94ab9` |
| 21 | `theorem` | [factorialMellinWeight_upper_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight-upper-integrable--24a141f8660084062d899cd5.md) | 315 | `result-track:24a141f8660084062d899cd56a508d90f05848edf53b705233da24348e24deaf` |
| 22 | `theorem` | [factorialMellinWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight-integrable--fdcced2c499417df920dd9e7.md) | 328 | `result-track:fdcced2c499417df920dd9e7ed9626295f23d58663f0a8a31457d35ec13d6192` |
| 23 | `theorem` | [factorialMellinWeight_upper_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/factorialmellinweight-upper-integral--956639d56a689459ea685fe3.md) | 337 | `result-track:956639d56a689459ea685fe315efb4128a43d9f0cd8656fb78d3587e9a3ca19f` |
| 24 | `theorem` | [fullPositiveKappa_one_eq_factorial_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/declarations/fullpositivekappa-one-eq-factorial-mellin--a8d6320b7adef2a7ef9d27d9.md) | 355 | `result-track:a8d6320b7adef2a7ef9d27d992af78af391cf1bb7a448e1cc3aeeb89501eced4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
