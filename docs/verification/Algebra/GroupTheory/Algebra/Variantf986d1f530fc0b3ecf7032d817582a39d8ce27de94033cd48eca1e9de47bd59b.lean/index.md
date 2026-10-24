# Verification target: GRWTSK.Algebra.GroupTheory.Algebra.Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c86fa2c9e8239dd99ddb9d25368c5e573aa70b4",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c86fa2c9e8239dd99ddb9d25368c5e573aa70b4`.

Source path: `GRWTSK/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--18da05b67c7d8da14ebebde1.md) | 35 | `declaration-track:18da05b67c7d8da14ebebde1e32c94fa11821731ab0a27aa10bbc6467dcb144d` |
| 2 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coe-one--18e0eeb037ef72b19e81d56a.md) | 38 | `result-track:18e0eeb037ef72b19e81d56a0c977e3b824552d347f0adc8c5e22265b2a9c13e` |
| 3 | `theorem` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/one-apply--a0c31154134eb30acef8a7c0.md) | 44 | `result-track:a0c31154134eb30acef8a7c05511bf2a09aca09fd0ae8d48e7e55f708f4a9d78` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--d85447d6ef60983b7a6c5928.md) | 50 | `declaration-track:d85447d6ef60983b7a6c592861e4266f17409382b9e2f8feeb9a5d107b6c8261` |
| 5 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coe-inv--733848b133a90e862aed86de.md) | 53 | `result-track:733848b133a90e862aed86deb5333d17cc00b05e4177d60b7f9a1fda4f925946` |
| 6 | `theorem` | [inv_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/inv-apply--e9f9c4e085d5bb813b1da313.md) | 59 | `result-track:e9f9c4e085d5bb813b1da313f96bc25a2aff24cc77b61dee1e7896e4e1c62598` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--356c7af0b831ec0fbdc4ffdd.md) | 65 | `declaration-track:356c7af0b831ec0fbdc4ffddf861aa2e844b1120daa290766c7800c021668ec8` |
| 8 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coe-mul--9b6523e3b53a95abe618a8cf.md) | 69 | `result-track:9b6523e3b53a95abe618a8cf02a90b39f9abf4ac847ce9bc03cca25c88069bb9` |
| 9 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/mul-apply--373b8c7f10a70cdf12e92325.md) | 75 | `result-track:373b8c7f10a70cdf12e923252670bf20cec56df7b4da89b5986a15db37a7cff8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--a0be123a3269861975a94a9c.md) | 81 | `declaration-track:a0be123a3269861975a94a9c601eb94fb3eaf2f343153a96e104700778e57a36` |
| 11 | `def` | [coeFnMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coefnmonoidhom--011df6aa5da5ad6b3f3c3dd2.md) | 86 | `declaration-track:011df6aa5da5ad6b3f3c3dd284f4f9939f6e6bc1521e59ab1fcfc6507af3e09d` |
| 12 | `def` | [constMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/constmonoidhom--c8823f95e29209069886a3c4.md) | 95 | `declaration-track:c8823f95e29209069886a3c422ca657c761b2f971926093995d394ce375dde8f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--506e76296625a7f025ae079f.md) | 102 | `declaration-track:506e76296625a7f025ae079fbcf20854916ea384bcd48155d3d3c30542a85cc0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--317cb7274f240c8a89af13fb.md) | 105 | `declaration-track:317cb7274f240c8a89af13fbc57265f6cc4598e0353a3b8a642755dc1ab144b9` |
| 15 | `def` | [charFn](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/charfn--b95587a71767e2a3a4d857dd.md) | 114 | `declaration-track:b95587a71767e2a3a4d857ddd3b084c86b61c82b62eee64fd3fc9f6b840fa667` |
| 16 | `theorem` | [coe_charFn](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coe-charfn--f3b12d877795042a4b00f9fb.md) | 118 | `result-track:f3b12d877795042a4b00f9fbea0d87840dab79458cae5a7d554c6185e0680247` |
| 17 | `theorem` | [charFn_eq_one](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/charfn-eq-one--c02b256d0e4199bbe7c97985.md) | 122 | `result-track:c02b256d0e4199bbe7c97985a92d4b31b3ff0ada7775a14215fab66c8394e25b` |
| 18 | `theorem` | [charFn_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/charfn-eq-zero--2f7280839dca86e18e694edc.md) | 126 | `result-track:2f7280839dca86e18e694edc5b5bf71cab1c76c5ea65fb33a78c2fc9e97b2866` |
| 19 | `theorem` | [charFn_inj](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/charfn-inj--2333b717b5aab6d3d91ab03c.md) | 130 | `result-track:2333b717b5aab6d3d91ab03c08cf863630c36fa09b432d93b4b9e729926f3470` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--30c587ab8b02fd7cd327b95d.md) | 138 | `declaration-track:30c587ab8b02fd7cd327b95d0735b0535caf8281bc2e589f30c2a03eeaffe5f9` |
| 21 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coe-div--87d6f177e4535618c2cbec05.md) | 142 | `result-track:87d6f177e4535618c2cbec05db0e08877c3280e8fc2b663fcc6b61db7470e171` |
| 22 | `theorem` | [div_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/div-apply--86dc2ab12c0aa6222968ceb8.md) | 148 | `result-track:86dc2ab12c0aa6222968ceb8d6ca5dbadefedab4f28b2f62664cfd03e4cc1c0a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--94583c92d4b76abfbf623454.md) | 154 | `declaration-track:94583c92d4b76abfbf623454d8dbda9d6300b80c9ac41b947805b3d2bcf833f8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--c28fcf39519876a879204c53.md) | 157 | `declaration-track:c28fcf39519876a879204c53e80c4615b94a1eb41e70e4e63f4be6d5fd2c4286` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--680e8cba5cfc560448006d74.md) | 161 | `declaration-track:680e8cba5cfc560448006d74261c2e6fbdaf1d44245d0178886462b6c4745eec` |
| 26 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/smul--d9b07833ebb31083e67ca5d9.md) | 165 | `declaration-track:d9b07833ebb31083e67ca5d9b2579f181980b6ca7db68045b9de4bab997723ce` |
| 27 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coe-smul--06cff21769cd2ce645dfe6e3.md) | 169 | `result-track:06cff21769cd2ce645dfe6e349bbf8963a3dbe09641bd372d4c4509d2d25b74d` |
| 28 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/smul-apply--a7940bbf8ef79ff720ae2aed.md) | 174 | `result-track:a7940bbf8ef79ff720ae2aed154c5a249c13c293a13eacf5cdd1c7b87aea05ee` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--0eb78e3cb8a87edb6d2d7b1b.md) | 179 | `declaration-track:0eb78e3cb8a87edb6d2d7b1bd5c128dc13d2d9d7ffabdf4bcc768df96f198809` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--d515c235c6ea6c2fca2bdaaa.md) | 183 | `declaration-track:d515c235c6ea6c2fca2bdaaadb26d5c47dc54988cfbe9657fb20502f83acba3f` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--0fe61fe8d264595ef69ab29e.md) | 186 | `declaration-track:0fe61fe8d264595ef69ab29ed3f3d5428c3f678a7fb9ba4a39766860ae6a6e46` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--de65e6da96b037429414fdc2.md) | 189 | `declaration-track:de65e6da96b037429414fdc2c6e3992943919dac4aaf632193f3b3b58c133e3b` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--53a72594161f08cfe112ee4d.md) | 192 | `declaration-track:53a72594161f08cfe112ee4d72294dc5413ee30df98f941fb6ac145eb23e64e2` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--7b5c23a7d4b2a92a7b7aee43.md) | 197 | `declaration-track:7b5c23a7d4b2a92a7b7aee4334679f5574b99ae036ecbfbf5c09bc6dfb95c3b2` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--1fc65f8f50431f5956dd3475.md) | 202 | `declaration-track:1fc65f8f50431f5956dd347501ee4138cd2732b215b4d38c11a9affe79eb00cd` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--ef6907781bcdc1b1a7970225.md) | 207 | `declaration-track:ef6907781bcdc1b1a7970225ec6af13b241a822dceffb39eef90754a2871b226` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--4743f896890f19b87b792f9c.md) | 211 | `declaration-track:4743f896890f19b87b792f9c3e51865601d48ce0940ff4bb62caace4bc28dec2` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--f9493e4903d9bdfc792b39d4.md) | 214 | `declaration-track:f9493e4903d9bdfc792b39d4367bc0b590f2f31464f030f0eeba3b1749453f44` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--c7ef3563c318f3fa897b1ece.md) | 218 | `declaration-track:c7ef3563c318f3fa897b1ecef56e57f188f05ff5bf9a0ddad1c531dd2efb941c` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--7d6bbcfb384a07890f94af41.md) | 222 | `declaration-track:7d6bbcfb384a07890f94af419e1e1003549fa98a16bf463cc2df1a5b81b24bd2` |
| 41 | `def` | [constRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/constringhom--d3cd5d0c4f1def2beed851c3.md) | 228 | `declaration-track:d3cd5d0c4f1def2beed851c3f0c4831a792945d20993b195d8164ab81129797f` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--7bc4a49fce4c79c25834b956.md) | 232 | `declaration-track:7bc4a49fce4c79c25834b956d4ccd04cc9f66d538474f7745d899e4bd969a9bc` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--35a02b2fc78e4f28277f89f1.md) | 236 | `declaration-track:35a02b2fc78e4f28277f89f17ca2e97cbaa00009d79e5203e37929ab861ffc57` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--5633e51499e17c49224c445c.md) | 240 | `declaration-track:5633e51499e17c49224c445c4c49ceb954693b5e5125614fc56c6d5752ec23bb` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--0f889f8fd5abd16b28a325da.md) | 244 | `declaration-track:0f889f8fd5abd16b28a325da55a1d8cdfe411fc16ec264ff28e1a893751d64f6` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--61ef172f9342d18a1dc31dab.md) | 248 | `declaration-track:61ef172f9342d18a1dc31dabeb773ce88b0f504ddea09ae03994079f80393d97` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--82ad7c3a20a98b1b5c22c2d6.md) | 252 | `declaration-track:82ad7c3a20a98b1b5c22c2d684c90c6e71590208452015acc2dc20f0a94f64d6` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--b7a9b6fa7b596cc4a165aaa7.md) | 257 | `declaration-track:b7a9b6fa7b596cc4a165aaa7df01d1607563cb3f1d92b765afd5030b273bb701` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--52fe37c190d5e9f3ac400fba.md) | 262 | `declaration-track:52fe37c190d5e9f3ac400fba212591bd62089829eb0d7f90f4ffd4864df36d5e` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--dec30d72071583a3cb47104a.md) | 266 | `declaration-track:dec30d72071583a3cb47104a64e094101ccb362a34d53f11dfabf0d13c12a857` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--4696c87d254efdde4559bd6b.md) | 273 | `declaration-track:4696c87d254efdde4559bd6b857bdc45e529d2ffe69f40561b5d68a53af48e19` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--75fbf0e720778347f6762618.md) | 276 | `declaration-track:75fbf0e720778347f676261817dcfd9a9d6c5f288b60f69e7fcfb027a31e711d` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--d7ba0a4d69dc78c5dec94b90.md) | 280 | `declaration-track:d7ba0a4d69dc78c5dec94b90075b1098f51ba8da5815e08aa1180125389ba033` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/instance--4109312d2169e73d016e2d52.md) | 287 | `declaration-track:4109312d2169e73d016e2d52c772e99cd2065cb379fac627a947984a3b1bb76e` |
| 55 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coe-algebramap--0ae75b62066c77552148af60.md) | 299 | `result-track:0ae75b62066c77552148af602905154a3e5a5aa15406545150b29f3ea5f139b2` |
| 56 | `def` | [coeFnRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coefnringhom--320f8f4ae983ee7b1378fb59.md) | 308 | `declaration-track:320f8f4ae983ee7b1378fb59235c143ea631f4404c2db6eadf403e2c3251f815` |
| 57 | `def` | [coeFnₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coefn--308a741cda810ed0fc83471b.md) | 313 | `declaration-track:308a741cda810ed0fc83471b54bf3237072b093cc98721dd661a23968c954958` |
| 58 | `def` | [coeFnAlgHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/coefnalghom--cad047035abc48f60b658410.md) | 319 | `declaration-track:cad047035abc48f60b658410b45cc5f53b56ce3f178de4165e9b1cab279e9c0d` |
| 59 | `def` | [evalMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/evalmonoidhom--17b125940c5b555b95f9a3bf.md) | 330 | `declaration-track:17b125940c5b555b95f9a3bf71920bd0210b17738f4e819c0d3b7885161481a4` |
| 60 | `def` | [evalₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/eval--3e9a1828c12ccd61ad7a97a4.md) | 334 | `declaration-track:3e9a1828c12ccd61ad7a97a4c6a2f874583dcee98196d6c99d93ed5e22de4544` |
| 61 | `def` | [evalRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/evalringhom--635c76d32449d088ffbe0a1d.md) | 339 | `declaration-track:635c76d32449d088ffbe0a1d44a88bb7aa1cf51c41e0abb3b94201a275b7e5ee` |
| 62 | `def` | [evalₐ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/eval--b3baef15eb0ba5ad9d6f018d.md) | 344 | `declaration-track:b3baef15eb0ba5ad9d6f018d506e095ac74e7d720703c4cb0f2d95cadce8b8a8` |
| 63 | `def` | [comapMulHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/comapmulhom--4dd5a49f43242699fdc056c7.md) | 357 | `declaration-track:4dd5a49f43242699fdc056c78093426bda9699ac6868f7533fb48c1f64ff6cf6` |
| 64 | `def` | [comapMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/comapmonoidhom--eabc3fe8a1d446ba7b404c88.md) | 365 | `declaration-track:eabc3fe8a1d446ba7b404c884ea65b5d3c8b22688929fd6afde0a93064ab4aa6` |
| 65 | `def` | [comapₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/comap--956a9284663c799b07122c94.md) | 374 | `declaration-track:956a9284663c799b07122c9420f96979d8ff8bc67e2fe7fb6220a0ba2108460f` |
| 66 | `def` | [comapRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/comapringhom--ce3f14943a307d806b2acc14.md) | 383 | `declaration-track:ce3f14943a307d806b2acc14ad726f4ae5d538adc6ce1058b2fcf330b30b894d` |
| 67 | `def` | [comapₐ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/comap--e176d534614ba2d5b3680143.md) | 391 | `declaration-track:e176d534614ba2d5b36801436333861ed108d9756472e438eb6a2c28d2b3ba9d` |
| 68 | `lemma` | [ker_comapₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/ker-comap--deaf66b1bae45e6f957af79d.md) | 396 | `result-track:deaf66b1bae45e6f957af79de3e18d96331b9a67d4dbf231630d2764580918d7` |
| 69 | `def` | [congrLeftMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/congrleftmulequiv--6032c370e628fa9a816af372.md) | 404 | `declaration-track:6032c370e628fa9a816af3723167065fdc50d414966158e70719ca3d23fed815` |
| 70 | `def` | [congrLeftₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/congrleft--2d96e6659449c57565a3541f.md) | 412 | `declaration-track:2d96e6659449c57565a3541f22040df0f4b767639eba7a18ca95a0a3d57cd2db` |
| 71 | `def` | [congrLeftRingEquiv](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/congrleftringequiv--23dae86bddfbb4c0fcbb4fe8.md) | 420 | `declaration-track:23dae86bddfbb4c0fcbb4fe8a26ab3b57f6912bdfd2c3f53f6d2e6791353cb33` |
| 72 | `def` | [congrLeftₐ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/declarations/congrleft--e8c6f6ed878dfce62fc75dfe.md) | 429 | `declaration-track:e8c6f6ed878dfce62fc75dfed9bb1f819577e918653c4508ebed37d9d972343a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
