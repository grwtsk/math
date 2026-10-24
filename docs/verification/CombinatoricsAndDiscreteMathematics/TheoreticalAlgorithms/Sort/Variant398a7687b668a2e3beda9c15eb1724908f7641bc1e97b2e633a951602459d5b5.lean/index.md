# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sort.Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac9e7310505e59b46c8595bdf701505e451f519a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac9e7310505e59b46c8595bdf701505e451f519a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/sort--54a75284ff150e45c6058e8d.md) | 27 | `declaration-track:54a75284ff150e45c6058e8d19091819286b89da08ff1e1ea6e931c88adb3729` |
| 2 | `theorem` | [coe_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/coe-sort--c20b331bc8c91ef39eff2ced.md) | 36 | `result-track:c20b331bc8c91ef39eff2cedb6a0c735c786e33c3561f2d35c8f492c4defdf6c` |
| 3 | `theorem` | [sort_sorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/sort-sorted--c9a082c0c667a47e9734c264.md) | 40 | `result-track:c9a082c0c667a47e9734c264ea6438f60bef257a7ccf54065a611f0121aaf312` |
| 4 | `theorem` | [sort_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/sort-eq--4d332f7e67f495f6ab192fcf.md) | 44 | `result-track:4d332f7e67f495f6ab192fcfda2222bde819707f432c5ec4a9893e809a40b144` |
| 5 | `theorem` | [mem_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/mem-sort--4ca5a7059bfc3da6e6082ff8.md) | 48 | `result-track:4ca5a7059bfc3da6e6082ff8e95bef216e3fd50b99bafaf38843503280135cc5` |
| 6 | `theorem` | [length_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/length-sort--3f0a91925880d3764b584431.md) | 51 | `result-track:3f0a91925880d3764b58443196e38dc8dd8773366abb8aed79fe66e4ba53a7b6` |
| 7 | `theorem` | [sort_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/sort-zero--06dfd73bb0b145f824da7bd4.md) | 55 | `result-track:06dfd73bb0b145f824da7bd4ca14d902513ffa57b838c9da099f6693d8ca386a` |
| 8 | `theorem` | [sort_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/sort-singleton--81c33ba0467a12aeedb07132.md) | 59 | `result-track:81c33ba0467a12aeedb071325212df3a1898f3b9cb62db82b2f8a8456d6e9f52` |
| 9 | `theorem` | [map_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/map-sort--eaacf34f88fac14df3eed5bd.md) | 62 | `result-track:eaacf34f88fac14df3eed5bdf45f8d0602b3f66a4b59fe3f5839488ebc8246f0` |
| 10 | `theorem` | [sort_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/sort-cons--c71dba330c29b7d893b3a133.md) | 68 | `result-track:c71dba330c29b7d893b3a1330b4da863dab807db118a7694acae1ba0c90311e8` |
| 11 | `theorem` | [sort_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/sort-range--29d73dd7a581e9c73181a0ff.md) | 74 | `result-track:29d73dd7a581e9c73181a0ff501bf7c647f8e7ba28312cc16d27ced5a84b2088` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/instance--03cb40786d0798d069a46376.md) | 81 | `declaration-track:03cb40786d0798d069a46376bf8dde43104f80f50c9d89cb02ae98571f38c410` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant398a7687b668a2e3beda9c15eb1724908f7641bc1e97b2e633a951602459d5b5.lean/declarations/instance--80bc2d87c60ef81efb47010f.md) | 93 | `declaration-track:80bc2d87c60ef81efb47010f40949ffc72f17b32ebc774f8f9932ea8092ab6a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
