# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.OfFunction.Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79e9c84d229d945c1305ab6127cc4c41339e8a7b",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79e9c84d229d945c1305ab6127cc4c41339e8a7b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/offunction--4820de98dd353f7af2358b26.md) | 53 | `declaration-track:4820de98dd353f7af2358b263ee5fd5f4c84e83d174ff9dbc8323c26ee0616f9` |
| 2 | `theorem` | [ofFunction_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/offunction-apply--eff8d4aec132a77123cba9c7.md) | 93 | `result-track:eff8d4aec132a77123cba9c75b1b70813e18f3b6a8f896f03f5dc6df7728c4c4` |
| 3 | `theorem` | [ofFunction_eq_iInf_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/offunction-eq-iinf-mem--77baa725ead25038997141fc.md) | 102 | `result-track:77baa725ead25038997141fc78301a260cd85129c907cb2f6827d614ec7c3854` |
| 4 | `theorem` | [ofFunction_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/offunction-le--a503378678f57bf7ab45418f.md) | 120 | `result-track:a503378678f57bf7ab45418ffd1bec3a787fea669229b341d536d9b3ebdd594c` |
| 5 | `theorem` | [ofFunction_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/offunction-eq--0f5ceae9adb35c2b7727f9a8.md) | 129 | `result-track:0f5ceae9adb35c2b7727f9a8014c63666fb96f97e1c298b745e85b6ad21735c4` |
| 6 | `theorem` | [le_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/le-offunction--6d87934a3eea56299f3c70b4.md) | 135 | `result-track:6d87934a3eea56299f3c70b4bb307a7520272605bd2dc636a7ef3ddd91a59622` |
| 7 | `theorem` | [isGreatest_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/isgreatest-offunction--4498f630e246c22be7965cf9.md) | 142 | `result-track:4498f630e246c22be7965cf9f4de4e2e186827261e2506768d7d4a4ac45e3dfa` |
| 8 | `theorem` | [ofFunction_eq_sSup](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/offunction-eq-ssup--51c8ef97e1306d195a062d53.md) | 146 | `result-track:51c8ef97e1306d195a062d5376e41e021b9f25ea95a160db9d22e6b4538778ff` |
| 9 | `theorem` | [ofFunction_union_of_top_of_nonempty_inter](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/offunction-union-of-top-of-nonempty-inter--4541c6a70024c69ad71b26e4.md) | 155 | `result-track:4541c6a70024c69ad71b26e4fba5631a8c746837bc7ae233d4d4bbf418d4f387` |
| 10 | `theorem` | [comap_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/comap-offunction--88696c785591705e52a2d84c.md) | 187 | `result-track:88696c785591705e52a2d84ce824c1e09dec30a021a18bb1abc3c2a5f34ec22f` |
| 11 | `theorem` | [map_ofFunction_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/map-offunction-le--ffbec9bffe50f923c2754d9d.md) | 201 | `result-track:ffbec9bffe50f923c2754d9d49108e5f1ac060b373e75dc23b0ed7d47a44b59b` |
| 12 | `theorem` | [map_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/map-offunction--8949e6f21a47742b1862ad60.md) | 208 | `result-track:8949e6f21a47742b1862ad60744154189fe3069a84739da02a566a6a49ff489f` |
| 13 | `theorem` | [restrict_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/restrict-offunction--90234956d4dae255154b0e85.md) | 221 | `result-track:90234956d4dae255154b0e8593cc99f759de6671bfc336e8f3e3311427c9ee38` |
| 14 | `theorem` | [smul_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/smul-offunction--2850b9cdf4c3df04587807ce.md) | 229 | `result-track:2850b9cdf4c3df04587807cec0189923618534708e29a293301f3f3c077f2958` |
| 15 | `def` | [boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby--e315ef4487a47856162c47f5.md) | 246 | `declaration-track:e315ef4487a47856162c47f52c4c8fe2b0e58092214a43a908b84005f086e49a` |
| 16 | `theorem` | [boundedBy_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-le--7f217ed451163b45476dfedf.md) | 251 | `result-track:7f217ed451163b45476dfedf0f412018f8b37a5bf6920ed135f607fcae30ae38` |
| 17 | `theorem` | [boundedBy_eq_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-eq-offunction--fa68c941acd66031e66fbddc.md) | 254 | `result-track:fa68c941acd66031e66fbddcb311447cccf75476d3a27a79865a9d8dde031fde` |
| 18 | `theorem` | [boundedBy_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-apply--834a265cd9b83de37cce2539.md) | 261 | `result-track:834a265cd9b83de37cce253919813130f0253deae2e0ea4432742481c50100b1` |
| 19 | `theorem` | [boundedBy_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-eq--9700238aeebad78a2e2cf41f.md) | 266 | `result-track:9700238aeebad78a2e2cf41f9b383144fa9da27f47659512964a170415478aac` |
| 20 | `theorem` | [boundedBy_eq_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-eq-self--ec8aa7c068ebb38f78a3799e.md) | 271 | `result-track:ec8aa7c068ebb38f78a3799eb394d07fed811d5a31ebfee7bec37da6b38bba6c` |
| 21 | `theorem` | [le_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/le-boundedby--6c4cc9c0a41aef415809dfaf.md) | 274 | `result-track:6c4cc9c0a41aef415809dfaf5faa978618e33ac4cc01a6679a3069a49a5636cb` |
| 22 | `theorem` | [le_boundedBy'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/le-boundedby--8f2d708d5bc33096e29bc067.md) | 278 | `result-track:8f2d708d5bc33096e29bc067199ccc793da4c2388c4c0099c669472cb67c6731` |
| 23 | `theorem` | [boundedBy_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-top--f41cc1a9ccfd245ad48225c7.md) | 285 | `result-track:f41cc1a9ccfd245ad48225c7cbb956f684b7d177da53eddd52470cac9641a86c` |
| 24 | `theorem` | [boundedBy_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-zero--b496268fa78ea8440cbd8fb3.md) | 292 | `result-track:b496268fa78ea8440cbd8fb325e80d57612be5816b8276d7dcc4eb0ec106567d` |
| 25 | `theorem` | [smul_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/smul-boundedby--061b2b4b9c7bff628d11a554.md) | 296 | `result-track:061b2b4b9c7bff628d11a5548e7d04fa5da7555060fdf03bdd2b70a2dde5dce1` |
| 26 | `theorem` | [comap_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/comap-boundedby--3c8bc2882b726ac02760022b.md) | 301 | `result-track:3c8bc2882b726ac02760022b0d6a0fd081cf5403594db317e1d4862fbf17dad7` |
| 27 | `theorem` | [boundedBy_union_of_top_of_nonempty_inter](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/boundedby-union-of-top-of-nonempty-inter--00d42b758fe109b5b2a3ef42.md) | 318 | `result-track:00d42b758fe109b5b2a3ef425437646fc2360addba8d69ca0ebe4835e15911ae` |
| 28 | `def` | [sInfGen](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/sinfgen--088b18244a2674b6a50a59af.md) | 334 | `declaration-track:088b18244a2674b6a50a59afdf7698aaf48999e0841a527ae26c3897bb3d5e3f` |
| 29 | `theorem` | [sInfGen_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/sinfgen-def--a3f1af48dd2f265ae9260107.md) | 337 | `result-track:a3f1af48dd2f265ae92601078c37e08816552aba759b8aeaf5ea86d08e04c2d9` |
| 30 | `theorem` | [sInf_eq_boundedBy_sInfGen](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/sinf-eq-boundedby-sinfgen--bbde3769aa9179a0fa4f78de.md) | 341 | `result-track:bbde3769aa9179a0fa4f78def44f4b76f1d60faca0fa5d4ee1d45a3b9d1375ba` |
| 31 | `theorem` | [iSup_sInfGen_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/isup-sinfgen-nonempty--73dfe32e43632982d06806f8.md) | 350 | `result-track:73dfe32e43632982d06806f899f53b769696b23914414b5b0096f035ddc44178` |
| 32 | `theorem` | [sInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/sinf-apply--36fdc9c42891b8ec3a5cf807.md) | 359 | `result-track:36fdc9c42891b8ec3a5cf807df7feeefc7b5f1e41878ca64cf94e1222b5f6094` |
| 33 | `theorem` | [sInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/sinf-apply--c351e40d8f1b7911fb55f7a6.md) | 367 | `result-track:c351e40d8f1b7911fb55f7a6239ac612aacb07ba7e71e759ae81e9f94211da8f` |
| 34 | `theorem` | [iInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/iinf-apply--89de66a4c51ddf0d237c695e.md) | 375 | `result-track:89de66a4c51ddf0d237c695e0121053103346d57cefbe2c2111068954f4cac21` |
| 35 | `theorem` | [iInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/iinf-apply--515b90daafd1e157ec462c1c.md) | 383 | `result-track:515b90daafd1e157ec462c1ca1afc7ba51d905a4e4753a6fad5a0ac5228d7a19` |
| 36 | `theorem` | [biInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/biinf-apply--d2d7e5701e999bfac80cb56e.md) | 391 | `result-track:d2d7e5701e999bfac80cb56ec7e86e99b0a65a2ec633218de9cabccb831ee19e` |
| 37 | `theorem` | [biInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/biinf-apply--70a34aef16a45d89a7858b76.md) | 399 | `result-track:70a34aef16a45d89a7858b76feec6127773dd85e3f7e78a4662ff383adbdddd3` |
| 38 | `theorem` | [map_iInf_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/map-iinf-le--200006afb4a837710afd802b.md) | 403 | `result-track:200006afb4a837710afd802b70b05c1d77bf6aa2d078f9f6a54e300a572809a7` |
| 39 | `theorem` | [comap_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/comap-iinf--bad2af26c590c6d33a93d426.md) | 407 | `result-track:bad2af26c590c6d33a93d4266f6894c90c2ae77b7317ab55f71adb187f8746ae` |
| 40 | `theorem` | [map_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/map-iinf--0a0ffe582c29f798531ac1ac.md) | 416 | `result-track:0a0ffe582c29f798531ac1acc8fca6fcf0ffaf740ff67d4aa6361e15477e02e6` |
| 41 | `theorem` | [map_iInf_comap](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/map-iinf-comap--4a542b3654b1d76e503bdffb.md) | 421 | `result-track:4a542b3654b1d76e503bdffb64ed0e29938b72ea2374e92db773646c0694b3fc` |
| 42 | `theorem` | [map_biInf_comap](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/map-biinf-comap--97053d53cfa2d11c7836d396.md) | 434 | `result-track:97053d53cfa2d11c7836d396e5033f67c1e42b12d38364d8c13d5dc38db782e9` |
| 43 | `theorem` | [restrict_iInf_restrict](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/restrict-iinf-restrict--e20aedbb980ca12854dbaa9a.md) | 440 | `result-track:e20aedbb980ca12854dbaa9a8ea2b9aae32cb1a758b6c59d328ce974cefa57b0` |
| 44 | `theorem` | [restrict_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/restrict-iinf--e33b78a221882abf3f612aeb.md) | 447 | `result-track:e33b78a221882abf3f612aeb4df26a68905a0d999ed08707b6742054bc1158b0` |
| 45 | `theorem` | [restrict_biInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/restrict-biinf--47296539902ffbb9b8848655.md) | 451 | `result-track:47296539902ffbb9b8848655d5843f7c6a186ad2597b520d3a7834b1fd96d75f` |
| 46 | `theorem` | [restrict_sInf_eq_sInf_restrict](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Variantdf0a2d77d1e290a8acb407611ba4d6d3c1f946d428b9c922d89915580a90a7b9.lean/declarations/restrict-sinf-eq-sinf-restrict--18b7b79712e20225bb8ff640.md) | 459 | `result-track:18b7b79712e20225bb8ff640c9d742e8a58c2f235e29a9127a91bb39207cc753` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
