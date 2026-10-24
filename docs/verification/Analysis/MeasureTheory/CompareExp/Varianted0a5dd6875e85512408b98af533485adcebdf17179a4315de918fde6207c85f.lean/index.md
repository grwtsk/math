# Verification target: GRWTSK.Analysis.MeasureTheory.CompareExp.Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b30f60e6cbe03298f63d040e626c201be6cad807",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b30f60e6cbe03298f63d040e626c201be6cad807`.

Source path: `GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Holder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.MeanInequalities` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Finiteness` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_le_eLpNorm'_mul_rpow_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-mul-rpow-measure-univ--bebd69e9f5a5a55b69fcff5a.md) | 37 | `result-track:bebd69e9f5a5a55b69fcff5a16678499913ec519eef6e96c2a13022825d5d7fb` |
| 2 | `theorem` | [eLpNorm'_le_eLpNormEssSup_mul_rpow_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnormesssup-mul-rpow-measure-univ--e85a99bf5bb26c63a7ed780f.md) | 58 | `result-track:e85a99bf5bb26c63a7ed780f143caf95d039594318e75d9b3692281117f877c3` |
| 3 | `theorem` | [eLpNorm_le_eLpNorm_mul_rpow_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-mul-rpow-measure-univ--2470b5c81450b1773abb0b41.md) | 70 | `result-track:2470b5c81450b1773abb0b411176b650dac5571707b72015e72ae976c4fdd27d` |
| 4 | `theorem` | [eLpNorm'_le_eLpNorm'_of_exponent_le](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-of-exponent-le--581caad91dc4d49c3e45608e.md) | 96 | `result-track:581caad91dc4d49c3e45608e2e94a0accdd0277379bdc5b92476fb0d5b380d52` |
| 5 | `theorem` | [eLpNorm'_le_eLpNormEssSup](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnormesssup--681885244bbc20d3b8b2e2a0.md) | 102 | `result-track:681885244bbc20d3b8b2e2a02e8ddc664a50f5294a60cea83c6d2ef91a633f02` |
| 6 | `theorem` | [eLpNorm_le_eLpNorm_of_exponent_le](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-of-exponent-le--5225a3563b507ac5ee915779.md) | 106 | `result-track:5225a3563b507ac5ee9157799dbc86001551eba9f1f7502569e9a034e3cc3936` |
| 7 | `theorem` | [eLpNorm'_lt_top_of_eLpNorm'_lt_top_of_exponent_le](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-lt-top-of-elpnorm-lt-top-of-exponent-le--74c4b669682f3733d3a0600a.md) | 110 | `result-track:74c4b669682f3733d3a0600ac65bb14398b6232195503333a921c729565c431d` |
| 8 | `theorem` | [MemLp.mono_exponent](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-mono-exponent--d2aee6e90906e83c6f9726c7.md) | 125 | `result-track:d2aee6e90906e83c6f9726c780eebe20aab8d3ad29098dc0dafcf91d928e8256` |
| 9 | `lemma` | [MemLp.mono_exponent_of_measure_support_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-mono-exponent-of-measure-support-ne-top--9a7e6b2c88445f55317ea0b2.md) | 160 | `result-track:9a7e6b2c88445f55317ea0b2316cd6f8734d6341f04ddf1557347e34bea647c1` |
| 10 | `theorem` | [eLpNorm_le_eLpNorm_top_mul_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-top-mul-elpnorm--e19f74809f9ad2dc6464a556.md) | 188 | `result-track:e19f74809f9ad2dc6464a5568f4b3799a316486487c3ecc2ff0acc1018a89bff` |
| 11 | `theorem` | [eLpNorm_le_eLpNorm_mul_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm-top--97127390b82c289c70b5b5cc.md) | 216 | `result-track:97127390b82c289c70b5b5cc18d508516027ef592cc647c4451e59085e759b2e` |
| 12 | `theorem` | [eLpNorm'_le_eLpNorm'_mul_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm--2ae3dc98b5a80328542e1fd1.md) | 228 | `result-track:2ae3dc98b5a80328542e1fd140ceb567be8dae2dbdbd834f21d2394e86a65974` |
| 13 | `theorem` | [eLpNorm_le_eLpNorm_mul_eLpNorm_of_nnnorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm-of-nnnorm--93c3d98a9476f82739306f71.md) | 250 | `result-track:93c3d98a9476f82739306f7190b36a88f5b86582473107377b1e5ad330c1e776` |
| 14 | `theorem` | [eLpNorm_le_eLpNorm_mul_eLpNorm'_of_norm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm-of-norm--982e75b092a40826b913d6ab.md) | 279 | `result-track:982e75b092a40826b913d6ab0dc756c19459163c589f3db7762c56c861a4aac2` |
| 15 | `theorem` | [MemLp.of_bilin](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-of-bilin--b5ca0c913785da800857e6d1.md) | 286 | `result-track:b5ca0c913785da800857e6d1bd7b45936a9864b3fc3d7a951d4ac81c1d63879a` |
| 16 | `theorem` | [eLpNorm_smul_le_eLpNorm_top_mul_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-smul-le-elpnorm-top-mul-elpnorm--ddc8a7455ae59043f3c5e184.md) | 309 | `result-track:ddc8a7455ae59043f3c5e184e34e96c79215ddef3bd6ca0cbbd24a8f89e5aab7` |
| 17 | `theorem` | [eLpNorm_smul_le_eLpNorm_mul_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-smul-le-elpnorm-mul-elpnorm-top--1a9f78ed0ea934cedd42d30e.md) | 314 | `result-track:1a9f78ed0ea934cedd42d30e534c08e32dcd069d03ff55f76ba40a441aac5423` |
| 18 | `theorem` | [eLpNorm'_smul_le_mul_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-smul-le-mul-elpnorm--aff51c627c5eda8b29726df4.md) | 319 | `result-track:aff51c627c5eda8b29726df47451f63fa98cbc3b26b46f81415d980c03a86840` |
| 19 | `theorem` | [eLpNorm_smul_le_mul_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/elpnorm-smul-le-mul-elpnorm--b58aa26c3cb2ada9ebe02fa7.md) | 327 | `result-track:b58aa26c3cb2ada9ebe02fa72d86bc52b02f92179e2d780218315b725a7e8d8f` |
| 20 | `theorem` | [MemLp.smul](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-smul--a62f7e446206026f3401e242.md) | 333 | `result-track:a62f7e446206026f3401e2421c9e1776f292277a0bfc64cc703e6ae4aee05d9a` |
| 21 | `theorem` | [MemLp.mul](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-mul--a4e06d33043073f98aca3a35.md) | 352 | `result-track:a4e06d33043073f98aca3a350a3dc8253341ce93f9ab4496adcb9d0bede8e042` |
| 22 | `theorem` | [MemLp.mul'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-mul--21956d41c2c6d9c397a5b58d.md) | 361 | `result-track:21956d41c2c6d9c397a5b58d1ce15c934b34044687ed75d767510064ba39be01` |
| 23 | `lemma` | [MemLp.prod](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-prod--ddbe827bcedc438ad4046281.md) | 381 | `result-track:ddbe827bcedc438ad4046281bde954051c49840d9211ff9b1aed769804c2de58` |
| 24 | `lemma` | [MemLp.prod'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/declarations/memlp-prod--bc3a2cde3541800b43340768.md) | 395 | `result-track:bc3a2cde3541800b433407683448704bb8babb45c29d6a02c76033cc99b8b67c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
