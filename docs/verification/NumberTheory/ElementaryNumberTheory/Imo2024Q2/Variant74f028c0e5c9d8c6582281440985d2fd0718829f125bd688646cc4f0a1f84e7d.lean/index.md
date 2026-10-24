# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Imo2024Q2.Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7394537107de43a9bbd1682d5ffd019cfce08abc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7394537107de43a9bbd1682d5ffd019cfce08abc`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/condition--cdeb98d2728400a94375d626.md) | 30 | `declaration-track:cdeb98d2728400a94375d6264cdbab81f76545755c0d71103ac526ebe5172757` |
| 2 | `lemma` | [dvd_pow_iff_of_dvd_sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/dvd-pow-iff-of-dvd-sub--4b8537348ee42ca9dd6f622d.md) | 33 | `result-track:4b8537348ee42ca9dd6f622d574f046091d3dde02c7dd0466d2331d88299373e` |
| 3 | `lemma` | [a_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/a-pos--8765b7c1f6d6390733654f93.md) | 56 | `result-track:8765b7c1f6d6390733654f9389921d4bf213997c10ba9eb6eded5d83801376e0` |
| 4 | `lemma` | [b_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/b-pos--8e0fe1eef55d7791dc7cf09d.md) | 58 | `result-track:8e0fe1eef55d7791dc7cf09d6bda2140eed30588582602e67b0ee6b1aeecacd2` |
| 5 | `def` | [g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/g--cd3cc5b63449c554f9a54bf5.md) | 61 | `declaration-track:cd3cc5b63449c554f9a54bf5636d63db047f24fbbfd56469eafd145a471278ae` |
| 6 | `lemma` | [g_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/g-spec--0e69f1fff11fb59f970e2348.md) | 63 | `result-track:0e69f1fff11fb59f970e2348e88496855fab686f41b2e4587ddcc826ff0da6f6` |
| 7 | `def` | [N](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/n--fbdb7d9c1789596adc52b764.md) | 67 | `declaration-track:fbdb7d9c1789596adc52b7649d1ffc9a5b0efd3dbdd7cf1b6b1ebc47b842e9e1` |
| 8 | `lemma` | [N_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/n-spec--7cd4634dbb4a43971b1ccf32.md) | 69 | `result-track:7cd4634dbb4a43971b1ccf3287073a425ee273f62e638cd74a95ec3556260eda` |
| 9 | `lemma` | [g_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/g-pos--8bce616e4a6ef86db41252b6.md) | 72 | `result-track:8bce616e4a6ef86db41252b698607d44cdb04f4fd8b4fa3d0e1ee99108e34c5c` |
| 10 | `lemma` | [N_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/n-pos--ac90c4d25bb96ea2381c4bd8.md) | 74 | `result-track:ac90c4d25bb96ea2381c4bd889f1930cb563cc6e22cb96d96b510be4ce9812ca` |
| 11 | `lemma` | [gcd_eq_g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/gcd-eq-g--95729beac279233bf92dfc73.md) | 76 | `result-track:95729beac279233bf92dfc731c7636a3fd70c0ccbb20acbdd9b831e030ac6a02` |
| 12 | `lemma` | [symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/symm--1ff01da936fd9c0ef9e9a611.md) | 78 | `result-track:1ff01da936fd9c0ef9e9a61104551adcb4671264dba91d3a1315132ed7ff796b` |
| 13 | `lemma` | [dvd_g_of_le_N_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/dvd-g-of-le-n-of-dvd--48f6044a20c204d130563424.md) | 83 | `result-track:48f6044a20c204d1305634248856a8fc96d63c6eefa05e25acdf5e97087da3b0` |
| 14 | `lemma` | [a_coprime_ab_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/a-coprime-ab-add-one--bb9f8081852469cdf14fe79a.md) | 90 | `result-track:bb9f8081852469cdf14fe79ac90160eeaf0308e0a7750f943bfdf431aed7af13` |
| 15 | `def` | [large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/large-n--8b90cc26da46fe945ce04932.md) | 94 | `declaration-track:8b90cc26da46fe945ce04932d33db2f9a93932e5538cf05bd35a1d17a3db41ad` |
| 16 | `lemma` | [symm_large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/symm-large-n--581013dc7fee8a317fa24a38.md) | 96 | `result-track:581013dc7fee8a317fa24a38ea70e724e717d411166109cd63ba78d2e5893355` |
| 17 | `lemma` | [N_le_large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/n-le-large-n--f63ff5ccdff784aa6892fa13.md) | 102 | `result-track:f63ff5ccdff784aa6892fa1375ceae5f56ba50b2298ccee1d908f957d00c555a` |
| 18 | `lemma` | [dvd_large_n_sub_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/dvd-large-n-sub-neg-one--a7142c2a89c1f5b8b7ef2bfd.md) | 111 | `result-track:a7142c2a89c1f5b8b7ef2bfdf8a0a77c0f89f62637a0bc7b88d3b71681480732` |
| 19 | `def` | [large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/large-n-0--0e2c2fa639b97e7464db27d4.md) | 115 | `declaration-track:0e2c2fa639b97e7464db27d48ebd7686c50cc62c26de7bbedfbfd08f996a5b2e` |
| 20 | `lemma` | [symm_large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/symm-large-n-0--818ca99580358a73ce5c1fbb.md) | 117 | `result-track:818ca99580358a73ce5c1fbb079624a68f8a6fde020e427bc5fca6afc2d60dc8` |
| 21 | `lemma` | [N_le_large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/n-le-large-n-0--fbe1e9ebedf949bcfdbd8413.md) | 123 | `result-track:fbe1e9ebedf949bcfdbd8413ae8a06ac62664aa04f56ad804e67de0770d5ecbd` |
| 22 | `lemma` | [dvd_large_n_0_sub_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/dvd-large-n-0-sub-zero--c50f236d4d64336a0afde7cc.md) | 132 | `result-track:c50f236d4d64336a0afde7ccbbd74c9fb8f64edce1cb6eb7db1619c292ea4d0f` |
| 23 | `lemma` | [ab_add_one_dvd_a_pow_large_n_add_b](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/ab-add-one-dvd-a-pow-large-n-add-b--4433f3b4a2c7835295ed85e9.md) | 135 | `result-track:4433f3b4a2c7835295ed85e9ef0ba467f6eea2ef44145888ce3bc5c61d586ba0` |
| 24 | `lemma` | [ab_add_one_dvd_b_pow_large_n_add_a](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/ab-add-one-dvd-b-pow-large-n-add-a--a03a1f096e5cbf09ed99770a.md) | 148 | `result-track:a03a1f096e5cbf09ed99770afc07665e1566e8641471a9bfb29646c5008616e0` |
| 25 | `lemma` | [ab_add_one_dvd_g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/ab-add-one-dvd-g--7b7ed3434dda2a6701fbb00a.md) | 153 | `result-track:7b7ed3434dda2a6701fbb00a84b34d7d32a1248ec8fec335472cf3715d593933` |
| 26 | `lemma` | [ab_add_one_dvd_a_pow_large_n_0_add_b](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/ab-add-one-dvd-a-pow-large-n-0-add-b--a692136898229d374202b134.md) | 157 | `result-track:a692136898229d374202b1341f9f79e07c928cf5947fd73a17236ffd73d433c6` |
| 27 | `lemma` | [ab_add_one_dvd_b_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/ab-add-one-dvd-b-add-one--bc9a4aed103b2591c7560c2d.md) | 164 | `result-track:bc9a4aed103b2591c7560c2db8ab1f62d0e53d0719d6bf11f0675e8eb49e7dcb` |
| 28 | `lemma` | [a_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/a-eq-one--389684910c9c5f0ea91dc64f.md) | 173 | `result-track:389684910c9c5f0ea91dc64f38b229b9813c5ce6b5f4c00c684ea3e5c66427ac` |
| 29 | `lemma` | [b_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/b-eq-one--7cbee0dade98117be05058a5.md) | 183 | `result-track:7cbee0dade98117be05058a572d8fd619c72013f45b972d3f798566066257ec4` |
| 30 | `def` | [solutionSet](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/solutionset--7940653d1af20938190fb13b.md) | 188 | `declaration-track:7940653d1af20938190fb13b7ef6ae733d95a6044fe55666dc00bb99710c5111` |
| 31 | `theorem` | [result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant74f028c0e5c9d8c6582281440985d2fd0718829f125bd688646cc4f0a1f84e7d.lean/declarations/result--16f462aa835c029e4ca57b70.md) | 190 | `result-track:16f462aa835c029e4ca57b702b9908fa6a6b0a007929e11f5e8221619fa3b94e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
