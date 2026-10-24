# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NAry.Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fad1e5361a1081ef4bc29742c0c6da15cd0b7464",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fad1e5361a1081ef4bc29742c0c6da15cd0b7464`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map--939ec3b35f6d32f2b0c2010c.md) | 38 | `declaration-track:939ec3b35f6d32f2b0c2010c41f5a737156072c14c3e18c211516203e99dc992` |
| 2 | `theorem` | [map₂_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-def--df92ade1b700208b1237ab5b.md) | 43 | `result-track:df92ade1b700208b1237ab5bda9bab6ad96f19532abcf1ef7782267853e5e597` |
| 3 | `theorem` | [map₂_some_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-some-some--e5e8be65049e8a8ebd31a714.md) | 48 | `result-track:e5e8be65049e8a8ebd31a714afeeb13191bf56ff7541ee47cafdcbe3e0945dbf` |
| 4 | `theorem` | [map₂_coe_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-coe-coe--4be8a808b07d0673bd8f0b5d.md) | 50 | `result-track:4be8a808b07d0673bd8f0b5df576c04bf42beee04526448b3fbea5db0fe26a13` |
| 5 | `theorem` | [map₂_none_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-none-left--b66304b01c401bc4e7f7aa6d.md) | 53 | `result-track:b66304b01c401bc4e7f7aa6df1e71437670b780a2a5baa7c93b038950f9d926d` |
| 6 | `theorem` | [map₂_none_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-none-right--67578da44ac32393413c78e9.md) | 56 | `result-track:67578da44ac32393413c78e9dd8ce2e56e1e48aa7902eb3954e8050fc27e73c8` |
| 7 | `theorem` | [map₂_coe_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-coe-left--7528cb826b6a6bcd035ab257.md) | 59 | `result-track:7528cb826b6a6bcd035ab257cbb9224e2e06de04612cc847a80b6876009badc7` |
| 8 | `theorem` | [map₂_coe_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-coe-right--6f606087fefbcd412dd03c32.md) | 64 | `result-track:6f606087fefbcd412dd03c32c672330e0dd669429cdb783f4c1d44d8c83a2f13` |
| 9 | `theorem` | [mem_map₂_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/mem-map-iff--343744ba161ce739c8303406.md) | 67 | `result-track:343744ba161ce739c83034069b55a02f87c0fa6684aa75ebe28189dbbd777c4a` |
| 10 | `theorem` | [map₂_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-eq-some-iff--42ce4fcab40bc0823ae2f100.md) | 72 | `result-track:42ce4fcab40bc0823ae2f10059e8d3efbbf39de88aa355367c9c91f165ddd914` |
| 11 | `theorem` | [map₂_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-eq-none-iff--18e2e79545c8c628f9b467c8.md) | 77 | `result-track:18e2e79545c8c628f9b467c8603ff3716334bafc579bdafa90170ed85a50278d` |
| 12 | `theorem` | [map₂_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-swap--44fa677d89df3ec02a788d28.md) | 80 | `result-track:44fa677d89df3ec02a788d28b70a198ac9bcc59d5c273f252ff7f941452aa273` |
| 13 | `theorem` | [map_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map--e7670680bae6b3f000a2a7fa.md) | 83 | `result-track:e7670680bae6b3f000a2a7fa99b4f43e5881d447c18df196262261067980af55` |
| 14 | `theorem` | [map₂_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-left--b88c31401eb48c2b9b5d2d9c.md) | 86 | `result-track:b88c31401eb48c2b9b5d2d9c5a74002df7e619408102a22b81df670925d4745b` |
| 15 | `theorem` | [map₂_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-right--4078b5d1909d35a1bfbedc1a.md) | 89 | `result-track:4078b5d1909d35a1bfbedc1ad9c79a144c0d95a836b3f291336afea90e06dcd0` |
| 16 | `theorem` | [map₂_curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-curry--da1ba5eba493988c0424d228.md) | 93 | `result-track:da1ba5eba493988c0424d228dd21d1a5389585937077599fbc78ceecb855be88` |
| 17 | `theorem` | [map_uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-uncurry--327dce354bbd23a9bbc9c0aa.md) | 97 | `result-track:327dce354bbd23a9bbc9c0aab39bc40e9f98a5019f256b8f7e05cbbd46882e5f` |
| 18 | `theorem` | [map₂_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-assoc--e353264bff237b02bf3864e1.md) | 111 | `result-track:e353264bff237b02bf3864e1dda64637df47be6cb6b48fdd4f218f32584952d3` |
| 19 | `theorem` | [map₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-comm--161a8f085be64895bc3467c1.md) | 116 | `result-track:161a8f085be64895bc3467c10df2e0442e91b3d1459d9680f845567d7d811601` |
| 20 | `theorem` | [map₂_left_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-left-comm--b5f88348b2dc5a673c2c7caa.md) | 119 | `result-track:b5f88348b2dc5a673c2c7caa10002f6553d0ec433af06493430441c90715c081` |
| 21 | `theorem` | [map₂_right_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-right-comm--410322e14ca5a2bb5fbd9de1.md) | 124 | `result-track:410322e14ca5a2bb5fbd9de166c310083bb834106ee8fafa36af13555226d630` |
| 22 | `theorem` | [map_map₂_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-distrib--aee0ad2eeae6550f2ad9b81d.md) | 129 | `result-track:aee0ad2eeae6550f2ad9b81d95b35c390733be607a4a05942749e127660ba76e` |
| 23 | `theorem` | [map_map₂_distrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-distrib-left--186ccf22ea57932327de086d.md) | 140 | `result-track:186ccf22ea57932327de086d5590bcf25ec47d5aecf379f8fea242058c1b64b1` |
| 24 | `theorem` | [map_map₂_distrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-distrib-right--07b911d7b5e24850cff33f02.md) | 145 | `result-track:07b911d7b5e24850cff33f0295bd4687f3ed79fc03c730e9ddee4ccc6922df1e` |
| 25 | `theorem` | [map₂_map_left_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-left-comm--dbeef1dfa41862ff78f09c10.md) | 150 | `result-track:dbeef1dfa41862ff78f09c10220f87f1e64cc493852b35c8d6d516e19c8f422e` |
| 26 | `theorem` | [map_map₂_right_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-right-comm--5c70cf1e62e2d27a346c4b7a.md) | 155 | `result-track:5c70cf1e62e2d27a346c4b7a9ad479d29e680b82833a90e523930d60bb8cad2a` |
| 27 | `theorem` | [map_map₂_antidistrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-antidistrib--e18da790513ed651faefc624.md) | 159 | `result-track:e18da790513ed651faefc624d52bb99460295feb2a16ee1dd2e7a5959ae26987` |
| 28 | `theorem` | [map_map₂_antidistrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-antidistrib-left--26ed3a2b83e0e8e06cabc2e1.md) | 165 | `result-track:26ed3a2b83e0e8e06cabc2e1500cf29586e3076a9727cae7d6ab3c27e35b5762` |
| 29 | `theorem` | [map_map₂_antidistrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-antidistrib-right--e5a8b073942bb98117631328.md) | 171 | `result-track:e5a8b073942bb9811763132836dbbbb781de6f9a612b05268111c42da2f3a190` |
| 30 | `theorem` | [map₂_map_left_anticomm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-left-anticomm--ee830fdef46b527aa4e189ba.md) | 176 | `result-track:ee830fdef46b527aa4e189bae0d108e2987b24028ba8cc23ca1ce6c738e8f08d` |
| 31 | `theorem` | [map_map₂_right_anticomm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-map-right-anticomm--897e12942a4b05a848e7fd8c.md) | 181 | `result-track:897e12942a4b05a848e7fd8cfc162230e779e1a35f543745ffd39ad1dd04391d` |
| 32 | `lemma` | [map₂_left_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-left-identity--79f84b32174bc3b104de363b.md) | 187 | `result-track:79f84b32174bc3b104de363b2906ea817e686ad706128257d5e628186e50ad4a` |
| 33 | `lemma` | [map₂_right_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant6ff60c120f668d6328d0ef8bbdf9f7ec10287740bd2a9d551f63f5b343085f75.lean/declarations/map-right-identity--0c10513b2008c513a321c679.md) | 193 | `result-track:0c10513b2008c513a321c679f9f1341cfc24f65f9d8d306670176fc3c862f750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
