# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f17308e6b72d3dcd99c04c51b742513f7eefac",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f17308e6b72d3dcd99c04c51b742513f7eefac`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.MulOppositeLemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_coe_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/inv-coe-set--610c89051aed543017cbdbcc.md) | 47 | `result-track:610c89051aed543017cbdbcc8070ee64d8349e39380ae952d9f6666e68b23dc1` |
| 2 | `lemma` | [smul_coe_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-coe-set--d1858c8f7582a2a0a09da7c7.md) | 51 | `result-track:d1858c8f7582a2a0a09da7c746b94ce2553986cbbdbb47491d33a1049683c268` |
| 3 | `lemma` | [coe_set_eq_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/coe-set-eq-one--ed97c266aa594cc65b7c099f.md) | 56 | `result-track:ed97c266aa594cc65b7c099ffd97166d63010a9bc753d036f7e4786969957f44` |
| 4 | `lemma` | [op_smul_coe_set](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/op-smul-coe-set--ab706c2dc8f86baf1a277a84.md) | 60 | `result-track:ab706c2dc8f86baf1a277a84f809111d9769305cc43797fcb73bd654b6c03b18` |
| 5 | `lemma` | [coe_div_coe](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/coe-div-coe--f49b456c71cb309e113967b6.md) | 65 | `result-track:f49b456c71cb309e113967b62ab71e893f10c27451c6881988d6d73f403e1787` |
| 6 | `lemma` | [mul_subgroupClosure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/mul-subgroupclosure--dd6550f531f77fe4080c2aae.md) | 75 | `result-track:dd6550f531f77fe4080c2aaea875c5efeb1834937e1cde3b59682e227d8df1e7` |
| 7 | `lemma` | [subgroupClosure_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/subgroupclosure-mul--fd02fc15312470baa9705ded.md) | 83 | `result-track:fd02fc15312470baa9705ded84db96c9265932a893b6d036b3f47c709ba5d796` |
| 8 | `lemma` | [pow_mul_subgroupClosure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/pow-mul-subgroupclosure--5b3611f5454203c0c38268b4.md) | 90 | `result-track:5b3611f5454203c0c38268b4f422a392880b53d17a8a1a74f4a5646f41443c35` |
| 9 | `lemma` | [subgroupClosure_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/subgroupclosure-mul-pow--e00ab90328b359103468e922.md) | 95 | `result-track:e00ab90328b359103468e922db9f20ea404a4ae3767794c48f5ac93228bf0823` |
| 10 | `theorem` | [inv_subset_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/inv-subset-closure--7092946ec9a3a535a18dcb1a.md) | 104 | `result-track:7092946ec9a3a535a18dcb1a5a165ca4387de40373646462811cd8e64817aa12` |
| 11 | `theorem` | [closure_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-tosubmonoid--5b5aab9ee02dd3b7d5b1d8d4.md) | 109 | `result-track:5b5aab9ee02dd3b7d5b1d8d4c1f62d4ff375257a42d52b1643cea9ecb828cfa9` |
| 12 | `theorem` | [closure_induction_left](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-induction-left--52e1fe7314a50e7323ae466c.md) | 123 | `result-track:52e1fe7314a50e7323ae466cf8d55339bf4594c55aa65fde8d09ea8a16d6b001` |
| 13 | `theorem` | [closure_induction_right](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-induction-right--db4fe4f921d877a16e564655.md) | 142 | `result-track:db4fe4f921d877a16e564655f4c6ab4ffaa78d35269c498022be452e89c9a552` |
| 14 | `theorem` | [closure_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-inv--43f2f38c39b999170bc9b0f4.md) | 155 | `result-track:43f2f38c39b999170bc9b0f450764fda77ef1edd15480b533298c1e5410c2eb3` |
| 15 | `lemma` | [closure_singleton_inv](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-singleton-inv--4e5a8b0303060ad041c93d55.md) | 159 | `result-track:4e5a8b0303060ad041c93d5595b97b87f811c98d2c8062a603e7c8d4dfe61307` |
| 16 | `theorem` | [closure_induction''](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-induction--2c704eb4051dab1ffa228cda.md) | 169 | `result-track:2c704eb4051dab1ffa228cda17bcb89dd86c7a1f526090f0b71b13ffba5d9a23` |
| 17 | `theorem` | [iSup_induction](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/isup-induction--ae3f16abbd193c0119e90ff3.md) | 184 | `result-track:ae3f16abbd193c0119e90ff34487858167ca6f21dd93b6d5ae455c5d15ef464f` |
| 18 | `theorem` | [iSup_induction'](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/isup-induction--a7d506860e040f1faf639a56.md) | 199 | `result-track:a7d506860e040f1faf639a56e46570245f2699589dd5dcbbaad047da528e1000` |
| 19 | `theorem` | [closure_mul_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-mul-le--c5ffbacf1320797194e1ae54.md) | 211 | `result-track:c5ffbacf1320797194e1ae547fe1a7c5c794214daa98bf6a0fd3d119f0600d6d` |
| 20 | `lemma` | [closure_pow_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-pow-le--771ba3755c79beb59fe3549c.md) | 217 | `result-track:771ba3755c79beb59fe3549c1cdebe4385e4dab487c893050145af83c4edda91` |
| 21 | `lemma` | [closure_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/closure-pow--fa15d343bfd1f9c81f54fb71.md) | 228 | `result-track:fa15d343bfd1f9c81f54fb71b59a84c8d023711b6140e6ddb75539135b9f8756` |
| 22 | `theorem` | [sup_eq_closure_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/sup-eq-closure-mul--7fd6a5be8c0f722703cbaf78.md) | 232 | `result-track:7fd6a5be8c0f722703cbaf787c00342a3c5a592aec28979654f95427e3e73591` |
| 23 | `theorem` | [set_mul_normalizer_comm](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/set-mul-normalizer-comm--cd7dce370a52c5cc4c27f4af.md) | 239 | `result-track:cd7dce370a52c5cc4c27f4afc9411081ec75fccd6a8c6f9fb4fe5893344b3908` |
| 24 | `theorem` | [set_mul_normal_comm](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/set-mul-normal-comm--304905312d68c263670167bf.md) | 247 | `result-track:304905312d68c263670167bf3b0b6d73ecbe77d7216bcea87e98c96204f0007c` |
| 25 | `theorem` | [coe_mul_of_left_le_normalizer_right](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/coe-mul-of-left-le-normalizer-right--062a0aa08a8a1b80051d228a.md) | 254 | `result-track:062a0aa08a8a1b80051d228a8789e8d15977aa0907819c1a245701434e8b78c3` |
| 26 | `theorem` | [coe_mul_of_right_le_normalizer_left](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/coe-mul-of-right-le-normalizer-left--c079e219d137bca1467a1e3b.md) | 276 | `result-track:c079e219d137bca1467a1e3b7e4dc5161b7dc8eb44343c76125ef3398b04d683` |
| 27 | `theorem` | [mul_normal](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/mul-normal--cfe33bfa31e44ca70f806db3.md) | 283 | `result-track:cfe33bfa31e44ca70f806db358430337fcca10ff95f8d64c00a462763ef3acc5` |
| 28 | `theorem` | [normal_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/normal-mul--bedcfdc23473ab53f7e9937e.md) | 289 | `result-track:bedcfdc23473ab53f7e9937efe28d6e11707f17e785ccac1d95438f73e9c52c1` |
| 29 | `theorem` | [mul_inf_assoc](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/mul-inf-assoc--ea74c6df65f5c432c871b380.md) | 293 | `result-track:ea74c6df65f5c432c871b38001a548feac86c20c90e613a6698e431dfdcb6e6b` |
| 30 | `theorem` | [inf_mul_assoc](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/inf-mul-assoc--ce07b0ce921212f9bbbd9562.md) | 307 | `result-track:ce07b0ce921212f9bbbd956227af6d90bcbc1c95efc14301900ae10473be2428` |
| 31 | `instance` | [sup_normal](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/sup-normal--a953f1c02a93432c6659e54a.md) | 321 | `declaration-track:a953f1c02a93432c6659e54ae3516ee983a76d57a26ec31e4ed3f38040a74405` |
| 32 | `theorem` | [smul_mem_of_mem_closure_of_mem](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-mem-of-mem-closure-of-mem--c92f08409e6806a4c95701ff.md) | 329 | `result-track:c92f08409e6806a4c95701ff8990cd8becb94380901e9b9b0e1a6f96ec7e60ce` |
| 33 | `theorem` | [smul_opposite_image_mul_preimage'](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-opposite-image-mul-preimage--1725e31f6f54e0016ebdf5a0.md) | 339 | `result-track:1725e31f6f54e0016ebdf5a03dafa8c90041201fc0d8cb5dbc9cd9bfae2cfa9d` |
| 34 | `theorem` | [smul_opposite_image_mul_preimage](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-opposite-image-mul-preimage--eca16e44d9773977cf5509ad.md) | 345 | `result-track:eca16e44d9773977cf5509adbba9fa48a7c4cf8a1af6f8d1f35d7b1f44d60030` |
| 35 | `def` | [pointwiseMulAction](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/pointwisemulaction--124ff8831ab8b8948af84090.md) | 359 | `declaration-track:124ff8831ab8b8948af84090b5497345c8572b73b561a7009c52086a9d368d29` |
| 36 | `theorem` | [pointwise_smul_def](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/pointwise-smul-def--63dba42d1f59ff1ed41321ce.md) | 370 | `result-track:63dba42d1f59ff1ed41321ce31d140efacd8f638f076e31c2afb93a210234ff8` |
| 37 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/coe-pointwise-smul--6dedab1f5d39cde9d65bb4f8.md) | 375 | `result-track:6dedab1f5d39cde9d65bb4f84329af4a2aa08db0349c65be939e5362dac77b35` |
| 38 | `theorem` | [pointwise_smul_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/pointwise-smul-tosubmonoid--2c399142d108e70d3d80fad6.md) | 379 | `result-track:2c399142d108e70d3d80fad68497020a71527e0e7d4d8629b10d910219304feb` |
| 39 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-mem-pointwise-smul--5b2d5cac850d0870e4dfeada.md) | 383 | `result-track:5b2d5cac850d0870e4dfeadad7133e270f5e80ed4cdc1546340b668df5bf1276` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/instance--dad1cf4553953be68f357977.md) | 386 | `declaration-track:dad1cf4553953be68f357977e0f06da6168d67152d450255c406f9cc4cffae3c` |
| 41 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/mem-smul-pointwise-iff-exists--37a28cd2e1658fc105eee6d8.md) | 389 | `result-track:37a28cd2e1658fc105eee6d841719c49ada52e4a19817dccf394663902b6c437` |
| 42 | `theorem` | [smul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-bot--74d8da90f03c846bdf6aef34.md) | 394 | `result-track:74d8da90f03c846bdf6aef340a02d6cff81e0a7568a19c2e2988a7ab502e45a7` |
| 43 | `theorem` | [smul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-sup--6aed54f26b96b97cb05b12c6.md) | 397 | `result-track:6aed54f26b96b97cb05b12c64ce49ab1e451025bef4a950c0903ad77ce4a4461` |
| 44 | `theorem` | [smul_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-closure--6454d24035949208db0861a4.md) | 400 | `result-track:6454d24035949208db0861a44d285aea8ada4bcb20943c88e840bcd8446d9ee8` |
| 45 | `instance` | [pointwise_isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/pointwise-iscentralscalar--9094f0e86c7f2612be4c8020.md) | 403 | `declaration-track:9094f0e86c7f2612be4c8020f0e5ceaa1512d5ff039b4d95a77787560b3cf8f7` |
| 46 | `theorem` | [conj_smul_le_of_le](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/conj-smul-le-of-le--6542078a89e351f8c70168fb.md) | 407 | `result-track:6542078a89e351f8c70168fbf4625619eddd38b5fe80a44d0e85a11cb0d6219f` |
| 47 | `theorem` | [conj_smul_subgroupOf](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/conj-smul-subgroupof--b7713efde2192f9e0ecf2e6e.md) | 412 | `result-track:b7713efde2192f9e0ecf2e6ec6f29486074191f48441ffba9812b530c6d9cbab` |
| 48 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-mem-pointwise-smul-iff--f3433c598ec40ea17a398477.md) | 427 | `result-track:f3433c598ec40ea17a3984777618107d575803549850439002e6a2dcf22275fa` |
| 49 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--376ca2ecbd9071f845558299.md) | 430 | `result-track:376ca2ecbd9071f845558299e63a191037b62bcd59e21e8071e5a833cabe0917` |
| 50 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/mem-inv-pointwise-smul-iff--91b5518fa8ac756b6903f570.md) | 434 | `result-track:91b5518fa8ac756b6903f570a4f67a1b151bc2d85d0411b3f4630aca4a3de4ba` |
| 51 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/pointwise-smul-le-pointwise-smul-iff--97c82028984e6b22185ab187.md) | 438 | `result-track:97c82028984e6b22185ab187a8db226055ded3f323e36bdf9e5448a5feebe89d` |
| 52 | `theorem` | [pointwise_smul_subset_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/pointwise-smul-subset-iff--1186c04fa22d6ccd0f5037b1.md) | 441 | `result-track:1186c04fa22d6ccd0f5037b197b3d2d9fd8722af61d4dd87093b6ed3cba3840c` |
| 53 | `theorem` | [subset_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/subset-pointwise-smul-iff--16c7e38ec2da26c502422c5a.md) | 444 | `result-track:16c7e38ec2da26c502422c5a0870a59d6486ca9755ca6745dac2aa9b6fce8929` |
| 54 | `theorem` | [smul_inf](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/smul-inf--81330cea576b8bec93cb292b.md) | 448 | `result-track:81330cea576b8bec93cb292bfa277e3cd09e4c76d0f18f707d271f6dbc028f4d` |
| 55 | `def` | [equivSMul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/equivsmul--8d7f58c21943e8d21cae3b8c.md) | 453 | `declaration-track:8d7f58c21943e8d21cae3b8c0a90ba321f087588202cc1f30a369c69ea7ab2fa` |
| 56 | `theorem` | [subgroup_mul_singleton](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/subgroup-mul-singleton--cec36f7049a13aa625bd0ced.md) | 456 | `result-track:cec36f7049a13aa625bd0ceda5d2d769b032273842857859ee36bf269fd01b56` |
| 57 | `theorem` | [singleton_mul_subgroup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/singleton-mul-subgroup--3cc1f88ed9e216f64a0bf8c8.md) | 459 | `result-track:3cc1f88ed9e216f64a0bf8c8acb25d472d6e8a03c5d4775e4e250df25a102efd` |
| 58 | `theorem` | [Normal.conjAct](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/normal-conjact--bfbe21abe4ef1341308c6ab1.md) | 462 | `result-track:bfbe21abe4ef1341308c6ab182fbf2741bf776c5a692e32beb954843324ac8fb` |
| 59 | `theorem` | [Normal.conj_smul_eq_self](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/normal-conj-smul-eq-self--af3057d85676ad3ed5a21e0a.md) | 468 | `result-track:af3057d85676ad3ed5a21e0a3fd5c79fb911ca47fb5b2a8acc267d7f93d853e2` |
| 60 | `theorem` | [Normal.of_conjugate_fixed](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/normal-of-conjugate-fixed--2b7109e064fddf55fb8c4f60.md) | 473 | `result-track:2b7109e064fddf55fb8c4f606784239d8fa3ab2bde2e425ea6577076e972ffbd` |
| 61 | `theorem` | [normalCore_eq_iInf_conjAct](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean/declarations/normalcore-eq-iinf-conjact--b791d3f1d5b6237ca0ee060c.md) | 482 | `result-track:b791d3f1d5b6237ca0ee060ce51cf2e3e84efc4b296aa37a7a6721486053f390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
