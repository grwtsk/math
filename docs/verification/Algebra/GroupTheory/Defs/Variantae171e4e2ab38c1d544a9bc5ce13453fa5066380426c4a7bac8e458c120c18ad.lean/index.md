# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17767aa9b113d543c85ab3b806bf7765e1b0c87d",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17767aa9b113d543c85ab3b806bf7765e1b0c87d`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/instance--0c72fde4323ce9c532eef12b.md) | 54 | `declaration-track:0c72fde4323ce9c532eef12bb7e47f0c7805dbf5ce683c58e2bde19f465766d5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/instance--bfbd2a94b80520e73a82853d.md) | 62 | `declaration-track:bfbd2a94b80520e73a82853d9c3cee61e7e349e6e2afde7288b449a67c0f148e` |
| 3 | `lemma` | [smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-eq-mul--fbf5bdf2ef4cccd18da04fee.md) | 66 | `result-track:fbf5bdf2ef4cccd18da04fee24b8e7e9a973f9142f9f1aafdb7351f73c89e594` |
| 4 | `lemma` | [op_smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/op-smul-eq-mul--c745865005775df5eb3ebda5.md) | 69 | `result-track:c745865005775df5eb3ebda58906d0eb6ac1ddba7d89043838094ca2a5aaebdf` |
| 5 | `lemma` | [MulOpposite.smul_eq_mul_unop](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/mulopposite-smul-eq-mul-unop--da58e0b5d6789b948fc3bf51.md) | 72 | `result-track:da58e0b5d6789b948fc3bf51168407a1d6277e9b06c79794f1c146a1ff526ed0` |
| 6 | `class` | [AddAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/addaction--39f2e9588a2cd1795a786115.md) | 75 | `declaration-track:39f2e9588a2cd1795a78611552b1b8021b8d02c3260f2cf83a62a35b3c80c8ec` |
| 7 | `class` | [MulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/mulaction--9a1b34e45a5f31e9693df34f.md) | 83 | `declaration-track:9a1b34e45a5f31e9693df34fa30993c5eb64cbb263a8c8e5b09366d8b14e3f11` |
| 8 | `class` | [VAddCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/vaddcommclass--ba4d8d69dbe775520589c7f9.md) | 92 | `declaration-track:ba4d8d69dbe775520589c7f96e09000e39ac1c5289d53b768df542571208d0c7` |
| 9 | `class` | [SMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smulcommclass--77cdeaf0092a8c35b0569333.md) | 98 | `declaration-track:77cdeaf0092a8c35b0569333ee0de5669860e713075b7bd7f51f4368894925ce` |
| 10 | `lemma` | [SMulCommClass.symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smulcommclass-symm--2cd192caca7bd74bb8347ee0.md) | 127 | `result-track:2cd192caca7bd74bb8347ee085a4a2cadc92064170520f80836ad80292b58076` |
| 11 | `lemma` | [Function.Injective.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/function-injective-smulcommclass--604fbef93b36c149bec5e0de.md) | 135 | `result-track:604fbef93b36c149bec5e0deab0f79efa0dc3bb8e97016cf2ff5f185141aa7de` |
| 12 | `lemma` | [Function.Surjective.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/function-surjective-smulcommclass--658f4f2e12e7f868fbe84c51.md) | 141 | `result-track:658f4f2e12e7f868fbe84c51e23c672ac30d310fac25b5a0110239e6a5ff4682` |
| 13 | `instance` | [smulCommClass_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smulcommclass-self--06d950e5ee693b0b765046a4.md) | 147 | `declaration-track:06d950e5ee693b0b765046a4bc47931fb0f07e1b7ab0b9cfe7c64557fe248c5d` |
| 14 | `class` | [VAddAssocClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/vaddassocclass--52c8655135466f30c9c0a88a.md) | 152 | `declaration-track:52c8655135466f30c9c0a88a5a4a9b9b75b40fd44cf9d9af61fb47cca9991508` |
| 15 | `class` | [IsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/isscalartower--6f4721e84ba14815bd39af19.md) | 160 | `declaration-track:6f4721e84ba14815bd39af196eed5981dd8d328c98c540221d44ed7266499845` |
| 16 | `lemma` | [smul_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-assoc--8eb8be66f9db167cb99a30a0.md) | 165 | `result-track:8eb8be66f9db167cb99a30a0432801a3a1c0cb7c8cdb844e342e5e774d9f2912` |
| 17 | `instance` | [Semigroup.isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/semigroup-isscalartower--8ef7f56607f8031ebb3810c2.md) | 169 | `declaration-track:8ef7f56607f8031ebb3810c20d2ccdadc0573edeb4328c4d8d13e22009e70bdf` |
| 18 | `class` | [IsCentralVAdd](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/iscentralvadd--b3cf2b843a2aeac2dbda450d.md) | 174 | `declaration-track:b3cf2b843a2aeac2dbda450d0ad5b5282a6574d34a95e3ffa152311cc2fcc5a2` |
| 19 | `class` | [IsCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/iscentralscalar--d8b05034c7c6a89503cd5a13.md) | 182 | `declaration-track:d8b05034c7c6a89503cd5a1392249620c5f71192fbc26a19a0d5e6f28f73c1b7` |
| 20 | `lemma` | [IsCentralScalar.unop_smul_eq_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/iscentralscalar-unop-smul-eq-smul--247944e68043d817d5acff97.md) | 187 | `result-track:247944e68043d817d5acff97668cdcf11ea07d3660989726cd98f7c21d3bc95f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/instance--c65c4db9e92033e515ecf0b9.md) | 198 | `declaration-track:c65c4db9e92033e515ecf0b9f497a8656900f630750bb2cd6e61878d9550a4a1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/instance--db3a394c8e6332b12d5ba6a0.md) | 203 | `declaration-track:db3a394c8e6332b12d5ba6a0fbd0059e40c5ec7087cd6075c435a07747bdc3d1` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/instance--acbbb6bbaeb3ed5940fb6abb.md) | 208 | `declaration-track:acbbb6bbaeb3ed5940fb6abb92c6376b2c042fe83ab7036e33f4bb2118149134` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/instance--887f84cdab17b498396c8752.md) | 214 | `declaration-track:887f84cdab17b498396c8752ac486d3f463e40e65bbda104bdc687805dbc9892` |
| 25 | `def` | [comp.smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/comp-smul--4952738d484f0af6ef4a339b.md) | 225 | `declaration-track:4952738d484f0af6ef4a339b6b8e18eb97284f844349e87be7c22e958ced03ff` |
| 26 | `abbrev` | [comp](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/comp--427f5e64e74741cd4afc89f7.md) | 235 | `declaration-track:427f5e64e74741cd4afc89f70ab4807aa97a56d63a9a855a1ee401f3e85cfcc9` |
| 27 | `lemma` | [comp.isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/comp-isscalartower--0dbfc9584c0af8d91427a435.md) | 251 | `result-track:0dbfc9584c0af8d91427a435f3012798e53461f2acfa43567323b4c3200a8cbd` |
| 28 | `lemma` | [comp.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/comp-smulcommclass--126535752b64f02920571e87.md) | 262 | `result-track:126535752b64f02920571e87ee8391616e6877432b5d1b6f7553cd4feabef818` |
| 29 | `lemma` | [comp.smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/comp-smulcommclass--e617cf4ded1acebdb7846114.md) | 273 | `result-track:e617cf4ded1acebdb7846114a1e3a0a566690244a5329cc0ba0ebe5a9e10b07f` |
| 30 | `lemma` | [mul_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/mul-smul-comm--2b5d50f665fb5a6763f2a05c.md) | 285 | `result-track:2b5d50f665fb5a6763f2a05cb9a3b87f037d44d292a997754fd3c800f87d461f` |
| 31 | `lemma` | [smul_mul_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-mul-assoc--f49791c41b5310e6d77826ce.md) | 290 | `result-track:f49791c41b5310e6d77826ceb927026985e4dba837a9e1dc34f113aa79616c93` |
| 32 | `lemma` | [smul_div_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-div-assoc--f1f1f7bf67fc72f43b064297.md) | 295 | `result-track:f1f1f7bf67fc72f43b06429755e9f19252e7f07d40199d33933a46589881bf23` |
| 33 | `lemma` | [smul_smul_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-smul-smul-comm--15612f64692548cdbe79ea49.md) | 299 | `result-track:15612f64692548cdbe79ea49f7a9c28dc7596ec643f5bd34fd0a3bbebc095a02` |
| 34 | `lemma` | [smul_mul_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-mul-smul-comm--34e06faee41901ede6f73c26.md) | 306 | `result-track:34e06faee41901ede6f73c26cd7040c69d3460ebd515744d0c9b6d8a3ad12fed` |
| 35 | `lemma` | [mul_smul_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/mul-smul-mul-comm--05bd8e9e0541d9325c441511.md) | 317 | `result-track:05bd8e9e0541d9325c441511c92911c16ecacd7667ba9df6fb9807010682528b` |
| 36 | `lemma` | [Commute.smul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/commute-smul-right--5d3a469a41f16603151accdc.md) | 324 | `result-track:5d3a469a41f16603151accdcbf56d0fc68061de67c2ba36454d7e7c9bf867d3a` |
| 37 | `lemma` | [Commute.smul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/commute-smul-left--66a9f20ae35642762d5bae38.md) | 329 | `result-track:66a9f20ae35642762d5bae38b58cdf66ca2c4ef3b5426c08c50a212176ae6576` |
| 38 | `lemma` | [smul_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-smul--b8e45e2b60a2706d799ac5f8.md) | 338 | `result-track:b8e45e2b60a2706d799ac5f8bf814629fa331a49a9eed203699b40da62a6b6a8` |
| 39 | `lemma` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/one-smul--3e5ef11bad5ed66698be7e6e.md) | 343 | `result-track:3e5ef11bad5ed66698be7e6edd918cd51388a784f2cd84e88d64e2aa6059029d` |
| 40 | `lemma` | [one_smul_eq_id](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/one-smul-eq-id--96c5f46ec180f90dfaa3d185.md) | 347 | `result-track:96c5f46ec180f90dfaa3d185dbaa98728c9103033e33a970d71af4b9fa16b3d9` |
| 41 | `lemma` | [comp_smul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/comp-smul-left--5a21b5cab34f84bab7c16a2c.md) | 351 | `result-track:5a21b5cab34f84bab7c16a2c50688f27b00f166abaed44f73f7a817155814ca7` |
| 42 | `theorem` | [smul_iterate](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-iterate--29f1ecef3584896180c4da2f.md) | 357 | `result-track:29f1ecef3584896180c4da2f24546a3d222a56c81dc66bd4e365cf6b3b28d9aa` |
| 43 | `lemma` | [smul_iterate_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-iterate-apply--304ea5ca860f448ef5bc3b4d.md) | 362 | `result-track:304ea5ca860f448ef5bc3b4d9bcd215504fd9718e2ff3983ac0b396be1b019c5` |
| 44 | `abbrev` | [Function.Injective.mulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/function-injective-mulaction--1ab0c6f2734b16b7d6d9178d.md) | 369 | `declaration-track:1ab0c6f2734b16b7d6d9178d52892789577253d7c0ab51c1b58ba584a35bc81b` |
| 45 | `abbrev` | [Function.Surjective.mulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/function-surjective-mulaction--023a00fc213adab1990af9f3.md) | 379 | `declaration-track:023a00fc213adab1990af9f342c3e49421b3ff428eac207ebf2fd18c03428bf3` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/instance--ca61d66d07f031caa889ecbf.md) | 396 | `declaration-track:ca61d66d07f031caa889ecbf7897a3d4b9c96da2d6518ac204bfb62826f9c71f` |
| 47 | `instance` | [IsScalarTower.left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/isscalartower-left--d93b350c4f871f645caf1547.md) | 402 | `declaration-track:d93b350c4f871f645caf1547185fa2911adac1bc9c95364bd6d17e97715eff61` |
| 48 | `lemma` | [smul_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-pow--58cbbe941f947ab8c7fe4fb8.md) | 410 | `result-track:58cbbe941f947ab8c7fe4fb876af76bfccf8c76075ef901d14e8056b176fd6ad` |
| 49 | `lemma` | [inv_smul_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/inv-smul-smul--d51e765f9ed4d6ec31b09acd.md) | 420 | `result-track:d51e765f9ed4d6ec31b09acd22b797a12f81cbf0d851f2a0204b4c0f7df0971b` |
| 50 | `lemma` | [smul_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-inv-smul--936e011e3e2a422cbb6e57a3.md) | 423 | `result-track:936e011e3e2a422cbb6e57a3561c54961fad6e5523e8bb946cb9661efd12e3d6` |
| 51 | `lemma` | [inv_smul_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/inv-smul-eq-iff--904e24b1e19f3d2a9695072b.md) | 425 | `result-track:904e24b1e19f3d2a9695072b6ead9e1aff5fd71804ab782733e680b8c6615173` |
| 52 | `lemma` | [eq_inv_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/eq-inv-smul-iff--fde779275874ef156cc99edc.md) | 428 | `result-track:fde779275874ef156cc99edc9d0e4602ebffd172d0fd8ae93bcb5814f3404b59` |
| 53 | `lemma` | [Commute.smul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/commute-smul-right-iff--e68a9e9289eebe3af7d34248.md) | 434 | `result-track:e68a9e9289eebe3af7d34248e98a56a85dedb3bb18dc79934c3acdfc31c26066` |
| 54 | `lemma` | [Commute.smul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/commute-smul-left-iff--3b9b5bf22dd67ec8bb3b0747.md) | 437 | `result-track:3b9b5bf22dd67ec8bb3b07473a347bee748e01c3fea51e89ec1c34be542e4611` |
| 55 | `lemma` | [smul_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-inv--c4a78724dd54a57ecc92556b.md) | 444 | `result-track:c4a78724dd54a57ecc92556bdb3f595db4135577076debc6b03f0470e126e5aa` |
| 56 | `lemma` | [smul_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-zpow--0392831d99e7cf50168cd58b.md) | 447 | `result-track:0392831d99e7cf50168cd58bc9bdee5547ce3e0ce3a14d5899820017abd4eec8` |
| 57 | `lemma` | [SMulCommClass.of_commMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smulcommclass-of-commmonoid--f35d00a1597d54f7e28fbbd1.md) | 453 | `result-track:f35d00a1597d54f7e28fbbd1c7428f8ed429c723efef992df05165aca07b58cc` |
| 58 | `lemma` | [smul_one_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-one-smul--367054844b771b17f2c36308.md) | 466 | `result-track:367054844b771b17f2c363088193372d6a837ec1d969a4063143d4d5852664ca` |
| 59 | `lemma` | [smul_one_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-one-mul--de8526e5b0cbe12fd3d6a05d.md) | 471 | `result-track:de8526e5b0cbe12fd3d6a05d2cc79103a67d48317ffac6cf28b19a0e70807ae7` |
| 60 | `lemma` | [mul_smul_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/mul-smul-one--cc0a530060715df1b1ffdca1.md) | 475 | `result-track:cc0a530060715df1b1ffdca178e4c475fc624f49cb480f9a1c6d9f6f1c0899ab` |
| 61 | `lemma` | [IsScalarTower.of_smul_one_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/isscalartower-of-smul-one-mul--5492bd059761db7675bb5cc7.md) | 479 | `result-track:5492bd059761db7675bb5cc70f2bdfa5bf7c97d4be67dd19ed3f74084792baf4` |
| 62 | `lemma` | [SMulCommClass.of_mul_smul_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smulcommclass-of-mul-smul-one--f7c1b54e8863d4c0533b56d7.md) | 484 | `result-track:f7c1b54e8863d4c0533b56d735d14088b4a96b81d8dc61783e3ca5c55ed8332b` |
| 63 | `class` | [MulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/muldistribmulaction--9efedc563f40a2e711fcf21c.md) | 493 | `declaration-track:9efedc563f40a2e711fcf21c7aea6945010e5c434e3d30c71948a3223d10adf8` |
| 64 | `lemma` | [smul_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantae171e4e2ab38c1d544a9bc5ce13453fa5066380426c4a7bac8e458c120c18ad.lean/declarations/smul-mul--671d4f88edb83777914bd8cd.md) | 504 | `result-track:671d4f88edb83777914bd8cde4ae57b7da64954b4504992f062384b5d70c1d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
