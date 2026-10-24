# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3fabf4e16a964813870929bd330676eaddf6ef9",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3fabf4e16a964813870929bd330676eaddf6ef9`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/of-map--414652da86f31104ffcfae39.md) | 49 | `result-track:414652da86f31104ffcfae39fccdb5d859b8c3a0fa1f36e14f4d7753ea55189b` |
| 2 | `lemma` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/of-injective--c522debb737bf8bfe5bcc21b.md) | 52 | `result-track:c522debb737bf8bfe5bcc21b3768b5ada8920e8a8461b7a4ac3836d1dabf3443` |
| 3 | `class` | [MonoidWithZeroHomClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/monoidwithzerohomclass--9e07d9186a343e3e0740dec1.md) | 64 | `declaration-track:9e07d9186a343e3e0740dec11481e39bc6a2da13387da9dd657f1d45d5540d61` |
| 4 | `structure` | [MonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/monoidwithzerohom--dc9803114316443107abfca4.md) | 77 | `declaration-track:dc9803114316443107abfca432cddf3c202e4bd1cafa4dafb722aad1ec509a57` |
| 5 | `def` | [MonoidWithZeroHomClass.toMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/monoidwithzerohomclass-tomonoidwithzerohom--a848ea4300233fadec17542a.md) | 86 | `declaration-track:a848ea4300233fadec17542a277be45b6caf093242c381f9718f48da319245ef` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/instance--81581591e99873fea235ca40.md) | 91 | `declaration-track:81581591e99873fea235ca407a972f4cf105edcbf53727b526e1270fb6274ae6` |
| 7 | `instance` | [funLike](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/funlike--052d1ecd663346a449c12926.md) | 99 | `declaration-track:052d1ecd663346a449c12926cb313f573e1ac55a374eeb4203a636efc954c04e` |
| 8 | `instance` | [monoidWithZeroHomClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/monoidwithzerohomclass--6521c8f3ec2dd521e077f571.md) | 103 | `declaration-track:6521c8f3ec2dd521e077f571f15ea08aa57e60a7e1e7632fcf0811b0e2dd0aba` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/instance--897d420d8ee6cafdd2396650.md) | 108 | `declaration-track:897d420d8ee6cafdd23966503f862b78d71f559fc1920f2c3c393ef97b50bbc8` |
| 10 | `lemma` | [coe_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/coe-coe--e7b81e480290b2167f2dab15.md) | 112 | `result-track:e7b81e480290b2167f2dab15552fef3faae0c09aea20a25a4ec6fb49d7fad004` |
| 11 | `instance` | [coeToMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/coetomonoidhom--a7ee8e4330c96e678bbb2f37.md) | 122 | `declaration-track:a7ee8e4330c96e678bbb2f37cb2973e09400e402236a572e231cd26fc6ee3409` |
| 12 | `instance` | [coeToZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/coetozerohom--d7239a8c8724d81ef2864a63.md) | 128 | `declaration-track:d7239a8c8724d81ef2864a6390d803b255d22df2c40ea0698f959c9424751d8b` |
| 13 | `lemma` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/coe-mk--ba4fe848ab199691ae790d9a.md) | 134 | `result-track:ba4fe848ab199691ae790d9a371e9b4ee4ab214cbb52ec6a2ad4da0d2e562d78` |
| 14 | `lemma` | [toZeroHom_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/tozerohom-coe--89aa7e8c97ce51973d110e48.md) | 136 | `result-track:89aa7e8c97ce51973d110e4854530c485cdfb8075adaf33ab02fd21e1b1c9bc9` |
| 15 | `lemma` | [toMonoidHom_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/tomonoidhom-coe--350447870dd80054f6b5f3b1.md) | 138 | `result-track:350447870dd80054f6b5f3b181de86bba101d09becc4519f4e1bfad8337084b9` |
| 16 | `lemma` | [ext](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/ext--3f620d45fda68cee7747167b.md) | 140 | `result-track:3f620d45fda68cee7747167b2c5a3112fd37806d5d2ceeae5cde8bdc99bf532d` |
| 17 | `lemma` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/mk-coe--cae2bcbbbef97a95bb0c16fb.md) | 142 | `result-track:cae2bcbbbef97a95bb0c16fb417ffc956393113ebc60f798685a4a83c313b3d3` |
| 18 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/copy--edc1993da9206761a00dc9a2.md) | 148 | `declaration-track:edc1993da9206761a00dc9a221207ee0e75db953944c40b92ec09d3f333ed7bc` |
| 19 | `lemma` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/coe-copy--d007a4d0335339e641778345.md) | 152 | `result-track:d007a4d0335339e6417783456ba5d8daea94c613308aa0f7ef5bc678beb864ac` |
| 20 | `lemma` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/copy-eq--2f93ad30fdd1584be56f9279.md) | 154 | `result-track:2f93ad30fdd1584be56f92799706213c5760384c401d892480f357578d3d389d` |
| 21 | `lemma` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/map-one--0c7a3ac55be0820d7dd2637c.md) | 156 | `result-track:0c7a3ac55be0820d7dd2637cd5f329dc4b42177598dc6c49418d96b5362fe510` |
| 22 | `lemma` | [map_zero](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/map-zero--34b51814a049b1539ca5d8e1.md) | 158 | `result-track:34b51814a049b1539ca5d8e17a69c826a175352588126d55d96e45f0fd03297c` |
| 23 | `lemma` | [map_mul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/map-mul--0433fcc8fcb328fa7bca4b4e.md) | 160 | `result-track:0433fcc8fcb328fa7bca4b4e038500e9cc27dce160f45c6217788aa12b5cf513` |
| 24 | `theorem` | [map_ite_zero_one](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/map-ite-zero-one--1efa0f44e321a4cae0e985ee.md) | 163 | `result-track:1efa0f44e321a4cae0e985eeaf7953964e42bc940415e25a89c0cc13c59edee0` |
| 25 | `theorem` | [map_ite_one_zero](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/map-ite-one-zero--2ae9b2ee567e5dd43eafcd1b.md) | 169 | `result-track:2ae9b2ee567e5dd43eafcd1bc7e57586e4de13d0b15a2cb5bacb5ae97550f458` |
| 26 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/id--2f081b8e236a44fce3a72762.md) | 176 | `declaration-track:2f081b8e236a44fce3a72762124a7383d36d514f8a1e3b23d4d54fc5cbd72aea` |
| 27 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/comp--a5e7120fdbe6ad5a85e473f5.md) | 183 | `declaration-track:a5e7120fdbe6ad5a85e473f5b5f1a082c81038803983afb0d87a497d11cfe8c2` |
| 28 | `lemma` | [coe_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/coe-comp--f13e58c6fe632eb92703959b.md) | 189 | `result-track:f13e58c6fe632eb92703959b933bc58395d011b3cab40f7445929856cfb4bdfe` |
| 29 | `lemma` | [comp_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/comp-apply--3d76c29eeefb627c386fb0c1.md) | 191 | `result-track:3d76c29eeefb627c386fb0c13767ccd75a52fbd854f8d8b1e102720dc8064ca0` |
| 30 | `lemma` | [comp_assoc](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/comp-assoc--3eab2bcaa75be76f2a0911a7.md) | 193 | `result-track:3eab2bcaa75be76f2a0911a77d55645628ae59cb6404406e3d3b81ed578247fb` |
| 31 | `lemma` | [cancel_right](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/cancel-right--3074349203ac519250b7f6e4.md) | 196 | `result-track:3074349203ac519250b7f6e4a503f1121887edc16ff64a2e859edeb8cd5fb431` |
| 32 | `lemma` | [cancel_left](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/cancel-left--a6d1e445a72d2ebcfb5f2c37.md) | 200 | `result-track:a6d1e445a72d2ebcfb5f2c370095d17fe72a40d4b41120490265fefb41e8b596` |
| 33 | `lemma` | [toMonoidHom_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/tomonoidhom-injective--70d536500d3d02cceca0980a.md) | 205 | `result-track:70d536500d3d02cceca0980a92746bdd3a2d67557c99517848b3399e1a767312` |
| 34 | `lemma` | [toZeroHom_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/tozerohom-injective--03263ae251264c26ec9da917.md) | 208 | `result-track:03263ae251264c26ec9da917e1ebb2d9547aa2ae98e67d6a86d344335e85ebd5` |
| 35 | `lemma` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/comp-id--7870b0d21f2326e1f98b41dd.md) | 211 | `result-track:7870b0d21f2326e1f98b41dda8a0804e99825a3ea836f953fe9070bff77954f7` |
| 36 | `lemma` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/id-comp--6c17607a5863a0eee3ed0c5c.md) | 213 | `result-track:6c17607a5863a0eee3ed0c5c5ad23eabc529434998a1949ad06baf2fd0e6213d` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/instance--d803e696b308fb95a8747fa2.md) | 216 | `declaration-track:d803e696b308fb95a8747fa268c2d8f01e1baf28a74ca3e10d8d689d160e88a3` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/instance--43ef2b5dd600493afb227032.md) | 220 | `declaration-track:43ef2b5dd600493afb2270328d766d3f5ff819a3f92ca279c6704d5a1997d4b9` |
| 39 | `def` | [powMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/powmonoidwithzerohom--d2d14a3737bd11150c624e31.md) | 231 | `declaration-track:d2d14a3737bd11150c624e31f288ca86fc9229301fd712a638b32ffa35b05cd0` |
| 40 | `lemma` | [coe_powMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/coe-powmonoidwithzerohom--836794f8a5d96f12da243ec3.md) | 234 | `result-track:836794f8a5d96f12da243ec380ea9babc13daae07970258ed3abea1cf023f3d6` |
| 41 | `lemma` | [powMonoidWithZeroHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/declarations/powmonoidwithzerohom-apply--dad3876c26883d9e1656e7cd.md) | 236 | `result-track:dad3876c26883d9e1656e7cdc9b5aec91389c5a07d174e780e963837ab1ea030` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
