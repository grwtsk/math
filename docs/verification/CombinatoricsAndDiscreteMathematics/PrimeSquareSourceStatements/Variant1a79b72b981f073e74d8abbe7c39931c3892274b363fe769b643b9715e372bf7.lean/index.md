# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeSquareSourceStatements.Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8e87af7cc3adc00a82d236bc3498c309ce30fc0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8e87af7cc3adc00a82d236bc3498c309ce30fc0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.Cutoff` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimeSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/isprimesquare--b3f58c608d31ce87db69ec10.md) | 13 | `declaration-track:b3f58c608d31ce87db69ec104a9814dd5012299a737d6e16fea7f3d721bf77bd` |
| 2 | `def` | [primeSquareIndices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/primesquareindices--e61c5197767ee61cd853545b.md) | 16 | `declaration-track:e61c5197767ee61cd853545bf6754593f4e8b778b754fc93412ba8c030f74cfc` |
| 3 | `def` | [closedPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/closedprimeroots--ab16be3f7375da19ed93ff61.md) | 21 | `declaration-track:ab16be3f7375da19ed93ff61b0915d00a8174d13c4bd35442b3d42274c917588` |
| 4 | `def` | [strictPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/strictprimeroots--3b6a33651a23ddb048f16ec2.md) | 25 | `declaration-track:3b6a33651a23ddb048f16ec239b92166c877d10d598725b3c333a3005e52fdec` |
| 5 | `def` | [primeSquareContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/primesquarecontribution--6fe29632216fad8b62dec24b.md) | 29 | `declaration-track:6fe29632216fad8b62dec24bffaf04fd3087ae6ce4d312ac0a5145cf702b317f` |
| 6 | `theorem` | [mem_closedPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/mem-closedprimeroots-iff--13cf8b61845b86542e6005f1.md) | 33 | `result-track:13cf8b61845b86542e6005f19bc23a4313d248e287b96cd4f50f35d57b14e84d` |
| 7 | `theorem` | [mem_strictPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/mem-strictprimeroots-iff--27623fa1cde901e84dcbd12d.md) | 41 | `result-track:27623fa1cde901e84dcbd12d7d2eaacb85b82005ba037a9b99c8eaef74f95039` |
| 8 | `theorem` | [prime_square_cutoff_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/prime-square-cutoff-iff--1f4641bb85ddae69a495c8b5.md) | 47 | `result-track:1f4641bb85ddae69a495c8b5c0e9c1e00ab8ebfa9ee67bf2fe7119c861defa04` |
| 9 | `theorem` | [primeSquareIndices_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/primesquareindices-eq-image--32cddd92d71b2812a0433761.md) | 57 | `result-track:32cddd92d71b2812a0433761701a5dec561bb6e5a124a80ee16e910633775c98` |
| 10 | `theorem` | [four_mem_primeSquareIndices_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/four-mem-primesquareindices-iff--d98fdbea79f2cf7f3821428c.md) | 71 | `result-track:d98fdbea79f2cf7f3821428ca71c8984a695125347ddef6574c4677b2f98514e` |
| 11 | `theorem` | [prime_square_summand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/prime-square-summand--654bf61c6e58fec13b2616b5.md) | 83 | `result-track:654bf61c6e58fec13b2616b594e33320cca22081c71349658882742279d57350` |
| 12 | `theorem` | [primeSquareContribution_eq_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/primesquarecontribution-eq-strict--cba02c0c175f42efcf75f86f.md) | 94 | `result-track:cba02c0c175f42efcf75f86fb6a3df233f3f82b6e32153452b478b3d95984a80` |
| 13 | `theorem` | [prime_root_endpoint_summand_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/prime-root-endpoint-summand-zero--d3f0330afff2cb841360ee3f.md) | 106 | `result-track:d3f0330afff2cb841360ee3f0b4117d808175316b752b941acb93c5d98e1e3de` |
| 14 | `theorem` | [primeSquareContribution_eq_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/primesquarecontribution-eq-closed--af8eff408222c0bdfb5e6429.md) | 120 | `result-track:af8eff408222c0bdfb5e64292b90cfe0fcc8a98e77de92d450cb890fff555813` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--b38dcf333e246109a491fc2b.md) | 137 | `declaration-track:b38dcf333e246109a491fc2bdb637a5a6eceeda3b9146466248cfb7ac3a34cee` |
| 16 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--31d335c635a0b0815a338c53.md) | 139 | `declaration-track:31d335c635a0b0815a338c53e76fdd92da66e087425f1a31eb95ab717a9cd9d5` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--05b90060286ef610a809b50b.md) | 141 | `declaration-track:05b90060286ef610a809b50b1795f4fe06d5d467b74b892559a7bfcc0ddc57a1` |
| 18 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--33ca90ec28febdebfa723565.md) | 143 | `declaration-track:33ca90ec28febdebfa723565971428d1ad58e162e7bf593de3d4597184ea974f` |
| 19 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--9a2cf57d7bc6b60b026a1a55.md) | 145 | `declaration-track:9a2cf57d7bc6b60b026a1a55093687b9bad7dce0f0827b6dc49ea75f11b6b942` |
| 20 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--447ff3f9a52c6674c75549b7.md) | 149 | `declaration-track:447ff3f9a52c6674c75549b7d7119adb84c8fe71d8aaf8a1c663642a81dd2611` |
| 21 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--1c3447ca6f8278bbd6a7f073.md) | 153 | `declaration-track:1c3447ca6f8278bbd6a7f0734260b35a5f0b3cfbc1d73612cccb1d85d5a073bf` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--37e959f9afaf3d369a996449.md) | 157 | `declaration-track:37e959f9afaf3d369a996449d01820099268d47fe0e203157dd13f1a5ef4bb55` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--1dabbae9926b6ea57eefe5f9.md) | 161 | `declaration-track:1dabbae9926b6ea57eefe5f92e69eccb1b1b3a32af515851b8d908d7fb9addc9` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--47d89a0bfcf81267f4f91db6.md) | 165 | `declaration-track:47d89a0bfcf81267f4f91db674ea842ffe613dea0d5e02470802be548a3b9ed4` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--1a2427af77b8936d3cd433dc.md) | 169 | `declaration-track:1a2427af77b8936d3cd433dc464a10cd380d5854718fb9133ebccc161cb3e513` |
| 26 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--4ca2828d89c276375cf62801.md) | 176 | `declaration-track:4ca2828d89c276375cf62801c6519ff19f85da5e89ea9a4cd59e8ffe676ee8b4` |
| 27 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--f2b7b55b17d3d0b40d516fe9.md) | 182 | `declaration-track:f2b7b55b17d3d0b40d516fe9a87f68e871d33a5665c1bb61d3573812d9078b42` |
| 28 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variant1a79b72b981f073e74d8abbe7c39931c3892274b363fe769b643b9715e372bf7.lean/declarations/example--4a42af51a10f4145c7279484.md) | 188 | `declaration-track:4a42af51a10f4145c72794849b1ab95c5a6ddc3b80d79f113f19b6508d555822` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
