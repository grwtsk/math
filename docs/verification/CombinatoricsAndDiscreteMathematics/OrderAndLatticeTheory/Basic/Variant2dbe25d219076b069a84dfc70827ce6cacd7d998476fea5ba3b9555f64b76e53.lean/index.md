# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a514d9c55643bf50a66c51a69a012cfa4607b7a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a514d9c55643bf50a66c51a69a012cfa4607b7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean.json)

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
| 1 | `instance` | [instLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/instlinearorder--488d296d486a7c0242ebb0e5.md) | 42 | `declaration-track:488d296d486a7c0242ebb0e5c148348208fe48580b7f56fe382d64426bd6a7b1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/instance--8e3774db06ddea4d5ca2b5ed.md) | 55 | `declaration-track:8e3774db06ddea4d5ca2b5ed692997515194b81a037e49b5058d6bca275c7e35` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/instance--ad31b34ecc3431745afe7500.md) | 56 | `declaration-track:ad31b34ecc3431745afe750097e9ece3624997f61acd6149c6761e9c968ad768` |
| 4 | `instance` | [instNontrivial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/instnontrivial--d5643a77edbd7c2bd5ed6cab.md) | 58 | `declaration-track:d5643a77edbd7c2bd5ed6cab2c2eed0496a3542c0dfc94db6b22798dec621133` |
| 5 | `lemma` | [succ_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/succ-injective--f00bd8a586933866a4f262d1.md) | 62 | `result-track:f00bd8a586933866a4f262d1cd733db9d6a45ce494fad6f77d26c1e057653e2f` |
| 6 | `theorem` | [div_right_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/div-right-comm--bba44e8e5de8ed217a14eeac.md) | 66 | `result-track:bba44e8e5de8ed217a14eeacec5652d0c4f42c06ea2b605e461e750660fbd17c` |
| 7 | `lemma` | [pow_left_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/pow-left-injective--579dd195a266e34c9407879a.md) | 73 | `result-track:579dd195a266e34c9407879a011b1e22a61bc5eaff39c37c42dce2a9a8e2de15` |
| 8 | `lemma` | [pow_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/pow-right-injective--37aa5370aca2663137dc5520.md) | 76 | `result-track:37aa5370aca2663137dc552086ad31fec7228651c196a20d0736c3af2ce2544b` |
| 9 | `theorem` | [pow_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/pow-sub-one--6c3d7a0f2d16a833e6569281.md) | 79 | `result-track:6c3d7a0f2d16a833e6569281978fa2d5e3d15437007b26034c8956357898b761` |
| 10 | `lemma` | [leRecOn_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/lerecon-injective--ade9ed038164889a57eb4b04.md) | 90 | `result-track:ade9ed038164889a57eb4b04f624f00126ed881bffe5b05a95ca2d076a37d794` |
| 11 | `lemma` | [leRecOn_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/lerecon-surjective--c3c2879cd31518096110bf81.md) | 101 | `result-track:c3c2879cd31518096110bf810704e3625eb90a3df6861a3896364d508a6a9d18` |
| 12 | `lemma` | [set_induction_bounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/set-induction-bounded--8a811860042287dde5c4235f.md) | 117 | `result-track:8a811860042287dde5c4235f4673dc7117a4eeb6cca82076c3c5fea90e89d215` |
| 13 | `lemma` | [set_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/set-induction--c4f5dcb110ee931526745f6b.md) | 122 | `result-track:c4f5dcb110ee931526745f6b50b858785de104adeb5f916a6046d93968959526` |
| 14 | `lemma` | [dvd_antisymm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/dvd-antisymm-iff--3eb93ea1aaeee5b2005a90b2.md) | 129 | `result-track:3eb93ea1aaeee5b2005a90b23c86a9a9b0cd1c123f729f918f88f7ccd5261559` |
| 15 | `lemma` | [dvd_left_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/dvd-left-injective--2eae0a20db84acc11ab39a40.md) | 133 | `result-track:2eae0a20db84acc11ab39a404150ff04b5a1a5368941882e0216939111eabab9` |
| 16 | `lemma` | [dvd_sub_self_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/dvd-sub-self-left--58562303cc9f145306e74346.md) | 137 | `result-track:58562303cc9f145306e74346eb4f14826925f26892c98eee864ca5a8a956a27b` |
| 17 | `lemma` | [dvd_sub_self_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/dvd-sub-self-right--c90028d677bd395b1ae45663.md) | 148 | `result-track:c90028d677bd395b1ae45663d4f545eebef83546808aa09e9f56ac65b441c242` |
| 18 | `lemma` | [mul_le_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/mul-le-pow--8730c59c1cdcf7921b57dda4.md) | 156 | `result-track:8730c59c1cdcf7921b57dda4ae57f4f5a78d43328181166d4e92f155bd659212` |
| 19 | `lemma` | [two_mul_sq_add_one_le_two_pow_two_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2dbe25d219076b069a84dfc70827ce6cacd7d998476fea5ba3b9555f64b76e53.lean/declarations/two-mul-sq-add-one-le-two-pow-two-mul--e7ff712997bc29f20aa40662.md) | 166 | `result-track:e7ff712997bc29f20aa406625741ff750cb04d210c690cd5ddb4ac82930782b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
