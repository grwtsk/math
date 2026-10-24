# Verification target: GRWTSK.Algebra.LinearAlgebra.Cartan.Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0da93c2b77d7de2390e0f789d23483c7dc4599a5",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0da93c2b77d7de2390e0f789d23483c7dc4599a5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.CartanSubalgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspace--0645b3764703ae123a133c05.md) | 52 | `declaration-track:0645b3764703ae123a133c05e71b79125507254cffb38a540cc8bf530cfe6f18` |
| 2 | `theorem` | [zero_rootSpace_eq_top_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/zero-rootspace-eq-top-of-nilpotent--a7075af84841c0036e3d5ab3.md) | 55 | `result-track:a7075af84841c0036e3d5ab39e4bca54503d3aecc95542cfc78a875fec3594f9` |
| 3 | `theorem` | [rootSpace_comap_eq_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspace-comap-eq-genweightspace--1c5e0a8f620c11a85e984ac9.md) | 60 | `result-track:1c5e0a8f620c11a85e984ac9c32066c12a5a015e8a05c3e594e6682cacfb8e4c` |
| 4 | `theorem` | [lie_mem_genWeightSpace_of_mem_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/lie-mem-genweightspace-of-mem-genweightspace--cfb3818386dd8267d31a3945.md) | 66 | `result-track:cfb3818386dd8267d31a3945c5f15c9b8de5998d82c704aa02c84a6eadc28893` |
| 5 | `lemma` | [toEnd_pow_apply_mem](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/toend-pow-apply-mem--4d40b066337509514ae576b3.md) | 77 | `result-track:4d40b066337509514ae576b39b5952aa4b213c975ff768f8c3faeeb38b16831c` |
| 6 | `def` | [rootSpaceWeightSpaceProductAux](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspaceweightspaceproductaux--e0d9bf7d7cadb384b725c787.md) | 93 | `declaration-track:e0d9bf7d7cadb384b725c7874f03ab04b2711cff0136155b8b18aae0f7870dec` |
| 7 | `def` | [rootSpaceWeightSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspaceweightspaceproduct--fe07f3dd65cc04ec15e6fc23.md) | 117 | `declaration-track:fe07f3dd65cc04ec15e6fc231118891841a4597e5022a6896a741db45f74468e` |
| 8 | `theorem` | [coe_rootSpaceWeightSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/coe-rootspaceweightspaceproduct-tmul--9f51fe4b2c9c0d2ee1c84081.md) | 128 | `result-track:9f51fe4b2c9c0d2ee1c84081a7bc23e5b34cb060aa1c377e986625ec2aa46790` |
| 9 | `theorem` | [mapsTo_toEnd_genWeightSpace_add_of_mem_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/mapsto-toend-genweightspace-add-of-mem-rootspace--8e84a54f56f1853263517c9a.md) | 135 | `result-track:8e84a54f56f1853263517c9aae63791b9bcab1194a42e4446098cb8d5b9e23cf` |
| 10 | `def` | [rootSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspaceproduct--7efdf9f36d3750e18eefae85.md) | 145 | `declaration-track:7efdf9f36d3750e18eefae85fe4907426c323c9869ed842440901c2a67077a71` |
| 11 | `theorem` | [rootSpaceProduct_def](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspaceproduct-def--78c0efc4c6caad5259e32f39.md) | 150 | `result-track:78c0efc4c6caad5259e32f39ea614f810cc9d261c56492f68a8921e4add18011` |
| 12 | `theorem` | [rootSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspaceproduct-tmul--bd552358c1fbc79318464943.md) | 152 | `result-track:bd552358c1fbc79318464943b7631f6120574775af982901130f7020b056595f` |
| 13 | `def` | [zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/zerorootsubalgebra--2bbe09a4ccb824332154a146.md) | 159 | `declaration-track:2bbe09a4ccb824332154a146c285678ded87f9b184d61425f7cbeeb41a163465` |
| 14 | `theorem` | [coe_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/coe-zerorootsubalgebra--b51fee921d44aed1f660f71f.md) | 168 | `result-track:b51fee921d44aed1f660f71fd97230f1d660042b6cae80e62704e19c613e7608` |
| 15 | `theorem` | [mem_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/mem-zerorootsubalgebra--b8fdfb97817381f7e1ea8b1d.md) | 170 | `result-track:b8fdfb97817381f7e1ea8b1d6fbd7d239048686b2eaacd678f1f16e6cda5ba13` |
| 16 | `theorem` | [toLieSubmodule_le_rootSpace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/toliesubmodule-le-rootspace-zero--60058fd1008cd78af26d8d16.md) | 175 | `result-track:60058fd1008cd78af26d8d16f5d3ae435342d4e61493db29308e2437cc3e42f7` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/instance--9b03a3b33717e4c405dc2212.md) | 199 | `declaration-track:9b03a3b33717e4c405dc22129ef4519113f08a7b0c5ea656331f50f1de6ada1f` |
| 18 | `theorem` | [le_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/le-zerorootsubalgebra--3f73d0df81d894efffbd2d7d.md) | 204 | `result-track:3f73d0df81d894efffbd2d7d46be553e564f1259992c3957b09d0f47b35e0402` |
| 19 | `theorem` | [zeroRootSubalgebra_normalizer_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/zerorootsubalgebra-normalizer-eq-self--a40533112a4b2c38cecb7769.md) | 210 | `result-track:a40533112a4b2c38cecb7769033db198ce6827385c1e65087a8d42160c559a87` |
| 20 | `theorem` | [is_cartan_of_zeroRootSubalgebra_eq](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/is-cartan-of-zerorootsubalgebra-eq--0a2f46450a631c6a3ecc88d1.md) | 230 | `result-track:0a2f46450a631c6a3ecc88d1ad63e641db33024fe4ef7b41684c3c3a0bdf6407` |
| 21 | `theorem` | [zeroRootSubalgebra_eq_of_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/zerorootsubalgebra-eq-of-is-cartan--0a6311f3f88397f193dc0317.md) | 236 | `result-track:0a6311f3f88397f193dc03174c3132b14b8626c91b3d2ac04972f48d2bbae69c` |
| 22 | `theorem` | [zeroRootSubalgebra_eq_iff_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/zerorootsubalgebra-eq-iff-is-cartan--ba11655153aa188657359bb5.md) | 243 | `result-track:ba11655153aa188657359bb5de218f4fbc5d79148856fdb6808b199de0a2969a` |
| 23 | `theorem` | [rootSpace_zero_eq](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/rootspace-zero-eq--f150b16d20780d5ae64f8efe.md) | 248 | `result-track:f150b16d20780d5ae64f8efe5c7ddb56928f4384a8cda528b0ba4febde4008c0` |
| 24 | `def` | [corootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/corootspace--d0405cfb896ef0275c04b363.md) | 266 | `declaration-track:d0405cfb896ef0275c04b3637625c9051440749c600e6ebad932b29e22949846` |
| 25 | `lemma` | [mem_corootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/mem-corootspace--e410d0f7f1bbd631182a190b.md) | 272 | `result-track:e410d0f7f1bbd631182a190b406bfbd26ec5261f99fa717aa2cb534d5993c4a4` |
| 26 | `lemma` | [mem_corootSpace'](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/declarations/mem-corootspace--e5dcb41e6ba4604aa7810b9a.md) | 288 | `result-track:e5dcb41e6ba4604aa7810b9a89914b1512e65a17d9edc681e6f5ca4b9169e9c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
