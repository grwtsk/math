# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Relation.Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b54a6dd23a17fa8b761023c5354b01e4ff0f16e1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b54a6dd23a17fa8b761023c5354b01e4ff0f16e1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Archimedean` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reflTransGen_of_succ_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/refltransgen-of-succ-of-le--ad2a6c40b214afdd6f9be94b.md) | 23 | `result-track:ad2a6c40b214afdd6f9be94b6fe216660ab1b2c74b2a8af79dbfa4b784568841` |
| 2 | `theorem` | [reflTransGen_of_succ_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/refltransgen-of-succ-of-ge--448dd6993de35637bd337e93.md) | 36 | `result-track:448dd6993de35637bd337e9345a3f1d3c4127d717d5e842bd70373e1a5c67066` |
| 3 | `theorem` | [transGen_of_succ_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-succ-of-lt--dee63c9469183b2298e31d83.md) | 43 | `result-track:dee63c9469183b2298e31d8369bca1a9b57194a4c4afe4c4870d26e0319941bd` |
| 4 | `theorem` | [transGen_of_succ_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-succ-of-gt--371cc47b72eaa906d604c1d1.md) | 50 | `result-track:371cc47b72eaa906d604c1d13c88c188be5493df8d9bed3fb4bac40e986f02c2` |
| 5 | `theorem` | [reflTransGen_of_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/refltransgen-of-succ--f967dfebb4af3424255f19a3.md) | 63 | `result-track:f967dfebb4af3424255f19a38d21b687b4dd92c17d54d40c081648f9520da34a` |
| 6 | `theorem` | [transGen_of_succ_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-succ-of-ne--60e53b2c063894d118b4dbe3.md) | 69 | `result-track:60e53b2c063894d118b4dbe326862a348742778d40a250e39876a8cd60f621a3` |
| 7 | `theorem` | [transGen_of_succ_of_reflexive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-succ-of-reflexive--0aed57f3dd60b5182b3fa062.md) | 75 | `result-track:0aed57f3dd60b5182b3fa062b76e1ccac4f2e64db5e40d238c3cd89dc54b58c2` |
| 8 | `theorem` | [reflTransGen_of_pred_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/refltransgen-of-pred-of-ge--1353a9e6c9ce4f9f2c4926b8.md) | 88 | `result-track:1353a9e6c9ce4f9f2c4926b819011b7aeaf7934130c626fc5cae6781b73b6917` |
| 9 | `theorem` | [reflTransGen_of_pred_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/refltransgen-of-pred-of-le--084672d5244bdf500ec2dcdc.md) | 94 | `result-track:084672d5244bdf500ec2dcdca0aff42af27a046813a96dadc01e1282c96aa6e4` |
| 10 | `theorem` | [transGen_of_pred_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-pred-of-gt--58a14183d2545a0a1304f3c8.md) | 100 | `result-track:58a14183d2545a0a1304f3c8620db0c3b0482b272d8c6389aa6eb1eed24de78a` |
| 11 | `theorem` | [transGen_of_pred_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-pred-of-lt--faaf7ae1dc3314b5e29135b6.md) | 106 | `result-track:faaf7ae1dc3314b5e29135b6bf637369b2a53dbce452530ebc555bc35ee6253e` |
| 12 | `theorem` | [reflTransGen_of_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/refltransgen-of-pred--c317c80b626d78e0e82e3e9c.md) | 118 | `result-track:c317c80b626d78e0e82e3e9c3e12f6afbfb99fa166d46d0158cdecc531360669` |
| 13 | `theorem` | [transGen_of_pred_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-pred-of-ne--0fd2aad616954d9eac22860f.md) | 125 | `result-track:0fd2aad616954d9eac22860f8b94cad2255b66c6c9b10f64f575c5f6284a34e7` |
| 14 | `theorem` | [transGen_of_pred_of_reflexive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant3ee85f03cfa623f679e657acfd68023f5f994e4b44082c9ed2383a3b894edab0.lean/declarations/transgen-of-pred-of-reflexive--3f2c427e8cd48264e0e7245d.md) | 132 | `result-track:3f2c427e8cd48264e0e7245d39697b3c6dd50d48b3baf1b47c51dc73c0819c14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
