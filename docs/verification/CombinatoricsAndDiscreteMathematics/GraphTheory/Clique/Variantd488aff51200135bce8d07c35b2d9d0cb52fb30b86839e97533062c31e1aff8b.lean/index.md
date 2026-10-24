# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Clique.Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3758c79cad00f794e75c5849929b04130d3625cd",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3758c79cad00f794e75c5849929b04130d3625cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsClique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isclique--06686014e954f9e44ebb609d.md) | 45 | `declaration-track:06686014e954f9e44ebb609d9af026816168f2c805eba2ef787131b3622bf093` |
| 2 | `theorem` | [isClique_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isclique-iff--d905bfa97cab677ae02c680b.md) | 49 | `result-track:d905bfa97cab677ae02c680b9d94ec200cc1759f0387829837e09ce5120010bf` |
| 3 | `theorem` | [isClique_iff_induce_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isclique-iff-induce-eq--29a7fc4de813ad2ec3aecbe2.md) | 54 | `result-track:29a7fc4de813ad2ec3aecbe28b8c09afd145521e121191e06aa30c72baaa80a7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/instance--de9032c980a04f941d66bc68.md) | 68 | `declaration-track:de9032c980a04f941d66bc68e1abff4a5e91bc7fcdbeda3b34587c57eecbd8f1` |
| 5 | `theorem` | [IsClique.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isclique-mono--991c88a9fbe33d05b9f8c33e.md) | 73 | `result-track:991c88a9fbe33d05b9f8c33edede33758888bcb1f3804385281c77710da5ad25` |
| 6 | `theorem` | [IsClique.subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isclique-subset--58c69c94b711611e008ffd70.md) | 78 | `result-track:58c69c94b711611e008ffd70a5640a10f4d6a9314553379c2700dd8b03f4d419` |
| 7 | `theorem` | [isClique_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isclique-bot-iff--1c00e6eae897a1e614352c3e.md) | 84 | `result-track:1c00e6eae897a1e614352c3efdc14cb5afb3c1d5dd6f9de2a26d0a43795af4ef` |
| 8 | `structure` | [IsNClique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isnclique--09564ffe3ce70ae7f9dde18c.md) | 101 | `declaration-track:09564ffe3ce70ae7f9dde18c5408a33395c9a145d6e6eae764a62dc49bef7a00` |
| 9 | `theorem` | [isNClique_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isnclique-iff--7616e579a285fa7103ec4a72.md) | 106 | `result-track:7616e579a285fa7103ec4a72edef70630cd33d243537ac324a8c969e5986a735` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/instance--18d52a6ea2721c3449096ace.md) | 110 | `declaration-track:18d52a6ea2721c3449096ace1794457cf10a9060d823cbbecad6275160bc93b7` |
| 11 | `theorem` | [IsNClique.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isnclique-mono--bace31968ef3b962374bef41.md) | 116 | `result-track:bace31968ef3b962374bef412f95d4f6182095c272dea2427a5eff2a35555c16` |
| 12 | `theorem` | [isNClique_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isnclique-bot-iff--821d50b22a588442f251a96a.md) | 122 | `result-track:821d50b22a588442f251a96a372fb5ec77d34a4cd267d3264e3d149cd8faf67c` |
| 13 | `theorem` | [is3Clique_triple_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/is3clique-triple-iff--28c46d2386bdad0f096b6993.md) | 131 | `result-track:28c46d2386bdad0f096b6993ca0d36dfa341059f76753a5bf01e328e63aecde5` |
| 14 | `theorem` | [is3Clique_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/is3clique-iff--f80bf07ec32f7dd34fb1a351.md) | 137 | `result-track:f80bf07ec32f7dd34fb1a3516324b7f39133ec4a99025f76a516756c57a0f134` |
| 15 | `def` | [CliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefree--67ddc585549ffc73f4172d16.md) | 157 | `declaration-track:67ddc585549ffc73f4172d167b5d1b20cfb38a8791d7fb67a750975d726d05b1` |
| 16 | `theorem` | [IsNClique.not_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/isnclique-not-cliquefree--54a00d021db2538f3f63a620.md) | 163 | `result-track:54a00d021db2538f3f63a6209982714781d4b56d7785305ac5d2c9de473b6bed` |
| 17 | `theorem` | [not_cliqueFree_of_top_embedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/not-cliquefree-of-top-embedding--6f4a761cb0f749070bc2fa23.md) | 167 | `result-track:6f4a761cb0f749070bc2fa23238cbb9c9d7db8acb24a5cd3cb109c64876a5d29` |
| 18 | `def` | [topEmbeddingOfNotCliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/topembeddingofnotcliquefree--0de935ba4fe836023c0aa555.md) | 181 | `declaration-track:0de935ba4fe836023c0aa555af9578101cbb9811638a0284da9de76507426042` |
| 19 | `theorem` | [not_cliqueFree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/not-cliquefree-iff--60c19a045a9353a89bfef420.md) | 193 | `result-track:60c19a045a9353a89bfef4203bd770862021a77c90b0093bbe4262e16dbfb3e3` |
| 20 | `theorem` | [cliqueFree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefree-iff--cf67b21233a4e7a6341bff24.md) | 197 | `result-track:cf67b21233a4e7a6341bff24461922906e27e9f9a73479758dad4380ff524dfa` |
| 21 | `theorem` | [not_cliqueFree_card_of_top_embedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/not-cliquefree-card-of-top-embedding--fec614b99f39dba82e2272da.md) | 201 | `result-track:fec614b99f39dba82e2272da51a53f35354606c88f748b0eae7105ca108e2be4` |
| 22 | `theorem` | [cliqueFree_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefree-bot--60ef49172c1bb8557c7f4ee5.md) | 207 | `result-track:60ef49172c1bb8557c7f4ee5db9df5005883813e6adb26d872056e06491babe5` |
| 23 | `theorem` | [CliqueFree.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefree-mono--bfd6e9fdd23803c9a943ea91.md) | 213 | `result-track:bfd6e9fdd23803c9a943ea91f9363565393d11df37dba7397b695507a2bb1448` |
| 24 | `theorem` | [CliqueFree.anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefree-anti--30acad215d805df8c105f191.md) | 219 | `result-track:30acad215d805df8c105f191b11b2fa163aebfa32d17be42601093e644179e4b` |
| 25 | `theorem` | [cliqueFree_of_card_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefree-of-card-lt--6b88c6771ccf51bdc56c0816.md) | 224 | `result-track:6b88c6771ccf51bdc56c08168a2a322cca29f66cd17e98bb082a3b95527401f0` |
| 26 | `theorem` | [cliqueFree_completeMultipartiteGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefree-completemultipartitegraph--cfc80b7cf0b85192c1104a1f.md) | 232 | `result-track:cfc80b7cf0b85192c1104a1fa29b08eae56b259d12b6368693f645dc3da77558` |
| 27 | `def` | [cliqueSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliqueset--3c92ec853713447a4fb7ee04.md) | 250 | `declaration-track:3c92ec853713447a4fb7ee04a3a86c1e9d32d62888f8ae774443cc35ed24a8c9` |
| 28 | `theorem` | [mem_cliqueSet_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/mem-cliqueset-iff--ecafcb26aa55e5189ae5e562.md) | 254 | `result-track:ecafcb26aa55e5189ae5e562fadb18c9016bf7c168593f9081ed8d2425e8a040` |
| 29 | `theorem` | [cliqueSet_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliqueset-eq-empty-iff--32093a10642eb03faab2277f.md) | 259 | `result-track:32093a10642eb03faab2277f650f1343f5f36cf9c80ab4ddec5aded538092967` |
| 30 | `theorem` | [cliqueSet_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliqueset-mono--fdfda85f8a1925ba2616a737.md) | 271 | `result-track:fdfda85f8a1925ba2616a7370599cb53fe4b987a29d59e1e8b1d78d974b4fb70` |
| 31 | `theorem` | [cliqueSet_mono'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliqueset-mono--e7cf6fd6ace6de467174c4c1.md) | 275 | `result-track:e7cf6fd6ace6de467174c4c1987708e0c94c0174614a1c7eb665e053f3807601` |
| 32 | `def` | [cliqueFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefinset--69719725787912dab18af683.md) | 289 | `declaration-track:69719725787912dab18af6831f97dcb82757438a415e8c7298667b82a5db99f0` |
| 33 | `theorem` | [mem_cliqueFinset_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/mem-cliquefinset-iff--8a707cc7a807be4ce74adc88.md) | 293 | `result-track:8a707cc7a807be4ce74adc8861636fbf1eb0cd69b171fc93a894dc29572cc85c` |
| 34 | `theorem` | [coe_cliqueFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/coe-cliquefinset--f7fb8b1141eaa73a747ebcb1.md) | 298 | `result-track:f7fb8b1141eaa73a747ebcb1929632037a8e5108e1ba94b02f0dd8d29d78a629` |
| 35 | `theorem` | [cliqueFinset_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefinset-eq-empty-iff--54fb57487043a452835b67b9.md) | 303 | `result-track:54fb57487043a452835b67b9b0f5b32627db7ceb11abbf37db6a30040afb7350` |
| 36 | `theorem` | [cliqueFinset_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean/declarations/cliquefinset-mono--f169eddd74ec23c624ebb2b0.md) | 315 | `result-track:f169eddd74ec23c624ebb2b03ee739f4d2ea7871090d4e57ae321dc61b43aae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
