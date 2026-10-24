# Verification target: GRWTSK.Geometry.DifferentialGeometry.LieGroup.Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40169b985e87a6eb44d0be3486f306c8ec004a8b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40169b985e87a6eb44d0be3486f306c8ec004a8b`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.Monoid` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieAddGroup](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/lieaddgroup--f4da51c6cef284303da2dc7d.md) | 57 | `declaration-track:f4da51c6cef284303da2dc7ddece4a47b255a1eb03a3df86efd1e58aa20f39d3` |
| 2 | `class` | [LieGroup](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/liegroup--df7bd84c306b5d1253fb8a77.md) | 68 | `declaration-track:df7bd84c306b5d1253fb8a77af73d2ac0372869f2c651d045747080400a78684` |
| 3 | `theorem` | [LieGroup.of_le](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/liegroup-of-le--121349d2bc32d3f86e4b6933.md) | 90 | `result-track:121349d2bc32d3f86e4b693325bbd5d3d8516cfdc21fa19506bb6400ec7ab3fa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--f2274102e17fa3350038eed6.md) | 96 | `declaration-track:f2274102e17fa3350038eed66dd7454c5bab2f21b8552868651bb0bd34bc2a39` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--0846d83b60d3eea593a5aaf4.md) | 100 | `declaration-track:0846d83b60d3eea593a5aaf40c3fd7d72c75d4e5bbe3c019a0f3a0699be7e072` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--b6a2ab09d80e84764d4ec88e.md) | 104 | `declaration-track:b6a2ab09d80e84764d4ec88eddb001bbd3c3e19c8c0473ca151d7da063bccb85` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--f4ba2f8cbc622bd13dfdb079.md) | 110 | `declaration-track:f4ba2f8cbc622bd13dfdb079150e8d774e0b19bd112948c9bb6ca414ce61f5c9` |
| 8 | `theorem` | [contMDiff_inv](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiff-inv--1173dc049c4fe876153260ee.md) | 121 | `result-track:1173dc049c4fe876153260eed7d9a7c51608ce6efa5a3cfeaa9542aa3282c3ee` |
| 9 | `theorem` | [topologicalGroup_of_lieGroup](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/topologicalgroup-of-liegroup--4ab185d28269eb8c49ed0f8f.md) | 132 | `result-track:4ab185d28269eb8c49ed0f8ffdc22da04038ef0380a55d1c308de7ce01dea1ef` |
| 10 | `theorem` | [ContMDiffWithinAt.inv](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffwithinat-inv--92af8124363e9b37257e0c5a.md) | 138 | `result-track:92af8124363e9b37257e0c5a989c287fce4a280dcdd7a70d3128596f0f4207a7` |
| 11 | `theorem` | [ContMDiffAt.inv](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffat-inv--350c3c288a6ec250666992dc.md) | 143 | `result-track:350c3c288a6ec250666992dc8ee910dae7de780c04f5e3cf43423634ffb2a256` |
| 12 | `theorem` | [ContMDiffOn.inv](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffon-inv--2a489c5717e9778812d732b7.md) | 148 | `result-track:2a489c5717e9778812d732b7cda0f29572cd092eb1de3c0203ce3aa5ade17a5a` |
| 13 | `theorem` | [ContMDiff.inv](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiff-inv--71c424ec82da0cd755cb2ddb.md) | 152 | `result-track:71c424ec82da0cd755cb2ddb3e98c4f52ba289b26c55f7d55207c8ee97085de7` |
| 14 | `theorem` | [ContMDiffWithinAt.div](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffwithinat-div--c3c8a40da1c6e2e6f3ea5d9d.md) | 166 | `result-track:c3c8a40da1c6e2e6f3ea5d9dc804090e8950a61fe4b118298a17cc5bc94e6ad2` |
| 15 | `theorem` | [ContMDiffAt.div](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffat-div--71ee1f965d83be48f57cf97e.md) | 172 | `result-track:71ee1f965d83be48f57cf97e9056f8b70b91fd4d3ee4cceb2e9f0eb44573bd41` |
| 16 | `theorem` | [ContMDiffOn.div](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffon-div--ff8b35eb6991c3ceb68c9202.md) | 177 | `result-track:ff8b35eb6991c3ceb68c9202b4a2965191c713bc6c5963d610f24fb47fdd02d5` |
| 17 | `theorem` | [ContMDiff.div](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiff-div--2966e451f1fab9b673b839ff.md) | 182 | `result-track:2966e451f1fab9b673b839ff2449d7e56390053bedbfe3f3c531c4df79b9f51e` |
| 18 | `instance` | [Prod.instLieGroup](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/prod-instliegroup--229cafc5c3c2caec53ca571a.md) | 202 | `declaration-track:229cafc5c3c2caec53ca571a867e66cc41ea2f447ac04d23b78d1ffe263deda2` |
| 19 | `instance` | [instNormedSpaceLieAddGroup](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instnormedspacelieaddgroup--1f9edbfb9ef0f6e8786bc5d1.md) | 215 | `declaration-track:1f9edbfb9ef0f6e8786bc5d11a8ab18f844e7c5d6a10da538a755c75b772cf3a` |
| 20 | `class` | [ContMDiffInv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffinv--08a2cdafc3935e9832ed1a0f.md) | 229 | `declaration-track:08a2cdafc3935e9832ed1a0f2e7ea8410c263501dc11dcd946d520cd681a4571` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--a37918c3d0cece7b9b30c6e2.md) | 238 | `declaration-track:a37918c3d0cece7b9b30c6e278a8ce59fc5a56a49dd25f9f7d6becae1526215c` |
| 22 | `theorem` | [ContMDiffInv₀.of_le](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffinv-of-le--4d04e8ec705d79bb2c1b65ac.md) | 252 | `result-track:4d04e8ec705d79bb2c1b65acf99424a0c3ce5cde7f6c5e5ba84a74741b2a90a6` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--e3e9c02f2e3153b0fc936058.md) | 256 | `declaration-track:e3e9c02f2e3153b0fc936058ba40e854c2ea1c7ff0313211edb6eabab1ba86a4` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--8db1dca51bc19d8f8913cf71.md) | 259 | `declaration-track:8db1dca51bc19d8f8913cf714f5fe9fb34931f66aa27c3777387496ccaeb81e7` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--e2fea38cad3e973991816a5d.md) | 262 | `declaration-track:e2fea38cad3e973991816a5deba0e2d41d5290b4e105d0ad1e9221c16362ad59` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/instance--e0e05f79a811bc046b495738.md) | 273 | `declaration-track:e0e05f79a811bc046b4957389bce7209392b5635eed04a3db9877254529eac9f` |
| 27 | `theorem` | [contMDiffAt_inv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffat-inv--5526a48040366fd4e667998c.md) | 278 | `result-track:5526a48040366fd4e667998cbe87ced640b30b535212eef1154c9c8eb7a1ffb0` |
| 28 | `theorem` | [hasContinuousInv₀_of_hasContMDiffInv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/hascontinuousinv-of-hascontmdiffinv--4bfb000fe78ce31d0a6ce020.md) | 287 | `result-track:4bfb000fe78ce31d0a6ce02022c6177dc19237b1962f22f7e4e6ed37d0856a52` |
| 29 | `theorem` | [contMDiffOn_inv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffon-inv--51a6ad3c930466fee522169d.md) | 293 | `result-track:51a6ad3c930466fee522169d993fc53a700de861b7b9dfab5544c7438e3be06f` |
| 30 | `theorem` | [ContMDiffWithinAt.inv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffwithinat-inv--e93e6e65bc96ba3f2690080e.md) | 301 | `result-track:e93e6e65bc96ba3f2690080e821379f20928b8052577c8228a18b90129aa5989` |
| 31 | `theorem` | [ContMDiffAt.inv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffat-inv--857ba3c9b742aa446e5731c1.md) | 305 | `result-track:857ba3c9b742aa446e5731c127464399154e724b4d66989a635c6e4a990a141c` |
| 32 | `theorem` | [ContMDiff.inv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiff-inv--92428bbbbe1ae60d41a81d89.md) | 309 | `result-track:92428bbbbe1ae60d41a81d8996cd004224082c0d5ed5a18689c5ef00de53975f` |
| 33 | `theorem` | [ContMDiffOn.inv₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffon-inv--a4d1f652d25f96cafd95e247.md) | 313 | `result-track:a4d1f652d25f96cafd95e2474f7d8e4036a0fe1faf5bb2324f17a7a595a33914` |
| 34 | `theorem` | [ContMDiffWithinAt.div₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffwithinat-div--b6b3bd5daf2598b763db9be9.md) | 341 | `result-track:b6b3bd5daf2598b763db9be9f89e602e7545ec7089b460753ab1029987d9c68e` |
| 35 | `theorem` | [ContMDiffOn.div₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffon-div--d6de4e7575dfe68e21b8941a.md) | 346 | `result-track:d6de4e7575dfe68e21b8941aee6b502df702afa1c6fcf7aa76f111a13f08edc0` |
| 36 | `theorem` | [ContMDiffAt.div₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiffat-div--1a3af45f18c1a1234df2a829.md) | 350 | `result-track:1a3af45f18c1a1234df2a829cdb760b024a4fdfe84498045a215978c9a344fc5` |
| 37 | `theorem` | [ContMDiff.div₀](../../../../../mathematics/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/declarations/contmdiff-div--22f31e4c9831148045d428e2.md) | 354 | `result-track:22f31e4c9831148045d428e24126e9884bacdb0a77a27c796d2cf7d2d9a9bcbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
