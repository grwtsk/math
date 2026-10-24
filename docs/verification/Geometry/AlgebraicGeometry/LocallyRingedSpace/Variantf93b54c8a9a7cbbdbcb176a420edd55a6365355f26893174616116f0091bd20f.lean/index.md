# Verification target: GRWTSK.Geometry.AlgebraicGeometry.LocallyRingedSpace.Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4367ae2db3a858e4a4f80a2881cc3f3025db1bfd",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4367ae2db3a858e4a4f80a2881cc3f3025db1bfd`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.RingedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Stalks` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/locallyringedspace--777f93e205cdb7cb1fede851.md) | 36 | `declaration-track:777f93e205cdb7cb1fede85119a83179e73f22291caa4bae1917300eb5100a83` |
| 2 | `def` | [toRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/toringedspace--c1d080472e8f561e5326b3f5.md) | 51 | `declaration-track:c1d080472e8f561e5326b3f52b36201265e2d3e5b42080f663c6b69aba099078` |
| 3 | `def` | [toTopCat](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/totopcat--0a46fd8ae2af268dbb4015c5.md) | 57 | `declaration-track:0a46fd8ae2af268dbb4015c51efe900bc995963027f88fb0419a5dd7f47de556` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--b9f9bd9619354440a4ae5c6f.md) | 62 | `declaration-track:b9f9bd9619354440a4ae5c6fdfd185fd909840f7df7e76673601fa68d8e0a22e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--b1c6d4832c16d5b3b9f1fd18.md) | 65 | `declaration-track:b1c6d4832c16d5b3b9f1fd189bccac9db4e8cf70fcd68e44ad87aa8005c97e64` |
| 6 | `def` | [𝒪](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/anonymous--324c5a1f6691867a2b3c4ece.md) | 71 | `declaration-track:324c5a1f6691867a2b3c4ece7e15c849b343c6c520bc67ad15d24a0453db5e44` |
| 7 | `structure` | [Hom](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/hom--ebb5ed8bcef6679946e31698.md) | 79 | `declaration-track:ebb5ed8bcef6679946e31698eb1ddfe953954c514b862911cae97856941938ec` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--ddf59e8d96b410bf00e1e98e.md) | 87 | `declaration-track:ddf59e8d96b410bf00e1e98efa2e04282ea1bd4c16011cb84b1815af44b06d5f` |
| 9 | `lemma` | [Hom.ext'](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/hom-ext--318916b9cfe989134f169cf4.md) | 90 | `result-track:318916b9cfe989134f169cf49906682e0ccd255b13521c3b14233639cb2b1e60` |
| 10 | `def` | [stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/stalk--72cd51bea4003aace7a13fe0.md) | 97 | `declaration-track:72cd51bea4003aace7a13fe0f6ae21d016ff113d40ad5093c55f517c8857a946` |
| 11 | `instance` | [stalkLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/stalklocal--6df46156753eecce339d5b60.md) | 104 | `declaration-track:6df46156753eecce339d5b60a51f97727f16770511d7052157837450dd65bc30` |
| 12 | `def` | [stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/stalkmap--198b96b940cd4da64afe204a.md) | 109 | `declaration-track:198b96b940cd4da64afe204a00f637deaa22a55e0813639015ac8e4794d22fe3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--b2c759c40c03c4e992eef581.md) | 115 | `declaration-track:b2c759c40c03c4e992eef581324246652d2825fd0336ab275a72006f60ffaf9a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--2085d87d5fe60fbddbf2b5f7.md) | 118 | `declaration-track:2085d87d5fe60fbddbf2b5f794b92d0872969091a15f0cd8a0ae63b63a477724` |
| 15 | `def` | [id](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/id--541e971df68dc0ce0ed411c1.md) | 124 | `declaration-track:541e971df68dc0ce0ed411c1356c55c6360eff44c6523dfa14b8a0b4a5e636de` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--39cbe98b3d474caf6e292f42.md) | 129 | `declaration-track:39cbe98b3d474caf6e292f424a45989e431c7df658e26fd3988e44fe123cf9e5` |
| 17 | `def` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/comp--de760b9121f47a6b2deca9c1.md) | 133 | `declaration-track:de760b9121f47a6b2deca9c1e7bb6fd159512543089dddea4a26cd000ba12c0d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--5572c4be2ebf3d65e1aab21d.md) | 141 | `declaration-track:5572c4be2ebf3d65e1aab21d5ff90b594d69e7b878f63b02448cea1a2f07f71b` |
| 19 | `def` | [forgetToSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/forgettosheafedspace--1d4dc296edfa609d9cbe0a6d.md) | 151 | `declaration-track:1d4dc296edfa609d9cbe0a6deca40398e9f0c1526e764fc703e983d1e2a11022` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--3e8e07111526c7f10e8863c4.md) | 157 | `declaration-track:3e8e07111526c7f10e8863c43a135044f3ba682432e928f6f2f7f0569a6a5956` |
| 21 | `def` | [forgetToTop](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/forgettotop--48c806eed8941e560bdd79bc.md) | 162 | `declaration-track:48c806eed8941e560bdd79bc3d7b8886a26afe55d57f1a0cdc9eb0874d9274c4` |
| 22 | `theorem` | [comp_val](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/comp-val--2c9649870d97b1591c9bd079.md) | 168 | `result-track:2c9649870d97b1591c9bd0798380da307a992e28367eb600b4c3a511d30d009d` |
| 23 | `theorem` | [comp_val_c](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/comp-val-c--48583b51a017dfb92e8e8545.md) | 177 | `result-track:48583b51a017dfb92e8e8545ae45e2cfd9f082a3f865353d80cd00e967f4406c` |
| 24 | `theorem` | [comp_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/comp-val-c-app--53b997f74fe2e4e29e261cf3.md) | 183 | `result-track:53b997f74fe2e4e29e261cf38f02a170bf845acf5906e4ba8cc7472383d596a7` |
| 25 | `def` | [homOfSheafedSpaceHomOfIsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/homofsheafedspacehomofisiso--ddd4b2ce7f43fd78b0950fae.md) | 195 | `declaration-track:ddd4b2ce7f43fd78b0950fae5c18495f2d3ec6df85bbf224098fe76a0cff4be6` |
| 26 | `def` | [isoOfSheafedSpaceIso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/isoofsheafedspaceiso--edeccb1996e3d72e77491cb6.md) | 213 | `declaration-track:edeccb1996e3d72e77491cb65318218613b3a6a8f54adf9cbe4e9e876565eb47` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/instance--2f7e28648aacbbc871ff0f44.md) | 222 | `declaration-track:2f7e28648aacbbc871ff0f446dbc9c0559ca499b435186d6290b2a0201679cd5` |
| 28 | `instance` | [is_sheafedSpace_iso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/is-sheafedspace-iso--0f722467f889924becec87e4.md) | 227 | `declaration-track:0f722467f889924becec87e40637fe03a7f9b2a51ddd61a77b28c2d8448af6b1` |
| 29 | `def` | [restrict](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/restrict--a304201531f4e836cea95a44.md) | 235 | `declaration-track:a304201531f4e836cea95a444de6708f34b717a8bb4940cd1c580b682b35c3f6` |
| 30 | `def` | [ofRestrict](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/ofrestrict--d86e52f6df03fa385977cf36.md) | 247 | `declaration-track:d86e52f6df03fa385977cf36beb8870f2a4c9d7ef46a9eefc5f91591feffa4d4` |
| 31 | `def` | [restrictTopIso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/restricttopiso--d664e680c7df090ca0431a27.md) | 255 | `declaration-track:d664e680c7df090ca0431a2729c4a21cfaf3b651f099e389379c5a0245193cd5` |
| 32 | `def` | [Γ](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/anonymous--b1cb6186bd4465d6b82e6bd2.md) | 262 | `declaration-track:b1cb6186bd4465d6b82e6bd2715aaa14664027d3daff76fcb82df6699608454f` |
| 33 | `theorem` | [Γ_def](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/def--fdf4d4b7279f05d6d8f051d2.md) | 267 | `result-track:fdf4d4b7279f05d6d8f051d2f8e4d4e9862408df49b42852315cf0aa76543088` |
| 34 | `theorem` | [Γ_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/obj--2961379642a7bf81c00dd860.md) | 273 | `result-track:2961379642a7bf81c00dd860fd3a8382c37836571e52886c276a624d1c4ff5de` |
| 35 | `theorem` | [Γ_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/obj-op--438bda5db798c79242953861.md) | 278 | `result-track:438bda5db798c792429538613819e5c8b3245723ff5a1abdd7df5ef36fc8846c` |
| 36 | `theorem` | [Γ_map](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/map--d304f171dd3c384f8f9033cc.md) | 284 | `result-track:d304f171dd3c384f8f9033cc9a340677b8e92faf240be0ff5697ab834c4a42de` |
| 37 | `theorem` | [Γ_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/map-op--9eebbb67ca5b871fc2bea327.md) | 289 | `result-track:9eebbb67ca5b871fc2bea327553f81905d6f836733ab65f30c493e3456e92c31` |
| 38 | `theorem` | [preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/preimage-basicopen--fd31bf149c134041b3826538.md) | 294 | `result-track:fd31bf149c134041b382653811e0001be4755d3b59368312fb9e34f7832a5bba` |
| 39 | `theorem` | [basicOpen_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/basicopen-zero--c6321565575c8ac988ff95dc.md) | 313 | `result-track:c6321565575c8ac988ff95dc5f17bdbf3ed02029851b19e7100dfcbd27d53bfe` |
| 40 | `instance` | [component_nontrivial](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/declarations/component-nontrivial--47f11d8a5818381c3e2a8cbd.md) | 326 | `declaration-track:47f11d8a5818381c3e2a8cbdf9853431b01c3acb80f32d14fa0de616f578d16c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
