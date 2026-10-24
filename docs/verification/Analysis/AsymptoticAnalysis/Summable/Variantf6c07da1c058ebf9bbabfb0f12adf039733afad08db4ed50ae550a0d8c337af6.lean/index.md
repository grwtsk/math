# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Summable.Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d8494be20e077db143adc74cfcefeac4ebb4476",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d8494be20e077db143adc74cfcefeac4ebb4476`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasProd_of_hasSum_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/hasprod-of-hassum-log--54435f34616b45a03e0ea2b3.md) | 33 | `result-track:54435f34616b45a03e0ea2b30c4a93a227b35c5c341d2e79e16dc080c62726c8` |
| 2 | `lemma` | [multipliable_of_summable_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-of-summable-log--70c318e02358b4a969164f8b.md) | 37 | `result-track:70c318e02358b4a969164f8b1b6aa0bd872fc0248cb000709ee51c53afc073fa` |
| 3 | `lemma` | [cexp_tsum_eq_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/cexp-tsum-eq-tprod--cc108a10a5d3f94fe7cc6956.md) | 44 | `result-track:cc108a10a5d3f94fe7cc6956d135a4f9a76426290b83c8a0123d82fc04418a51` |
| 4 | `lemma` | [summable_log_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/summable-log-one-add-of-summable--9dde5782371b0e56ce8042a9.md) | 48 | `result-track:9dde5782371b0e56ce8042a9f58ede6eb889e7b8c09fa7c78c8da46f9e02d2e5` |
| 5 | `lemma` | [multipliable_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-one-add-of-summable--2b1ab1afe6b624cbc490d617.md) | 54 | `result-track:2b1ab1afe6b624cbc490d617c75b928ebb3a3e9d4bc5b364fe58f0e3893efc75` |
| 6 | `lemma` | [hasProd_of_hasSum_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/hasprod-of-hassum-log--817f0b89363421e30dc89b0e.md) | 62 | `result-track:817f0b89363421e30dc89b0ef58f3e6339f73e35cd58a7f516c6b2eb2c54dcae` |
| 7 | `lemma` | [multipliable_of_summable_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-of-summable-log--06def6455f6d1511afffa0d4.md) | 66 | `result-track:06def6455f6d1511afffa0d44782901cb8ac5377ee8372fdfd3e8384d99146b3` |
| 8 | `lemma` | [multipliable_of_summable_log'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-of-summable-log--dfabb0499e447139dd70f246.md) | 72 | `result-track:dfabb0499e447139dd70f246a56f7a122aa9549511c27af0265e643c59be51c8` |
| 9 | `lemma` | [rexp_tsum_eq_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/rexp-tsum-eq-tprod--9b6e662b3a9d4b484fead0c4.md) | 85 | `result-track:9b6e662b3a9d4b484fead0c4a0548f9a41fe9c5b52de1234c577083ed9018266` |
| 10 | `lemma` | [summable_log_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/summable-log-one-add-of-summable--dbd177dba5b514bb482a7857.md) | 90 | `result-track:dbd177dba5b514bb482a7857a179e511eb7285248b6429d0e2f8b7cb7e76f663` |
| 11 | `lemma` | [multipliable_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-one-add-of-summable--054099ebe164c13e5e3d85a4.md) | 98 | `result-track:054099ebe164c13e5e3d85a4038f8646454624b9c9d8bb6f3a69e0b6abe151e9` |
| 12 | `lemma` | [Complex.tendstoUniformlyOn_tsum_nat_log_one_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/complex-tendstouniformlyon-tsum-nat-log-one-add--a962c35ab8b043513a710fdc.md) | 105 | `result-track:a962c35ab8b043513a710fdc1206c37925b5987d8872df933afb350a967dab7f` |
| 13 | `lemma` | [Multipliable.eventually_bounded_finset_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-eventually-bounded-finset-prod--a264c613429a54b382eee9d9.md) | 122 | `result-track:a264c613429a54b382eee9d9352bd614572d8a0a850f57546bbafe743aaf613e` |
| 14 | `lemma` | [multipliable_norm_one_add_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-norm-one-add-of-summable-norm--9d6e0f38477ad2e537075dd9.md) | 132 | `result-track:9d6e0f38477ad2e537075dd9bf61a1517af3243b0d6a4a4ce1f74e9f80ab19a9` |
| 15 | `lemma` | [Finset.norm_prod_one_add_sub_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/finset-norm-prod-one-add-sub-one-le--2df3b9d024ba321ce3a106f9.md) | 138 | `result-track:2df3b9d024ba321ce3a106f97e128436e3e6991d643e18e12d4a01f28502c4ec` |
| 16 | `lemma` | [prod_vanishing_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/prod-vanishing-of-summable-norm--610736ba24f788568df44631.md) | 158 | `result-track:610736ba24f788568df446311aaa13b2dfb6fa8eeff6e7e8e2ed984f1309d503` |
| 17 | `lemma` | [multipliable_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/declarations/multipliable-one-add-of-summable--7c3ca381abc8d459c0dde2c4.md) | 170 | `result-track:7c3ca381abc8d459c0dde2c42fbedda9893076362cb9275f17cf69574fb13dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
