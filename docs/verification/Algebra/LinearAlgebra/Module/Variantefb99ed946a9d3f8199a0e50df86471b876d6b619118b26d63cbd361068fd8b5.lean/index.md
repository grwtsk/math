# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d96ec1c8d02cc20984a4ec35fc67887a45d16fbd",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d96ec1c8d02cc20984a4ec35fc67887a45d16fbd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean.json)

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
| 1 | `theorem` | [span_eq_top_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/span-eq-top-of-islocalizedmodule--2b6aeef0d5c618c50cc78a6f.md) | 47 | `result-track:2b6aeef0d5c618c50cc78a6fdb2b1274f0e8332c25180d30a3f73e328105ef3a` |
| 2 | `theorem` | [LinearIndependent.of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearindependent-of-islocalizedmodule--a3f745fc19391be8a46b089d.md) | 56 | `result-track:a3f745fc19391be8a46b089db8052c5fe07ae5f02ef1a166d1fca570fc337770` |
| 3 | `theorem` | [LinearIndependent.of_isLocalizedModule_of_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearindependent-of-islocalizedmodule-of-isregular--71ca08447da99b7c40a9d7b7.md) | 74 | `result-track:71ca08447da99b7c40a9d7b7c56125e81cdcbbd2e8753263f7152720c29a5b87` |
| 4 | `theorem` | [LinearIndependent.localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearindependent-localization--6e11d036eb3195a8bbaaa14b.md) | 84 | `result-track:6e11d036eb3195a8bbaaa14b9155944c4427c5e90dbb3ca1e6a12f5547a8f5c6` |
| 5 | `lemma` | [IsLocalizedModule.linearIndependent_lift](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/islocalizedmodule-linearindependent-lift--ac617bd6b96897045a6f7101.md) | 91 | `result-track:ac617bd6b96897045a6f7101924fe2633b47b51a74e758d87bdb7d71a589d244` |
| 6 | `def` | [ofIsLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/ofislocalizedmodule--fe4e908f21a42d40b57a5dd4.md) | 109 | `declaration-track:fe4e908f21a42d40b57a5dd45f059fba2feb306b26672e7a82c99658144a83ff` |
| 7 | `theorem` | [ofIsLocalizedModule_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/ofislocalizedmodule-apply--c31b9c8d5f718d4b7b7afb97.md) | 114 | `result-track:c31b9c8d5f718d4b7b7afb973fd3014d36dbce800bf15a879acbe619c22f85cf` |
| 8 | `theorem` | [ofIsLocalizedModule_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/ofislocalizedmodule-repr-apply--a843028aebb78d86e4829ebb.md) | 118 | `result-track:a843028aebb78d86e4829ebb240323b90c1fe5016c186c0b49c3320a19e1a73c` |
| 9 | `theorem` | [ofIsLocalizedModule_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/ofislocalizedmodule-span--578a8af33434e285004646d3.md) | 129 | `result-track:578a8af33434e285004646d32b453d1b6d81991e9952603fe84dc2d90238aef5` |
| 10 | `theorem` | [LinearIndependent.localization_localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearindependent-localization-localization--c0e0ab674a30e57bb0b8e32c.md) | 153 | `result-track:c0e0ab674a30e57bb0b8e32c56b89397fb06d5d8484ca859fc7d64a854e76380` |
| 11 | `theorem` | [span_eq_top_localization_localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/span-eq-top-localization-localization--fb86c2af7e227f2d55890931.md) | 157 | `result-track:fb86c2af7e227f2d55890931b9cb047990918d2de3053389eeb8f54f0355d505` |
| 12 | `def` | [localizationLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizationlocalization--515547cb56ba995bba17b7e8.md) | 167 | `declaration-track:515547cb56ba995bba17b7e851b282945068eedeaabf87ae92df0bff89f9d8d2` |
| 13 | `theorem` | [localizationLocalization_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizationlocalization-apply--d78e633c1ccbce1a1ccecc7b.md) | 171 | `result-track:d78e633c1ccbce1a1ccecc7b403f68953b0fd0a3e3105e64fc5df74d2642f4fb` |
| 14 | `theorem` | [localizationLocalization_repr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizationlocalization-repr-algebramap--cd848b4967143f7d39ec5e15.md) | 176 | `result-track:cd848b4967143f7d39ec5e1577a0dc5c18b330cf6ae3923145f00ca07ef2526a` |
| 15 | `theorem` | [localizationLocalization_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizationlocalization-span--198fd726a8ddc0de71569bb4.md) | 180 | `result-track:198fd726a8ddc0de71569bb46b3776d657b345e3cb37807f5d97566cc41e6bdb` |
| 16 | `theorem` | [LinearIndependent.iff_fractionRing](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearindependent-iff-fractionring--ac99e1f54b4fc80b3e4dfc17.md) | 194 | `result-track:ac99e1f54b4fc80b3e4dfc173b27f4a8fe73af1e33e00b7f9bbc9c514c8893c0` |
| 17 | `def` | [LinearMap.extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearmap-extendscalarsofislocalization--2a3af5b5e3027148b6931ca2.md) | 212 | `declaration-track:2a3af5b5e3027148b6931ca27c1b1225fc47d4ebe6f34497efdcf4df446d81a4` |
| 18 | `lemma` | [LinearMap.restrictScalars_extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearmap-restrictscalars-extendscalarsofislocalization--edc12c13a0a6cab0fee06e89.md) | 217 | `result-track:edc12c13a0a6cab0fee06e8922a801990818d9de70045cfe9527763db44bd0de` |
| 19 | `lemma` | [LinearMap.extendScalarsOfIsLocalization_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearmap-extendscalarsofislocalization-apply--5ca52b0106fd323128314888.md) | 220 | `result-track:5ca52b0106fd323128314888fd8119a48f71ddb850fc6fafe7a7d3e72333e7d3` |
| 20 | `lemma` | [LinearMap.extendScalarsOfIsLocalization_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearmap-extendscalarsofislocalization-apply--04db429b00aab9316a2b6e56.md) | 223 | `result-track:04db429b00aab9316a2b6e56ef275b86745ff4df903d792ca6ba4599261036e7` |
| 21 | `def` | [LinearMap.extendScalarsOfIsLocalizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearmap-extendscalarsofislocalizationequiv--304a22fb30715463ae342b0d.md) | 228 | `declaration-track:304a22fb30715463ae342b0d8b1df6764e72fbd766859537f5d244f103f3de42` |
| 22 | `def` | [LinearEquiv.extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearequiv-extendscalarsofislocalization--9be56cbe60e9d9ff97686e67.md) | 238 | `declaration-track:9be56cbe60e9d9ff97686e6782921418699772de7fd567493200efd751271832` |
| 23 | `def` | [LinearEquiv.extendScalarsOfIsLocalizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/linearequiv-extendscalarsofislocalizationequiv--b5119fc8d594645589827d52.md) | 246 | `declaration-track:b5119fc8d594645589827d527d11182f76238e64260071be318da72845ec96ff` |
| 24 | `def` | [mapExtendScalars](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/mapextendscalars--72f7c0b43ad1b1eb9a11ff42.md) | 270 | `declaration-track:72f7c0b43ad1b1eb9a11ff426ba69785fb38a0743ddd07056b095c096422bc31` |
| 25 | `def` | [mapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/mapequiv--722147fa08990aa43e659037.md) | 276 | `declaration-track:722147fa08990aa43e659037cd0a71f8b7dd4681d6fdd8a226396e837de52cf6` |
| 26 | `def` | [LocalizedModule.map](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizedmodule-map--17ada3fb3253fb9d69d4bc44.md) | 299 | `declaration-track:17ada3fb3253fb9d69d4bc44e005376b4b242aba79317fed89e29af3bdef5237` |
| 27 | `lemma` | [LocalizedModule.map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizedmodule-map-mk--180205756a4d92f849d19896.md) | 305 | `result-track:180205756a4d92f849d198966cb6c0e0e6572e7bd0620850b514b7f5bebac14b` |
| 28 | `lemma` | [LocalizedModule.map_id](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizedmodule-map-id--2cb0e075265c851d9ab3393a.md) | 311 | `result-track:2cb0e075265c851d9ab3393af4513e4222906edc9cb6ced125be76cc6e6b446c` |
| 29 | `lemma` | [LocalizedModule.map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizedmodule-map-injective--50ab30d15b3db751fecc6ce0.md) | 315 | `result-track:50ab30d15b3db751fecc6ce063c1340b0a5f0c9d1516f69e87e29fb11f4bbfe1` |
| 30 | `lemma` | [LocalizedModule.map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizedmodule-map-surjective--6425bacbf5657d946522927c.md) | 319 | `result-track:6425bacbf5657d946522927c4ed857ddda813427ae441915fd9f4e059c6bd106` |
| 31 | `lemma` | [LocalizedModule.restrictScalars_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizedmodule-restrictscalars-map-eq--42ac4cf760a8053a2eab2d1f.md) | 323 | `result-track:42ac4cf760a8053a2eab2d1f07854aebbe38cf49eec2e88187f7217d8d3f7ec8` |
| 32 | `lemma` | [LocalizedModule.coe_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/localizedmodule-coe-map-eq--0606e040edc74d44f026b4af.md) | 336 | `result-track:0606e040edc74d44f026b4af0e48f5cd5e63a0a3d11d7448b647bd0ddad27431` |
| 33 | `lemma` | [map_injective_iff_localizedModuleMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/map-injective-iff-localizedmodulemap-injective--418b4ccf791804e406bbf969.md) | 354 | `result-track:418b4ccf791804e406bbf9692fa618961ab616db09083d00bac22fe4d189fb9f` |
| 34 | `lemma` | [map_surjective_iff_localizedModuleMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/map-surjective-iff-localizedmodulemap-surjective--f6d9222553630ff8c6b85c08.md) | 359 | `result-track:f6d9222553630ff8c6b85c08ddad472a574d2a61f01c4df66ce115f77a0bfe7d` |
| 35 | `lemma` | [map_bijective_iff_localizedModuleMap_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/declarations/map-bijective-iff-localizedmodulemap-bijective--0c27d03fbede8c60f4a03a93.md) | 364 | `result-track:0c27d03fbede8c60f4a03a937c168204bdd8a7182d0666e2d3d1fa2d9be4f720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
