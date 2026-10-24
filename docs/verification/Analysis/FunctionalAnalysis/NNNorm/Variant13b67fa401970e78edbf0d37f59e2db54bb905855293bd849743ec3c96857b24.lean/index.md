# Verification target: GRWTSK.Analysis.FunctionalAnalysis.NNNorm.Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0b403cdc18734daf3436da63205a20f3e03e93",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0b403cdc18734daf3436da63205a20f3e03e93`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean.json)

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
| 1 | `theorem` | [nnnorm_def](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/nnnorm-def--246bf0f8c960c70e6ce8a0ba.md) | 39 | `result-track:246bf0f8c960c70e6ce8a0ba6de57784126ecd0452a8775d1cea84c57109848f` |
| 2 | `theorem` | [opNNNorm_subsingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-subsingleton--077a09117d82726bce3d3af7.md) | 46 | `result-track:077a09117d82726bce3d3af717d27e170d17bf4bd845ed0ed001dfd02c510500` |
| 3 | `theorem` | [opNNNorm_le_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-le-bound--eaa4e7b273c7d58bd131b154.md) | 50 | `result-track:eaa4e7b273c7d58bd131b154561e472ef6befd76562a9ac3278c137646b4a86f` |
| 4 | `theorem` | [opNNNorm_le_bound'](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-le-bound--b338298e85f4ed39d99f0097.md) | 54 | `result-track:b338298e85f4ed39d99f0097c2ae4dc35156e25e6920fde17244f081e0a3b3b2` |
| 5 | `theorem` | [opNNNorm_le_of_unit_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-le-of-unit-nnnorm--f5bf02f8e403b4fc59cc51e1.md) | 60 | `result-track:f5bf02f8e403b4fc59cc51e153a277a37f5ce62047e0685e8ae54593fe19e8f9` |
| 6 | `theorem` | [opNNNorm_le_of_lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-le-of-lipschitz--720069bb18e6ee4c2942ea8b.md) | 64 | `result-track:720069bb18e6ee4c2942ea8bf3ac568397a985d8420b40a45cc69bacc0a77b9d` |
| 7 | `theorem` | [opNNNorm_eq_of_bounds](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-eq-of-bounds--61eaec8f8e055f27567a890e.md) | 68 | `result-track:61eaec8f8e055f27567a890ef89ddfec490d735616d126abb3923086d30a58d9` |
| 8 | `theorem` | [opNNNorm_le_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-le-iff--21f56679415b31cbe6bdf34b.md) | 72 | `result-track:21f56679415b31cbe6bdf34b491895f3ff3f5c6d823d994a284f4899520ff92c` |
| 9 | `theorem` | [isLeast_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/isleast-opnnnorm--4848e8f138763ae6f3be8b1b.md) | 75 | `result-track:4848e8f138763ae6f3be8b1bffd8d077d769e537cddfc6c9f669acb2eb75303c` |
| 10 | `theorem` | [opNNNorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/opnnnorm-comp-le--3353b83293d7564e18864d08.md) | 78 | `result-track:3353b83293d7564e18864d088c87c9c9a963739ec63e35eb4525328d09afa69e` |
| 11 | `lemma` | [opENorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/openorm-comp-le--1e32a303e75b0dbcd94fa1f3.md) | 81 | `result-track:1e32a303e75b0dbcd94fa1f3916808b2f5f0ea9071df97da34213628dac71e28` |
| 12 | `theorem` | [le_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/le-opnnnorm--759a01061981cc5cf24e2733.md) | 84 | `result-track:759a01061981cc5cf24e2733a43a36aa9526c012863b0bfc8756531f793e165e` |
| 13 | `lemma` | [le_opENorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/le-openorm--07ef75e73bd10b277d57bf5a.md) | 87 | `result-track:07ef75e73bd10b277d57bf5aeb2d5987ae8b262fd354fa84afdf7caf465cc068` |
| 14 | `theorem` | [opENorm_le_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/openorm-le-bound--e57ac2f507ef21fd9a6249d4.md) | 93 | `result-track:e57ac2f507ef21fd9a6249d46b538cd021bf836aa5a758c8ae921d62ee56c508` |
| 15 | `theorem` | [le_of_opENorm_le_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/le-of-openorm-le-of-le--47fe81ea235e22847c3d160d.md) | 104 | `result-track:47fe81ea235e22847c3d160d95a35c5c3910821f4d7dae3dafb76cc14ab4ee38` |
| 16 | `theorem` | [le_opENorm_of_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/le-openorm-of-le--350896dde3a7a58e6d4c76e4.md) | 108 | `result-track:350896dde3a7a58e6d4c76e4381bb89a8e2f033be9ad05c34bda675f3d3b335a` |
| 17 | `theorem` | [le_of_opENorm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/le-of-openorm-le--9176380b87b8bb2afc45f367.md) | 111 | `result-track:9176380b87b8bb2afc45f3671bd0a1401ae8499d1d374cf431969a8bd5836603` |
| 18 | `theorem` | [opENorm_le_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/openorm-le-iff--dac6199ba8849171a5c90c81.md) | 114 | `result-track:dac6199ba8849171a5c90c81ec4521fd82c96557de611f44fa78f750b9336ce4` |
| 19 | `theorem` | [nndist_le_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/nndist-le-opnnnorm--6e8836f8faa2e8ebedfa9631.md) | 118 | `result-track:6e8836f8faa2e8ebedfa963127ab7d2222248bbc847fe0e6e7b2cbfb6d5b8618` |
| 20 | `theorem` | [lipschitzWith](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/lipschitzwith--e4e9354f9f68ce4802264dc5.md) | 122 | `result-track:e4e9354f9f68ce4802264dc545f000ccca6a36d5ba434f6e28fcf525d97d018b` |
| 21 | `theorem` | [lipschitzWith_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/lipschitzwith-apply--808f0c21d7aabe4e525a9c82.md) | 129 | `result-track:808f0c21d7aabe4e525a9c82030364abbca2146341f07fd73f6f7294e5c03dab` |
| 22 | `theorem` | [exists_mul_lt_apply_of_lt_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/exists-mul-lt-apply-of-lt-opnnnorm--080a798dbd8f3d118b383834.md) | 135 | `result-track:080a798dbd8f3d118b38383415043751f3c5a25cf04810628af51df2efec4ab6` |
| 23 | `theorem` | [exists_mul_lt_of_lt_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/exists-mul-lt-of-lt-opnorm--e22532d3a06611ef145c74d2.md) | 141 | `result-track:e22532d3a06611ef145c74d27dea3fa10a7675c1e609eee3fa3a435225ec1838` |
| 24 | `theorem` | [lipschitzWith](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/lipschitzwith--1cfbf8b14a2fa5e24cc9bbb3.md) | 151 | `result-track:1cfbf8b14a2fa5e24cc9bbb335ca6fc80f7ac48802e6526d5d10d1adb3f0467f` |
| 25 | `theorem` | [exists_lt_apply_of_lt_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/exists-lt-apply-of-lt-opnnnorm--6cb91c357b7a7e26223d26fc.md) | 167 | `result-track:6cb91c357b7a7e26223d26fc744f4f0c815cc754ec079fd30a4502e451846026` |
| 26 | `theorem` | [exists_lt_apply_of_lt_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/exists-lt-apply-of-lt-opnorm--0727ae3a2c4a853b0b094cac.md) | 181 | `result-track:0727ae3a2c4a853b0b094cac8c1724bf4460fa418ded14f5cc455dbf382086be` |
| 27 | `theorem` | [sSup_unit_ball_eq_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/ssup-unit-ball-eq-nnnorm--be1157d8a13756401aae9338.md) | 188 | `result-track:be1157d8a13756401aae9338b33de754439b99f6c4a8818b0397a16c84dfb09a` |
| 28 | `theorem` | [sSup_unit_ball_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/ssup-unit-ball-eq-norm--dccfdf9f2d4a861691cb7159.md) | 197 | `result-track:dccfdf9f2d4a861691cb71599fc649031b9f0b4b1f5973799302583878c3d87f` |
| 29 | `theorem` | [sSup_unitClosedBall_eq_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/ssup-unitclosedball-eq-nnnorm--bcb49282c937099b403fd5b2.md) | 201 | `result-track:bcb49282c937099b403fd5b2632a896f2b134b053d09b933af2a7cae55366b11` |
| 30 | `theorem` | [sSup_unitClosedBall_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/ssup-unitclosedball-eq-norm--3cec38c966d5cf07359aba09.md) | 211 | `result-track:3cec38c966d5cf07359aba09f0cf23033d7e6f8373c66b10b621bfb774c8d0f9` |
| 31 | `theorem` | [exists_nnnorm_eq_one_lt_apply_of_lt_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/exists-nnnorm-eq-one-lt-apply-of-lt-opnnnorm--9138743b4a18c4f4dcbfd286.md) | 216 | `result-track:9138743b4a18c4f4dcbfd2860673b823a2a8db950733cef3403c42864fc882d3` |
| 32 | `theorem` | [sSup_sphere_eq_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/ssup-sphere-eq-nnnorm--e4868e947c31850bf030eacd.md) | 230 | `result-track:e4868e947c31850bf030eacd08d8041302399b393c14fd63aee0c9788ce94f67` |
| 33 | `theorem` | [sSup_sphere_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/declarations/ssup-sphere-eq-norm--976de69cf32cbbbfa19345a6.md) | 244 | `result-track:976de69cf32cbbbfa19345a6c48ff10c1c4bade112234bb2805e00658dd33e48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
