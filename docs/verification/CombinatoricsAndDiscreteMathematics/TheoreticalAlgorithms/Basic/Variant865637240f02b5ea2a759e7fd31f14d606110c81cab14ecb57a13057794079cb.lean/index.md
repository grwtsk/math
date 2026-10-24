# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d000f483de1166918c25b349f97724b3d0fbcaff",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d000f483de1166918c25b349f97724b3d0fbcaff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 21; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 27; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.IsEmpty` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [split](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/split--bc3ca0137ca84126a9befb0f.md) | 47 | `declaration-track:bc3ca0137ca84126a9befb0fca7d401a174d7b871bb61a12ff586b6eaf642086` |
| 2 | `theorem` | [split_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/split-endpos--b7387f68b784bf59bddf34a6.md) | 60 | `result-track:b7387f68b784bf59bddf34a6df0d5512221ec324f3842b4ebe9701e4b86d95f3` |
| 3 | `theorem` | [split_eq_of_isLongestMatchAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/split-eq-of-islongestmatchat--1b70ae0737ca86952faba11c.md) | 65 | `result-track:1b70ae0737ca86952faba11c2d62a19483e6e5bb8a758a25d8ee100861ca85ce` |
| 4 | `theorem` | [split_eq_of_not_matchesAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/split-eq-of-not-matchesat--9ee83714431c6317f6eedb61.md) | 74 | `result-track:9ee83714431c6317f6eedb61841c96a388c9e98ce59b5480a71e520a68b78e0d` |
| 5 | `theorem` | [split_eq_next_of_not_matchesAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/split-eq-next-of-not-matchesat--d62ce12158c96e95772e2d42.md) | 91 | `result-track:d62ce12158c96e95772e2d424a1c5e89c26080ed77197577453a9a01e6b1e7aa` |
| 6 | `def` | [splitFromSteps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/splitfromsteps--09693b85bb7c7f920ade0518.md) | 107 | `declaration-track:09693b85bb7c7f920ade0518c734f7a79654eb26f76d1c95e778be092e278071` |
| 7 | `theorem` | [IsValidSearchFrom.splitFromSteps_eq_extend_split](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/isvalidsearchfrom-splitfromsteps-eq-extend-split--87ce31e3b7f5710ebc9e5bad.md) | 113 | `result-track:87ce31e3b7f5710ebc9e5bad97b8affa5c7aaf6f46c45b2ad8e9cf0b021a2622` |
| 8 | `theorem` | [SplitIterator.toList_eq_splitFromSteps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/splititerator-tolist-eq-splitfromsteps--b74341ffe3039733f149b6e7.md) | 134 | `result-track:b74341ffe3039733f149b6e7e6c6a4ac4a714a7b93bc5ded7bad98dca74c9632` |
| 9 | `theorem` | [toList_splitToSubslice_eq_splitFromSteps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/tolist-splittosubslice-eq-splitfromsteps--72911afa495ac44ef665c999.md) | 156 | `result-track:72911afa495ac44ef665c999c2c5c2330596a271cf9dd02d5b841e647f8372e2` |
| 10 | `theorem` | [toList_splitToSubslice_eq_modelSplit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/tolist-splittosubslice-eq-modelsplit--89cb590191edec24806ab829.md) | 166 | `result-track:89cb590191edec24806ab829f909c37bb0fa300ba3eed1a5d51324a508ccdf64` |
| 11 | `theorem` | [toList_splitToSubslice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/tolist-splittosubslice-of-isempty--f2ce4fd34cb4fb4eddd52b13.md) | 178 | `result-track:f2ce4fd34cb4fb4eddd52b13241ab156ff3b5cf28f33bed0c84d9bf5bff3055e` |
| 12 | `theorem` | [toList_split_eq_splitToSubslice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/tolist-split-eq-splittosubslice--466141437d246486e9339837.md) | 186 | `result-track:466141437d246486e9339837082734002de6325e2035ffcb638ed448ba18ee4b` |
| 13 | `theorem` | [toList_split_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/tolist-split-of-isempty--5c7e26c9c599f0231708a742.md) | 192 | `result-track:5c7e26c9c599f0231708a7421edf249416eb52778fd798ed443b57afa1fad3ab` |
| 14 | `theorem` | [split_eq_split_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/split-eq-split-toslice--0d56300ecafad0ff6a71f662.md) | 205 | `result-track:0d56300ecafad0ff6a71f662ff67b0f1729e7de1a9b3a9fc431098260e458ca9` |
| 15 | `theorem` | [toList_split_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant865637240f02b5ea2a759e7fd31f14d606110c81cab14ecb57a13057794079cb.lean/declarations/tolist-split-empty--5b803acfa11173de64c5230c.md) | 210 | `result-track:5b803acfa11173de64c5230c2cf652d67a2b145abfa6e980c61ba19977532b9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
