# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac7bfe7e53f500f19f20a67899ac287f94b31fa",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac7bfe7e53f500f19f20a67899ac287f94b31fa`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExistsMulOfLE](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/existsmulofle--6c40778072f2dcc42b079ba1.md) | 35 | `declaration-track:6c40778072f2dcc42b079ba13936b50312ceedad03df070dab5255261ade5dfe` |
| 2 | `class` | [ExistsAddOfLE](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/existsaddofle--477cf1c52881ea16821cadb7.md) | 43 | `declaration-track:477cf1c52881ea16821cadb7c60f1c274671dd8cce7149443d57ba1dd21b648a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/instance--8995363b367c55ffc12060b5.md) | 56 | `declaration-track:8995363b367c55ffc12060b52ee6852f57e2430fbbec5df37d5b98e8fb93c7bf` |
| 4 | `theorem` | [exists_one_lt_mul_of_lt'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/exists-one-lt-mul-of-lt--5c2dbadb32c37650c94aed04.md) | 67 | `result-track:5c2dbadb32c37650c94aed04cf62618a3c9d4148d64f86cffb97dcdc510fbe74` |
| 5 | `theorem` | [le_of_forall_one_lt_le_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-of-forall-one-lt-le-mul--496510a0c54e914934d9c7b3.md) | 81 | `result-track:496510a0c54e914934d9c7b301a582ad8ffa56468682cb1061e88ee6b2f503c7` |
| 6 | `theorem` | [le_of_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-of-forall-one-lt-lt-mul--8e691ab638d7c242b149c541.md) | 89 | `result-track:8e691ab638d7c242b149c541d2120255eaa5f36f2d4fa86c588fd9a81b37afc9` |
| 7 | `theorem` | [le_iff_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-iff-forall-one-lt-lt-mul--07f72f59bb4a526ff0c93e13.md) | 95 | `result-track:07f72f59bb4a526ff0c93e13546bb2585c060dd0fcffd27791a490a6760f9b1a` |
| 8 | `class` | [CanonicallyOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/canonicallyorderedaddmonoid--d906218ab9c3a1cad77b9610.md) | 108 | `declaration-track:d906218ab9c3a1cad77b9610d31f7fae2c43a6084d87c8649cdd1e514ff4ec80` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/instance--0b437fb7e6288db63a8f6ddd.md) | 119 | `declaration-track:0b437fb7e6288db63a8f6dddc3749009650ddae9f3069316fb7828a46f873037` |
| 10 | `class` | [CanonicallyOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/canonicallyorderedmonoid--3ecc2f3634dad77b9021d4fc.md) | 134 | `declaration-track:3ecc2f3634dad77b9021d4fc11178592eb4abc10fbb301c496d23907c5fa9eaf` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/instance--3889676e6e77ceaed352b1a6.md) | 145 | `declaration-track:3889676e6e77ceaed352b1a6708d35c3c1fd72a80c6ef37c88f8fb1154ab2d38` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/instance--c2db5a14cae723a97aa48e88.md) | 152 | `declaration-track:c2db5a14cae723a97aa48e88be8cfd3db58ad574ac0886ee8db0ffcfd05536c4` |
| 13 | `theorem` | [le_self_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-self-mul--a32784a16afbd99baf0a3950.md) | 163 | `result-track:a32784a16afbd99baf0a39500117dfa121e468a7c704517f782a1dab7b023ce7` |
| 14 | `theorem` | [le_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-mul-self--9cd62e08ec07506bbb836f22.md) | 169 | `result-track:9cd62e08ec07506bbb836f22707d6c9f9f8f0bda83bba3a05a6d938541928bd4` |
| 15 | `theorem` | [self_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/self-le-mul-right--d4d111c18a5882ee907260d7.md) | 176 | `result-track:d4d111c18a5882ee907260d78901974f143ba1063e8879e39b2d6ecce06e7401` |
| 16 | `theorem` | [self_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/self-le-mul-left--ffb7e2062ceb2278d8f8ece0.md) | 182 | `result-track:ffb7e2062ceb2278d8f8ece0f2e9dc2ac1e9dbf9ce7c6bd7828837a15b11051a` |
| 17 | `theorem` | [le_of_mul_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-of-mul-le-left--808bee042952f925e3f45352.md) | 188 | `result-track:808bee042952f925e3f4535269cb75d81852a302dabcd5064bf71abfc1083169` |
| 18 | `theorem` | [le_of_mul_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-of-mul-le-right--49b83af9082d2f1b03922acb.md) | 194 | `result-track:49b83af9082d2f1b03922acbfcd08b967512e0724700ce7bd9f24ba36f87f39f` |
| 19 | `theorem` | [le_mul_of_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-mul-of-le-left--71320c6b79e4cc84fa63a864.md) | 200 | `result-track:71320c6b79e4cc84fa63a864bfb14cfe18c355f1f2d2de1ac871e1227d9d0035` |
| 20 | `theorem` | [le_mul_of_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-mul-of-le-right--aa2bc1e792aea2a78628757c.md) | 206 | `result-track:aa2bc1e792aea2a78628757cf6d4d50ba161616efe88ce632af506238b861610` |
| 21 | `theorem` | [le_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-iff-exists-mul--a4a40d871e4936620ec1f810.md) | 212 | `result-track:a4a40d871e4936620ec1f81085c651aa6372236d08f71d1e046ec7a4a7e69cd2` |
| 22 | `theorem` | [le_iff_exists_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-iff-exists-mul--bd8e32a6158432ba367f233c.md) | 220 | `result-track:bd8e32a6158432ba367f233cb01bc9d053448cffd441d246b95bf3e7fbc68c4c` |
| 23 | `theorem` | [one_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/one-le--8e2c0fd5358f37759064ef3f.md) | 226 | `result-track:8e2c0fd5358f37759064ef3fb97b99b857c34f6001c4ebe56d3ff96dc95119a7` |
| 24 | `theorem` | [bot_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/bot-eq-one--59f4da33d80d7ceb0488b6da.md) | 232 | `result-track:59f4da33d80d7ceb0488b6dab95d59b9563434c054293dfe1e24851e9cd6759b` |
| 25 | `theorem` | [mul_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/mul-eq-one-iff--93a5380f81a9b6def20253f4.md) | 240 | `result-track:93a5380f81a9b6def20253f44480271ad165f80519c6c4a1898e499350f6cfc7` |
| 26 | `theorem` | [le_one_iff_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-one-iff-eq-one--3893c9f1f6b72fde7fee7145.md) | 246 | `result-track:3893c9f1f6b72fde7fee714529ec39a28596f1be8d4507df328efe4994bf9add` |
| 27 | `theorem` | [one_lt_iff_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/one-lt-iff-ne-one--e8ec7ebc18e422cc1d825311.md) | 252 | `result-track:e8ec7ebc18e422cc1d82531178ffa8b90cbd587b0d76a70a0779d156421c79cf` |
| 28 | `theorem` | [eq_one_or_one_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/eq-one-or-one-lt--8c1d4336cfec2d597ed10f09.md) | 258 | `result-track:8c1d4336cfec2d597ed10f0955273da8ff99902f859ccc769939235dc0ada03f` |
| 29 | `theorem` | [one_lt_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/one-lt-mul-iff--2ef37cf14bf50499a7f0e280.md) | 264 | `result-track:2ef37cf14bf50499a7f0e280f5b37c91ad9e346a14daf3ca17dddb633dcdaf75` |
| 30 | `theorem` | [exists_one_lt_mul_of_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/exists-one-lt-mul-of-lt--5325bcf4dfee6264ccd7cee3.md) | 270 | `result-track:5325bcf4dfee6264ccd7cee3f0b5c7d842f57c2dcdb2024e4d582b0f24a64fd1` |
| 31 | `theorem` | [le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-mul-left--61162bfc735735571847afec.md) | 279 | `result-track:61162bfc735735571847afec3fdba225d0bf5ebadcfb17bb0d0b1687de352e97` |
| 32 | `theorem` | [le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/le-mul-right--e68397b6fce9770d5d8bd8a4.md) | 287 | `result-track:e68397b6fce9770d5d8bd8a48b86e02e16e88c104daef26765cbd09cc586a6ac` |
| 33 | `theorem` | [lt_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/lt-iff-exists-mul--db1ba04d5cfadc5b66ec122c.md) | 295 | `result-track:db1ba04d5cfadc5b66ec122c4278b8c464a3eed0bb8dfa9f4b706bff56dffebf` |
| 34 | `theorem` | [pos_of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/pos-of-gt--965681d02e023f3b69fbf221.md) | 313 | `result-track:965681d02e023f3b69fbf22174bcb7a434f755984ce8dbab097dbee6e79db108` |
| 35 | `theorem` | [pos](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/pos--facb38dd125d28e7dda3b507.md) | 319 | `result-track:facb38dd125d28e7dda3b5075139aeccf3df99e02d6a80baede941f7c2b4839f` |
| 36 | `theorem` | [of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/of-gt--5e3faa808c9db863487668e4.md) | 323 | `result-track:5e3faa808c9db863487668e47b880d14e688238afe5cfad8bb70e82c8afb71d6` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/instance--1fa02a27051e5203ef2ea855.md) | 330 | `declaration-track:1fa02a27051e5203ef2ea8558697711cd14454d538f14323cc27b70d25b37c16` |
| 38 | `instance` | [bit0](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/bit0--b74fface8c6a68514fc7ebf9.md) | 336 | `declaration-track:b74fface8c6a68514fc7ebf9b87d16c5c28d218606d89fc9b665a4c8793caae6` |
| 39 | `class` | [CanonicallyLinearOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/canonicallylinearorderedaddmonoid--bcc44c06d72f32a943a1a2da.md) | 344 | `declaration-track:bcc44c06d72f32a943a1a2da4c0edac3f54130638e3b694954e4c00f78efb711` |
| 40 | `class` | [CanonicallyLinearOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/canonicallylinearorderedmonoid--0ce06e7f666a6cacaae97984.md) | 351 | `declaration-track:0ce06e7f666a6cacaae97984cee63b0f0ae10e6979f7122ce206f42f6b76db08` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/instance--e11558930d65d5df3f58c841.md) | 360 | `declaration-track:e11558930d65d5df3f58c841006e8b43cbe2d6a06af7c04257af7a18fc774bf7` |
| 42 | `theorem` | [min_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/min-mul-distrib--11bcb061626788f1bb0bf7b8.md) | 366 | `result-track:11bcb061626788f1bb0bf7b8ad3d76d3ad259e39d9418bfc81ad088f7f213d4e` |
| 43 | `theorem` | [min_mul_distrib'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/min-mul-distrib--7ccea05ecce8dbea67181c9b.md) | 376 | `result-track:7ccea05ecce8dbea67181c9bbf324e590cdcfe58382dd5f95b5229e5f995a206` |
| 44 | `theorem` | [one_min](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/one-min--e4f94fec2791d43372c51c5d.md) | 383 | `result-track:e4f94fec2791d43372c51c5ddc3a37cfb2f502f72f82a0a7659f152843d3005c` |
| 45 | `theorem` | [min_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/min-one--82f0562c3d10ced69a5610c2.md) | 390 | `result-track:82f0562c3d10ced69a5610c23ba478ad60eefe77af9e8b251eb561f4b6d10f5e` |
| 46 | `theorem` | [bot_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/declarations/bot-eq-one--4f3d1cc0b0cbe3919d6544b3.md) | 398 | `result-track:4f3d1cc0b0cbe3919d6544b37a4c11e4fd083591edde22047e496ceb73ea645e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
