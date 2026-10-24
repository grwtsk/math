# Verification target: GRWTSK.Algebra.GroupTheory.Abelianization.Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d`.

Source path: `GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commutator](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutator--30d8d60c2d5a61f3ea4356af.md) | 47 | `declaration-track:30d8d60c2d5a61f3ea4356afe905f8a588d2b52f4547120d5190428162f0fbb3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/instance--10a46c7a00ff61fcbf005bee.md) | 51 | `declaration-track:10a46c7a00ff61fcbf005bee7ed75ec1572dbc9040a942b36cb3a04bd2c22d3b` |
| 3 | `theorem` | [commutator_def](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutator-def--0927af3759b59878c6a09fba.md) | 53 | `result-track:0927af3759b59878c6a09fbafb186f92b6130fc50adc13db957b1c0b63e132a8` |
| 4 | `theorem` | [commutator_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutator-eq-closure--0cca8c612bb7cea93fda564f.md) | 57 | `result-track:0cca8c612bb7cea93fda564fbe5638ae55e108bd0eaa881700ffd44d9316c741` |
| 5 | `theorem` | [commutator_eq_normalClosure](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutator-eq-normalclosure--3ec03b7b46aa6ba799fd06e2.md) | 61 | `result-track:3ec03b7b46aa6ba799fd06e22211c84c4c62a47966a62c6fe77a1b5def3952ce` |
| 6 | `instance` | [commutator_characteristic](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutator-characteristic--6c824d2b0aa70a98dbe0e1f0.md) | 65 | `declaration-track:6c824d2b0aa70a98dbe0e1f0e0906fb4c39c2075e50a716bc957965be9c7deda` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/instance--9cabbbc8374d94375e506f57.md) | 69 | `declaration-track:9cabbbc8374d94375e506f575cc35dad1f2457d1c32c6b41b30852e78f91d877` |
| 8 | `theorem` | [rank_commutator_le_card](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/rank-commutator-le-card--59add0817635d9d8b50e3213.md) | 73 | `result-track:59add0817635d9d8b50e3213fe40f3dde3002f3aa4bc34c701b06de90bf1484e` |
| 9 | `theorem` | [commutator_centralizer_commutator_le_center](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutator-centralizer-commutator-le-center--bb00404824ddb3be8131f394.md) | 79 | `result-track:bb00404824ddb3be8131f39489ee945bf5a40920f3bf74eaffca53509e5311be` |
| 10 | `def` | [Abelianization](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/abelianization--a2c54aa7175ad134106becaf.md) | 91 | `declaration-track:a2c54aa7175ad134106becafecb16d74331e9988fe95fd0b2c720d8e3e56b723` |
| 11 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commgroup--0aaac448425ceb00b0f2b72a.md) | 99 | `declaration-track:0aaac448425ceb00b0f2b72a38e41990ff9bd29895fe2c0cfd8921bb0fe12452` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/instance--8676abca53ca1166b2a19331.md) | 108 | `declaration-track:8676abca53ca1166b2a19331de983e78736c259bf00dacdf7133e6355dd6871a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/instance--feabdbcf80491ec25fc9b119.md) | 111 | `declaration-track:feabdbcf80491ec25fc9b11944a27acd6f0ebbde9b7c2828bc9c197e1caa7def` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/instance--127ecbabb0e61f07ffcf7f2b.md) | 114 | `declaration-track:127ecbabb0e61f07ffcf7f2b74ae70352ee8b96ebe55e324454a0ac75e943d32` |
| 15 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/of--55496c53856793fd75c030b4.md) | 120 | `declaration-track:55496c53856793fd75c030b48a9863e494f62fa2bcc1d3af315b8772f35ada0f` |
| 16 | `theorem` | [mk_eq_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/mk-eq-of--4bb8ad0dadda88ca83de7205.md) | 127 | `result-track:4bb8ad0dadda88ca83de72059caa06bee409f72190ce5b627dc0e8d1e2e3183c` |
| 17 | `theorem` | [commutator_subset_ker](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutator-subset-ker--41dfb79ee65a5096e9a3ba6f.md) | 138 | `result-track:41dfb79ee65a5096e9a3ba6ffe9fbdeeb8b3988b4f2eabbc1410c964e14a524b` |
| 18 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/lift--bf6af3f3798d2c553a28980a.md) | 146 | `declaration-track:bf6af3f3798d2c553a28980a2eb29e1152f1988669e879e8bd6b4fa1272f5541` |
| 19 | `theorem` | [lift.of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/lift-of--c4cfb8ea696c2297d892ea11.md) | 154 | `result-track:c4cfb8ea696c2297d892ea114344320e05e09fad2129796ec42764c546055e74` |
| 20 | `theorem` | [lift.unique](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/lift-unique--a10e90b7f94eb4cd3bff29d0.md) | 158 | `result-track:a10e90b7f94eb4cd3bff29d02024f61a3761d429eee7e1fc4f09cbb7918dd479` |
| 21 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/lift-of--c4ebbe60d2b1f0960c0374ec.md) | 166 | `result-track:c4ebbe60d2b1f0960c0374ec0907fa438f343740115accf119f5d2fa05bcb9ff` |
| 22 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/hom-ext--9d9ce91b12c3b0d3f5cff262.md) | 176 | `result-track:9d9ce91b12c3b0d3f5cff262d489c08e80d4549b9e996f36ea47797b035f85af` |
| 23 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/map--a68e6e53022cf4006b29e66e.md) | 185 | `declaration-track:a68e6e53022cf4006b29e66efee6085c8e56e2455096f2c7f2d46738ddd122f9` |
| 24 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/map-of--984bd73ec025d02882ac8014.md) | 190 | `result-track:984bd73ec025d02882ac8014232bb0a4a2ded3af5cdbb52d35318ded8708d355` |
| 25 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/map-id--606e3d15b555fc935771e329.md) | 195 | `result-track:606e3d15b555fc935771e3295d246c8750a2788d3d3f7b0b4219aa2452a019de` |
| 26 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/map-comp--3e0751de19eb01186e3fba6f.md) | 200 | `result-track:3e0751de19eb01186e3fba6f25af824fbee4d0f30eeffca3dfd209bda8ac8c2c` |
| 27 | `theorem` | [map_map_apply](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/map-map-apply--23ebcaca723339ff8ea2600c.md) | 205 | `result-track:23ebcaca723339ff8ea2600ca3799c24256ee0ec2d6678eb3489d70fa72d511d` |
| 28 | `def` | [MulEquiv.abelianizationCongr](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/mulequiv-abelianizationcongr--3013ba23e92623253562eed3.md) | 220 | `declaration-track:3013ba23e92623253562eed3f28c8d84a1cb5e4d2f93894be4f178c521af3e5a` |
| 29 | `theorem` | [abelianizationCongr_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/abelianizationcongr-of--733a393eff8fff31c828ba23.md) | 233 | `result-track:733a393eff8fff31c828ba23262f049aa0db10e5f88d9b051c3bbefa18e28eac` |
| 30 | `theorem` | [abelianizationCongr_refl](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/abelianizationcongr-refl--e748e33e88ce3f7b3c716f9e.md) | 239 | `result-track:e748e33e88ce3f7b3c716f9e7026e71390871edbfa3561a719399a07b43e3ceb` |
| 31 | `theorem` | [abelianizationCongr_symm](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/abelianizationcongr-symm--d36c5c5823cbeb9008686650.md) | 245 | `result-track:d36c5c5823cbeb90086866502a7b020bbe6ceefa7aa89dfb0f89db6b2f6a433c` |
| 32 | `theorem` | [abelianizationCongr_trans](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/abelianizationcongr-trans--ec4879952f6a6b625540083b.md) | 250 | `result-track:ec4879952f6a6b625540083b03206e3b586b0422f6d7d2ff97f395968b0951e0` |
| 33 | `def` | [Abelianization.equivOfComm](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/abelianization-equivofcomm--13d8c8ae9066ff01e6515548.md) | 259 | `declaration-track:13d8c8ae9066ff01e65155488215e63bd175821e5633e8dca4425853ba352a6e` |
| 34 | `def` | [commutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/commutatorrepresentatives--83626063cce1fb937e3c7529.md) | 274 | `declaration-track:83626063cce1fb937e3c7529a774f536a83f829228c36490d182d0eb1e9788b9` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/instance--c42dfa88df7d7ee86d9fd0fa.md) | 278 | `declaration-track:c42dfa88df7d7ee86d9fd0fa9d104fe434219f812d1a82257a166e78d421210e` |
| 36 | `def` | [closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/closurecommutatorrepresentatives--521ae2084a5b9a91f0e073c0.md) | 282 | `declaration-track:521ae2084a5b9a91f0e073c000c156896ac6ed6965437f8fdaf4251fb6516080` |
| 37 | `instance` | [closureCommutatorRepresentatives_fg](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/closurecommutatorrepresentatives-fg--9e265ec0b565b3ff69d09bfb.md) | 286 | `declaration-track:9e265ec0b565b3ff69d09bfb3c2f64a41c733b463ee8cdc39b4df85d2bba666f` |
| 38 | `theorem` | [rank_closureCommutatorRepresentatives_le](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/rank-closurecommutatorrepresentatives-le--d31c6d884d7e812c16671b86.md) | 291 | `result-track:d31c6d884d7e812c16671b865eca6126684c5e86682a903ee1a7a75ea6cfc420` |
| 39 | `theorem` | [image_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/image-commutatorset-closurecommutatorrepresentatives--c81bd499ef9b52eb27ca7bf3.md) | 301 | `result-track:c81bd499ef9b52eb27ca7bf31843d9237dd53aaba24cf6f07d3770e5549bbf24` |
| 40 | `theorem` | [card_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/card-commutatorset-closurecommutatorrepresentatives--b0af5e3f4fd9c1150d8098b3.md) | 315 | `result-track:b0af5e3f4fd9c1150d8098b3d03358f47de4247c3aff205befb7374077ef82b4` |
| 41 | `theorem` | [card_commutator_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/card-commutator-closurecommutatorrepresentatives--769601d7cf3e9b392b1ccfc3.md) | 321 | `result-track:769601d7cf3e9b392b1ccfc33d7b94e8e5b3c2ee81e4e4c4e54acfe2dd10d663` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/declarations/instance--9b0447c2b58144085c4ba452.md) | 328 | `declaration-track:9b0447c2b58144085c4ba452eeabe8adf04a24740079961137b32a5104afdec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
