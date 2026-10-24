# Verification target: GRWTSK.Algebra.GroupTheory.Group.Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d34163cb2c0892c0caf98a14f52784ed03d662b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d34163cb2c0892c0caf98a14f52784ed03d662b`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean.json)

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
| 1 | `def` | [coeMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coemulhom--ead9d8d4d1fe45e0373a4726.md) | 41 | `declaration-track:ead9d8d4d1fe45e0373a472692ddb6ce21220f4ee1aaed98711fdd96370ceee4` |
| 2 | `theorem` | [coeMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coemulhom-apply--ac6115382ea407e5f3fa6267.md) | 46 | `result-track:ac6115382ea407e5f3fa6267421d7b23e2eaa6eda23e5b109d1a21a84c99adb3` |
| 3 | `theorem` | [coe_coeMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coe-coemulhom--df90326138b17972bcc6c9f9.md) | 49 | `result-track:df90326138b17972bcc6c9f9e72101df7604f9570fbf48983afde3d3c1a65852` |
| 4 | `theorem` | [coeMulHom_injective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coemulhom-injective--9d315fc232845f2f6c5b1788.md) | 52 | `result-track:9d315fc232845f2f6c5b1788578bdcbe4d3a3a99fdcfebc46b6388fad61b9bdc` |
| 5 | `def` | [coeMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coemonoidhom--bf0883fe7392bcc7f801533e.md) | 66 | `declaration-track:bf0883fe7392bcc7f801533e155219f0eb05cb1e35b44dbd5f6089775a9497b1` |
| 6 | `theorem` | [coeMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coemonoidhom-apply--b3ad868a408af9712b411052.md) | 72 | `result-track:b3ad868a408af9712b4110523b32fd93c1ae6e8d47a2309a2be7dbefb6452a16` |
| 7 | `theorem` | [coe_coeMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coe-coemonoidhom--89d9ab63f557f3c37f0a446c.md) | 75 | `result-track:89d9ab63f557f3c37f0a446c4aca2e36fcbfb558f12a9ff58c404d87b5188bde` |
| 8 | `theorem` | [coe_coeMonoidHom'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coe-coemonoidhom--93ec62b20efab8b439ddade6.md) | 78 | `result-track:93ec62b20efab8b439ddade6f44f7db8864f6a5959565c134175adfc2f1a0873` |
| 9 | `theorem` | [coeMonoidHom_injective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/coemonoidhom-injective--da1380b8bffc32461cfad781.md) | 81 | `result-track:da1380b8bffc32461cfad781e676ddc8b4ac8b050dfb286fb7a9a8c513a7c898` |
| 10 | `abbrev` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/semigroup--8507170717819f1cbcd3298a.md) | 96 | `declaration-track:8507170717819f1cbcd3298ab275a01bfe49df50122eb28448bc6fad7da441b2` |
| 11 | `abbrev` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/commsemigroup--9af649fe365751183c8696f5.md) | 103 | `declaration-track:9af649fe365751183c8696f57075ce742816069a4992e7315ae1efc215a6c629` |
| 12 | `theorem` | [isLeftCancelMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/isleftcancelmul--50a1edacfd100bec427fc407.md) | 111 | `result-track:50a1edacfd100bec427fc407c62df8db3c5bffe93af840b81c566f60dcae8030` |
| 13 | `theorem` | [isRightCancelMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/isrightcancelmul--84507d26b28e3911bf17a54f.md) | 119 | `result-track:84507d26b28e3911bf17a54f6ceb1cb4adbdae1e044063e1507ace34f08365ee` |
| 14 | `theorem` | [isCancelMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/iscancelmul--2b700a5d343fdef4b2730b25.md) | 127 | `result-track:2b700a5d343fdef4b2730b25e11a56b5ea32bb88eb58bbbef1d8e1d65b63c44f` |
| 15 | `abbrev` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/leftcancelsemigroup--e6b33b544c278364506b0e60.md) | 135 | `declaration-track:e6b33b544c278364506b0e6061fe0d4c853290ca0c39265a9ea5f66453c707ac` |
| 16 | `abbrev` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/rightcancelsemigroup--5d5af5b283bace7f9a541522.md) | 143 | `declaration-track:5d5af5b283bace7f9a54152219bc4ac8fb5ed4e0fb7f2fd64b9b48257b25a23c` |
| 17 | `abbrev` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/muloneclass--f5790f0c69c2f8780fc4339e.md) | 152 | `declaration-track:f5790f0c69c2f8780fc4339eed4077a1c8d7aa7255b966378433eb6f5f4e03a2` |
| 18 | `abbrev` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/monoid--62fa055a8469d7f55769f083.md) | 162 | `declaration-track:62fa055a8469d7f55769f083644ca0e7d0bb94e715c982dbeef3de06909a8835` |
| 19 | `abbrev` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/leftcancelmonoid--c9c60b481695bb0da9dcdc4b.md) | 170 | `declaration-track:c9c60b481695bb0da9dcdc4b39fd6b65c9849535df65924148ab890ab065bf88` |
| 20 | `abbrev` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/rightcancelmonoid--08913fdb5904b0b22f7c06bc.md) | 179 | `declaration-track:08913fdb5904b0b22f7c06bc287be4292e06bb6db3c8a9235fc34bf5b14e3ccc` |
| 21 | `abbrev` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/cancelmonoid--3be4d2836d27e4d59bc71555.md) | 187 | `declaration-track:3be4d2836d27e4d59bc71555d24bfcf9e324a99de414594d796fff2b7ad5460f` |
| 22 | `abbrev` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/commmonoid--9cd82edf9c6c217d2c53edce.md) | 195 | `declaration-track:9cd82edf9c6c217d2c53edce15d98060e94cdb504a494e7f1f14f1511d529f3c` |
| 23 | `abbrev` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/cancelcommmonoid--9a39c99336b49575151107ae.md) | 204 | `declaration-track:9a39c99336b49575151107aee5256f98df2be3a13daecd927d62f586fd01b739` |
| 24 | `abbrev` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/involutiveinv--b131117a2035fd83724b9887.md) | 214 | `declaration-track:b131117a2035fd83724b98870f1213187895d0e07592137a3beaa9c808471d2b` |
| 25 | `abbrev` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/invoneclass--cf75ebf8f24d044fc145140d.md) | 220 | `declaration-track:cf75ebf8f24d044fc145140d29819c72b321f42a31cd8843216a9f4f8c25ae33` |
| 26 | `abbrev` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/divinvmonoid--b10bf91237cb5b69d72eeefc.md) | 228 | `declaration-track:b10bf91237cb5b69d72eeefcce69982ad946d4ca7ef628a879102b30826fe5be` |
| 27 | `abbrev` | [divInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/divinvonemonoid--4356f162782bb5689f08c8a3.md) | 237 | `declaration-track:4356f162782bb5689f08c8a3e24f7f37614951fe769c3da8bacc69567041d842` |
| 28 | `abbrev` | [divisionMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/divisionmonoid--7fa5d2ead03edd1c76567dde.md) | 245 | `declaration-track:7fa5d2ead03edd1c76567ddeb96e79e38b07b47433b6ed4c9827b917b2a32e29` |
| 29 | `abbrev` | [divisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/divisioncommmonoid--e605382d8d90443d17f74ecc.md) | 254 | `declaration-track:e605382d8d90443d17f74eccf70142c64ae25f5738cbebb0c9692f3e11e1cc8b` |
| 30 | `abbrev` | [group](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/group--196b971e911764ef1abed377.md) | 262 | `declaration-track:196b971e911764ef1abed3774966dd645b3cacbfb871f7e92af10fa83724d3b2` |
| 31 | `abbrev` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/commgroup--bf16ae122c289a5dbace4f04.md) | 271 | `declaration-track:bf16ae122c289a5dbace4f0486638fce1e050f9063195ad12f156329ed4f02c1` |
| 32 | `theorem` | [isMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/declarations/ismultorsionfree--6b913a4516a6a33542929c2d.md) | 284 | `result-track:6b913a4516a6a33542929c2de551eaacb225f8b781a7356bb9bd5276dfa21861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
