# Verification target: GRWTSK.Algebra.GroupTheory.GroupInstances.Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41839a4f07368d9125d33053d49f01f4a855a386",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41839a4f07368d9125d33053d49f01f4a855a386`.

Source path: `GRWTSK/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [MonoidHom.commMonoid](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/monoidhom-commmonoid--84995fcbf6bf48bfd2d90c34.md) | 32 | `declaration-track:84995fcbf6bf48bfd2d90c348e32274252439c351e97a70343894a4c522b3322` |
| 2 | `instance` | [MonoidHom.commGroup](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/monoidhom-commgroup--d7870d6c6d469f883964a654.md) | 52 | `declaration-track:d7870d6c6d469f883964a65458ce4f3db8aafec51702f479a900bdfaa3a83843` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/instance--d60b66e578122ea12cd5f75f.md) | 75 | `declaration-track:d60b66e578122ea12cd5f75f494dac0971aa1fb61e825293c2c6bd245c38268b` |
| 4 | `instance` | [AddMonoid.End.semiring](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoid-end-semiring--c0b2e212b43264c28f46df0f.md) | 78 | `declaration-track:c0b2e212b43264c28f46df0fc1a34ef3531518c4d5cb409c7e255a4261f119bb` |
| 5 | `theorem` | [AddMonoid.End.natCast_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoid-end-natcast-apply--593467b4b1a59099f16b8333.md) | 90 | `result-track:593467b4b1a59099f16b833340242299e39858540f6cb9f268bf6477e54c97b1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/instance--78d3a21d6718d540a17d6475.md) | 95 | `declaration-track:78d3a21d6718d540a17d6475378cb3b0a8574f748294cdf6eb400438dcf47792` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/instance--4e14b2fcd5961e6aa781271f.md) | 98 | `declaration-track:4e14b2fcd5961e6aa781271f4fbd43341e8f59cb0d00da2d7f9f38ec69d4df3f` |
| 8 | `theorem` | [AddMonoid.End.int_cast_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoid-end-int-cast-apply--899fc1de27ac0b9f129ef85b.md) | 106 | `result-track:899fc1de27ac0b9f129ef85bb93c60031a2ef6fe9ebd84b7643301e83a999b56` |
| 9 | `theorem` | [ext_iff₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/ext-iff--2260aa2bdfae02e1f04abb14.md) | 122 | `result-track:2260aa2bdfae02e1f04abb143a5987fa698be9e39944c443c381cd6fc2951cf4` |
| 10 | `def` | [flip](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/flip--6116d8749c5f966af405319f.md) | 130 | `declaration-track:6116d8749c5f966af405319fae1c760614110656747d3bfedd0e18289e68d49d` |
| 11 | `theorem` | [flip_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/flip-apply--636fbc499b2b521c2976fdbd.md) | 142 | `result-track:636fbc499b2b521c2976fdbd0cbfa175320d06a5192cb75a25afbc1024eea9b8` |
| 12 | `theorem` | [map_one₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/map-one--95fab2aad554cd9ac263b90a.md) | 149 | `result-track:95fab2aad554cd9ac263b90a1740d13f21fa721c90f79a07cce2d28be88a8f3e` |
| 13 | `theorem` | [map_mul₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/map-mul--d555ec9940acdf73a03146b3.md) | 156 | `result-track:d555ec9940acdf73a03146b3421f0cf55ea6708d2d4fa3ccec8083841e92334c` |
| 14 | `theorem` | [map_inv₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/map-inv--6b48c6f41b54a1c6f47d5ece.md) | 163 | `result-track:6b48c6f41b54a1c6f47d5ece3cc42cd7364a130f7bdaa6b9e628b5272a3617ec` |
| 15 | `theorem` | [map_div₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/map-div--932ff142abec4e1f4ac0e9ef.md) | 170 | `result-track:932ff142abec4e1f4ac0e9ef206fbd329d406e12500b02a135ca016de09a5dad` |
| 16 | `def` | [eval](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/eval--1bf288ba670f9a86c01bffdb.md) | 181 | `declaration-track:1bf288ba670f9a86c01bffdba7367e981740a03dbf322b48375cdb4b211c4f1e` |
| 17 | `def` | [compHom'](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/comphom--c5fd13fde6cf1551c8f14486.md) | 195 | `declaration-track:c5fd13fde6cf1551c8f14486e2eced085f6bef2e6a8d9d70e3de978ad61e0c94` |
| 18 | `def` | [compHom](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/comphom--c7e83b044154564850a25fd5.md) | 212 | `declaration-track:c7e83b044154564850a25fd5cf990f55e323500724dbda282de0ca1702e758d4` |
| 19 | `def` | [flipHom](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/fliphom--44bb844f1dd426d098acad6c.md) | 230 | `declaration-track:44bb844f1dd426d098acad6ca422b289dbc0acee89da3cc361b17484d5f42ab4` |
| 20 | `def` | [compl₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/compl--c54016d1cce74f4780f65a13.md) | 249 | `declaration-track:c54016d1cce74f4780f65a13fff2442f7877f82072842d8e19bb89f3e4c0d8ec` |
| 21 | `theorem` | [compl₂_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/compl-apply--31ba10490d62726b03a31190.md) | 256 | `result-track:31ba10490d62726b03a31190b177fd37bb258963b7e9e7844b33e24329800e43` |
| 22 | `def` | [compr₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/compr--a5915a45b01b6461f0a63ff5.md) | 267 | `declaration-track:a5915a45b01b6461f0a63ff57b9f4fc68e0843dc5a6b04b9b77f2b56029225d2` |
| 23 | `theorem` | [compr₂_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/compr-apply--68e6b584defbc3c268a1aa6e.md) | 274 | `result-track:68e6b584defbc3c268a1aa6e110ac19beffa9a15d83e9d0fe409af262b7d9aac` |
| 24 | `def` | [AddMonoidHom.mul](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoidhom-mul--cea57dcdc58accda8e36a354.md) | 302 | `declaration-track:cea57dcdc58accda8e36a3541b7752b76474098cabbe9a4f84a8623a7cbe860c` |
| 25 | `theorem` | [AddMonoidHom.mul_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoidhom-mul-apply--70d7c707415c4b8056721bcc.md) | 308 | `result-track:70d7c707415c4b8056721bccc47b48b3845c3def1703d6efa6b57699380ca088` |
| 26 | `theorem` | [AddMonoidHom.coe_mul](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoidhom-coe-mul--c0dd70d4ff7547fcbca1ce34.md) | 313 | `result-track:c0dd70d4ff7547fcbca1ce344b52611ba78d7185db331b4c7a87361d661484ae` |
| 27 | `theorem` | [AddMonoidHom.coe_flip_mul](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoidhom-coe-flip-mul--46f2b4d0a74f408863f39c68.md) | 318 | `result-track:46f2b4d0a74f408863f39c687a8cb0780a34ecc915ff73ae7eee82823de16d60` |
| 28 | `theorem` | [AddMonoidHom.map_mul_iff](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoidhom-map-mul-iff--813c43ae6721ec15aa77f81a.md) | 327 | `result-track:813c43ae6721ec15aa77f81a8699a91c7314ffe5ae3e0f95c3ba40a9ed0dba7f` |
| 29 | `def` | [AddMonoid.End.mulLeft](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoid-end-mulleft--05b2e8b03f245d1f5d3fabd2.md) | 335 | `declaration-track:05b2e8b03f245d1f5d3fabd2ef94ef681479381e319c45ffd2e37a5e5fd7ceca` |
| 30 | `def` | [AddMonoid.End.mulRight](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/declarations/addmonoid-end-mulright--7b63daacb4d4f7f43de4e4be.md) | 342 | `declaration-track:7b63daacb4d4f7f43de4e4bec45b730390830841781e72ef49979bd62a1ba732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
