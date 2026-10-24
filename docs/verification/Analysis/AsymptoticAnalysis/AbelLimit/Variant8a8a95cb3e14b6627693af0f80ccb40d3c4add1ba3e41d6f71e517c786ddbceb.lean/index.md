# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.AbelLimit.Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fad3fb8daf05e5012118815c8ec582c68b0ca7b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fad3fb8daf05e5012118815c8ec582c68b0ca7b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/stolzset--e0e95f9d53ec861343b885e5.md) | 52 | `declaration-track:e0e95f9d53ec861343b885e57cf7d40bbdd3ce2321b412f4cc612c7e98fb18fd` |
| 2 | `def` | [stolzCone](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/stolzcone--a5e3628ac138a1a00aefefed.md) | 55 | `declaration-track:a5e3628ac138a1a00aefefedc07d9f4512fbfde8ed63bd204c32d877f33abcf9` |
| 3 | `theorem` | [stolzSet_empty](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/stolzset-empty--9de90d237409a0828dc59b08.md) | 57 | `result-track:9de90d237409a0828dc59b085acb111d0205064e7c2c89b985acb0148cd35a75` |
| 4 | `theorem` | [nhdsWithin_lt_le_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/nhdswithin-lt-le-nhdswithin-stolzset--afadfcc084e4f09b22ac48f0.md) | 66 | `result-track:afadfcc084e4f09b22ac48f056413773eb2e245e01c04fd94d37bad0302818c2` |
| 5 | `lemma` | [stolzCone_subset_stolzSet_aux'](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/stolzcone-subset-stolzset-aux--fbbaed7e1bf0af781174dd1d.md) | 79 | `result-track:fbbaed7e1bf0af781174dd1d3fa86f641c98df7127bb45b2286ad4cffe3b5332` |
| 6 | `lemma` | [stolzCone_subset_stolzSet_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/stolzcone-subset-stolzset-aux--137d5018b995cd433044fcd8.md) | 103 | `result-track:137d5018b995cd433044fcd84f31af0f5491821cce7814ce89591af61204f695` |
| 7 | `lemma` | [nhdsWithin_stolzCone_le_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/nhdswithin-stolzcone-le-nhdswithin-stolzset--718e84e7ba62e8e225619ccd.md) | 117 | `result-track:718e84e7ba62e8e225619ccd4462db143eb9f5b8c02a9e8fba3c1095176394b4` |
| 8 | `lemma` | [abel_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/abel-aux--e26c8caf66ef814d76e3c7a2.md) | 132 | `result-track:e26c8caf66ef814d76e3c7a262674ce00541beaf122406889d64ac5569e8fd94` |
| 9 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzset--af5a7a8b472ce60807e22682.md) | 165 | `result-track:af5a7a8b472ce60807e226820ca449b2de6346c79f2350c8df28bde8fb559987` |
| 10 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzCone](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzcone--56baeb31dc74d3f42f657d8a.md) | 245 | `result-track:56baeb31dc74d3f42f657d8a424b2657baffe8052a178ba681e084aeead4d966` |
| 11 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt--0aa6281c61d3050c84777d11.md) | 251 | `result-track:0aa6281c61d3050c84777d115b6aa8c40872fbf44acaec51d1d78bfe661beb0e` |
| 12 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt--00073c9b6609315576df1de9.md) | 267 | `result-track:00073c9b6609315576df1de98619d017f2a53f1706e273c529d0960484bcb2a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
