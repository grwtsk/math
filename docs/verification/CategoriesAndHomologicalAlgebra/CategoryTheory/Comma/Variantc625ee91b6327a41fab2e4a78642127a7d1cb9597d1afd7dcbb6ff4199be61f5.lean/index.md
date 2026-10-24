# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3753eed76fb7f46bc3513ca4d6467ca15c8947",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3753eed76fb7f46bc3513ca4d6467ca15c8947`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Unit` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limitAuxiliaryCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/limitauxiliarycone--7801a360fd3df8829c8f16cb.md) | 43 | `declaration-track:7801a360fd3df8829c8f16cb91b52fd0b9010d14152108fc2a610539f006c7b0` |
| 2 | `def` | [coneOfPreserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/coneofpreserves--a8f5bedab1ae7f43dcb9bf8f.md) | 51 | `declaration-track:a8f5bedab1ae7f43dcb9bf8f43b35d7f704c8112b603fe8dd86c0a3d97e03cce` |
| 3 | `def` | [coneOfPreservesIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/coneofpreservesislimit--e9a2619fd5e11c50fffca702.md) | 69 | `declaration-track:e9a2619fd5e11c50fffca7028955754eed9a7468158e970f909c1ed1d5b8ecc0` |
| 4 | `def` | [colimitAuxiliaryCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/colimitauxiliarycocone--197445e833a8280ea4a5d223.md) | 89 | `declaration-track:197445e833a8280ea4a5d223663619bf9b49d111a46406915016e13f6643e744` |
| 5 | `def` | [coconeOfPreserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/coconeofpreserves--2f36c2c6cb0aed268ea0d33f.md) | 98 | `declaration-track:2f36c2c6cb0aed268ea0d33fd2b050f2c8ccbaa2e8fb0392a692679cc6c985e7` |
| 6 | `def` | [coconeOfPreservesIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/coconeofpreservesiscolimit--150a73fdcdc617a78534492e.md) | 116 | `declaration-track:150a73fdcdc617a78534492e1df48335f4b3fc9832c48a2f4ba264c6d94b77c0` |
| 7 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimit--a33d6e389d9718775a4c6e1d.md) | 134 | `declaration-track:a33d6e389d9718775a4c6e1d84fb57f89c42f3da3196c440d80083f4e6ad7281` |
| 8 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimitsofshape--ad82a72d515a395f306486e0.md) | 138 | `declaration-track:ad82a72d515a395f306486e01bdcaa77af06ccba094a6b60091ccc82b50f3c96` |
| 9 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimitsofsize--da0e1a8f34e96fd549ae4d9c.md) | 141 | `declaration-track:da0e1a8f34e96fd549ae4d9c5416a30e2a68c7e6fdd46d0de7488ab9ab020f6d` |
| 10 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimit--4192c5ac4b938573b2fd6e32.md) | 145 | `declaration-track:4192c5ac4b938573b2fd6e3210ad67255c8422a03d73830cd7c3b600d3efe780` |
| 11 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimitsofshape--bde4cd92c8a110adfd3e0be5.md) | 149 | `declaration-track:bde4cd92c8a110adfd3e0be5e40e98beadd176f3b26d44d625a522734168fff3` |
| 12 | `instance` | [hasColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimitsofsize--2e84af93d89ea9d7c96cfbaa.md) | 152 | `declaration-track:2e84af93d89ea9d7c96cfbaad6551f60c86828ceefad11d46daa2c4b85657f1f` |
| 13 | `instance` | [preservesColimitsOfShape_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/preservescolimitsofshape-fst--d769914372a5a840dfed23b3.md) | 156 | `declaration-track:d769914372a5a840dfed23b3881221c52a4fa15b19fa75a8fd98d7365aeb70ed` |
| 14 | `instance` | [preservesColimitsOfShape_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/preservescolimitsofshape-snd--5637d948a6cdee88e09dabef.md) | 163 | `declaration-track:5637d948a6cdee88e09dabef224e5f8e3f55a7bfcf5fc7482f4b1ee52812db39` |
| 15 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimit--65e8fbd9d5ccc199d3dad17f.md) | 174 | `declaration-track:65e8fbd9d5ccc199d3dad17f1dbe2bcbe6b9a3bee4a0b0a6b20705e6e228a42d` |
| 16 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimitsofshape--86ab2cb669665bff038514a3.md) | 180 | `declaration-track:86ab2cb669665bff038514a32d6672bf2ec3323073fe916bc22332684f68a162` |
| 17 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimits--ebac060b8c1f68c33342d621.md) | 182 | `declaration-track:ebac060b8c1f68c33342d62175b98eec5e379c6daaf7cd4b0600de04476987b9` |
| 18 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimit--d294a31cb516d6e3b06711ec.md) | 185 | `declaration-track:d294a31cb516d6e3b06711eca83feb85a0570092076a561461d86195b665b96d` |
| 19 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimitsofshape--ac08af6dd9db9db974ee150e.md) | 191 | `declaration-track:ac08af6dd9db9db974ee150e36b954467ed5ba6baf0bc1841493c9b483995685` |
| 20 | `instance` | [hasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimits--176129584a832c8ab6da997c.md) | 193 | `declaration-track:176129584a832c8ab6da997c4e13b272888f8f4e750271f3c10c994bd143c83c` |
| 21 | `instance` | [preservesColimitsOfShape_leftFunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/preservescolimitsofshape-leftfunc--b79bdbdd1aa5a3378bd66d6b.md) | 196 | `declaration-track:b79bdbdd1aa5a3378bd66d6b2940b6fbbe17c5711b0ec4e753edc6a07b64a2b0` |
| 22 | `instance` | [preservesColimitsOfShape_rightFunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/preservescolimitsofshape-rightfunc--47f67376c6294346cd582efc.md) | 200 | `declaration-track:47f67376c6294346cd582efc8091e0dc452ae36d8f8ec2311695dfc17ade5917` |
| 23 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimit--3a7be4a5869c906fbddf8860.md) | 210 | `declaration-track:3a7be4a5869c906fbddf8860925378e2358310bbb24cc9ecd5d4bed91ae72d62` |
| 24 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimitsofshape--c184b4df915a3fd08c9e2711.md) | 216 | `declaration-track:c184b4df915a3fd08c9e2711a4ab24203703678ff8aaf736897913bc3d326f8a` |
| 25 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/haslimitsofsize--ff70d06c1298e8cc96e8ea3d.md) | 219 | `declaration-track:ff70d06c1298e8cc96e8ea3d44bad209cb2d31a862d5f95dfdce5228d874c7e5` |
| 26 | `instance` | [createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/createslimit--4127e571bc29a25db25f30cf.md) | 223 | `declaration-track:4127e571bc29a25db25f30cfb5862263e0546622b50407e5d721bc82edd896ab` |
| 27 | `instance` | [createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/createslimitsofshape--7fae8de23205bd687e5207f7.md) | 231 | `declaration-track:7fae8de23205bd687e5207f796213e5656e57bc395dc441c5d78fb0af1d894e6` |
| 28 | `instance` | [createsLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/createslimitsofsize--70410216d4a3acc9ec4064e8.md) | 234 | `declaration-track:70410216d4a3acc9ec4064e801f51401f376538a6a6f88e4edce13223533b3cc` |
| 29 | `instance` | [mono_right_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/mono-right-of-mono--d7a7de719d210e1d2fb8ae2e.md) | 237 | `declaration-track:d7a7de719d210e1d2fb8ae2e47bbc12e4472a66c2e6bc9b41b5e7b87fcaaff94` |
| 30 | `theorem` | [mono_iff_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/mono-iff-mono-right--446476f6f1da04ff123f0c72.md) | 241 | `result-track:446476f6f1da04ff123f0c72979381c384a57a8073bfcc0e1198359bd5584949` |
| 31 | `instance` | [hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hasterminal--057f4683fcb98a8c40d0f2cc.md) | 251 | `declaration-track:057f4683fcb98a8c40d0f2cc848d003eefec6dd180ba419eff7f5cac4931e887` |
| 32 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimit--9e71c9dc25fa613e23d97459.md) | 255 | `declaration-track:9e71c9dc25fa613e23d9745935a3f6aac143a703a28ad83b8139d803f02df694` |
| 33 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimitsofshape--557aef3d7989853427e376e7.md) | 261 | `declaration-track:557aef3d7989853427e376e7a14228bfe347834053caffb49bb27661a8ae4185` |
| 34 | `instance` | [hasColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/hascolimitsofsize--d829a9be4f112dd8aaebf3d7.md) | 264 | `declaration-track:d829a9be4f112dd8aaebf3d7e8fd73ca66f897c53762e976d4babbf41156155a` |
| 35 | `instance` | [createsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/createscolimit--12eedb32a0e8392eaefab984.md) | 268 | `declaration-track:12eedb32a0e8392eaefab984bf27a9250397e85ab0ebde8289ec87299c506c2a` |
| 36 | `instance` | [createsColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/createscolimitsofshape--000c25c4245bb4ba32425862.md) | 276 | `declaration-track:000c25c4245bb4ba324258624575f58fc13114981952545a9b901675a488d1e4` |
| 37 | `instance` | [createsColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/createscolimitsofsize--3dc6b628f0493b5d68c8e2b4.md) | 279 | `declaration-track:3dc6b628f0493b5d68c8e2b44ae10f6ef42c712c244b83e49e55702352cea448` |
| 38 | `instance` | [epi_left_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/epi-left-of-epi--6c35ce8bbef187fe2f4f99d3.md) | 282 | `declaration-track:6c35ce8bbef187fe2f4f99d3c0be6ed69b4083c5693f51c9d34f8b00da525670` |
| 39 | `theorem` | [epi_iff_epi_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/epi-iff-epi-left--bc2c419ee44ab08c59c35d4f.md) | 286 | `result-track:bc2c419ee44ab08c59c35d4faeef49ad02eaa959ab161a21f38ea1dc667134c2` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc625ee91b6327a41fab2e4a78642127a7d1cb9597d1afd7dcbb6ff4199be61f5.lean/declarations/instance--a7efe67c8566259535b3712e.md) | 294 | `declaration-track:a7efe67c8566259535b3712ef6ea349464b7a5269471c73345bb0418199880f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
