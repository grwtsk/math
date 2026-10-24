# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c832384123f7f22d25403f7eb184994abb3f02c6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c832384123f7f22d25403f7eb184994abb3f02c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ--527b2e0bd1c7ea828fe9ecf5.md) | 18 | `declaration-track:527b2e0bd1c7ea828fe9ecf54a47dae4d3ed4b0dd4430272a3bc39bffa63cc5b` |
| 2 | `lemma` | [succ_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-bot--fe6def53a5d6389940500d4d.md) | 21 | `result-track:fe6def53a5d6389940500d4dfbaba28106cd78895256a1aae1d6aa7ce9fa4c5e` |
| 3 | `lemma` | [succ_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-coe--bfe434097f3481e9998c3441.md) | 24 | `result-track:bfe434097f3481e9998c3441986236121feff467b21f81f43c3e128f39d9d01b` |
| 4 | `lemma` | [succ_eq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-eq-succ--2ec8233d2fe5356ab37108bd.md) | 26 | `result-track:2ec8233d2fe5356ab37108bd92380e10a29c222b47418ad64202636c61d3fb98` |
| 5 | `lemma` | [succ_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-mono--6524109a7dce63aa233b33dd.md) | 30 | `result-track:6524109a7dce63aa233b33dd95a32480b9d3b266f22711a8f5add799f7375899` |
| 6 | `lemma` | [succ_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-strictmono--43cc694dfd97772fbf4155c0.md) | 35 | `result-track:43cc694dfd97772fbf4155c0b547764bb25396d3376c8069c4e09463e636113a` |
| 7 | `lemma` | [succ_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-le-succ--f4e896bd95309c1ec951f48f.md) | 39 | `result-track:f4e896bd95309c1ec951f48fe655a6d44c470a8843914ac268af32fd3f9107f6` |
| 8 | `lemma` | [succ_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-lt-succ--2266690101b3ed64fcfe59f5.md) | 40 | `result-track:2266690101b3ed64fcfe59f5ab70cbc4a160790de084119dc1d788ed26065b0a` |
| 9 | `theorem` | [succ_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/succ-eq-bot--d296ca31ae1b85a5b76f3f71.md) | 47 | `result-track:d296ca31ae1b85a5b76f3f71c732add96e8bb5a316fdadd6f5e0cee8decd1b10` |
| 10 | `def` | [pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred--050802c46eb3ffea364bd8eb.md) | 63 | `declaration-track:050802c46eb3ffea364bd8eb62f2ffece943d79cf626a27f8502d4d0486bd512` |
| 11 | `lemma` | [pred_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-top--32879e44400a3a456622843a.md) | 66 | `result-track:32879e44400a3a456622843a9bf83e01097e13b085515a85993abb5ce70ce263` |
| 12 | `lemma` | [pred_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-coe--58b3f2f5641b3439ecd9472e.md) | 69 | `result-track:58b3f2f5641b3439ecd9472ea50ca345a1cfd479a0d809d499e51313bcce2ac9` |
| 13 | `lemma` | [pred_eq_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-eq-pred--aee41a372920b3c797edbedc.md) | 71 | `result-track:aee41a372920b3c797edbedc5f02d792d5fa28a8e8986892fabdcabb9e082f91` |
| 14 | `lemma` | [pred_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-mono--f19f60f897274f3d08b22f27.md) | 75 | `result-track:f19f60f897274f3d08b22f27e8d807d3159edfa660cbc7960473b926f91dd20c` |
| 15 | `lemma` | [pred_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-strictmono--180d4751d212d441e088f020.md) | 80 | `result-track:180d4751d212d441e088f020edec8b8a73d07801e57b699959dbe07cda74ac1f` |
| 16 | `lemma` | [pred_le_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-le-pred--df9300ee8537a3db77082b03.md) | 84 | `result-track:df9300ee8537a3db77082b03846d129f0ee6a24ea4c6d5e7d551f74d4f182900` |
| 17 | `lemma` | [pred_lt_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-lt-pred--07815b1eec2fbc7eb1df3871.md) | 85 | `result-track:07815b1eec2fbc7eb1df38712d4d7590135f5d75bc352b3832bf10c7226b0a77` |
| 18 | `theorem` | [pred_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantbd8417a59c2951e779f68069f1795f3caf682d9f5b3293daf57907f7fb1e4814.lean/declarations/pred-eq-top--fd6e28a3bd69fc762c3ee60b.md) | 92 | `result-track:fd6e28a3bd69fc762c3ee60bea2ab7cd47a151a084cdc127c65db004e9a87623` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
