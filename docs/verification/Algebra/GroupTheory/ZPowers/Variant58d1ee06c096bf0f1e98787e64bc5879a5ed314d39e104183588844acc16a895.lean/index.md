# Verification target: GRWTSK.Algebra.GroupTheory.ZPowers.Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37d324211ed0f418705b5c7c6475389196f8752b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37d324211ed0f418705b5c7c6475389196f8752b`.

Source path: `GRWTSK/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpowers--0bcf198c107cefd60da4cefc.md) | 36 | `declaration-track:0bcf198c107cefd60da4cefc897f072f13052c26f2137a97784bfce02a215849` |
| 2 | `theorem` | [mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/mem-zpowers--1a2fe5a7776300e9c9dd0c24.md) | 40 | `result-track:1a2fe5a7776300e9c9dd0c24032cb8c6c2fb364e110f1203b974bf8791bb9fdd` |
| 3 | `theorem` | [coe_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/coe-zpowers--d3d17dc631c88f76944b3a74.md) | 44 | `result-track:d3d17dc631c88f76944b3a74245aaaf26aeb19bc86852d4ed07eb16477ea98e5` |
| 4 | `theorem` | [zpowers_eq_closure](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpowers-eq-closure--aeb0a4a2853a6ffb898c7fd3.md) | 48 | `result-track:aeb0a4a2853a6ffb898c7fd3b95943c4bb6d719219d1cfdb09438db81087ca85` |
| 5 | `theorem` | [range_zpowersHom](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/range-zpowershom--f1e5fc59bf9eff8364be9650.md) | 53 | `result-track:f1e5fc59bf9eff8364be9650ff7350b900b4736798ffe69e6adb41420397ce9c` |
| 6 | `theorem` | [mem_zpowers_iff](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/mem-zpowers-iff--79a134afe36cb683699db636.md) | 57 | `result-track:79a134afe36cb683699db6362708db437a6ff9410257d49cc8e1842185b1157c` |
| 7 | `theorem` | [zpow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpow-mem-zpowers--dcaf919e2ff4430307d6692d.md) | 61 | `result-track:dcaf919e2ff4430307d6692d12a01f9fbb6d3fe6c29c9baafffc62f82175ae0e` |
| 8 | `theorem` | [npow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/npow-mem-zpowers--b59c1a095e824604e9d7d6bb.md) | 65 | `result-track:b59c1a095e824604e9d7d6bb66abc5dc615ab549dfc1896209253f145b1d70b9` |
| 9 | `theorem` | [forall_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/forall-zpowers--4555db3f4636d8cac6849e14.md) | 69 | `result-track:4555db3f4636d8cac6849e14156d6158ae96c1698c04b540212b15111a48615f` |
| 10 | `theorem` | [exists_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/exists-zpowers--e737687d153edac77a49d4d8.md) | 73 | `result-track:e737687d153edac77a49d4d80986ee871364c9d0de4a61e78651464cae925486` |
| 11 | `theorem` | [forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/forall-mem-zpowers--c95dd09803e412e0579fc886.md) | 77 | `result-track:c95dd09803e412e0579fc886ef030a67af3ecdc08c06da580396c956ba074542` |
| 12 | `theorem` | [exists_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/exists-mem-zpowers--a3a17df01ce964378eee096e.md) | 81 | `result-track:a3a17df01ce964378eee096e2a48f28ea33ad520f8e60284708f5d4fe7a3a8d4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/instance--a6a4667c4875e4532d8fde5d.md) | 85 | `declaration-track:a6a4667c4875e4532d8fde5d083e719e52489d5202d64e8abfc774ced5129d7e` |
| 14 | `def` | [zmultiples](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zmultiples--66a5aa8f9ae0859034114545.md) | 93 | `declaration-track:66a5aa8f9ae0859034114545c6333d11658d2bc71c2a78f8a186001304825e45` |
| 15 | `theorem` | [range_zmultiplesHom](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/range-zmultipleshom--1ca912becd76ffe213d2041b.md) | 98 | `result-track:1ca912becd76ffe213d2041b60dc5b04cdc8a45ffad3236527ea1a4b2dfbb254` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/instance--5ecddbaf2bef2e3c2d1cf8e4.md) | 138 | `declaration-track:5ecddbaf2bef2e3c2d1cf8e48b4c86bc460673e290373436d6c3f92af5d5cee7` |
| 17 | `theorem` | [int_cast_mul_mem_zmultiples](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/int-cast-mul-mem-zmultiples--8101ab1fec644b3709176ba8.md) | 146 | `result-track:8101ab1fec644b3709176ba85dd1d1de5891e91952ac719638337fbb57e4c58f` |
| 18 | `theorem` | [int_cast_mem_zmultiples_one](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/int-cast-mem-zmultiples-one--cb1b0b864fc654af1893cd0f.md) | 151 | `result-track:cb1b0b864fc654af1893cd0f109bda938f49a9b25bf6f45cba01062e5369e480` |
| 19 | `lemma` | [Int.range_castAddHom](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/int-range-castaddhom--4c3ad0d36fc4988825f473a7.md) | 159 | `result-track:4c3ad0d36fc4988825f473a7680585ec3ae8c105f744f6defc469c9182eda698` |
| 20 | `theorem` | [MonoidHom.map_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/monoidhom-map-zpowers--3a141c8d2e92855369ead537.md) | 165 | `result-track:3a141c8d2e92855369ead53772ff0c00dd610db58bf5814690a95759f20d3c96` |
| 21 | `theorem` | [Int.mem_zmultiples_iff](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/int-mem-zmultiples-iff--a125b4a9deaa9ba320d2ae20.md) | 171 | `result-track:a125b4a9deaa9ba320d2ae2010749b14062e93565df5e3e45af00658294e1b2d` |
| 22 | `theorem` | [ofMul_image_zpowers_eq_zmultiples_ofMul](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/ofmul-image-zpowers-eq-zmultiples-ofmul--b7da48cd874be27dc93b58e0.md) | 175 | `result-track:b7da48cd874be27dc93b58e014b32b542f9ceaff18cf6eb59aec16afd5c11c91` |
| 23 | `theorem` | [ofAdd_image_zmultiples_eq_zpowers_ofAdd](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/ofadd-image-zmultiples-eq-zpowers-ofadd--e174acf1d34befdd6ea70f65.md) | 188 | `result-track:e174acf1d34befdd6ea70f65a479afd5b91d3f4d210dca547b00fa022ee7acc8` |
| 24 | `instance` | [zpowers_isCommutative](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpowers-iscommutative--c688dd60c4868f63b86729d6.md) | 201 | `declaration-track:c688dd60c4868f63b86729d6258859d5ea91b331fa5fcdad71f21ab480422c91` |
| 25 | `theorem` | [zpowers_le](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpowers-le--d2ba905806d2ff367ff30fca.md) | 209 | `result-track:d2ba905806d2ff367ff30fca62ef1488e1a6c997f019be8923e736c2dbe95e02` |
| 26 | `theorem` | [zpowers_eq_bot](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpowers-eq-bot--89effddf89ed1ccff0a6356c.md) | 223 | `result-track:89effddf89ed1ccff0a6356cb9deaffa0dfc64176dfdd7d3e30c3449652f38f2` |
| 27 | `theorem` | [zpowers_ne_bot](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpowers-ne-bot--869cc61c5917783bb2198b72.md) | 228 | `result-track:869cc61c5917783bb2198b72ca34324eeea9ad6c06db45155767c4cee3fa2dd5` |
| 28 | `theorem` | [zpowers_one_eq_bot](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/zpowers-one-eq-bot--4f76f2f566544782be8a47dc.md) | 234 | `result-track:4f76f2f566544782be8a47dcd91683f618f71e8d549d63f781bf0b353d3b578b` |
| 29 | `theorem` | [centralizer_closure](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/centralizer-closure--80aa80c331410390a1695eaa.md) | 240 | `result-track:80aa80c331410390a1695eaa591a041c1da377f4f4229a7889368907ddea04d0` |
| 30 | `theorem` | [center_eq_iInf](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/center-eq-iinf--ee1a111e992111a2fa851f6b.md) | 251 | `result-track:ee1a111e992111a2fa851f6b28421bcad29ea53dc3842eb38ac4338997cb028e` |
| 31 | `theorem` | [center_eq_infi'](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/declarations/center-eq-infi--3e942e568d8a93a08cbea3c4.md) | 258 | `result-track:3e942e568d8a93a08cbea3c48ca342a7f25da0bea37f57eca03be69b89a92d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
