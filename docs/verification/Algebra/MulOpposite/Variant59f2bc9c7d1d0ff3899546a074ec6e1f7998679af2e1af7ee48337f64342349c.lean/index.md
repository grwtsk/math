# Verification target: GRWTSK.Algebra.MulOpposite.Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6439fa2586ca6bb86dcb4928ac95c1640f049c70",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/index.md) · [Full source](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6439fa2586ca6bb86dcb4928ac95c1640f049c70`.

Source path: `GRWTSK/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.MulOpposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op--403c51461ec234ba7ff5ec20.md) | 34 | `declaration-track:403c51461ec234ba7ff5ec201536554520f80179f552f45d836cace9004d65c1` |
| 2 | `theorem` | [mem_op](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/mem-op--a0e6357a8dba146ec9290784.md) | 41 | `result-track:a0e6357a8dba146ec92907848e96dcc6f724f898e22d9c26557cfbd70bf9049b` |
| 3 | `def` | [unop](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop--e90e4f82d79929c3671b633b.md) | 45 | `declaration-track:e90e4f82d79929c3671b633be4c8f57a8b3e7990664ad97a44895729ffcb8441` |
| 4 | `theorem` | [mem_unop](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/mem-unop--e21103a3c4169383a3ee916f.md) | 52 | `result-track:e21103a3c4169383a3ee916fbcee97fd9c586f7dfaf01eca0117e181789ff38e` |
| 5 | `theorem` | [unop_op](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-op--88adfb4549ccd858133b1cb7.md) | 55 | `result-track:88adfb4549ccd858133b1cb7c0d6431a90ee7e8822d921c914b98fa9b3c71c5f` |
| 6 | `theorem` | [op_unop](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-unop--f1da9d975b83d088f201381a.md) | 58 | `result-track:f1da9d975b83d088f201381a130e366c2e483437873a0378411b7f5ccc751098` |
| 7 | `theorem` | [op_le_iff](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-le-iff--412fe9feccf971f952e35ac2.md) | 62 | `result-track:412fe9feccf971f952e35ac291378b4a09ea1fc39b91aecb6fbb0ca14d5d6c22` |
| 8 | `theorem` | [le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/le-op-iff--f7703ea549b38f80f38912bc.md) | 65 | `result-track:f7703ea549b38f80f38912bc7a0c11ef0e97a1445960d4591c10f3ff52d6739e` |
| 9 | `theorem` | [op_le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-le-op-iff--7b7a144f28942abdc7a46bb2.md) | 69 | `result-track:7b7a144f28942abdc7a46bb224df38e838cf9d991000eebf13ffae8a16502664` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-le-unop-iff--5c58bac5c03e228e55132288.md) | 73 | `result-track:5c58bac5c03e228e55132288f573c6e423b66cc6b7a829ba4e9df20e7c0895af` |
| 11 | `def` | [opEquiv](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/opequiv--a8d555759696ab0e1d2cfe5d.md) | 78 | `declaration-track:a8d555759696ab0e1d2cfe5d14f92ebb954509dd81819f4007de97caddcf8023` |
| 12 | `theorem` | [op_bot](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-bot--f2de67a741df778584139817.md) | 86 | `result-track:f2de67a741df778584139817a71b11e29a47bca14c1ca152c79bd9a0fac03344` |
| 13 | `theorem` | [unop_bot](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-bot--78a8778dd27804ba6c6e9252.md) | 89 | `result-track:78a8778dd27804ba6c6e9252ee07606d0a6f92de0f9175b26e7601fdb0f13ac8` |
| 14 | `theorem` | [op_top](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-top--cfe178791a17d1a9e595df3a.md) | 92 | `result-track:cfe178791a17d1a9e595df3aead0cf100197784151c996c3236ab7513fcc4a72` |
| 15 | `theorem` | [unop_top](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-top--0cf44489d22c6cc9bba019d8.md) | 95 | `result-track:0cf44489d22c6cc9bba019d88de0bec240015bb52f43831fc9ad0110b34d14a6` |
| 16 | `theorem` | [op_sup](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-sup--e5d2bcffbe433ad911740d8a.md) | 97 | `result-track:e5d2bcffbe433ad911740d8a4a5c174255dfac0abd16956a34995c39d508140d` |
| 17 | `theorem` | [unop_sup](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-sup--a5052a9fe064b9769a846979.md) | 100 | `result-track:a5052a9fe064b9769a8469795b797c33a31d5f7c4ef72cc723fa7afce3e4eb4d` |
| 18 | `theorem` | [op_inf](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-inf--3ba03752086a015598903901.md) | 103 | `result-track:3ba03752086a015598903901d23068ca9db6a60f747981da45ac02140ee02d1c` |
| 19 | `theorem` | [unop_inf](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-inf--9c31fb17d7cdc4b3700dee89.md) | 105 | `result-track:9c31fb17d7cdc4b3700dee89e112c625b6f2d868f796d24fd3c183770f00016d` |
| 20 | `theorem` | [op_sSup](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-ssup--3ee3d4936ed37effa78d992c.md) | 108 | `result-track:3ee3d4936ed37effa78d992c3ade66f9b594a1baf1ef916c9617d5d76c834f66` |
| 21 | `theorem` | [unop_sSup](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-ssup--6f86881c5dc3d4b23210c2ba.md) | 111 | `result-track:6f86881c5dc3d4b23210c2ba39d2702f988b621b38040e7f936971e95e5f2c80` |
| 22 | `theorem` | [op_sInf](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-sinf--09999119da48da4358b588d6.md) | 114 | `result-track:09999119da48da4358b588d6f9326846e0ea614858054a52a798d62b5e3fea89` |
| 23 | `theorem` | [unop_sInf](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-sinf--86c4f078dfce874b7f2d0a56.md) | 117 | `result-track:86c4f078dfce874b7f2d0a565c4d39ab850612ad10faf24194147277bc90f3a8` |
| 24 | `theorem` | [op_iSup](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-isup--ec7c98fd75569e317a4dcaf8.md) | 120 | `result-track:ec7c98fd75569e317a4dcaf8b737bc6daa28403d721ef1ac0f7a0cede287813c` |
| 25 | `theorem` | [unop_iSup](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-isup--72dbe864849baa4d7bc4cae6.md) | 122 | `result-track:72dbe864849baa4d7bc4cae607ec9b5695c8da235967c2bf7da2cc9b6277e4af` |
| 26 | `theorem` | [op_iInf](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-iinf--a51ac101192fab11ef8f0da8.md) | 125 | `result-track:a51ac101192fab11ef8f0da8337a6d951f77c921fcc1bede22e43b02665b937c` |
| 27 | `theorem` | [unop_iInf](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-iinf--2fd1b53bf9096b98362feebc.md) | 127 | `result-track:2fd1b53bf9096b98362feebc1e381c33cb0dd1786b22fad8db5b51c18d3f05f1` |
| 28 | `theorem` | [op_adjoin](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-adjoin--a3128f6fde716be45a160945.md) | 130 | `result-track:a3128f6fde716be45a1609457f9a1f6944a2d4a56fc6cce607e53663caaf625f` |
| 29 | `theorem` | [unop_adjoin](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-adjoin--046551d450cac85ca1d4da4b.md) | 139 | `result-track:046551d450cac85ca1d4da4bbabec695fdc341d7bd770e653e8f37bb0e7991ae` |
| 30 | `def` | [linearEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/linearequivop--b91c6a09b745c45a29e45e28.md) | 148 | `declaration-track:b91c6a09b745c45a29e45e28dc57991786b52ac2204c0be46613ece1fb99693c` |
| 31 | `def` | [algEquivOpMop](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/algequivopmop--a409ac7dc9047fcd08bceea4.md) | 154 | `declaration-track:a409ac7dc9047fcd08bceea469354edf87167817920fb9f3b909cfb00128b6c6` |
| 32 | `def` | [mopAlgEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/mopalgequivop--8e2ce1582a2285d35a80117a.md) | 160 | `declaration-track:8e2ce1582a2285d35a80117a009eca4658f6e403058ef89a8b2b7a58d135ef69` |
| 33 | `theorem` | [op_toSubring](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/op-tosubring--ab9a88e18c213f5797cdd395.md) | 171 | `result-track:ab9a88e18c213f5797cdd3956dec4e78ab980b3b072e779444d11c22f45caf7e` |
| 34 | `theorem` | [unop_toSubring](../../../../mathematics/Algebra/MulOpposite/Variant59f2bc9c7d1d0ff3899546a074ec6e1f7998679af2e1af7ee48337f64342349c.lean/declarations/unop-tosubring--0316ac3d72c73a021fdf1a6e.md) | 174 | `result-track:0316ac3d72c73a021fdf1a6ef699e0dc84624140760f69e08d55cc2722d9eb89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
