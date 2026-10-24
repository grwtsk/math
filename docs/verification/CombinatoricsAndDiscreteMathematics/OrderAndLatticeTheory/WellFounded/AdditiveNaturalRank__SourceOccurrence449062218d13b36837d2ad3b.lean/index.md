# Verification target: GRWTSK.Order.WellFounded.AdditiveNaturalRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8505a8a981db30d00ce60239af8353b5e90b0f1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Order/WellFounded/AdditiveNaturalRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8505a8a981db30d00ce60239af8353b5e90b0f1`.

Source path: `GRWTSK/Order/WellFounded/AdditiveNaturalRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Order/WellFounded/AdditiveNaturalRank.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NarrowRank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/narrowrank--d2665a3b11cda24cd1698826.md) | 9 | `declaration-track:d2665a3b11cda24cd1698826726ed101d7b2dc4e1cc079369d711f3cb2290248` |
| 2 | `def` | [NarrowRank.cost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/narrowrank-cost--d2a3bc171f0e2b93c79b67ff.md) | 16 | `declaration-track:d2a3bc171f0e2b93c79b67ff49522ff3e53aeb4468b02d164e2b92a6d3174f00` |
| 3 | `def` | [LowerRank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/lowerrank--9174ba09f95547f6c7af459a.md) | 19 | `declaration-track:9174ba09f95547f6c7af459a42e72cd21c7f4f164de6d1ba21ead3ea2a202785` |
| 4 | `theorem` | [lowerRank_wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/lowerrank-wellfounded--bf353d45331a5713b4eac4ad.md) | 21 | `result-track:bf353d45331a5713b4eac4adbb856b6931150f6552794979729a121bc0652fea` |
| 5 | `theorem` | [unchanged_rank_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/unchanged-rank-rejected--61dd01561f908dec216257a2.md) | 24 | `result-track:61dd01561f908dec216257a20b564a0e7773d3a18a02b40c43a8821b45e929ea` |
| 6 | `theorem` | [nondecreasing_rank_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/nondecreasing-rank-rejected--042b617f749eb4dda672df23.md) | 27 | `result-track:042b617f749eb4dda672df2333934d372e884a90f904e44f7afccc5b900d8d75` |
| 7 | `theorem` | [rank_zero_terminal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/rank-zero-terminal--ac8301dd5cdae5725bed310a.md) | 31 | `result-track:ac8301dd5cdae5725bed310afbe52a84ce33f7612b27de3ad94d1e84094cc64f` |
| 8 | `theorem` | [descent_chain_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/declarations/descent-chain-length--fc9f03c6988474a6de097c52.md) | 38 | `result-track:fc9f03c6988474a6de097c52f628c1630f9a2f3865c4de48277fc9f72ef100c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
