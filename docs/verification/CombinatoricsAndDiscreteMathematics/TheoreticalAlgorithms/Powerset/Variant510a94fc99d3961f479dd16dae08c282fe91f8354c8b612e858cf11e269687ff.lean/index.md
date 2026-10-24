# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Powerset.Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "516b8bdb7bbe0d89b38888b1ed89f602d0a36809",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `516b8bdb7bbe0d89b38888b1ed89f602d0a36809`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Sublists` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Zip` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Bind` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetaux--dcfec876fb541351d620cda0.md) | 34 | `declaration-track:dcfec876fb541351d620cda0270bd027856ad4d66973519c284823f2f30dce8a` |
| 2 | `theorem` | [powersetAux_eq_map_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetaux-eq-map-coe--6b9021442b787546500503d8.md) | 37 | `result-track:6b9021442b787546500503d8d63dd96322d5bba52a78fcc17196845878a69b09` |
| 3 | `theorem` | [mem_powersetAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/mem-powersetaux--4276e035cc778b42cfbc94ac.md) | 41 | `result-track:4276e035cc778b42cfbc94ac57552248362d7730e11c27a6f4620454a3984381` |
| 4 | `def` | [powersetAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetaux--9ca72802500d21e3ee9ed591.md) | 46 | `declaration-track:9ca72802500d21e3ee9ed591ae93fa083ccd1d0949777ccc6f73c4229d4c3d84` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetaux-perm-powersetaux--82634873297d0ed23778799d.md) | 49 | `result-track:82634873297d0ed23778799d9cf28d40ee5cc5f599a5fd155863a29ffd0ccfc3` |
| 6 | `theorem` | [powersetAux'_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetaux-nil--a8ba60ff393989f4aeade252.md) | 53 | `result-track:a8ba60ff393989f4aeade2522f08b2f87e5f997212e6029e0c083bbc19f7b032` |
| 7 | `theorem` | [powersetAux'_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetaux-cons--ff280b281545ddf41eedfa55.md) | 57 | `result-track:ff280b281545ddf41eedfa55e7415bc83b272db3b16cf2a81668b2bc428a6997` |
| 8 | `theorem` | [powerset_aux'_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powerset-aux-perm--9b9ba5403604807fc3985f5e.md) | 61 | `result-track:9b9ba5403604807fc3985f5e07f859d16029c1bfd9b507b2d4dc6ebce0486ac2` |
| 9 | `theorem` | [powersetAux_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetaux-perm--76dffe622068b693673d6db7.md) | 75 | `result-track:76dffe622068b693673d6db7de8385ff5b6c2716ea2a603a8b091d5fedcdb7e0` |
| 10 | `def` | [powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powerset--6217d1f47240f9c9a58e9b82.md) | 81 | `declaration-track:6217d1f47240f9c9a58e9b826855eeb8948ec47c0cea3521fd26c57a22d1ec10` |
| 11 | `theorem` | [powerset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powerset-coe--bb01f1a239e0257d83c7d435.md) | 86 | `result-track:bb01f1a239e0257d83c7d4354e0ffc20866bcae850da5b53f95f4151c6f8dad2` |
| 12 | `theorem` | [powerset_coe'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powerset-coe--c8fcf6877a08c9459386a589.md) | 90 | `result-track:c8fcf6877a08c9459386a589229cb3735e75f68aec497f6829c8a68c50f6492c` |
| 13 | `theorem` | [powerset_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powerset-zero--cd6cd841c64b034dbe690f02.md) | 94 | `result-track:cd6cd841c64b034dbe690f028dfc24fcad1930a27289231b1d26af278927a227` |
| 14 | `theorem` | [powerset_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powerset-cons--17b82d164cee2cce43dcec3c.md) | 98 | `result-track:17b82d164cee2cce43dcec3c54cccb4140b93bc73032e4cdf3fbc38d819fe244` |
| 15 | `theorem` | [mem_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/mem-powerset--7ea9c96cdcad303c25373b5f.md) | 102 | `result-track:7ea9c96cdcad303c25373b5fa672989807a7797da869c201db4187206da208dd` |
| 16 | `theorem` | [map_single_le_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/map-single-le-powerset--a084562e80c3d914f4f05ec7.md) | 105 | `result-track:a084562e80c3d914f4f05ec7cf872c5ab08d834090afbfee4fb94c1b2365297c` |
| 17 | `theorem` | [card_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/card-powerset--6e0f1c09ef99fef3b1c64b44.md) | 113 | `result-track:6e0f1c09ef99fef3b1c64b44dddc1f53e438e14fcc25667b5d9db5d2468d0dd5` |
| 18 | `theorem` | [revzip_powersetAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/revzip-powersetaux--4658cb809de9c407d9c3b8e3.md) | 116 | `result-track:4658cb809de9c407d9c3b8e3e40a0446df03ad9e3768c82281b41af4b5f8e4bd` |
| 19 | `theorem` | [revzip_powersetAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/revzip-powersetaux--906b130f8d805676ca773e2e.md) | 122 | `result-track:906b130f8d805676ca773e2e1f26ea36569bc62d613f0c6b20cc3099503fbbaf` |
| 20 | `theorem` | [revzip_powersetAux_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/revzip-powersetaux-lemma--428a2971d5f9dcb84e2b16ea.md) | 129 | `result-track:428a2971d5f9dcb84e2b16eadbe49a3fa961e86055dcec795a9b92558d17315e` |
| 21 | `theorem` | [revzip_powersetAux_perm_aux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/revzip-powersetaux-perm-aux--17d3472e711791d6ebea4dca.md) | 142 | `result-track:17d3472e711791d6ebea4dca4365ffa3f329f3d57d0bc0e7b17971085bcd9dcf` |
| 22 | `theorem` | [revzip_powersetAux_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/revzip-powersetaux-perm--01d7a40a79fbcf815e1ea867.md) | 148 | `result-track:01d7a40a79fbcf815e1ea8670b5e4c8b4ec1fa07416ba0be6c0ab800dc781280` |
| 23 | `def` | [powersetCardAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcardaux--770b5ec44c3c072aa691114c.md) | 159 | `declaration-track:770b5ec44c3c072aa691114c3d6b82fd2765874f6d25a0d6c81d35be6c7b2889` |
| 24 | `theorem` | [powersetCardAux_eq_map_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcardaux-eq-map-coe--daae120356cda1c6abb4abda.md) | 162 | `result-track:daae120356cda1c6abb4abda929142c0ff2c7a6879582c16fc3596213875082d` |
| 25 | `theorem` | [mem_powersetCardAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/mem-powersetcardaux--f857259324e8f64e6274cac2.md) | 167 | `result-track:f857259324e8f64e6274cac26b9338215344e3ca6e977e7e0649213463154b20` |
| 26 | `theorem` | [powersetCardAux_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcardaux-zero--692fd341cd666687d40d801a.md) | 176 | `result-track:692fd341cd666687d40d801a07e2abdae249912122b12a0eeac7f0577cecba01` |
| 27 | `theorem` | [powersetCardAux_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcardaux-nil--932ffb61d27ea7cf2b22e4a3.md) | 180 | `result-track:932ffb61d27ea7cf2b22e4a3f0296e31205ccd4e565d72ee2fb868f6d59c89b9` |
| 28 | `theorem` | [powersetCardAux_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcardaux-cons--696ff39046375a9490ab02e1.md) | 184 | `result-track:696ff39046375a9490ab02e1ea35776852c495af5169241b6239b593f830a5a3` |
| 29 | `theorem` | [powersetCardAux_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcardaux-perm--2e2a99026974062235a1b6ee.md) | 189 | `result-track:2e2a99026974062235a1b6ee047e6ea838c0629f22def564b19e3794febfedaf` |
| 30 | `def` | [powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard--1c9b159607f68471f1f9eaa3.md) | 210 | `declaration-track:1c9b159607f68471f1f9eaa337280a50100ffbe62622fb9cc435ccfe81ed9e68` |
| 31 | `theorem` | [powersetCard_coe'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-coe--a5c3290e219b76c45a0b340c.md) | 214 | `result-track:a5c3290e219b76c45a0b340cd1546fe7b6a78a3e14b9057119818fd633e212a5` |
| 32 | `theorem` | [powersetCard_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-coe--392d70c9553df1085588c470.md) | 217 | `result-track:392d70c9553df1085588c47063bb8946abe921260be428109134b2dbc7350205` |
| 33 | `theorem` | [powersetCard_zero_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-zero-left--fda080120d78b9542ce8eb92.md) | 222 | `result-track:fda080120d78b9542ce8eb92ebc2e0ae887f9bcc72624b98674c8f82604c9d61` |
| 34 | `theorem` | [powersetCard_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-zero-right--9df50a7bfb4f9fe518709c5d.md) | 225 | `result-track:9df50a7bfb4f9fe518709c5df1d7ed90e4c2eed9fe3883af6bc83b4eaa63c9d5` |
| 35 | `theorem` | [powersetCard_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-cons--fd7b5323bbcfd1833220c8ad.md) | 229 | `result-track:fd7b5323bbcfd1833220c8adfcaed6cfedde3b7a2c4a494e5681f89f739d313d` |
| 36 | `theorem` | [powersetCard_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-one--c56eeafe55554d85d9d98d32.md) | 233 | `result-track:c56eeafe55554d85d9d98d320cda502ed8f0f67083cb56378b835c28012fec4c` |
| 37 | `theorem` | [mem_powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/mem-powersetcard--10bf0ba38d24b1bf1b83ca25.md) | 238 | `result-track:10bf0ba38d24b1bf1b83ca253e2341edb7490a416bf2a0cb735e07b6fc60d726` |
| 38 | `theorem` | [card_powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/card-powersetcard--4b3fed67025377fd61397668.md) | 242 | `result-track:4b3fed67025377fd61397668f8b87a89cc82b9ebd96b4fef0390be6a32711365` |
| 39 | `theorem` | [powersetCard_le_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-le-powerset--78c2ddc07966b45b7e267226.md) | 246 | `result-track:78c2ddc07966b45b7e2672265eded5f187d1060be691a23d03b26943e658a029` |
| 40 | `theorem` | [powersetCard_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-mono--42c59566ab6a9393e79379c6.md) | 251 | `result-track:42c59566ab6a9393e79379c6718c43f899b65b60dda80c8c044be94113009b93` |
| 41 | `theorem` | [powersetCard_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-eq-empty--f62494927e383df2a73a5ab0.md) | 258 | `result-track:f62494927e383df2a73a5ab08c05164720efc22d733363f98fdf4fc151826f74` |
| 42 | `theorem` | [powersetCard_card_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-card-add--888aac5e4c6320d00619b68d.md) | 262 | `result-track:888aac5e4c6320d00619b68db4d62173bcb7ae12c27f051cd5c4d22475894748` |
| 43 | `theorem` | [powersetCard_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/powersetcard-map--9e613dfd9ff7aa5d9b87955a.md) | 266 | `result-track:9e613dfd9ff7aa5d9b87955a33cf1c616de5b69e7cfccd8f8b9d2c553ccf37a5` |
| 44 | `theorem` | [pairwise_disjoint_powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/pairwise-disjoint-powersetcard--d90560b8ff59fc2f07ec5d60.md) | 272 | `result-track:d90560b8ff59fc2f07ec5d6000c3b1d5abc3949ec59b3d38295e33ab8f07bdf7` |
| 45 | `theorem` | [bind_powerset_len](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/bind-powerset-len--5124575d9854cf27d887832f.md) | 277 | `result-track:5124575d9854cf27d887832fa022c73ef38876961cd6c0f3a090f7ff21ec34a6` |
| 46 | `theorem` | [nodup_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/nodup-powerset--820a8b6fdb7cbea14723cead.md) | 285 | `result-track:820a8b6fdb7cbea14723ceadf63956b4758f9bbadb202a38f8cd5a508ad4f29d` |
| 47 | `theorem` | [Nodup.powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean/declarations/nodup-powersetcard--86ebdd7c6de8abbed5a75270.md) | 295 | `result-track:86ebdd7c6de8abbed5a75270b4dc7183efdff887c214ee420aa15aae5a22a64a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
