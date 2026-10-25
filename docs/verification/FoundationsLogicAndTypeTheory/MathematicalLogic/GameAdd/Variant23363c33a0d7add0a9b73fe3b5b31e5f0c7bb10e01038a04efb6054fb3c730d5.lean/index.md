# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GameAdd.Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "521d50db012fc93ae3c7b01d520a8209649f0891",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `521d50db012fc93ae3c7b01d520a8209649f0891`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sym.Sym2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd--0377bda8dd14a14d157c4d19.md) | 58 | `declaration-track:0377bda8dd14a14d157c4d197aa8601f655e3558086eb8c893bf4df7476cc2a9` |
| 2 | `theorem` | [gameAdd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-iff--7bcfdec7ee3d3ed2c8ea834f.md) | 62 | `result-track:7bcfdec7ee3d3ed2c8ea834f6401ae0842fb9254ca1d2d9af14c6fec73fa7dab` |
| 3 | `theorem` | [gameAdd_mk_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-mk-iff--f3751be1d9c0bc083cbf23b5.md) | 71 | `result-track:f3751be1d9c0bc083cbf23b590c9bec46531f5fb5df69e6c43a602aa110a9c04` |
| 4 | `theorem` | [gameAdd_swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-swap-swap--1d1ec8a40e01b37c4e935a85.md) | 76 | `result-track:1d1ec8a40e01b37c4e935a85b753bd2077b678ae6e8bf7aa933b485f55dd9025` |
| 5 | `theorem` | [gameAdd_swap_swap_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-swap-swap-mk--9c5d3f50a7c08da0716561f1.md) | 79 | `result-track:9c5d3f50a7c08da0716561f12ca4f02c9940a50e8c1167d083d3ed4cdadff2ab` |
| 6 | `theorem` | [gameAdd_le_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-le-lex--ad8e3a6337f932308dc4c62d.md) | 84 | `result-track:ad8e3a6337f932308dc4c62dcd7383473e15cd2c528b663e41e9b8a85437ee2f` |
| 7 | `theorem` | [rprod_le_transGen_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/rprod-le-transgen-gameadd--44cbcb613672c382e69b2309.md) | 88 | `result-track:44cbcb613672c382e69b23096385b7b7c8f4d036ab68f7c6ca12715d2a01e175` |
| 8 | `theorem` | [Acc.prod_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/acc-prod-gameadd--6bee3a74fa765144a16d9259.md) | 98 | `result-track:6bee3a74fa765144a16d92595552da4ca9de5aea6be4f4b7ad2dda91ad336d3f` |
| 9 | `theorem` | [WellFounded.prod_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/wellfounded-prod-gameadd--2dd7d2dab9c1897a6cd7d5b6.md) | 109 | `result-track:2dd7d2dab9c1897a6cd7d5b61b616519ebc397814835f7b9e482bf0c9cc04fd5` |
| 10 | `def` | [GameAdd.fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-fix--94347567298ae5cf44d695f4.md) | 117 | `declaration-track:94347567298ae5cf44d695f442f562c244f8055f5c4bbb77146e051b53d6233f` |
| 11 | `theorem` | [GameAdd.fix_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-fix-eq--d2b0c7919699461810ac713b.md) | 123 | `result-track:d2b0c7919699461810ac713bfed1cdbe47e3f1c13d1a32614bf15930bef38a42` |
| 12 | `theorem` | [GameAdd.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-induction--4e456cd9b4c91bdfe1e7bc1c.md) | 130 | `result-track:4e456cd9b4c91bdfe1e7bc1c32c741c693ce4670d3b5dc8827f4966751bead76` |
| 13 | `def` | [GameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd--445e623a7074dbd1c9c864ac.md) | 146 | `declaration-track:445e623a7074dbd1c9c864acfd8ea8708bc3084b8dc18ada1e7c6d873d8e849e` |
| 14 | `theorem` | [gameAdd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-iff--8e76a92b3f3c83cb39069978.md) | 154 | `result-track:8e76a92b3f3c83cb390699789949eae54356645ae1b97fefc6e6754b477c5ee6` |
| 15 | `theorem` | [gameAdd_mk'_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-mk-iff--b2fc8366bc889621edfa424d.md) | 159 | `result-track:b2fc8366bc889621edfa424d1af5da2f214c6ec2cee3e773e695098ea590a9ec` |
| 16 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GameAdd.Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.Prod.GameAdd.to_sym2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-gameadd-vari--2786e99686cfeb836ed58e41.md) | 164 | `result-track:2786e99686cfeb836ed58e4141897aa1e0995a698f52634c9ee3b0793d269bb5` |
| 17 | `theorem` | [GameAdd.fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-fst--341e83f364faf6040bf8cd5a.md) | 168 | `result-track:341e83f364faf6040bf8cd5a115f817c4b08ba3a2c758a80242fdef1bf3cafc2` |
| 18 | `theorem` | [GameAdd.snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-snd--31c264e2cdfdc18f5ec91ed1.md) | 171 | `result-track:31c264e2cdfdc18f5ec91ed1ff6fa5de658f280a4107a99b4d55dc41bbaf120e` |
| 19 | `theorem` | [GameAdd.fst_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-fst-snd--f26e25fbd5cd18e86f839678.md) | 174 | `result-track:f26e25fbd5cd18e86f839678952621fc484843f5251871aabe1ef16907767fe6` |
| 20 | `theorem` | [GameAdd.snd_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-snd-fst--7b31483b7538c8723c49472d.md) | 178 | `result-track:7b31483b7538c8723c49472d5469dcfaec9253d76e98166910cc19c2ee16d4bb` |
| 21 | `theorem` | [Acc.sym2_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/acc-sym2-gameadd--9ccc62a8066a4e9c18441393.md) | 184 | `result-track:9ccc62a8066a4e9c184413931a30097fed1964a5d47f4f1536e2a27210c7a17c` |
| 22 | `theorem` | [WellFounded.sym2_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/wellfounded-sym2-gameadd--51ac9143e686a8fbb604c386.md) | 201 | `result-track:51ac9143e686a8fbb604c386f69a2efe123ba2ac62f92d6cba38cf4bdbd37f13` |
| 23 | `def` | [GameAdd.fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-fix--c7d36e98fcba369ca8a4fa0a.md) | 209 | `declaration-track:c7d36e98fcba369ca8a4fa0adeb13dcffd6a65773b2ee0a84f2f3ee43985fd21` |
| 24 | `theorem` | [GameAdd.fix_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-fix-eq--d6eeb91790f13c849c487df6.md) | 217 | `result-track:d6eeb91790f13c849c487df6cec113a88cba306188a4a974dfb669f7d6ee3d44` |
| 25 | `theorem` | [GameAdd.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/declarations/gameadd-induction--10104cc087ac373faa730881.md) | 223 | `result-track:10104cc087ac373faa730881aa76eb81330bdc18734e28bc2fe26a13f029d4c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
