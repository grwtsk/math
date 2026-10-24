# Verification target: GRWTSK.Analysis.MeasureTheory.SeparableMeasure.Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "464eae8e02af1b9011000b4aff3d2fcad61a8e8b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `464eae8e02af1b9011000b4aff3d2fcad61a8e8b`.

Source path: `GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.SetAlgebra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Measure.MeasureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense--25f749773c1f01278bf73920.md) | 94 | `declaration-track:25f749773c1f01278bf739207407b52d3408dbab81b1d7c2197d959df6abe986` |
| 2 | `theorem` | [Measure.MeasureDense.nonempty](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-nonempty--0526245f85910e3a1bf6bc1d.md) | 100 | `result-track:0526245f85910e3a1bf6bc1d913d21c6a02a49c5eced2cf6e00fe57b166f16f3` |
| 3 | `theorem` | [Measure.MeasureDense.nonempty'](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-nonempty--fe501fe55fa45dacde29c0b1.md) | 104 | `result-track:fe501fe55fa45dacde29c0b194bf0883564f78618dc79030eb4b82f4f97fc0d7` |
| 4 | `theorem` | [measureDense_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measuredense-measurableset--6a5bb1852457fde42ec729d5.md) | 112 | `result-track:6a5bb1852457fde42ec729d59c7bc36017b09d26c2a9d64056608d88d00a717a` |
| 5 | `theorem` | [Measure.MeasureDense.completion](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-completion--1928fc537787421aa3e2ecd3.md) | 116 | `result-track:1928fc537787421aa3e2ecd3d101ce98cf46a66ee7c1f9a6242a3e084c987acb` |
| 6 | `lemma` | [Measure.MeasureDense.fin_meas_approx](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-fin-meas-approx--cc05523858ef8d9e62bc4ab7.md) | 129 | `result-track:cc05523858ef8d9e62bc4ab74a939fc651c29bf448f2b1740456cdf83797a95c` |
| 7 | `theorem` | [Measure.MeasureDense.indicatorConstLp_subset_closure](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-indicatorconstlp-subset-closure--4fcfeb90a4f5796ef34a81bd.md) | 139 | `result-track:4fcfeb90a4f5796ef34a81bd28b6bc4e710692c7dbadaef5d76399375df768af` |
| 8 | `theorem` | [Measure.MeasureDense.fin_meas](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-fin-meas--0378a1d0cd63aaeded9315a7.md) | 174 | `result-track:0378a1d0cd63aaeded9315a73fa670c479b5d2402146c1e6b60cc629deeac2bb` |
| 9 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_finite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-finite--780238e83fb2ea8ba6c810a9.md) | 184 | `result-track:780238e83fb2ea8ba6c810a94e4551276b6b21d09431814eda5deb02699168e7` |
| 10 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-sigmafinite--5b6d588e810b7eddee53fb82.md) | 274 | `result-track:5b6d588e810b7eddee53fb8235a58c424b2694d1aa4f97b8b366ec31d1a5a8e9` |
| 11 | `class` | [IsSeparable](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/isseparable--9fe77313eb836f228339708d.md) | 343 | `declaration-track:9fe77313eb836f228339708d74143686e2a3df91957080ec8f3ae5dfdf426a2a` |
| 12 | `theorem` | [exists_countable_measureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/exists-countable-measuredense--7bb08ed8a848ddcd854bba1a.md) | 349 | `result-track:7bb08ed8a848ddcd854bba1a37451e890b9a7bdc572fcd41135d20c2c289c937` |
| 13 | `theorem` | [isSeparable_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/isseparable-of-sigmafinite--bd37da86320aeda11a9fac79.md) | 356 | `result-track:bd37da86320aeda11a9fac793a0c662ffefc1ad65f4b26ff1fc42806e77d0b5a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/instance--2c8c2f04197c58cea6068217.md) | 386 | `declaration-track:2c8c2f04197c58cea606821738e985ad4d908269be352b07aed90abaeb319ff5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/instance--109e6f08ef36275c04efc55e.md) | 418 | `declaration-track:109e6f08ef36275c04efc55e4021045e573c1698f0b74b061eeffcfe2a2e5abd` |
| 16 | `instance` | [Lp.SecondCountableTopology](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/declarations/lp-secondcountabletopology--baded1ae5d9c78b620563748.md) | 431 | `declaration-track:baded1ae5d9c78b6205637489fdc17abbfaa61b553b34bc08dff12ef766747d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
