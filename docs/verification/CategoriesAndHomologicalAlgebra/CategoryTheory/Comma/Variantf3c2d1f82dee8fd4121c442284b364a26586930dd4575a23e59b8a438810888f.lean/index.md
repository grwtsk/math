# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "875ea4ebea1497a1dd2e2fb111300984c66c81ae",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `875ea4ebea1497a1dd2e2fb111300984c66c81ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [costructuredArrow_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/costructuredarrow-iso-iff--fc80be58876ef67c78d350c4.md) | 52 | `result-track:fc80be58876ef67c78d350c44eccd19cf4b70ac3a604f179885578507ad75c2c` |
| 2 | `lemma` | [over_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-iso-iff--b1bd1c85614af298b7e9142a.md) | 57 | `result-track:b1bd1c85614af298b7e9142ac359b4c297c96514c5503abe6dfffd762c939688` |
| 3 | `structure` | [Comma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/comma--83e454731901b9e98544fd49.md) | 67 | `declaration-track:83e454731901b9e98544fd492f13c60d6365e31e945a8adc31af85c370d4e7d7` |
| 4 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom--a8456865c502882861538ea4.md) | 77 | `declaration-track:a8456865c502882861538ea4e25a28c6f49c5260c0b0cd9b113912e2eb339120` |
| 5 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-hom--4fe78433bbe06481fbcac68a.md) | 82 | `declaration-track:4fe78433bbe06481fbcac68a1bca01617fb85b09ef1e481de52e9c27d49c0c29` |
| 6 | `lemma` | [Hom.hom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-hom-mk--e0838646e48a1380a90c7c59.md) | 86 | `result-track:e0838646e48a1380a90c7c59cf3e755e3b60789939a8a552877a50445acb098b` |
| 7 | `lemma` | [Hom.hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-hom-left--6a05587b7cc67e54e4e7d555.md) | 90 | `result-track:6a05587b7cc67e54e4e7d555e639240c66c5d7e938d49f134219bfc9cec99cff` |
| 8 | `lemma` | [Hom.hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-hom-right--5af29f0c9ee06fd0b69986ef.md) | 92 | `result-track:5af29f0c9ee06fd0b69986efa528a01d2241dd038858568a5d32f3da2644e67d` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-simps-hom--ba2a75516fd1dc6fe93aa957.md) | 95 | `declaration-track:ba2a75516fd1dc6fe93aa9571c03582395775971dabe06d7865544fc05b0f18f` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/id--93c0a1d5417ed01071b6e664.md) | 103 | `declaration-track:93c0a1d5417ed01071b6e66486928a2e6c20f46f2797b1fe7b608e3b4dc8d604` |
| 11 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-comp--ce60c98517333da605e2d792.md) | 111 | `declaration-track:ce60c98517333da605e2d7926e64e7ad0a9af79e147238132d513c87bc076361` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--324b65f97cebee9ebdfbcf46.md) | 122 | `declaration-track:324b65f97cebee9ebdfbcf4672d5214fea1aa74befb343c56e56faf15538bec3` |
| 13 | `lemma` | [toCommaMorphism_eq_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/tocommamorphism-eq-hom--05c7a1f6a477ca81491052ad.md) | 127 | `result-track:05c7a1f6a477ca81491052ad48e1a99038149e64d579d86bb6ace5dd793933a9` |
| 14 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-ext--b69568b301bffdb7bf3f985d.md) | 131 | `result-track:b69568b301bffdb7bf3f985d3498862f9de8e01b4e29882e57908e7e4c8c44ed` |
| 15 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/id-hom--800bc43f70c4cda3781433dc.md) | 137 | `result-track:800bc43f70c4cda3781433dc0737afdccb1b84e7933667255c0644ca93eb2627` |
| 16 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/comp-hom--69f269c4553bae882eb50097.md) | 140 | `result-track:69f269c4553bae882eb50097f499cefea883b89dd9891b0f4dd606ce35d0c3e7` |
| 17 | `lemma` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/comp-left--7eb9be75d3e50637ecf801d2.md) | 144 | `result-track:7eb9be75d3e50637ecf801d2019c1761f38be405ae6c5af709edfd539f69872c` |
| 18 | `lemma` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/comp-right--bb584ae09d254052c49c31ce.md) | 148 | `result-track:bb584ae09d254052c49c31ced5eb2f10f6518d5bc7f25951a1d4331f5bc5509d` |
| 19 | `def` | [homFromCommaOfIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/homfromcommaofisiso--029dc8a113cccbb3c7d6aec8.md) | 153 | `declaration-track:029dc8a113cccbb3c7d6aec8c416ae626150c329abe83c73fa3df6181689f8d2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--b780fcbdd2738f4787aa0a4f.md) | 160 | `declaration-track:b780fcbdd2738f4787aa0a4f00d6c82e587bb9b3fe7fcd323587a94edf6531db` |
| 21 | `def` | [isoFromComma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/isofromcomma--8bed705fd50bbf99681bfd2c.md) | 169 | `declaration-track:8bed705fd50bbf99681bfd2ceb5b0fce08e5658c646ac8915df7d9355de7d2fe` |
| 22 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/isomk--2c2665299ea5c22eb1f7b16b.md) | 177 | `declaration-track:2c2665299ea5c22eb1f7b16b6aeb00b23d67a805108e95ad4319f2cf3e97fd6e` |
| 23 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/forget--f5806ecc4384a0763a94f54d.md) | 186 | `declaration-track:f5806ecc4384a0763a94f54d2c794e3c53caa0855715b251fc3ee026b4a9bf5f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--16fb44598d81d908649092a0.md) | 190 | `declaration-track:16fb44598d81d908649092a046563778ee4e75298e67345007cf770ed4ead976` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--70e0dc63768afd03ede6835e.md) | 195 | `declaration-track:70e0dc63768afd03ede6835e6bc51e9f49531897e9033d9a6854d7a1c360892c` |
| 26 | `lemma` | [hom_homFromCommaOfIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/hom-homfromcommaofisiso--716e38c6c576205443f04214.md) | 198 | `result-track:716e38c6c576205443f04214ff86eadb899ee475cc66e6cbb52bb57a2de1b814` |
| 27 | `lemma` | [inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/inv-hom--fb12d708f8d88c5db7dd9f46.md) | 203 | `result-track:fb12d708f8d88c5db7dd9f469d9eeb39c07502cbd94475a2e8cc139247d7dd19` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--431039953ab31cd09dee9906.md) | 209 | `declaration-track:431039953ab31cd09dee99069f92d2dd7b4cec75e8f68302611578a9b145225a` |
| 29 | `def` | [forgetFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/forgetfullyfaithful--cad57ba37a370f31bf6c5337.md) | 217 | `declaration-track:cad57ba37a370f31bf6c5337d375f243f11cfa21f88580e1f1f1e05e28687571` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--2e28494a647b6df94d9ecd2d.md) | 220 | `declaration-track:2e28494a647b6df94d9ecd2d9be7332597a2dcf8d0b24edcaac0420c1736cc01` |
| 31 | `lemma` | [eqToHom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/eqtohom-left--93c5b55ce36ea26cd3c4f5b3.md) | 228 | `result-track:93c5b55ce36ea26cd3c4f5b370ababcdfba06d37cbc57b582c1252213a0e6822` |
| 32 | `lemma` | [eqToHom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/eqtohom-right--31ece7cb997263637dee6184.md) | 234 | `result-track:31ece7cb997263637dee61842e69d2a696fca2e9e37fedfa42696e542d2759f1` |
| 33 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/lift--e31070e713af7040b92b491a.md) | 249 | `declaration-track:e31070e713af7040b92b491a5c466aef3c1ab478709da37f1b0aaf0debbe0589` |
| 34 | `def` | [mapLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/mapleft--67fa9702b43ca04678f6b96d.md) | 265 | `declaration-track:67fa9702b43ca04678f6b96d6ba927327579028fd61d484675df741d856120a1` |
| 35 | `def` | [mapRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/mapright--7cdfd7f17ee71827d25c7ca3.md) | 273 | `declaration-track:7cdfd7f17ee71827d25c7ca332e341518f80cf1987366f1217435cad91e5c27a` |
| 36 | `abbrev` | [Over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over--9b58b76a1a7cfe17c2b51774.md) | 290 | `declaration-track:9b58b76a1a7cfe17c2b51774c9753c8348c5c9f0601e5faecc8de1bdc5403b53` |
| 37 | `abbrev` | [Over.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-forget--53a813152050f9b4118a189d.md) | 294 | `declaration-track:53a813152050f9b4118a189d8e61eea35461e3fe6eaa8bb887c1a9bf707e7639` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--836101ea4e99d2ed49c106a7.md) | 297 | `declaration-track:836101ea4e99d2ed49c106a71c2bad4616f5cc710d2480a4f2bc3711b83a0619` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--5f6e7117814aa14a90ce309a.md) | 298 | `declaration-track:5f6e7117814aa14a90ce309ad707f4f91fec927579dccd64f36a98806ad70dab` |
| 40 | `def` | [Over.Hom.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-hom-mk--712dd05372382cd6dc82d995.md) | 304 | `declaration-track:712dd05372382cd6dc82d9959635f9e0688a1cf6b5992bdd5f3e5ab8a38aedc5` |
| 41 | `def` | [Over.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-mk--d3bb8f02dc7accb7820f0a03.md) | 312 | `declaration-track:d3bb8f02dc7accb7820f0a0379f5ee9018a18806654f282dfdaca2885ca24c7c` |
| 42 | `def` | [Over.homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-hommk--11e6f8e66894642aa36e54d3.md) | 320 | `declaration-track:11e6f8e66894642aa36e54d35c05c01a0883a17824d0545864d05c9c282511f7` |
| 43 | `def` | [Over.isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-isomk--7567695f3b790f9eb019a8d7.md) | 328 | `declaration-track:7567695f3b790f9eb019a8d7d88b28ec67389bc94cdc1e0926c22e22e21fe180` |
| 44 | `lemma` | [Over.Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-hom-ext--f5c6fa2455eef1aa82b3f3f9.md) | 333 | `result-track:f5c6fa2455eef1aa82b3f3f97a92a39ee952b2b6d14ee81de6f3181234f256fa` |
| 45 | `lemma` | [Over.w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/over-w--f98ac3742175191d1f030102.md) | 339 | `result-track:f98ac3742175191d1f030102553cd60f0460bf38f0895012f00526d2379e744c` |
| 46 | `abbrev` | [Under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under--fc9e453c5a688a361cd06d96.md) | 351 | `declaration-track:fc9e453c5a688a361cd06d9642dad7c9f49bc0b03198624c14638196b970dca1` |
| 47 | `abbrev` | [Under.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under-forget--df23cb2607fc60b99b7c7b4b.md) | 355 | `declaration-track:df23cb2607fc60b99b7c7b4b1319d02e38005c6c9ff7ffd5c9e5f6805a3bafc7` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--64a1b4e0b9f83a52b1d8ec2f.md) | 358 | `declaration-track:64a1b4e0b9f83a52b1d8ec2fbe50173aa76a8b20c1720f4f915f4526e0d6aec9` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/instance--2e73da906b913dd9db2efa41.md) | 359 | `declaration-track:2e73da906b913dd9db2efa414599d1fb43df8715f8d9c3db8b69455337101482` |
| 50 | `def` | [Under.Hom.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under-hom-mk--ed35d1d5ff08b61d723f387d.md) | 365 | `declaration-track:ed35d1d5ff08b61d723f387de6186003b0a563c0492e1562b61d4ec6c87b76ef` |
| 51 | `def` | [Under.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under-mk--4794667238ee39b8d3262fcb.md) | 373 | `declaration-track:4794667238ee39b8d3262fcba9f2fda1b88ccf2d2b26b0834d6c90f9c14aa890` |
| 52 | `def` | [Under.homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under-hommk--c7019b1a09d3a4a59e3d5be6.md) | 381 | `declaration-track:c7019b1a09d3a4a59e3d5be661b1d08447d134574d26707b7645ba1103b2d3bd` |
| 53 | `def` | [Under.isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under-isomk--2f1f0883ffb194b8d8161f85.md) | 389 | `declaration-track:2f1f0883ffb194b8d8161f85878691acd49793b743aa8076a85b71ca2cd1358b` |
| 54 | `lemma` | [Under.Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under-hom-ext--9f08461ae75972a4f8957e53.md) | 394 | `result-track:9f08461ae75972a4f8957e534f428e77003f2b8a0d94bc02af06aa24a6a3a661` |
| 55 | `lemma` | [Under.w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf3c2d1f82dee8fd4121c442284b364a26586930dd4575a23e59b8a438810888f.lean/declarations/under-w--81edf9a8e15442239531160a.md) | 400 | `result-track:81edf9a8e15442239531160abc2261a82c2fb426b9ffac4a32312be694ee6c3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
