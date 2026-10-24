# Verification target: GRWTSK.Algebra.Basic.Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4843966cdd144391aab8bcdbab8b77677ad3ec9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4843966cdd144391aab8bcdbab8b77677ad3ec9`.

Source path: `GRWTSK/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Submodule` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHomProperties` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalizationPreserves](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/localizationpreserves--f58ac80d9253d1aefdea493a.md) | 68 | `declaration-track:f58ac80d9253d1aefdea493a25262967939eaeb199d94faacf12a022df8f2e46` |
| 2 | `def` | [OfLocalizationMaximal](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/oflocalizationmaximal--8e117febbba57268cd201f8d.md) | 74 | `declaration-track:8e117febbba57268cd201f8d71b18f47a7e7ce83759a997331fbfed1894aafa7` |
| 3 | `def` | [RingHom.ContainsIdentities](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-containsidentities--92f73ce3d33e05c2ea186289.md) | 86 | `declaration-track:92f73ce3d33e05c2ea186289af8430aa0e3247df54199f0adad847dddfa3f203` |
| 4 | `def` | [RingHom.LocalizationPreserves](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-localizationpreserves--4d53f1fe987662d0f5430910.md) | 90 | `declaration-track:4d53f1fe987662d0f54309107577462e5896239997d8ae5264e71566a0746636` |
| 5 | `def` | [RingHom.LocalizationAwayPreserves](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-localizationawaypreserves--48df62f1eb81bf84022b567f.md) | 98 | `declaration-track:48df62f1eb81bf84022b567f491c1d7e0471eec42557d42ac16cd1d9f18f9a0a` |
| 6 | `def` | [RingHom.OfLocalizationFiniteSpan](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationfinitespan--9b148eb568a1cd1eb633a777.md) | 110 | `declaration-track:9b148eb568a1cd1eb633a77720f0c9518e98556d3705975d3f822273d16348d2` |
| 7 | `def` | [RingHom.OfLocalizationSpan](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspan--36becfe0047149ab59d6f033.md) | 120 | `declaration-track:36becfe0047149ab59d6f033d9aedf3c2cfaab28cdc862e0f7d68a61615c4327` |
| 8 | `def` | [RingHom.HoldsForLocalizationAway](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-holdsforlocalizationaway--c8ec8ac87a34a2acfb130748.md) | 126 | `declaration-track:c8ec8ac87a34a2acfb13074820e0447ba576eed3a17cf0080b78d9fef2e36dcc` |
| 9 | `def` | [RingHom.StableUnderCompositionWithLocalizationAwaySource](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-stableundercompositionwithlocalizationawaysource--d4e9145e593a6872c5042acb.md) | 133 | `declaration-track:d4e9145e593a6872c5042acb0b775e6edbde11e401a123905ddf4c22a04c3c32` |
| 10 | `def` | [RingHom.StableUnderCompositionWithLocalizationAwayTarget](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-stableundercompositionwithlocalizationawaytarget--9d991fc60f16d273c06fd838.md) | 140 | `declaration-track:9d991fc60f16d273c06fd838739f78bfa4bd861d82a0a9abd3f7b9103c0de60b` |
| 11 | `def` | [RingHom.StableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-stableundercompositionwithlocalizationaway--662925314b62a1fb9bddfeea.md) | 147 | `declaration-track:662925314b62a1fb9bddfeea0c4ee13ee21da094d95f20d89fc9bbee8cdbe245` |
| 12 | `def` | [RingHom.OfLocalizationFiniteSpanTarget](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationfinitespantarget--e67285232d3c44c2bae97eff.md) | 157 | `declaration-track:e67285232d3c44c2bae97eff4b03ed2ee76400e78f8c3c06ccb28e9be68ce79c` |
| 13 | `def` | [RingHom.OfLocalizationSpanTarget](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspantarget--7a05b6a56c86c1e0cdf02adb.md) | 168 | `declaration-track:7a05b6a56c86c1e0cdf02adbc3630234034746529f46003080603e10fa2a185c` |
| 14 | `def` | [RingHom.OfLocalizationPrime](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationprime--9de1d54982b41b467ae0f6c3.md) | 174 | `declaration-track:9de1d54982b41b467ae0f6c3337da0d8a5db895a789be2b02fe23c7f318e3f9b` |
| 15 | `structure` | [RingHom.PropertyIsLocal](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-propertyislocal--499eb195f7483ae8da3524d9.md) | 180 | `declaration-track:499eb195f7483ae8da3524d90a9c4bbc72ad83222630602d38e171d714923eb2` |
| 16 | `theorem` | [RingHom.ofLocalizationSpan_iff_finite](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspan-iff-finite--4863808a9d6014dc9d9c4d40.md) | 187 | `result-track:4863808a9d6014dc9d9c4d40381d835e85ee225a2d2e7b5d86a831c481765d97` |
| 17 | `theorem` | [RingHom.ofLocalizationSpanTarget_iff_finite](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspantarget-iff-finite--ffc0f5b92a426f535a90cacd.md) | 199 | `result-track:ffc0f5b92a426f535a90cacdb3a7a6b66accc8af8f971f2a6d9a4213d4af419d` |
| 18 | `lemma` | [RingHom.OfLocalizationSpan.mk](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspan-mk--2bc11be98ee607959f6c8610.md) | 214 | `result-track:2bc11be98ee607959f6c86103dd165b8a75e8b2fa8718ed7649925f9333ce270` |
| 19 | `theorem` | [RingHom.HoldsForLocalizationAway.of_bijective](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-holdsforlocalizationaway-of-bijective--320c35c774f4107fc949f7b6.md) | 234 | `result-track:320c35c774f4107fc949f7b60852876c0b8e62e5b632b746664622431f4f774d` |
| 20 | `lemma` | [RingHom.StableUnderComposition.stableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-stableundercomposition-stableundercompositionwithlocalizationawa--7e3d4f3a9470a93e6dce811f.md) | 245 | `result-track:7e3d4f3a9470a93e6dce811fb3772eb311e927dbcc06727e889f30fbbfb97e70` |
| 21 | `lemma` | [RingHom.HoldsForLocalizationAway.containsIdentities](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-holdsforlocalizationaway-containsidentities--bedf103aa55bff6f6d26bc22.md) | 254 | `result-track:bedf103aa55bff6f6d26bc226ff106e70f72f67d294a94c709605a320b34d161` |
| 22 | `lemma` | [RingHom.LocalizationAwayPreserves.respectsIso](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-localizationawaypreserves-respectsiso--ffd1ecb335eecca80e34944e.md) | 259 | `result-track:ffd1ecb335eecca80e34944ee081afa399619143a12a0c187691162fe0ba07ef` |
| 23 | `lemma` | [RingHom.StableUnderCompositionWithLocalizationAway.respectsIso](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-stableundercompositionwithlocalizationaway-respectsiso--03a1c2787477184706549098.md) | 284 | `result-track:03a1c27874771847065490985b38e6fbffee8f74031c6ba3048868d4812e8a75` |
| 24 | `theorem` | [RingHom.PropertyIsLocal.respectsIso](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-propertyislocal-respectsiso--0c355b2b16e12fb801ea7a67.md) | 298 | `result-track:0c355b2b16e12fb801ea7a67af41b2afa3300e751718dd202bb1499e0e4248b2` |
| 25 | `theorem` | [RingHom.LocalizationPreserves.away](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-localizationpreserves-away--2fddb0c38415685ea0019570.md) | 303 | `result-track:2fddb0c38415685ea0019570a2c3cfb57ab9146ddaf14d83246cbc94120b75c7` |
| 26 | `lemma` | [RingHom.PropertyIsLocal.HoldsForLocalizationAway](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-propertyislocal-holdsforlocalizationaway--fb85a1ee9ea08fe74a09d50e.md) | 309 | `result-track:fb85a1ee9ea08fe74a09d50ea20092f6283d25934477d42baab1cb8cdc8c4fd3` |
| 27 | `theorem` | [RingHom.OfLocalizationSpanTarget.ofLocalizationSpan](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspantarget-oflocalizationspan--ca3ba3b8fb766654e65951e6.md) | 318 | `result-track:ca3ba3b8fb766654e65951e606712e1244f800abb4c0f95043885a419f062f34` |
| 28 | `lemma` | [RingHom.OfLocalizationSpan.ofIsLocalization](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspan-ofislocalization--9674382bbcaa3bd542f19c2f.md) | 332 | `result-track:9674382bbcaa3bd542f19c2f429754907aed925318a049c36a007649b35dbdbb` |
| 29 | `lemma` | [RingHom.OfLocalizationSpan.ofIsLocalization'](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspan-ofislocalization--b0d59c0d16a6a9bbc655b396.md) | 360 | `result-track:b0d59c0d16a6a9bbc655b39632f45d3d92ec60273df413a259709233b6d1de40` |
| 30 | `lemma` | [RingHom.OfLocalizationSpanTarget.ofIsLocalization](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspantarget-ofislocalization--055d0b762c5bf6fe51b8844e.md) | 373 | `result-track:055d0b762c5bf6fe51b8844e1bfdf83d6ac5b4de464901908ec864b19a43bb35` |
| 31 | `lemma` | [RingHom.OfLocalizationSpanTarget.and](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspantarget-and--e4932a6aaa8d99994a02bcf9.md) | 391 | `result-track:e4932a6aaa8d99994a02bcf90baf469592eae290a6d67378c6422664f1aef9e0` |
| 32 | `lemma` | [RingHom.OfLocalizationSpan.and](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-oflocalizationspan-and--cc2c1bc6586a3e31e0b95b92.md) | 397 | `result-track:cc2c1bc6586a3e31e0b95b92513e0022d23f5412ab21214ac0562b7e1d273ed8` |
| 33 | `lemma` | [RingHom.LocalizationAwayPreserves.and](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-localizationawaypreserves-and--4f0d5bafecc94a537c24e7fa.md) | 402 | `result-track:4f0d5bafecc94a537c24e7fa153949e27552574c19ef3728ed5f2e44b4c8eeb7` |
| 34 | `lemma` | [RingHom.StableUnderCompositionWithLocalizationAwayTarget.and](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-stableundercompositionwithlocalizationawaytarget-and--cae69b7414fcf4333679ba32.md) | 408 | `result-track:cae69b7414fcf4333679ba32dbd8737e9e7653a3d7c0a2c0768a600de8232bd6` |
| 35 | `lemma` | [RingHom.PropertyIsLocal.and](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-propertyislocal-and--25bc20b91d838ad4fc0c6338.md) | 415 | `result-track:25bc20b91d838ad4fc0c6338d75c82624274794c71bc0c74d8bd9519f64f9f51` |
| 36 | `lemma` | [RingHom.IsStableUnderBaseChange.of_isLocalization](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-isstableunderbasechange-of-islocalization--c5df818e80709fb27f5f549c.md) | 437 | `result-track:c5df818e80709fb27f5f549c17c860a07714376dcdb0a42ebc5e1f3887727c52` |
| 37 | `lemma` | [RingHom.IsStableUnderBaseChange.isLocalization_map](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-isstableunderbasechange-islocalization-map--52a3a213f8c50354c4c336c1.md) | 446 | `result-track:52a3a213f8c50354c4c336c1bf93fb1d449ccf63d98d660aed4d98130aa2ea86` |
| 38 | `lemma` | [RingHom.IsStableUnderBaseChange.localizationPreserves](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ringhom-isstableunderbasechange-localizationpreserves--630ca3f45757ca0542748331.md) | 457 | `result-track:630ca3f45757ca0542748331557c809b4447fc0628d917ce09452d858c9bdf3a` |
| 39 | `theorem` | [Ideal.localized'_eq_map](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ideal-localized-eq-map--c96eaa71a2ee09d6298121a4.md) | 472 | `result-track:c96eaa71a2ee09d6298121a4447f9e5f05035edbc63ddab4e5df01cf4818b6c3` |
| 40 | `theorem` | [Ideal.localized₀_eq_restrictScalars_map](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ideal-localized-eq-restrictscalars-map--9974584887ba0bb77dc658c6.md) | 476 | `result-track:9974584887ba0bb77dc658c611e1b3b768c9067e07f5b25cc81ea8b126aa6929` |
| 41 | `theorem` | [Algebra.idealMap_eq_ofEq_comp_toLocalized₀](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/algebra-idealmap-eq-ofeq-comp-tolocalized--58abc34ae016dc105581e375.md) | 480 | `result-track:58abc34ae016dc105581e375961cb01f527b8cb237f4369384b27d7537037da4` |
| 42 | `theorem` | [Ideal.mem_of_localization_maximal](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ideal-mem-of-localization-maximal--f89d63ce1ba5c08bf7aa4a7f.md) | 486 | `result-track:f89d63ce1ba5c08bf7aa4a7ff7140595651dc083da956542efc3e72416268628` |
| 43 | `theorem` | [Ideal.le_of_localization_maximal](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ideal-le-of-localization-maximal--7a00cdb16039462946cd4749.md) | 495 | `result-track:7a00cdb16039462946cd47493b3a40a58ecaa8eb1b702956125b86bc65afcad8` |
| 44 | `theorem` | [Ideal.eq_of_localization_maximal](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ideal-eq-of-localization-maximal--3ad9fdc87e4a1806c522660f.md) | 504 | `result-track:3ad9fdc87e4a1806c522660fbafd5ae2ec0da97c4e40723e986eb24ca8f34212` |
| 45 | `theorem` | [ideal_eq_bot_of_localization'](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ideal-eq-bot-of-localization--21b9a641b0503b4267f5ff88.md) | 513 | `result-track:21b9a641b0503b4267f5ff88fcf92dd1d3dcaea60a0b2a54e656d5c9935b0ad8` |
| 46 | `theorem` | [eq_zero_of_localization](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/eq-zero-of-localization--152cd3b10611ce69488e199a.md) | 519 | `result-track:152cd3b10611ce69488e199a77cbcf5c354ff03d32d37273b9c892b843891eaf` |
| 47 | `theorem` | [ideal_eq_bot_of_localization](../../../../mathematics/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/declarations/ideal-eq-bot-of-localization--5b40b7f3aa343325024212d2.md) | 525 | `result-track:5b40b7f3aa343325024212d228ec7e0294eecc5e190f8be0716d584705a794a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
