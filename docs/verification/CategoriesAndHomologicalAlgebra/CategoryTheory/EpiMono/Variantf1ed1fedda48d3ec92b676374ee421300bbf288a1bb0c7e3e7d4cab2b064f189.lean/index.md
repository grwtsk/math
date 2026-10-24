# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e733749ce52ae2c2297c8a83545c17ba9a2a09",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e733749ce52ae2c2297c8a83545c17ba9a2a09`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Adjunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesmonomorphisms--d9033438c26e274af670453d.md) | 28 | `declaration-track:d9033438c26e274af670453d7137d1f876e71117839925bfc6dfeeaa3db0647c` |
| 2 | `instance` | [map_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/map-mono--9d0416085bf5472928929eb7.md) | 32 | `declaration-track:9d0416085bf5472928929eb7a2a07562a50095558509d850293196a54c8567bd` |
| 3 | `class` | [PreservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesepimorphisms--e4b9467599a027444c966999.md) | 37 | `declaration-track:e4b9467599a027444c966999fa7b8382d8dfbb22badc59234bbb65b7eaa66f1e` |
| 4 | `instance` | [map_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/map-epi--2fc015fad8ddfe0b5fda45c3.md) | 41 | `declaration-track:2fc015fad8ddfe0b5fda45c3a6d89df246323060c6d1cabc52aa2df2277b452f` |
| 5 | `class` | [ReflectsMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsmonomorphisms--8a61eda6ca50a143e93de3da.md) | 47 | `declaration-track:8a61eda6ca50a143e93de3da881fa285082795ca8e726791c92ee24d5510eb7c` |
| 6 | `theorem` | [mono_of_mono_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/mono-of-mono-map--c12263a815e1a78b05525a5b.md) | 52 | `result-track:c12263a815e1a78b05525a5ba0cb48464e651b50f763eaf81510181a1720e6c2` |
| 7 | `class` | [ReflectsEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsepimorphisms--f7b1e060db8d72eb563c89dd.md) | 58 | `declaration-track:f7b1e060db8d72eb563c89ddbc92843add6cd557cd75fe3eba9ed143eebbbe35` |
| 8 | `theorem` | [epi_of_epi_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/epi-of-epi-map--94b51a03aaab0f1a39b6f713.md) | 63 | `result-track:94b51a03aaab0f1a39b6f713ae0b2116e61794a4cacd367058728076474410da` |
| 9 | `instance` | [preservesMonomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesmonomorphisms-comp--dcee5ff89c11f38c88b98019.md) | 67 | `declaration-track:dcee5ff89c11f38c88b9801953be33ad1bde82355b519e068ea02457e0b4fa94` |
| 10 | `instance` | [preservesEpimorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesepimorphisms-comp--030ca11ea3dc1262a3bcb5b1.md) | 73 | `declaration-track:030ca11ea3dc1262a3bcb5b16259b914fe6b1c79e37b66305f01839cd047e197` |
| 11 | `instance` | [reflectsMonomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsmonomorphisms-comp--0fbf8661249854ae5cb5c1c7.md) | 79 | `declaration-track:0fbf8661249854ae5cb5c1c74b415791952e8fd6a4ba7776ee4498ca55272b29` |
| 12 | `instance` | [reflectsEpimorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsepimorphisms-comp--29fef236b460fe08337bc9a2.md) | 83 | `declaration-track:29fef236b460fe08337bc9a2106fa2c8f7b0fd1fcfd729f4fe268a9ea75b15fc` |
| 13 | `theorem` | [preservesEpimorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesepimorphisms-of-preserves-of-reflects--c80b15524598dcd0909a6c98.md) | 87 | `result-track:c80b15524598dcd0909a6c9808d44cc4d32c3ca54042693de4a2f8f4ca27006d` |
| 14 | `theorem` | [preservesMonomorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesmonomorphisms-of-preserves-of-reflects--e6cf9cb9746fc6358366dfdc.md) | 91 | `result-track:e6cf9cb9746fc6358366dfdc5d197ea8cc5ce196bcd637c1c6fd2267b227f071` |
| 15 | `theorem` | [reflectsEpimorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsepimorphisms-of-preserves-of-reflects--5e2151bba3c51661054fec2b.md) | 95 | `result-track:5e2151bba3c51661054fec2b8f6e681fcb7118da61a970c16c5ab683bc8922fb` |
| 16 | `theorem` | [reflectsMonomorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsmonomorphisms-of-preserves-of-reflects--9ff86a08215ef1430a77538c.md) | 99 | `result-track:9ff86a08215ef1430a77538c9d9c68e8d8ed9c44d768dc582bcc792409aae493` |
| 17 | `theorem` | [preservesMonomorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesmonomorphisms-of-iso--322d7dc35c48b32b36134273.md) | 103 | `result-track:322d7dc35c48b32b36134273e3d46a975b118d16131be14497f63a5a9a0cb645` |
| 18 | `theorem` | [preservesMonomorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesmonomorphisms-iso-iff--a0058c05e5441351455579c5.md) | 109 | `result-track:a0058c05e5441351455579c5f59084135fe46491fd14e74c797559c34b8599b2` |
| 19 | `theorem` | [preservesEpimorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesepimorphisms-of-iso--476492a63ed00851ae3da7d4.md) | 113 | `result-track:476492a63ed00851ae3da7d47e175442eef305a3f6283b473f5430fe8a5eabbf` |
| 20 | `theorem` | [preservesEpimorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesepimorphisms-iso-iff--93712c8a9efe06607a844102.md) | 119 | `result-track:93712c8a9efe06607a844102458f0d8b0c862bcdff6e1c924e8a17e228d02e87` |
| 21 | `theorem` | [reflectsMonomorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsmonomorphisms-of-iso--daf6ec7fc3d8b89858a08d66.md) | 123 | `result-track:daf6ec7fc3d8b89858a08d66710f5b872c0fc504b1c20cc487b546abb3b3fde6` |
| 22 | `theorem` | [reflectsMonomorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsmonomorphisms-iso-iff--2bf6ab57e3e6b35bcd77ab5b.md) | 130 | `result-track:2bf6ab57e3e6b35bcd77ab5b2cb89b4515ae1b42a3d58f1066194c86756e24f7` |
| 23 | `theorem` | [reflectsEpimorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsepimorphisms-of-iso--a2af087e82df3500fe0c1c1f.md) | 134 | `result-track:a2af087e82df3500fe0c1c1fb0dd6252aec1c1960c250eb8b4badfda7573f4ae` |
| 24 | `theorem` | [reflectsEpimorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/reflectsepimorphisms-iso-iff--dd82cf9dc8d4e3834fd8e098.md) | 141 | `result-track:dd82cf9dc8d4e3834fd8e098cbd7ff256d935ad087301289ea57e1511e3865fc` |
| 25 | `theorem` | [preservesEpimorphsisms_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesepimorphsisms-of-adjunction--2fba27efcba1b8a40485e5d2.md) | 145 | `result-track:2fba27efcba1b8a40485e5d2e3851a68034e87a8b2e6118287c39bd5dda98e20` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/instance--258f22b2193fdb5f67813967.md) | 154 | `declaration-track:258f22b2193fdb5f6781396788a5e976e959a7918841c70ae8f0d771e86b9a31` |
| 27 | `theorem` | [preservesMonomorphisms_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/preservesmonomorphisms-of-adjunction--85f5dc2a463aafcbdc5dbece.md) | 158 | `result-track:85f5dc2a463aafcbdc5dbecefa33fc9147643a5c4039721613b9cbf24680d533` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/instance--00b21649c72651943d9ed9b2.md) | 167 | `declaration-track:00b21649c72651943d9ed9b2e92e20e4903e7af079f70aa05f69e0972a8d4bcd` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/instance--8f2030f06ab65e4ef4b01bf1.md) | 171 | `declaration-track:8f2030f06ab65e4ef4b01bf19b950dc8e014af72f4d6666a6cd3f9d98e6c88d7` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/instance--96961fadcf9feec323320c4c.md) | 177 | `declaration-track:96961fadcf9feec323320c4cb6206305c13f4b0021964344522026c8168e3a3a` |
| 31 | `def` | [splitEpiEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/splitepiequiv--a39a16a124c12ebf6a6a3be6.md) | 188 | `declaration-track:a39a16a124c12ebf6a6a3be645a7b8e68213622275ef334f1fb3544056c99297` |
| 32 | `theorem` | [isSplitEpi_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/issplitepi-iff--c7458c9c30dd9285a255e33a.md) | 198 | `result-track:c7458c9c30dd9285a255e33a1d0020c9f1b3cba60e40e5e6dc3ba9e8a05d7bad` |
| 33 | `def` | [splitMonoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/splitmonoequiv--350faee86f3a1a2f1dc8399f.md) | 206 | `declaration-track:350faee86f3a1a2f1dc8399fc50f3a2c3e6ec360a9b2bf181cec5422c9d337c4` |
| 34 | `theorem` | [isSplitMono_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/issplitmono-iff--39eecc6e4998cf3af158e4e1.md) | 216 | `result-track:39eecc6e4998cf3af158e4e12428d7926fc95bb6c00d6f7beb3f6129316658ec` |
| 35 | `theorem` | [epi_map_iff_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/epi-map-iff-epi--1e079387c3881451f3a7ee3c.md) | 224 | `result-track:1e079387c3881451f3a7ee3c0b72e2f806edba30a0109c4f6a9886c57d4f8af1` |
| 36 | `theorem` | [mono_map_iff_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/mono-map-iff-mono--c4559187ff9fc01fc87079dc.md) | 232 | `result-track:c4559187ff9fc01fc87079dcc55a6ce7a01bbebc7608300c070261fa6aedfa33` |
| 37 | `theorem` | [splitEpiCategoryImpOfIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/splitepicategoryimpofisequivalence--cb691939a60a72c1f0c55b81.md) | 241 | `result-track:cb691939a60a72c1f0c55b81a8aacb906b04f12f680752189263d75783bcfa39` |
| 38 | `theorem` | [strongEpi_map_of_strongEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/strongepi-map-of-strongepi--2e94b07862c0d6cfc13326e5.md) | 256 | `result-track:2e94b07862c0d6cfc13326e522ebec2d595a4a982d8659cc001194229474f6ab` |
| 39 | `instance` | [strongEpi_map_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/strongepi-map-of-isequivalence--ba586bfe9e38dd51e88ad486.md) | 263 | `declaration-track:ba586bfe9e38dd51e88ad4868a09457dc0de22c8d7ff03df5577ff4968581bf6` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/instance--4bd2b357b66075b08a7b70c8.md) | 267 | `declaration-track:4bd2b357b66075b08a7b70c8627d663d5937fde32c9762504495677a91562edd` |
| 41 | `theorem` | [strongEpi_map_iff_strongEpi_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/declarations/strongepi-map-iff-strongepi-of-isequivalence--42d69977370c0506df6ce783.md) | 280 | `result-track:42d69977370c0506df6ce783e2edef0872085007f249806e3c2f3529955f5cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
