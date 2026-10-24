# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caf4b2083d0fd664f193a5b269cb6b548a1abdd2",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caf4b2083d0fd664f193a5b269cb6b548a1abdd2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/comphauslike--0928e516f4517e30e9e5a4b4.md) | 83 | `declaration-track:0928e516f4517e30e9e5a4b401b9c9d584f50bf52fdeba67df6408221ba14736` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--05538e79e1e6f129c3b502e9.md) | 97 | `declaration-track:05538e79e1e6f129c3b502e91750ced8897aac1132c93afd43e2dfdcdf6c93a0` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/category--c4bd98b8cc0eff39e12432bc.md) | 100 | `declaration-track:c4bd98b8cc0eff39e12432bcfed262fb72ef251838e7944cc1a722e2f7e0af87` |
| 4 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/concretecategory--5e2faa4caa2dc41b7b52fb15.md) | 103 | `declaration-track:5e2faa4caa2dc41b7b52fb15bc15753ab6da1bd650701ea6f561a6643585d5d5` |
| 5 | `instance` | [hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/hasforget--ec522eff09427e8e93a4a0a6.md) | 106 | `declaration-track:ec522eff09427e8e93a4a0a6de332dd244a84e51197e1558d225980eb50065a3` |
| 6 | `class` | [HasProp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/hasprop--ee686cd37a7c39101308ed29.md) | 112 | `declaration-track:ee686cd37a7c39101308ed29fbec2b0d935187b67ec2f3ea8ae756e5aabe2328` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--4127900db53bb493caa0e625.md) | 115 | `declaration-track:4127900db53bb493caa0e62502b6978b873890aa08ec666326767fbeaab1accc` |
| 8 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/of--5a1e6f63935e34ee2d0c3ee0.md) | 122 | `declaration-track:5a1e6f63935e34ee2d0c3ee08fef760a98dfff1f0be1982374a95837f8184374` |
| 9 | `def` | [delabOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/delabof--705571ee24ba4263b95b3857.md) | 131 | `declaration-track:705571ee24ba4263b95b38573f88d6b534f10ab25253fd1354dc5843f75781e2` |
| 10 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/coe-of--dedd01d74a5091a55eb890ae.md) | 133 | `result-track:dedd01d74a5091a55eb890ae5d352147be451020bfce483fe902cb2d1488eff2` |
| 11 | `theorem` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/coe-id--b46cc71ece15e1df346f7fca.md) | 136 | `result-track:b46cc71ece15e1df346f7fca03e5e329632c0ab227864198bc4968a3d1d0ff0e` |
| 12 | `theorem` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/coe-comp--e8e54feb54538bd2b89a3086.md) | 140 | `result-track:e8e54feb54538bd2b89a3086d9bd4a8caeca182629b44430be37cbc56713911f` |
| 13 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/ofhom--1552090c93821a15a669f991.md) | 150 | `declaration-track:1552090c93821a15a669f991fff128b21419b45bec35723e6e5c811ccf6595d4` |
| 14 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/hom-ofhom--e642cf6e69c497f480355f66.md) | 152 | `result-track:e642cf6e69c497f480355f664747d44ab15ed03b450e59b4e7fce42ac50b9c55` |
| 15 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/ofhom-id--f7073b8bb90a5560dde67ae1.md) | 154 | `result-track:f7073b8bb90a5560dde67ae17874f6bd4a871df4c75f8a1deef9995154a6b0f9` |
| 16 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/ofhom-comp--031885354c28c04e730dc510.md) | 156 | `result-track:031885354c28c04e730dc510e84347f5c7dd7df418295a0bc001796f39ecd9bc` |
| 17 | `def` | [toCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/tocomphauslike--77b978471860d7306d649de9.md) | 165 | `declaration-track:77b978471860d7306d649de9fe41459c2a627785c09090d23c78b6e29ee2a41a` |
| 18 | `def` | [fullyFaithfulToCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/fullyfaithfultocomphauslike--4bd66f48862e20cb08b44b5c.md) | 178 | `declaration-track:4bd66f48862e20cb08b44b5cef6ba9360a716f0c5c0f26bf348492dc997de88a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--aabc89985cee73c22fa51f00.md) | 181 | `declaration-track:aabc89985cee73c22fa51f0059f9e5ab311794c2a75d2ff8ce7b9fa462131411` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--a89b1a72c556d6f508fe6c65.md) | 183 | `declaration-track:a89b1a72c556d6f508fe6c6530e21756de851294fe709d1c32125810ab75c481` |
| 21 | `def` | [compHausLikeToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/comphausliketotop--d5d44ccc1b79119a9597b2ac.md) | 191 | `declaration-track:d5d44ccc1b79119a9597b2acc8e828f490ea865081912c4b7ee14df4af93be28` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/example--eb8fa55b9e8b34a61b2f3030.md) | 196 | `declaration-track:eb8fa55b9e8b34a61b2f30305ec984eac35ef743bd058ace1496a6c851a25b61` |
| 23 | `def` | [fullyFaithfulCompHausLikeToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/fullyfaithfulcomphausliketotop--734bf823f128b1230f95628f.md) | 200 | `declaration-track:734bf823f128b1230f95628f2bc5401c89b9b6299527c359a98ba9ef6850ca9b` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--22dc572f0503ad630ccd32dd.md) | 203 | `declaration-track:22dc572f0503ad630ccd32dd557aa6a9cf126864a0b3b85ba7cc62de47157772` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--a0da1756b09010fbe246c27b.md) | 206 | `declaration-track:a0da1756b09010fbe246c27bb3cc1789197064dadfa3be9d2cfaab9ec65e3b0d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--1502a37ceab01a3efe522cde.md) | 209 | `declaration-track:1502a37ceab01a3efe522cde86b4e454b3aafe30cdc3d8987c3466d6852c4915` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/instance--3f2848275610b66bef0412a8.md) | 212 | `declaration-track:3f2848275610b66bef0412a8a26642fd0406e1080175516533869fb4f2f4289b` |
| 28 | `theorem` | [epi_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/epi-of-surjective--e26e3bfbfcc2150e633ac0f5.md) | 217 | `result-track:e26e3bfbfcc2150e633ac0f52808675f5d1fd67d1758f8509fe475dd49903357` |
| 29 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/mono-iff-injective--655aca9de664a11e443816d5.md) | 222 | `result-track:655aca9de664a11e443816d5c5290e9dff400fe5ae8d79cc1d3d4c138ce70717` |
| 30 | `theorem` | [isClosedMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/isclosedmap--996ed55b01ad4d703ffcb1ba.md) | 234 | `result-track:996ed55b01ad4d703ffcb1ba722bf269a8100163bf0413742fa30d7d5c3fc3be` |
| 31 | `theorem` | [isIso_of_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/isiso-of-bijective--372386ed771e6a579507dd59.md) | 238 | `result-track:372386ed771e6a579507dd597ff3ed308daa8f982159c56dc8fce6777f094aba` |
| 32 | `instance` | [forget_reflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/forget-reflectsisomorphisms--bd29ebb873d253e1021d8c37.md) | 252 | `declaration-track:bd29ebb873d253e1021d8c37fb143ffffb9162cbaf6eb9b3615524aab98cd77a` |
| 33 | `def` | [isoOfBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/isoofbijective--616cc0a3b68ddac4e5b8c2b1.md) | 257 | `declaration-track:616cc0a3b68ddac4e5b8c2b1cff3be9f718a66a7fdae6106f15f1eee96163ad2` |
| 34 | `def` | [isoOfHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/isoofhomeo--1444d777a13ff1d1a27ee34d.md) | 264 | `declaration-track:1444d777a13ff1d1a27ee34d78fbee4624a960631752d89093758c08613cd71b` |
| 35 | `def` | [homeoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/homeoofiso--796d802cc79bc9a4b4705d86.md) | 269 | `declaration-track:796d802cc79bc9a4b4705d86ee6ba8787206c23904bc7d4cb0c3ecd9920f6fe6` |
| 36 | `def` | [isoEquivHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/isoequivhomeo--57b0c3ca6bcdac63671a7d87.md) | 275 | `declaration-track:57b0c3ca6bcdac63671a7d87cee9bd713e8a1c92c2ca04b0ab8bddc22ad225be` |
| 37 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/const--9730995fd564aacc67568527.md) | 280 | `declaration-track:9730995fd564aacc6756852735c16aeaeece22ea8db6341dcb9f69427309f717` |
| 38 | `lemma` | [const_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254cf70fb38ddaba590af11ac7189b66c19f8f76dffdfe52e2f5d3492d19f91a.lean/declarations/const-comp--b10ac0f496c57f1da914ae44.md) | 284 | `result-track:b10ac0f496c57f1da914ae44a30f3c7666ed01168d7328948babc00aee65a966` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
