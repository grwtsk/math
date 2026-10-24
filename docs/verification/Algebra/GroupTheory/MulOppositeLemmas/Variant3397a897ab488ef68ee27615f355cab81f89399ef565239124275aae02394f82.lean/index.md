# Verification target: GRWTSK.Algebra.GroupTheory.MulOppositeLemmas.Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3ece09a1011426750009f13270c7dd55d548c4a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3ece09a1011426750009f13270c7dd55d548c4a`.

Source path: `GRWTSK/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.MulOpposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/instsmul--cd7aca7b220eee8493faef12.md) | 32 | `declaration-track:cd7aca7b220eee8493faef12137e166cc96106fb4482f1e51b038e61a62f7f4c` |
| 2 | `theorem` | [op_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-bot--52f23939a741a933a6e52cf4.md) | 37 | `result-track:52f23939a741a933a6e52cf47befdb208ac3f2316c3df9eea39e6c7080c1bee3` |
| 3 | `theorem` | [op_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-eq-bot--ab842db9e9ffbf978200cbbb.md) | 40 | `result-track:ab842db9e9ffbf978200cbbbb7a8ce1e20439cd5db06005d5c88cc0417d70845` |
| 4 | `theorem` | [unop_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-bot--3f74d2844c226791434645bd.md) | 43 | `result-track:3f74d2844c226791434645bdce8a15267ba9f6821937d6acc0ab709d3eb14754` |
| 5 | `theorem` | [unop_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-eq-bot--6612706fb166b465aea40d94.md) | 46 | `result-track:6612706fb166b465aea40d94d958fd1fc4749e3257dd491c5c85771ecfe31677` |
| 6 | `theorem` | [op_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-top--fbcb02735d11c953d709b7fa.md) | 49 | `result-track:fbcb02735d11c953d709b7fafc91d5510efb1d3fafe77d02ff6f518819ea32bf` |
| 7 | `theorem` | [op_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-eq-top--2c589223e2c0c5e1c1813189.md) | 52 | `result-track:2c589223e2c0c5e1c18131897c79332154757b544a762f5e03a5d44330dfe58a` |
| 8 | `theorem` | [unop_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-top--cf1dad9911d636a844a3a05c.md) | 55 | `result-track:cf1dad9911d636a844a3a05c3fb9bdfeb6731d7dfea4704d353a756ff2e64f82` |
| 9 | `theorem` | [unop_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-eq-top--dee0e2dc7055f23e332c66de.md) | 58 | `result-track:dee0e2dc7055f23e332c66de9ddf068dc79e6e3a4ae77b849ace4d6d732d62b1` |
| 10 | `theorem` | [op_sup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-sup--2ac274aa3474b4251eb02906.md) | 61 | `result-track:2ac274aa3474b4251eb0290613c337f518b7db218a46288b1ca1b09035cbaef1` |
| 11 | `theorem` | [unop_sup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-sup--ac64296c99b5c4bd4decd1ce.md) | 65 | `result-track:ac64296c99b5c4bd4decd1ced17db7b6b2ef70de83096bacafc4eaafcde24dcf` |
| 12 | `theorem` | [op_inf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-inf--6d6ffc0815ff107d7719e7de.md) | 69 | `result-track:6d6ffc0815ff107d7719e7de6ec79ae92edf117b0e28cd0535532e3fb8c4a70b` |
| 13 | `theorem` | [unop_inf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-inf--51d380accd2078dd4220d09e.md) | 72 | `result-track:51d380accd2078dd4220d09ef64d4beeab97c0cb4cb95ee50050f46b316bf2e5` |
| 14 | `theorem` | [op_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-ssup--ac3d584968a893520ccfc6cb.md) | 75 | `result-track:ac3d584968a893520ccfc6cb455123e6b9c7ac01a9c3cd907efd9d3814f9f724` |
| 15 | `theorem` | [unop_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-ssup--4ee5fc52f08e1f8e77253c8d.md) | 79 | `result-track:4ee5fc52f08e1f8e77253c8db74af717d929d922a2ba8e74b7d25f704d08f255` |
| 16 | `theorem` | [op_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-sinf--a6712be1225bd67860a3a1e3.md) | 83 | `result-track:a6712be1225bd67860a3a1e374cb9ad79e13e22839bf16707d42ed61922b49ee` |
| 17 | `theorem` | [unop_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-sinf--2bbd0e782d814eab0894c618.md) | 87 | `result-track:2bbd0e782d814eab0894c618cec59a46f6ab65278a33d3ef0e85b00377c5d5ef` |
| 18 | `theorem` | [op_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-isup--6d6eedfd2130c9d4018fcd23.md) | 91 | `result-track:6d6eedfd2130c9d4018fcd23e9c2249465022862e3e1c5be123882825d378276` |
| 19 | `theorem` | [unop_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-isup--f74a058814f1737406f95f3d.md) | 94 | `result-track:f74a058814f1737406f95f3dbbf545604666a9148a472d92c79f9031b99f3613` |
| 20 | `theorem` | [op_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-iinf--4171677961d09b4d17a7d2b6.md) | 98 | `result-track:4171677961d09b4d17a7d2b6ac310fa9b3b0699bbe3d912991fe1171d45cf215` |
| 21 | `theorem` | [unop_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-iinf--6eb96b5d433576a57feba5f1.md) | 101 | `result-track:6eb96b5d433576a57feba5f11b1b8c97727b977454c7ed69f8ae302ea936a18f` |
| 22 | `theorem` | [op_closure](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-closure--35fbdc18eb0e0808b7ff04bf.md) | 105 | `result-track:35fbdc18eb0e0808b7ff04bf5395bc892661e2f13278515f3b039ff0a9f3338d` |
| 23 | `theorem` | [unop_closure](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-closure--261557685aa146b97dc615f4.md) | 111 | `result-track:261557685aa146b97dc615f40a2bc0f52bb631c3555084efe6b948b5d1788133` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/instance--8113f8e0c7c1c90aee9b8a36.md) | 116 | `declaration-track:8113f8e0c7c1c90aee9b8a36680045e741785ac85049c1be45a7a7db599dc7e5` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/instance--6a9cfc6fab71e6c1a7c77ed5.md) | 120 | `declaration-track:6a9cfc6fab71e6c1a7c77ed51c057c328e2accd68a1cf15cc4991c5134d100a4` |
| 26 | `theorem` | [smul_opposite_mul](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/smul-opposite-mul--f612b354d6f5ed9198a12091.md) | 124 | `result-track:f612b354d6f5ed9198a12091e9cb1aff3c0215f67bda7af0c6ae5708e95fe696` |
| 27 | `theorem` | [normal_op](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/normal-op--f236c48a40f804c867dddc68.md) | 129 | `result-track:f236c48a40f804c867dddc68747024aaf63cd16d86d4a7e8dcb2d8ef5e448a63` |
| 28 | `instance` | [op.instNormal](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/op-instnormal--6a09cf4b5d01bdc107ceca1e.md) | 135 | `declaration-track:6a09cf4b5d01bdc107ceca1e0c80571d997f1c6dec953d4bc02880192864d73a` |
| 29 | `theorem` | [normal_unop](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/normal-unop--79e734304cd98366933b4020.md) | 138 | `result-track:79e734304cd98366933b40202462058aed1b368b1a9b55e771308b14dcb6e38b` |
| 30 | `instance` | [unop.instNormal](../../../../../mathematics/Algebra/GroupTheory/MulOppositeLemmas/Variant3397a897ab488ef68ee27615f355cab81f89399ef565239124275aae02394f82.lean/declarations/unop-instnormal--ff1ede56252ee683c626f625.md) | 144 | `declaration-track:ff1ede56252ee683c626f625a761d1f6945420cc3884931ea0e27adf5954204a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
