# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extensive.Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43ac06d9d9d43256235c327f56c59ad5bdf60c4c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43ac06d9d9d43256235c327f56c59ad5bdf60c4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.CommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Types` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NatTrans.Equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/nattrans-equifibered--2e9487a84760a5544b3ad33e.md) | 72 | `declaration-track:2e9487a84760a5544b3ad33e2bb7eccdd7b4a60a9de66db615c251038d649a79` |
| 2 | `theorem` | [NatTrans.equifibered_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/nattrans-equifibered-of-isiso--2516c0a30798c938feb354d2.md) | 76 | `result-track:2516c0a30798c938feb354d230c159a90c58b358e9fc0a8a37ddf56a455b9ca0` |
| 3 | `theorem` | [NatTrans.Equifibered.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/nattrans-equifibered-comp--9e149ce4b039ce47417f23ce.md) | 80 | `result-track:9e149ce4b039ce47417f23ce15c655cbca852f766a630f51c2da29af45812a8e` |
| 4 | `def` | [IsUniversalColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isuniversalcolimit--701549e5c8edaa7c2123534f.md) | 86 | `declaration-track:701549e5c8edaa7c2123534f93368fe1c74b41b628384e4300cdde3b26cdcd91` |
| 5 | `def` | [IsVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isvankampencolimit--5f7cb25936386dedb2fafb50.md) | 98 | `declaration-track:5f7cb25936386dedb2fafb501cac3b218c04f0e30129f0c98158253217f000d3` |
| 6 | `theorem` | [IsVanKampenColimit.isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isvankampencolimit-isuniversal--16e5e43dd3033bf88651f638.md) | 104 | `result-track:16e5e43dd3033bf88651f6382dee338ff606cabf2492924cd9a0d818780cb1a9` |
| 7 | `def` | [IsVanKampenColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isvankampencolimit-iscolimit--e21bdaaa83f01c3bbeaefda6.md) | 110 | `declaration-track:e21bdaaa83f01c3bbeaefda67cdcab0be1ec568de376f93a16aca3097e48e346` |
| 8 | `theorem` | [IsInitial.isVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isinitial-isvankampencolimit--35ac842b1d2c6505b992845e.md) | 118 | `result-track:35ac842b1d2c6505b992845eaa13797590e32a3360be938003226cd623ff4309` |
| 9 | `class` | [FinitaryExtensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive--1a08820993b3fc7b6f062c2d.md) | 136 | `declaration-track:1a08820993b3fc7b6f062c2d7556ab1b980e2c866af38194207535d20cf3e114` |
| 10 | `theorem` | [FinitaryExtensive.vanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive-vankampen--5d2cd08fa37c7ee8986b5174.md) | 144 | `result-track:5d2cd08fa37c7ee8986b51747c60f00286c0a328e79d17da3ac33cd35af0fcb9` |
| 11 | `theorem` | [mapPair_equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/mappair-equifibered--7577708588ac663d7e563045.md) | 157 | `result-track:7577708588ac663d7e563045732a4990eb7eff6ddc94a753d2d26658ea2f0801` |
| 12 | `theorem` | [BinaryCofan.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/binarycofan-isvankampen-iff--6e4dc98bc0721dfc11f5882c.md) | 165 | `result-track:6e4dc98bc0721dfc11f5882c99d3709bed62a18afe8878a135e33b2eac073712` |
| 13 | `theorem` | [BinaryCofan.isVanKampen_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/binarycofan-isvankampen-mk--15bf775832150575da244f03.md) | 197 | `result-track:15bf775832150575da244f03e7cf2c92a90981643098de652c30d0341b487caa` |
| 14 | `theorem` | [BinaryCofan.mono_inr_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/binarycofan-mono-inr-of-isvankampen--8ddd8ac78abdf2c90940a375.md) | 238 | `result-track:8ddd8ac78abdf2c90940a3754fce5e7674584c8c13cb0912f14a9b6f83dfd426` |
| 15 | `theorem` | [FinitaryExtensive.mono_inr_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive-mono-inr-of-iscolimit--304cfa0ad2cb960a6bd14dec.md) | 249 | `result-track:304cfa0ad2cb960a6bd14dec20b7cf8a8faa51b20b151ab6df5b421cc8c1d724` |
| 16 | `theorem` | [FinitaryExtensive.mono_inl_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive-mono-inl-of-iscolimit--bb0137468c493dfbc799b243.md) | 254 | `result-track:bb0137468c493dfbc799b243d27dcf38b0203b934af530cf0fd65cec2abbf18e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/instance--46b725dd21e9e488a8e6200d.md) | 259 | `declaration-track:46b725dd21e9e488a8e6200d4b5e9905a61680ca58eff3cc49c4dd66a76f294b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/instance--762e0ee67ee0ac2e7456cdf4.md) | 262 | `declaration-track:762e0ee67ee0ac2e7456cdf4f3f00b15577b0068197cfb2a233a150b580a145a` |
| 19 | `theorem` | [BinaryCofan.isPullback_initial_to_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/binarycofan-ispullback-initial-to-of-isvankampen--365ab8613461ee0575f56030.md) | 265 | `result-track:365ab8613461ee0575f56030f371782dd01e323497dec53f482e364db910dd1f` |
| 20 | `theorem` | [FinitaryExtensive.isPullback_initial_to_binaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive-ispullback-initial-to-binarycofan--0dcd20b83c26d4ab9652d527.md) | 275 | `result-track:0dcd20b83c26d4ab9652d52701cc1f4b20dc5a609ea72d08a0aca3a50d82968d` |
| 21 | `theorem` | [hasStrictInitial_of_isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/hasstrictinitial-of-isuniversal--d8fe5c8cc1d8fa61a7a77af6.md) | 281 | `result-track:d8fe5c8cc1d8fa61a7a77af60b070a56cfdd592b28a145fad0d39acd8dffe4bc` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/instance--91c81acc2984a5e657736658.md) | 296 | `declaration-track:91c81acc2984a5e6577366588fa5e6b6d441f406c980460484d3bcdc6265c996` |
| 23 | `theorem` | [finitaryExtensive_iff_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive-iff-of-isterminal--b6a5b6a53c128205083d15c9.md) | 304 | `result-track:b6a5b6a53c128205083d15c9d02edda7942ad9fb47ef143076ac7b36b9b74de3` |
| 24 | `instance` | [types.finitaryExtensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/types-finitaryextensive--d82a9cde7ba707387e3aa723.md) | 319 | `declaration-track:d82a9cde7ba707387e3aa723d5d02a7253600e9e57a0e1ed59d0635ac31c4a5a` |
| 25 | `def` | [finitaryExtensiveTopCatAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensivetopcataux--ed5bb0dfd1109404b9c20707.md) | 392 | `declaration-track:ed5bb0dfd1109404b9c20707e4dd0a0f5169d225a1320df7e054fec7310b5aad` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/instance--70e477677ee39b004e847925.md) | 469 | `declaration-track:70e477677ee39b004e8479254ccb9064fffd9b2196c1b4abe6a4b68443f49070` |
| 27 | `theorem` | [NatTrans.Equifibered.whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/nattrans-equifibered-whiskerright--d2337f3c5cd4b8088dda27b0.md) | 521 | `result-track:d2337f3c5cd4b8088dda27b02b45e0195b758290f8defa9a29ab7c0d50080c7f` |
| 28 | `theorem` | [IsVanKampenColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isvankampencolimit-of-iso--2c8723fd9ed025ed06586aaf.md) | 526 | `result-track:2c8723fd9ed025ed06586aafa613c59c384af9e81cbd7d66dba619738dee82b1` |
| 29 | `theorem` | [IsVanKampenColimit.of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isvankampencolimit-of-map--a92961e4e9d1fe50751630e5.md) | 540 | `result-track:a92961e4e9d1fe50751630e56d21bf243dff50db6dc93c3495939bd6cd2f4c07` |
| 30 | `theorem` | [isVanKampenColimit_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/isvankampencolimit-of-evaluation--f4b0980beede66e266d66406.md) | 552 | `result-track:f4b0980beede66e266d66406d2311643b8422435682f03db1a6f6204faf0de8f` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/instance--82b02d2a8127d0ef969a24cc.md) | 572 | `declaration-track:82b02d2a8127d0ef969a24cc538381487161357355a9360f03c9dd27b236ed88` |
| 32 | `theorem` | [finitaryExtensive_of_preserves_and_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive-of-preserves-and-reflects--e1e14e96daa5b7e7b9204005.md) | 577 | `result-track:e1e14e96daa5b7e7b92040051bb1bcc4a3e52bb61292345f7a2cfecb2e9fb555` |
| 33 | `theorem` | [finitaryExtensive_of_preserves_and_reflects_isomorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variante8236ece6c0c41ea868ddd58718a147c9988feb77e8fedaa8a08c5f80c60de43.lean/declarations/finitaryextensive-of-preserves-and-reflects-isomorphism--e30b51ca044bb826cc948041.md) | 584 | `result-track:e30b51ca044bb826cc948041a81f1d3bf6b41a97477ff291a6624736249a93f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
