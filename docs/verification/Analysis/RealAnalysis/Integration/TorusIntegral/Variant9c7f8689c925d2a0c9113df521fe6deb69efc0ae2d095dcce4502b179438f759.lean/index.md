# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TorusIntegral.Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02860db94b2dec66df69cc4863a6c9f592bf5e0f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02860db94b2dec66df69cc4863a6c9f592bf5e0f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/macro-rules--2f33dbc652290204a92cace9.md) | 72 | `declaration-track:2f33dbc652290204a92cace9a28b7549a3769a43c19c98c76cd5ad6a0655dcee` |
| 2 | `def` | [torusMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusmap--c286637e8e36ee870999986c.md) | 81 | `declaration-track:c286637e8e36ee870999986c379e87d538e06574b7ce02a23f615db4cbee7b73` |
| 3 | `theorem` | [torusMap_sub_center](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusmap-sub-center--0f2d35cff388f2c63747b144.md) | 83 | `result-track:0f2d35cff388f2c63747b14499b7f3a81e0b3f4c8a37c17d81be72a3b563dcf6` |
| 4 | `theorem` | [torusMap_eq_center_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusmap-eq-center-iff--f34704f86e7aeb60d5da1a3a.md) | 86 | `result-track:f34704f86e7aeb60d5da1a3a265446eb546cd4ffbe1720e53acb0f47558d8c02` |
| 5 | `theorem` | [torusMap_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusmap-zero-radius--623ea244e1bb60c21905bd21.md) | 90 | `result-track:623ea244e1bb60c21905bd219e2d70814ee13b6fc1ca5dae47a66e1b2d46c8b6` |
| 6 | `def` | [TorusIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegrable--49361ef49e4f6abbd7e11ffa.md) | 99 | `declaration-track:49361ef49e4f6abbd7e11ffa9bc1330a4996bef50ef685dbf7c7489f23b0b164` |
| 7 | `theorem` | [torusIntegrable_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegrable-const--bf04ace32edf3dc553cf5310.md) | 107 | `result-track:bf04ace32edf3dc553cf5310578ed4cfaf7fca631d999bb040199ab06c160aeb` |
| 8 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/neg--957e13da061659be2e51b02f.md) | 111 | `result-track:957e13da061659be2e51b02f0b9ea5c7362a71fbb61587f55a5ce68492f79791` |
| 9 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/add--20b4f454456ab6928250ab1d.md) | 114 | `result-track:20b4f454456ab6928250ab1dcb7acd1f0ad08c680b787f3bb93fc61ec58c111a` |
| 10 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/sub--88046a09cbfba2eda5656694.md) | 119 | `result-track:88046a09cbfba2eda5656694522ad9a2f7f60a6622cfb824ac2a2cd4666d8e97` |
| 11 | `theorem` | [torusIntegrable_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegrable-zero-radius--ca085e553e2ca37ec227f81a.md) | 123 | `result-track:ca085e553e2ca37ec227f81ae981687dcf4475eab83a839c0f27853548db9fec` |
| 12 | `theorem` | [function_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/function-integrable--f3e32a21c696685c01b43a08.md) | 128 | `result-track:f3e32a21c696685c01b43a08a7483c9487fbce9d73d41dc4c63ff8b7d7a2d72d` |
| 13 | `def` | [torusIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral--5a40d438677db8cf1a5cf29f.md) | 141 | `declaration-track:5a40d438677db8cf1a5cf29fdc34dabc8ae03e211a091adc8a7b0d8461877fcb` |
| 14 | `theorem` | [torusIntegral_radius_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-radius-zero--8141e8df2ef1678f07e656cc.md) | 147 | `result-track:8141e8df2ef1678f07e656cc2c627e2b1da12cac51e0c3a3133dcc73462ac384` |
| 15 | `theorem` | [torusIntegral_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-neg--0414debc65f721facdfc5e65.md) | 152 | `result-track:0414debc65f721facdfc5e65b1ace9de4a37676bf3653a770bed5d862ea461b1` |
| 16 | `theorem` | [torusIntegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-add--2ecacd1d50bc8d9128690875.md) | 155 | `result-track:2ecacd1d50bc8d91286908757c057ebb08d9a2dfedb46443a6ea7ef21f2b9c9b` |
| 17 | `theorem` | [torusIntegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-sub--bdacf235df02b655d6ef0d02.md) | 160 | `result-track:bdacf235df02b655d6ef0d02197bfa7a26f6106406fc2b84b277cafa375f73c3` |
| 18 | `theorem` | [torusIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-smul--6016abe15aa05d2e22b2ffad.md) | 164 | `result-track:6016abe15aa05d2e22b2ffadac7238166e6354f1946524fa7437f6381a2dd901` |
| 19 | `theorem` | [torusIntegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-const-mul--1a79bebfd67955f506788e70.md) | 168 | `result-track:1a79bebfd67955f506788e7099efed0d5e598a8df88d49c1a2811c959497216c` |
| 20 | `theorem` | [norm_torusIntegral_le_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/norm-torusintegral-le-of-norm-le-const--c04e5a736791e40510e3a061.md) | 174 | `result-track:c04e5a736791e40510e3a061dd3e241b65bd368adddc808b8c929ecd5e16fee1` |
| 21 | `theorem` | [torusIntegral_dim0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-dim0--7048ef3bde5ed3c26174e3a0.md) | 188 | `result-track:7048ef3bde5ed3c26174e3a013e0218b9a30eb2a6cc73471a1f3039e9b7ebea8` |
| 22 | `theorem` | [torusIntegral_dim1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-dim1--e093a2d4613a3e5cdbb87779.md) | 198 | `result-track:e093a2d4613a3e5cdbb87779d7fb4ec0cf220bdfc2bb6b2a838874523dd4b8cf` |
| 23 | `theorem` | [torusIntegral_succAbove](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-succabove--4a4adb1861d772a65739dc3a.md) | 212 | `result-track:4a4adb1861d772a65739dc3a3027294113b7aaa64da90afbddf5dcb641daadb0` |
| 24 | `theorem` | [torusIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/declarations/torusintegral-succ--44b723f5742a5ccd48483823.md) | 237 | `result-track:44b723f5742a5ccd4848382384089e91452df8fe67850677e84d1677138d0a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
