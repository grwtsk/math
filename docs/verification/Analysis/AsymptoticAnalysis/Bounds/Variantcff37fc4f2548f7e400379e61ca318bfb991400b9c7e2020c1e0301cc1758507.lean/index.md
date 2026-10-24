# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Bounds.Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fccd6ce38c5a3fa54d9987f1d899a126fc157fc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fccd6ce38c5a3fa54d9987f1d899a126fc157fc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.JacobiTheta.TwoVariable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isBigO_exp_neg_mul_of_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/isbigo-exp-neg-mul-of-le--de422ffb30c601a01cf9302d.md) | 53 | `result-track:de422ffb30c601a01cf9302d2a29241877f3e5edfb050ca34d65872b19b85a4d` |
| 2 | `lemma` | [exp_lt_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/exp-lt-aux--5e997f6344d5fbb723533ff7.md) | 59 | `result-track:5e997f6344d5fbb723533ff7dbc47ea606199c9e96100396d6a8b1ae12f2f140` |
| 3 | `lemma` | [isBigO_one_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/isbigo-one-aux--b945291efc7190b02850af4e.md) | 62 | `result-track:b945291efc7190b02850af4ed5998c79cf11749f10eb0aa1ac6a26790e156c32` |
| 4 | `def` | [f_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-nat--c3188e52580cc87a98c92e02.md) | 74 | `declaration-track:c3188e52580cc87a98c92e029825944a9c52f37ac6a72f1b0099da7cf9d22ff5` |
| 5 | `def` | [g_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/g-nat--70ffcfd1364e6766f47479ee.md) | 77 | `declaration-track:70ffcfd1364e6766f47479eed597af6644a3e82cfc9a48e343f9cb8702420ad8` |
| 6 | `lemma` | [f_le_g_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-le-g-nat--adb6b77c75c7e281f63fcad1.md) | 79 | `result-track:adb6b77c75c7e281f63fcad1adc49413c072ec5d9cda5c0ac88b0233ba8ab5bc` |
| 7 | `def` | [F_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-nat--c9c0ce2d098ae2ddfbb7743f.md) | 91 | `declaration-track:c9c0ce2d098ae2ddfbb7743f00c1c76de12dce798fff9e566e12cfa8efefc92f` |
| 8 | `lemma` | [summable_f_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/summable-f-nat--403e13d659e8c0df8a424d51.md) | 93 | `result-track:403e13d659e8c0df8a424d5183847bf44e8579fdd5b42e62891ef4221fea572e` |
| 9 | `lemma` | [F_nat_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-nat-zero-le--d567d1df987bc2b0751d8153.md) | 121 | `result-track:d567d1df987bc2b0751d81539627bcb84579459987d855443b52bb829a921452` |
| 10 | `lemma` | [F_nat_zero_zero_sub_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-nat-zero-zero-sub-le--3e95a1722db984707223007b.md) | 130 | `result-track:3e95a1722db984707223007b5b1a693ec80386b8237cf8b9a8a97163bcaf4c85` |
| 11 | `lemma` | [isBigO_atTop_F_nat_zero_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/isbigo-attop-f-nat-zero-sub--7a25c12b1fb5fe50bdf75a64.md) | 138 | `result-track:7a25c12b1fb5fe50bdf75a64b8beec458bb11ecba7e33521d137a28fd1c0c0c3` |
| 12 | `lemma` | [F_nat_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-nat-one-le--3f94d93ef68d37c3fb49885a.md) | 166 | `result-track:3f94d93ef68d37c3fb49885adfa085ac9166d439f26f19573f6480c1e1e41129` |
| 13 | `lemma` | [isBigO_atTop_F_nat_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/isbigo-attop-f-nat-one--fdd9ce2f8fb28b0eb636e9d3.md) | 185 | `result-track:fdd9ce2f8fb28b0eb636e9d3f0f988e4f4e070173bd87a4c50df7f7d5bcd0a72` |
| 14 | `def` | [f_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-int--b94d823fd4c475dcf60d6296.md) | 215 | `declaration-track:b94d823fd4c475dcf60d6296fec0f64207c4eb353c9a5c5dd963b2c0dbaa3b74` |
| 15 | `lemma` | [f_int_ofNat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-int-ofnat--82f40969995726aeffc71b20.md) | 217 | `result-track:82f40969995726aeffc71b2097c323e0b328e7079b53d5f3260905706d8b7453` |
| 16 | `lemma` | [f_int_negSucc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-int-negsucc--c8a079795525eedf29f1e0b4.md) | 221 | `result-track:c8a079795525eedf29f1e0b42df2ac40a1145c016408f935d3e7fecb2846e8f9` |
| 17 | `lemma` | [summable_f_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/summable-f-int--0d7dbe5aab0b095d9b51a582.md) | 226 | `result-track:0d7dbe5aab0b095d9b51a5827583706304118674befbdf3c792c939e6a446921` |
| 18 | `def` | [F_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-int--8ad1f341a5ca22838162b196.md) | 239 | `declaration-track:8ad1f341a5ca22838162b196e9cccb71f5e07c1667f8e191e5d91a8d1ac40f92` |
| 19 | `lemma` | [F_int_eq_of_mem_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/f-int-eq-of-mem-icc--15356a50ed37e1fddaef3f94.md) | 246 | `result-track:15356a50ed37e1fddaef3f94bd2bfe1c20c478a7b4b59fcff3ef665202899a27` |
| 20 | `lemma` | [isBigO_atTop_F_int_zero_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/isbigo-attop-f-int-zero-sub--fb0f561bfd93430f2184d3fa.md) | 255 | `result-track:fb0f561bfd93430f2184d3faa9e4417932b407b89b4e814f5a9014547c96d77d` |
| 21 | `lemma` | [isBigO_atTop_F_int_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/declarations/isbigo-attop-f-int-one--bbe8adbb09fa02b8333ffabe.md) | 272 | `result-track:bbe8adbb09fa02b8333ffabe32e37ae60a9cfec141878fbc8d6ab649df2332f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
