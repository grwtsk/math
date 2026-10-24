# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.LSeries.Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e79a400ae5d0ecf33ce34b57005118e6c6df68",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e79a400ae5d0ecf33ce34b57005118e6c6df68`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseries--d39f80bf38799f91a461486a.md) | 50 | `declaration-track:d39f80bf38799f91a461486a6c6ceb61d5e68742c378591b531a153113b86d1c` |
| 2 | `def` | [LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseriessummable--81ff9556a30cd61b20a6e8eb.md) | 55 | `declaration-track:81ff9556a30cd61b20a6e8eb7d57e6fe1b8a0080d15a2d9f9572cbc584fba90c` |
| 3 | `theorem` | [LSeries_eq_zero_of_not_LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseries-eq-zero-of-not-lseriessummable--bb2dfd7de7cc2fe449ad7832.md) | 59 | `result-track:bb2dfd7de7cc2fe449ad78320a54212ccb654f7d043e591d81dccec9c8902f2b` |
| 4 | `theorem` | [LSeriesSummable_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseriessummable-zero--bd62eb060482b686530b669b.md) | 65 | `result-track:bd62eb060482b686530b669b34402ce5f10d272896e88d02aded4e5869847e7f` |
| 5 | `theorem` | [LSeriesSummable_of_bounded_of_one_lt_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseriessummable-of-bounded-of-one-lt-real--f4b0bfb89722d6ca416a91b8.md) | 69 | `result-track:f4b0bfb89722d6ca416a91b867fc0c8e52574a89fb96f246e9fb7f67d3b5402b` |
| 6 | `theorem` | [LSeriesSummable_iff_of_re_eq_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseriessummable-iff-of-re-eq-re--089a800cf86d45854f7cddd1.md) | 88 | `result-track:089a800cf86d45854f7cddd1e5ab1e66c0e6c57f595ef0f71360a782e24930cd` |
| 7 | `theorem` | [LSeriesSummable_of_bounded_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseriessummable-of-bounded-of-one-lt-re--cd0e0e13c0c65a2020ec9b9f.md) | 106 | `result-track:cd0e0e13c0c65a2020ec9b9f412e5f285e7e7a501b8235d483ac96084ed4cdb7` |
| 8 | `theorem` | [zeta_LSeriesSummable_iff_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/zeta-lseriessummable-iff-one-lt-re--bd453da76ff9d4618d860b27.md) | 115 | `result-track:bd453da76ff9d4618d860b275fab517716703214814ee7703c96cf8ef72ce796` |
| 9 | `theorem` | [LSeries_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/declarations/lseries-add--4f4c4dd1854ac4c7f39d6232.md) | 132 | `result-track:4f4c4dd1854ac4c7f39d6232924295c5295dcc4033a31ddb678dda7f5715fa96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
