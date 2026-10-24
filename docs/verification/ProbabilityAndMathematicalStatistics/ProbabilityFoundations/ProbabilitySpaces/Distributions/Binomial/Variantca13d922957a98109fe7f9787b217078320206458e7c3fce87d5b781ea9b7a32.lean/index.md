# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3165db10675ce3a7d928febcf1abcc14f904202f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3165db10675ce3a7d928febcf1abcc14f904202f`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.NCard` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Nat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial--5208079df7302f852d6aa3bb.md) | 57 | `declaration-track:5208079df7302f852d6aa3bb903651d7e8d0b94fa34571f72559e704df651ad8` |
| 2 | `lemma` | [binomial_nat](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-nat--0264cb45266db5bb9625aea8.md) | 66 | `result-track:0264cb45266db5bb9625aea8ba56a4b050f68663748c8cb76a974fbfd5dde620` |
| 3 | `lemma` | [binomial_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-zero--46885168242d3b07f8f1f425.md) | 68 | `result-track:46885168242d3b07f8f1f425b1a374189c6d1a63efd51be56f2e12d8679f0356` |
| 4 | `lemma` | [map_cast_binomial_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/map-cast-binomial-zero--963df7e76191ec022a242f1a.md) | 71 | `result-track:963df7e76191ec022a242f1ab17a0cfa6e42dc4460a29d397679adf01d440c85` |
| 5 | `instance` | [isProbabilityMeasure_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/isprobabilitymeasure-binomial--695741300399d2274e157ce7.md) | 74 | `declaration-track:695741300399d2274e157ce7b6fdf2212c1152172c7449666b41b1bc33c95727` |
| 6 | `lemma` | [ae_le_of_hasLaw_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/ae-le-of-haslaw-binomial--55ef00d6f67fe44a28a72c66.md) | 78 | `result-track:55ef00d6f67fe44a28a72c661f8c24a97008562859ad97f6d003ad6a87d3f5b9` |
| 7 | `lemma` | [binomial_real_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-real-singleton--e8c00381e8041b49a8d1c452.md) | 84 | `result-track:e8c00381e8041b49a8d1c452cfa6e0dd88ea4ea926bf79b7c605f1d49cec3d77` |
| 8 | `lemma` | [binomial_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-singleton--623dd48368023517a3f69f22.md) | 88 | `result-track:623dd48368023517a3f69f228ec4803f29eb80ebce71fcfdd668a6b7dd8c5181` |
| 9 | `lemma` | [map_cast_binomial_real_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/map-cast-binomial-real-singleton--a5d39c79ea2eaeab942f5f49.md) | 93 | `result-track:a5d39c79ea2eaeab942f5f49539d942bdb02ee77620c8f8b6af6484e5fc7ce10` |
| 10 | `lemma` | [binomial_nonneg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-nonneg--8a69582bf9fbd9d7575d2a3d.md) | 100 | `result-track:8a69582bf9fbd9d7575d2a3ddff348e840de26556895977e983bf5e162a63b96` |
| 11 | `lemma` | [map_cast_binomial_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/map-cast-binomial-singleton--d1e9084ff64c79455893623b.md) | 103 | `result-track:d1e9084ff64c79455893623b4f465640cb6f9a946816221503ff7deb8b06ae3c` |
| 12 | `lemma` | [binomial_real_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-real-zero--5447606c2f26603e9f0818eb.md) | 109 | `result-track:5447606c2f26603e9f0818eb7a198f403101df8101282d4acdf0c1a65682b07b` |
| 13 | `lemma` | [map_cast_binomial_real_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/map-cast-binomial-real-zero--532bd393a2ea39c9546a5a2d.md) | 113 | `result-track:532bd393a2ea39c9546a5a2db613c63fd4881a6a7ef7fd2d743409e8d6cdd8ae` |
| 14 | `lemma` | [binomial_real_self](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-real-self--8a5b14d8c78010b76d572810.md) | 119 | `result-track:8a5b14d8c78010b76d572810892f8b53e682a3229a3eb6c59d0def78b1be1797` |
| 15 | `lemma` | [map_cast_binomial_real_self](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/map-cast-binomial-real-self--23a808400f5559f50bb09287.md) | 123 | `result-track:23a808400f5559f50bb09287e89ae491fbc45471d82d07b80db2220a570c9a0d` |
| 16 | `lemma` | [binomial_one_eq_bernoulliMeasure](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-one-eq-bernoullimeasure--39e667e3f6576de6a079d7f8.md) | 127 | `result-track:39e667e3f6576de6a079d7f8f23757f2424e8d8ff9bb0e68b09e1b33291d516e` |
| 17 | `lemma` | [binomial_eq_sum_dirac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/binomial-eq-sum-dirac--dcf2fdc0c47d489503b59910.md) | 134 | `result-track:dcf2fdc0c47d489503b59910f39dd492749e95b8ce53dbeef517990cbca45ecc` |
| 18 | `lemma` | [map_cast_binomial_eq_sum_dirac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/map-cast-binomial-eq-sum-dirac--d923707e98da468fcc29c25b.md) | 143 | `result-track:d923707e98da468fcc29c25bc9c4d50e536ec2ee44cafff74aae64012ca1c7f1` |
| 19 | `lemma` | [integrable_map_cast_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/integrable-map-cast-binomial--cd23241701e7529c588562f8.md) | 154 | `result-track:cd23241701e7529c588562f8c0955c918ca8e07285cfe44bc776f25bbfee4b37` |
| 20 | `lemma` | [integrable_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/integrable-binomial--470a2c2adcd979a940e1c693.md) | 159 | `result-track:470a2c2adcd979a940e1c6934912d276e5497587bbd227ff6cbd1aae36e0edcc` |
| 21 | `lemma` | [integral_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/integral-binomial--e93cfff5d5e7d6f431d65e4c.md) | 164 | `result-track:e93cfff5d5e7d6f431d65e4c85f8b5f8a06ebbfec756938aea9282d55e8e39d2` |
| 22 | `lemma` | [integral_map_cast_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/integral-map-cast-binomial--87c2b02c7bcbadb4278f456f.md) | 171 | `result-track:87c2b02c7bcbadb4278f456ff90e444b14aeccd5fb587fa8469d885b141522e8` |
| 23 | `theorem` | [integral_of_hasLaw_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantca13d922957a98109fe7f9787b217078320206458e7c3fce87d5b781ea9b7a32.lean/declarations/integral-of-haslaw-binomial--341ce982e7cb1f6972e5de96.md) | 186 | `result-track:341ce982e7cb1f6972e5de96c1d49b1e8f77919d58f0a4ec3ef46fa9a178edb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
