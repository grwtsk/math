# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e75279cfe04dccef17ac40791bdecb79beb47a9",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e75279cfe04dccef17ac40791bdecb79beb47a9`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/instmulaction--983878c048a0319a427d79cd.md) | 41 | `declaration-track:983878c048a0319a427d79cd7a0cf1842bd9563905ca0333dbe034722df46bc8` |
| 2 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/instisscalartower--2c3d259d2ebfbd7702cf6d30.md) | 46 | `declaration-track:2c3d259d2ebfbd7702cf6d30d165e5fe11feff3c0ebbe935234cd892a7c44cba` |
| 3 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/instsmulcommclass--a4a235c00a0da089c2d641dc.md) | 51 | `declaration-track:a4a235c00a0da089c2d641dc34a9661bc0086337d090bc473af6673c65466cc1` |
| 4 | `instance` | [instIsCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/instiscentralscalar--1f43e3186331df4942adb8cd.md) | 56 | `declaration-track:1f43e3186331df4942adb8cdc9cb5e48cc43947fd78bab9d20b2ac93d360add5` |
| 5 | `lemma` | [op_smul_eq_op_smul_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/op-smul-eq-op-smul-op--09c5a41054f28ec48d0e6e18.md) | 61 | `result-track:09c5a41054f28ec48d0e6e1803e6d8e6241bcb8df9a393b1a2a6cc56a9c8225c` |
| 6 | `lemma` | [unop_smul_eq_unop_smul_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/unop-smul-eq-unop-smul-unop--9ed3a38ecaf6c382c54cb488.md) | 65 | `result-track:9ed3a38ecaf6c382c54cb488556e87d3a6fd5cbcbf0a23750f6d0e1cae77b74f` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--6a99f44bae2fd8eb5fc44868.md) | 103 | `declaration-track:6a99f44bae2fd8eb5fc448680cdfbb0ced7165cbf0ec863429e8b293084a02c2` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--5292a99b6c2df18ffee0d052.md) | 104 | `declaration-track:5292a99b6c2df18ffee0d052b38c1771ba179b0ce1a94854c54cda1cdd833a8f` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--835203d65b095fcc2f939fdb.md) | 106 | `declaration-track:835203d65b095fcc2f939fdb78d2200e15f79fbf18cb645f39bfdd1aec36d1f4` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--fe98d1a259e797750db592a8.md) | 107 | `declaration-track:fe98d1a259e797750db592a8c151e7abcefcb8b05f7a0f5d4276807246b0d776` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--b1fa4fd7653e4706b90c176d.md) | 110 | `declaration-track:b1fa4fd7653e4706b90c176d50fb75fa6a5a5024afd91661cd8151e63631c24d` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--e1a38f3210812e8d1170007c.md) | 111 | `declaration-track:e1a38f3210812e8d1170007c95b59f60f82d923f4533911027a9276d5c11b950` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--4fe5042eb2bfd5b46e4fef81.md) | 113 | `declaration-track:4fe5042eb2bfd5b46e4fef812a28bed06639441469058938edecfa97c1283273` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--f09238f814b9c48534e24876.md) | 114 | `declaration-track:f09238f814b9c48534e24876b006e7d1b9be51cc4c332b25091b80a601074e53` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--b518e736c328287fd1bbdf60.md) | 117 | `declaration-track:b518e736c328287fd1bbdf6020434a212cb8b563768a68d3720d2a497c9971f3` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--0b4ef35a9d52e7a502146251.md) | 118 | `declaration-track:0b4ef35a9d52e7a502146251cd4ea19f116b928492c7d403cbdd5d00ee8d97f1` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--6bb3fa3b0f3ec64ec421a252.md) | 120 | `declaration-track:6bb3fa3b0f3ec64ec421a2529a941e5ca1400fa7fa7bd2d84570584d3cce9a05` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--99430e89a7f842038fc0eb86.md) | 121 | `declaration-track:99430e89a7f842038fc0eb860edd3757d8c429d7162cb72bcc13dcfa076050dc` |
| 19 | `lemma` | [op_smul_op_smul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/op-smul-op-smul--1aa3feea020c57077bf4fe05.md) | 132 | `result-track:1aa3feea020c57077bf4fe052d43d7c3f1f982ea5f5912915b5da5ed360e1929` |
| 20 | `lemma` | [op_smul_mul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/op-smul-mul--ee45ec4de394632dbb56d464.md) | 135 | `result-track:ee45ec4de394632dbb56d4647668b48b4e65f0ddce2ae21e6cf7e1bd55c131b3` |
| 21 | `instance` | [Semigroup.opposite_smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/semigroup-opposite-smulcommclass--3b8465855d4bdbbec641d92d.md) | 144 | `declaration-track:3b8465855d4bdbbec641d92d96f4c4ac7c8c6e2e746e7f18b2d294a2e4755194` |
| 22 | `instance` | [Semigroup.opposite_smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/semigroup-opposite-smulcommclass--f70be88019cc502ffd88e281.md) | 148 | `declaration-track:f70be88019cc502ffd88e2815b13d8445e7e1ad8d9afc2ddc5db7d4ce8111419` |
| 23 | `instance` | [CommSemigroup.isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/commsemigroup-iscentralscalar--84a107805f36606b2d99933e.md) | 152 | `declaration-track:84a107805f36606b2d99933e5641cf65ebe468c3b5086e5e5e8ac809638dc2ee` |
| 24 | `instance` | [Monoid.toOppositeMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/monoid-tooppositemulaction--1e2ae2f76337a0cf4dff815d.md) | 157 | `declaration-track:1e2ae2f76337a0cf4dff815d76b429d867df74d17d2346a0c127fbbd2448c1b4` |
| 25 | `instance` | [IsScalarTower.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/isscalartower-opposite-mid--4c5325dedf4efa8cb738bea6.md) | 163 | `declaration-track:4c5325dedf4efa8cb738bea625a48b9bc8600abd62ebbf1fafdf84f41a3d0d9c` |
| 26 | `instance` | [SMulCommClass.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/smulcommclass-opposite-mid--10659ae6c539bd6db5cf8a6c.md) | 168 | `declaration-track:10659ae6c539bd6db5cf8a6c2efc83de03dea059bcab35f38f3f85fa45a208a0` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant29285b44e9d6f2c86f36bb7439064ccf3489a48a5176c3a2487a323bb13a0a73.lean/declarations/example--4802882d2f18b36e0e440110.md) | 176 | `declaration-track:4802882d2f18b36e0e4401109a312d3dcfa1d31f61630b883268ae619804aab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
