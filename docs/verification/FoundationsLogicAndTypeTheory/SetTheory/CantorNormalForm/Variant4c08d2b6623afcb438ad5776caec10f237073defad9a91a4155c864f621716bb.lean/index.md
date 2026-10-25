# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CantorNormalForm.Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ce02e0b9ead4504882a213bc32a023afb0ba288",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ce02e0b9ead4504882a213bc32a023afb0ba288`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Exponential` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CNFRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnfrec--e4c6cce09ee5af8180831bdc.md) | 44 | `declaration-track:e4c6cce09ee5af8180831bdc0f7b18e1cd78d9ff476f8f3b9cb896493070e873` |
| 2 | `theorem` | [CNFRec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnfrec-zero--39a93788d7e0ee942f1d6c22.md) | 55 | `result-track:39a93788d7e0ee942f1d6c227939ae3272e71ac4253d513989e16a7ce7e87e0a` |
| 3 | `theorem` | [CNFRec_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnfrec-pos--f33936871d19c97c9d71c7f2.md) | 62 | `result-track:f33936871d19c97c9d71c7f2b61801b5bf59ebcecd941b49b8c3672fe8b70142` |
| 4 | `def` | [CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf--ef0664d19ab37ecefc0a2dae.md) | 75 | `declaration-track:ef0664d19ab37ecefc0a2dae89f5bd8083e24dba6c9159ea7abc48277818e744` |
| 5 | `theorem` | [CNF_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-zero--030aa98c042f73291cfbbe5c.md) | 81 | `result-track:030aa98c042f73291cfbbe5c76d923d28aa033d6a0574f972a79e9bac3066a66` |
| 6 | `theorem` | [CNF_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-ne-zero--71bfab910aa0bc6328cee4ea.md) | 87 | `result-track:71bfab910aa0bc6328cee4ea5212ab8c2d72fcb2c8415fa813c4b6d5befb70a6` |
| 7 | `theorem` | [zero_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/zero-cnf--4dfe44da206ab7c7070e0711.md) | 93 | `result-track:4dfe44da206ab7c7070e0711496cf1e188ecb00a93a20f108310f71678906ba7` |
| 8 | `theorem` | [one_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/one-cnf--4958b3b8ceba4ec32ecd2de7.md) | 97 | `result-track:4958b3b8ceba4ec32ecd2de770b178db20726fa34cb0281ad1c68e22699a283f` |
| 9 | `theorem` | [CNF_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-of-le-one--b6d4db7fdc76e133c1cbbbbb.md) | 101 | `result-track:b6d4db7fdc76e133c1cbbbbb24627b21e8ebfbcae6c9160cf750813953131170` |
| 10 | `theorem` | [CNF_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-of-lt--694e1c5c1836af79f1bcb227.md) | 108 | `result-track:694e1c5c1836af79f1bcb2276e1b05be59865f13ce4d3ed6236f54650076808f` |
| 11 | `theorem` | [CNF_foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-foldr--0fb6009e59d9eea75ef23d45.md) | 114 | `result-track:0fb6009e59d9eea75ef23d4533a5aaf5ecd32e7e47831547c95e98fbc1581428` |
| 12 | `theorem` | [CNF_fst_le_log](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-fst-le-log--4481ed2493e464174823c879.md) | 121 | `result-track:4481ed2493e464174823c879433afb703b72e43483c65e7c6978ef036e079cef` |
| 13 | `theorem` | [CNF_fst_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-fst-le--8e41b6c03deb6f5cd91c2082.md) | 134 | `result-track:8e41b6c03deb6f5cd91c2082af55ee15eca0748174209123d36ea46aecffe82a` |
| 14 | `theorem` | [CNF_lt_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-lt-snd--dac0fa5645b3fd2c7f62ea1c.md) | 140 | `result-track:dac0fa5645b3fd2c7f62ea1ca296e85871c91cd3eaf1c327fccb90e3ca04341d` |
| 15 | `theorem` | [CNF_snd_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-snd-lt--754b6c5eb52bc5a2282a0f96.md) | 150 | `result-track:754b6c5eb52bc5a2282a0f96b5b2665c0be2fa3d559c7cc7f4a81e99cba5177a` |
| 16 | `theorem` | [CNF_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/declarations/cnf-sorted--ae0034d0ecf1282aacfc9908.md) | 163 | `result-track:ae0034d0ecf1282aacfc99080054bd503f7b12406eed36001009216cbbcc15e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
