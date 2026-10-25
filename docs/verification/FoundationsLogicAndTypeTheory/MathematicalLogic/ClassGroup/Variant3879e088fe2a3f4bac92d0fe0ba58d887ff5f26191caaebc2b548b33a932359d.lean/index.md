# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ClassGroup.Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f9e1fb661d6034f3f85281fb550d5cc66e25ce8",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f9e1fb661d6034f3f85281fb550d5cc66e25ce8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_toPrincipalIdeal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/coe-toprincipalideal--b03ceb41277040d1d8fcf941.md) | 73 | `result-track:b03ceb41277040d1d8fcf941b54c406dd64806e1d3142b76a2d0bdbd3f0de163` |
| 2 | `theorem` | [toPrincipalIdeal_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/toprincipalideal-eq-iff--4329bd6438b183c2c7395914.md) | 79 | `result-track:4329bd6438b183c2c739591421af126265e2e76b9369cac84d0033cfd6b9ee8b` |
| 3 | `theorem` | [mem_principal_ideals_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/mem-principal-ideals-iff--92185405cffb902d82f038d7.md) | 84 | `result-track:92185405cffb902d82f038d7501b4fc90e7ba53846af5eb6fa2e687ad8ceb277` |
| 4 | `instance` | [PrincipalIdeals.normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/principalideals-normal--8db78167829bc19572325df7.md) | 94 | `declaration-track:8db78167829bc19572325df7762c6631681cdde2347e43e770a7ec4b25348159` |
| 5 | `def` | [ClassGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup--b90d08c501111c2c25fa55e1.md) | 106 | `declaration-track:b90d08c501111c2c25fa55e1e456cc11e84c739103885b7b0e366493ec968ca0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/instance--de31a0e8d1017eae147d5951.md) | 110 | `declaration-track:de31a0e8d1017eae147d5951f911bdefcfa1f097f611904ad62b59603c2f700b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/instance--9f80852458c8b14c41b3d9d3.md) | 113 | `declaration-track:9f80852458c8b14c41b3d9d3f5290f5bd685e3613724bda0cc58febc99d4ce30` |
| 8 | `def` | [ClassGroup.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk--c6990e327198db49194ea2a9.md) | 118 | `declaration-track:c6990e327198db49194ea2a929c12a4fa18b06c318d15142f71d536dd66508ae` |
| 9 | `theorem` | [ClassGroup.Quot_mk_eq_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-quot-mk-eq-mk--4c9af700ee4d735379c41d20.md) | 124 | `result-track:4c9af700ee4d735379c41d200de1a2c6437c38476da66fef49684ab22101cbd8` |
| 10 | `theorem` | [ClassGroup.mk_eq_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk-eq-mk--c3add39857f423e3a2cd1f23.md) | 130 | `result-track:c3add39857f423e3a2cd1f232f2db32f8ad4cc8f8cb7d7ed391627020c2e645a` |
| 11 | `theorem` | [ClassGroup.mk_eq_mk_of_coe_ideal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk-eq-mk-of-coe-ideal--acedeeb0fc51646629160ca0.md) | 137 | `result-track:acedeeb0fc51646629160ca0013176a01869d0d2349ac73d9c58a453864de551` |
| 12 | `theorem` | [ClassGroup.mk_eq_one_of_coe_ideal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk-eq-one-of-coe-ideal--ff2db6a58d31b348ab9bc8a4.md) | 158 | `result-track:ff2db6a58d31b348ab9bc8a43482f3512f2bf82b37d3e1528b75967859c6b2b3` |
| 13 | `theorem` | [ClassGroup.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-induction--18b862ee8ea40cdb3f47af45.md) | 181 | `result-track:18b862ee8ea40cdb3f47af455871aaf7115fb93a7edd56a88aae416b8718edb2` |
| 14 | `def` | [ClassGroup.equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-equiv--289da0331f375ed7a17733aa.md) | 192 | `declaration-track:289da0331f375ed7a17733aaad6e29a7dadc2a5f6234f752d1d63c7813fa0b6e` |
| 15 | `theorem` | [ClassGroup.equiv_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-equiv-mk--1f263d90923a391985dac7e6.md) | 220 | `result-track:1f263d90923a391985dac7e61663302b56ebce9a930e693157ff68ed74a2aaf3` |
| 16 | `theorem` | [ClassGroup.mk_canonicalEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk-canonicalequiv--5e4501399582382eb47cca44.md) | 231 | `result-track:5e4501399582382eb47cca44e7f09ab93360b15aa814a3d4d1924e3a326b6c28` |
| 17 | `def` | [FractionalIdeal.mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/fractionalideal-mk0--5511fa42bf686e07d1b4c347.md) | 241 | `declaration-track:5511fa42bf686e07d1b4c34703ceac17b7ad5ecd009111d6fd0d91df3c892d95` |
| 18 | `theorem` | [FractionalIdeal.coe_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/fractionalideal-coe-mk0--6faf7d7c1c687bb866d5fc82.md) | 249 | `result-track:6faf7d7c1c687bb866d5fc82148c8f18ccfcc4eda825d577610d439fbf647afd` |
| 19 | `theorem` | [FractionalIdeal.canonicalEquiv_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/fractionalideal-canonicalequiv-mk0--343d8ce2312301c7002e1d70.md) | 253 | `result-track:343d8ce2312301c7002e1d70388a4fc98307659b36d6b5bfa9fb0cd64050a123` |
| 20 | `theorem` | [FractionalIdeal.map_canonicalEquiv_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/fractionalideal-map-canonicalequiv-mk0--e18ada98c778cc035b23a743.md) | 260 | `result-track:e18ada98c778cc035b23a74333f8f5fe89052a1c3a21723bbe530aecdb7b1f72` |
| 21 | `def` | [ClassGroup.mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk0--733b0ac2a51cf7d9dee700f8.md) | 268 | `declaration-track:733b0ac2a51cf7d9dee700f87390069ffaa2a745c285fc1ccae16dc6f22d6ad9` |
| 22 | `theorem` | [ClassGroup.mk_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk-mk0--0134030c1a5987e2fba54d5c.md) | 273 | `result-track:0134030c1a5987e2fba54d5cf0ec4ddb23c2d308649822c90d43dc4687beff7c` |
| 23 | `theorem` | [ClassGroup.equiv_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-equiv-mk0--33fa0d5b49c51ea67186873d.md) | 280 | `result-track:33fa0d5b49c51ea67186873d906aa2fa68aad0f815f6473d4fc6133a3d2cb128` |
| 24 | `theorem` | [ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk0-eq-mk0-iff-exists-fraction-ring--9efd5f3e1e2279551df60c65.md) | 288 | `result-track:9efd5f3e1e2279551df60c650c58d0a35c395281db76584d17117cfc9776d542` |
| 25 | `theorem` | [ClassGroup.mk0_eq_mk0_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk0-eq-mk0-iff--6982f16da0d9aa4e6b8d2109.md) | 306 | `result-track:6982f16da0d9aa4e6b8d2109a5c8222f3771b437ac04ceaeeecbdc5a31985c47` |
| 26 | `def` | [ClassGroup.integralRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-integralrep--7c122cc4705c8b41804aabb4.md) | 327 | `declaration-track:7c122cc4705c8b41804aabb4bc392db3376f73c433e620940bfd9e95d9debf18` |
| 27 | `theorem` | [ClassGroup.integralRep_mem_nonZeroDivisors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-integralrep-mem-nonzerodivisors--049cafb00884055db1c7b22d.md) | 345 | `result-track:049cafb00884055db1c7b22d64953366b683a3587e7294eb207939518a44c3bc` |
| 28 | `theorem` | [ClassGroup.mk0_integralRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk0-integralrep--88af959fd3f98658acbf300f.md) | 359 | `result-track:88af959fd3f98658acbf300f4f5b335000ceeeccf76ab8bc18ba9c209dd576fb` |
| 29 | `theorem` | [ClassGroup.mk0_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk0-surjective--42037da1f7cd00c03bb12db0.md) | 392 | `result-track:42037da1f7cd00c03bb12db05d279dda011e0f1139fd5965424347c236c50474` |
| 30 | `theorem` | [ClassGroup.mk_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk-eq-one-iff--781452e5e07ae32795e0a1e5.md) | 399 | `result-track:781452e5e07ae32795e0a1e5aced1985604811c7597492b75f70feae2fbf2245` |
| 31 | `theorem` | [ClassGroup.mk0_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/classgroup-mk0-eq-one-iff--5733a53ef360e77a507d186a.md) | 416 | `result-track:5733a53ef360e77a507d186a3a5dd0224f62da8436a1ef258c9983de0d0bfc93` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/instance--40589f43bd026606e37e9a6f.md) | 426 | `declaration-track:40589f43bd026606e37e9a6f9e830dce16d7d53c35bd288898730b3ff9d3a1c2` |
| 33 | `theorem` | [card_classGroup_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/card-classgroup-eq-one--11e0943e9d5cc904f33cd418.md) | 434 | `result-track:11e0943e9d5cc904f33cd418c36dc6d24069837514c80221fb1dacf7453203b5` |
| 34 | `theorem` | [card_classGroup_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/declarations/card-classgroup-eq-one-iff--da0d8a1ef971e3aaa68342d0.md) | 442 | `result-track:da0d8a1ef971e3aaa68342d08da9c65ec7e6b3c2ce808062ce62ed566a5214af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
