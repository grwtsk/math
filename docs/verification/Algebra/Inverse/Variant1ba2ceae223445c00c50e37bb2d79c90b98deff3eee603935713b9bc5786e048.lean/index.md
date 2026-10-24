# Verification target: GRWTSK.Algebra.Inverse.Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae`.

Source path: `GRWTSK/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/inv-aux--41e5055d914c13a13be17b57.md) | 65 | `declaration-track:41e5055d914c13a13be17b570fe01d17adcc121672d5458a760312a112aea9c1` |
| 2 | `theorem` | [coeff_inv_aux](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/coeff-inv-aux--9df14ee160266766b93dea5b.md) | 74 | `result-track:9df14ee160266766b93dea5b00413e5fa0b7517ed63fdf2149d2d79352f8dc6f` |
| 3 | `def` | [invOfUnit](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/invofunit--a65ff0d970b8d977ff6c48b9.md) | 86 | `declaration-track:a65ff0d970b8d977ff6c48b92251e1b3591b7ba5cf9007ba6852f037d80dab12` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/coeff-invofunit--b6b0220a822a731f2f625bb4.md) | 89 | `result-track:b6b0220a822a731f2f625bb48b14f99e4125e89108aa5fdbb720aa3cc5a96d7e` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/constantcoeff-invofunit--131f37f5785f7de90f4fdaa9.md) | 99 | `result-track:131f37f5785f7de90f4fdaa9c63fe38a2e63a50b7e81ed4649db66e25c8437be` |
| 6 | `theorem` | [mul_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/mul-invofunit--96fd0a5c40467c207109a5ba.md) | 105 | `result-track:96fd0a5c40467c207109a5ba0d6c0d8ca0ce54ad9f1ded58f6527ab64ee0716d` |
| 7 | `theorem` | [invOfUnit_mul](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/invofunit-mul--9dcf8c0c816138ed4ea35ba6.md) | 131 | `result-track:9dcf8c0c816138ed4ea35ba685caac98423621a4c9d03aa04fec7a71a1d35f74` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/isunit-iff-constantcoeff--a90acaffe50a7b1dde9be77b.md) | 138 | `result-track:a90acaffe50a7b1dde9be77b642b726623fd09fa55a3f2425355b4614734acdb` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/instance--c253284a714fa22e431db779.md) | 152 | `declaration-track:c253284a714fa22e431db77933a63cba1313609149e1679929583d5e27accfa3` |
| 10 | `theorem` | [map.isLocalHom](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/map-islocalhom--274f49125b596f93f644f7a7.md) | 172 | `result-track:274f49125b596f93f644f7a7eb27e968a356afb7f376521a12e83cd3c6bc692a` |
| 11 | `def` | [inv](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/inv--4a7dc9c14686b0e5b41d358b.md) | 191 | `declaration-track:4a7dc9c14686b0e5b41d358be9ce46c8debd7c0f30b39a7c05ede664fec2f0db` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/instance--bbf715e63b9654130d96b784.md) | 194 | `declaration-track:bbf715e63b9654130d96b784114d54eea65beea80eeac610fdcc8c263d52e293` |
| 13 | `theorem` | [coeff_inv](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/coeff-inv--a6ca412c577e6674c77dcf5a.md) | 197 | `result-track:a6ca412c577e6674c77dcf5ab3c146e9e0f2e4f0d088be20cc7cece9030e5435` |
| 14 | `theorem` | [constantCoeff_inv](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/constantcoeff-inv--d6e23b4707f32bf62f844ea0.md) | 206 | `result-track:d6e23b4707f32bf62f844ea0e171fb6332d1b1ba4b03a98459411810db6b6ccd` |
| 15 | `theorem` | [inv_eq_zero](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/inv-eq-zero--e9cf1f5f564adffc46dfb846.md) | 211 | `result-track:e9cf1f5f564adffc46dfb846f5de9c41824adec7180a8c225a65e37b04eaeec3` |
| 16 | `theorem` | [zero_inv](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/zero-inv--aa748e8c7eb618311b03a20c.md) | 220 | `result-track:aa748e8c7eb618311b03a20cad30702ee3b7ca69b9212214f8836954822f627f` |
| 17 | `theorem` | [invOfUnit_eq](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/invofunit-eq--2a77a2139d1ac9b9c9bf9c45.md) | 224 | `result-track:2a77a2139d1ac9b9c9bf9c455c38e1c58b2bd944d4c045caf6dc42221730a092` |
| 18 | `theorem` | [invOfUnit_eq'](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/invofunit-eq--f42c1e727c6c393166220b69.md) | 229 | `result-track:f42c1e727c6c393166220b69728b99926ab007d3842790661196a684a2fff6e9` |
| 19 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/mul-inv-cancel--2934fd0091f852d565cf864e.md) | 237 | `result-track:2934fd0091f852d565cf864e4880be88bf296f4320587823e3898a813b8d2469` |
| 20 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/inv-mul-cancel--3bfa1bd87be5d65aa804dff5.md) | 241 | `result-track:3bfa1bd87be5d65aa804dff5a19c1d09701c53e19774c3e024d5c96cb17fba4d` |
| 21 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/eq-mul-inv-iff-mul-eq--3c19ac95f5f09c60b2d153b4.md) | 244 | `result-track:3c19ac95f5f09c60b2d153b43cbe8b2c2f2416e308c6574d48c77abee298e983` |
| 22 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/eq-inv-iff-mul-eq-one--480065c411cbae67488d7114.md) | 249 | `result-track:480065c411cbae67488d71148ec7e85f33c441134bcb4dd956bb6791fee05fbd` |
| 23 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/inv-eq-iff-mul-eq-one--7e23cfac6e79368836fc5155.md) | 252 | `result-track:7e23cfac6e79368836fc51554350cd310065d5eecdea5e7c0ea99cf76173ce19` |
| 24 | `theorem` | [mul_inv_rev](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/mul-inv-rev--042030e40835fbc7baf7463c.md) | 256 | `result-track:042030e40835fbc7baf7463c732366a474ad1e7136aec46a9db1cc71f75be7cc` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/instance--cd60b192d6b7c716181aa787.md) | 268 | `declaration-track:cd60b192d6b7c716181aa7870fb9d15e81d519f778b3d07f80c1aa78b3f5e6d5` |
| 26 | `theorem` | [inv_pow](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/inv-pow--694ab3edc45e4abf4d436172.md) | 276 | `result-track:694ab3edc45e4abf4d436172a801476bf7c807d56d5fabfc153c2208dbba2ebe` |
| 27 | `theorem` | [C_inv](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/c-inv--ead76f8406fcd0960dd3e93b.md) | 281 | `result-track:ead76f8406fcd0960dd3e93b8075d8e2ee02c834cdb6745d22a7d8710459f12a` |
| 28 | `theorem` | [X_inv](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/x-inv--1dbedd2f8129390e08f5ecd1.md) | 288 | `result-track:1dbedd2f8129390e08f5ecd1398ce979f84037154af2dd0cc37ec94614159bc6` |
| 29 | `theorem` | [smul_inv](../../../../mathematics/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/declarations/smul-inv--736b8fd9241d02620191e810.md) | 292 | `result-track:736b8fd9241d02620191e810481472dab85d50765e00c4fcbd5e37d966530de1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
