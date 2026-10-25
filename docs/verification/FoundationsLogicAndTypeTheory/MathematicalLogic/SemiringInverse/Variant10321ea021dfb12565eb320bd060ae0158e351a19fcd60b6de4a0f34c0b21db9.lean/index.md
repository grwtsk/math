# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemiringInverse.Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f6835dd606cf2b44811bda03edc4644595df1e1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f6835dd606cf2b44811bda03edc4644595df1e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [detp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/detp--2e1e7d67192b71eb8aaada58.md) | 26 | `declaration-track:2e1e7d67192b71eb8aaada58b9e2c98f38486b71aed43cac5deb7405545d1109` |
| 2 | `lemma` | [detp_one_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/detp-one-one--9d7946383c5d11654f402ee3.md) | 29 | `result-track:9d7946383c5d11654f402ee38d24f363501e75ef1f3e2e45c203a40edce6088e` |
| 3 | `lemma` | [detp_neg_one_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/detp-neg-one-one--4bc45c4ec483744a44c8d2eb.md) | 38 | `result-track:4bc45c4ec483744a44c8d2eb50ab76e2d39a87a4b358172145facd514b61a37d` |
| 4 | `def` | [adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/adjp--a60a0c1037303d25b99169e1.md) | 49 | `declaration-track:a60a0c1037303d25b99169e173b4a2ca93c2aaa8856d87f1bf0c2b617dbed5b7` |
| 5 | `lemma` | [adjp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/adjp-apply--4e558f7ca5baab0c1eb2f400.md) | 52 | `result-track:4e558f7ca5baab0c1eb2f4005291ecf51d736125ca33124a7029a538ed55e338` |
| 6 | `theorem` | [detp_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/detp-mul--a6ceeec096bf9e42a0850461.md) | 56 | `result-track:a6ceeec096bf9e42a0850461e63d95bc1e36c5b8226c36c75a84bb8b97cb146d` |
| 7 | `theorem` | [mul_adjp_apply_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/mul-adjp-apply-eq--b3bd2feb36d77fce837c8bd8.md) | 96 | `result-track:b3bd2feb36d77fce837c8bd831555f8608bc1fcd25012b62d69dfe46932adbf5` |
| 8 | `theorem` | [mul_adjp_apply_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/mul-adjp-apply-ne--a46d5d83f740bde12148b679.md) | 103 | `result-track:a46d5d83f740bde12148b679fde9d82bbf961f3385b0ace5447b5690fd58e3f7` |
| 9 | `theorem` | [mul_adjp_add_detp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/mul-adjp-add-detp--c106bfe67df360361b21850a.md) | 131 | `result-track:c106bfe67df360361b21850a5cabb7bf9a59a4e498d4c59e480eccaf6f148391` |
| 10 | `theorem` | [isAddUnit_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/isaddunit-mul--dfd294fbd52f65090e7c97b8.md) | 139 | `result-track:dfd294fbd52f65090e7c97b815a2f669b62f50c19b30fe7f71b7ad5a296d5341` |
| 11 | `theorem` | [isAddUnit_detp_mul_detp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/isaddunit-detp-mul-detp--c98500b2dca6ddfd926caecb.md) | 144 | `result-track:c98500b2dca6ddfd926caecbde95532bae14d52038551e3592a5167b74eaa992` |
| 12 | `theorem` | [isAddUnit_detp_smul_mul_adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/isaddunit-detp-smul-mul-adjp--790cc02562abf2765985c4cc.md) | 161 | `result-track:790cc02562abf2765985c4cc0f42cbdd06ecde829e9e0bb483091caf4dc5f1e0` |
| 13 | `theorem` | [detp_smul_add_adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/detp-smul-add-adjp--8b46faf3dc4f9423e0b2821c.md) | 186 | `result-track:8b46faf3dc4f9423e0b2821cd60163a554bd5a90fac69ea5475c10f2150a8688` |
| 14 | `theorem` | [detp_smul_adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/detp-smul-adjp--ed32a1cb071be7a75963d2f6.md) | 192 | `result-track:ed32a1cb071be7a75963d2f6afc3175f9cf3c69cf90c8e88e226b5c9518fdbba` |
| 15 | `theorem` | [mul_eq_one_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/mul-eq-one-comm--4bf7ec7d4c63d71c3e2383d3.md) | 203 | `result-track:4bf7ec7d4c63d71c3e2383d38da4a65711557710d0a3c5847e424157e46b538a` |
| 16 | `def` | [invertibleOfLeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/invertibleofleftinverse--5a9e990ea39bf195b671ed96.md) | 224 | `declaration-track:5a9e990ea39bf195b671ed96cc154ae38870a0caa691dcdc9227653caf5fa2e5` |
| 17 | `def` | [invertibleOfRightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/invertibleofrightinverse--de2ccb0f93a4b16b405923a5.md) | 228 | `declaration-track:de2ccb0f93a4b16b405923a574b7e50aa06d92d9edaf6a0736813ef1ce04e3c0` |
| 18 | `theorem` | [isUnit_of_left_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/isunit-of-left-inverse--818d456a4d107e3a982dc8a5.md) | 233 | `result-track:818d456a4d107e3a982dc8a5800ee410b941ff02df24ca0d5396ce87aa94b775` |
| 19 | `theorem` | [exists_left_inverse_iff_isUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/exists-left-inverse-iff-isunit--09e8f211bf32f844889ff7c7.md) | 236 | `result-track:09e8f211bf32f844889ff7c7b2fd679412550d45cdf5c7a0cdb112f9121c0ef3` |
| 20 | `theorem` | [isUnit_of_right_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/isunit-of-right-inverse--f8e1bf9f290bb8067a05eb88.md) | 239 | `result-track:f8e1bf9f290bb8067a05eb88ff5768c6753284fa5ab58ea00ea9b468990ea0b3` |
| 21 | `theorem` | [exists_right_inverse_iff_isUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/exists-right-inverse-iff-isunit--4d36340795e1b9f01b6d0693.md) | 242 | `result-track:4d36340795e1b9f01b6d06932756a70b69f584300ec03462fe61c59b0203757d` |
| 22 | `theorem` | [mul_eq_one_comm_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/declarations/mul-eq-one-comm-of-equiv--86fbf2e8408d239f1d56749b.md) | 246 | `result-track:86fbf2e8408d239f1d56749b4a0975cbe3704ecf9ec6864da0d5ad9258dfb7e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
