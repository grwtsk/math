# Verification target: GRWTSK.Algebra.Basic.Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01a81a3f8aa475885e73f66ac42c6d972cddf3fc",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01a81a3f8aa475885e73f66ac42c6d972cddf3fc`.

Source path: `GRWTSK/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalizationPreserves](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/localizationpreserves--f5d41c5bed164d3379a42778.md) | 73 | `declaration-track:f5d41c5bed164d3379a42778ef9715e5272605f68fd1028cbc2513882b879b92` |
| 2 | `def` | [OfLocalizationMaximal](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/oflocalizationmaximal--249b6de446667435d11a43b7.md) | 79 | `declaration-track:249b6de446667435d11a43b7f20e545fb724508b3a4c5734cc5ca5492d5f1b11` |
| 3 | `def` | [RingHom.ContainsIdentities](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-containsidentities--0dd969fb2615824649482ef9.md) | 91 | `declaration-track:0dd969fb2615824649482ef927cb340d442020a53b99d6a00574ab7019e42fc3` |
| 4 | `def` | [RingHom.LocalizationPreserves](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-localizationpreserves--f371ebebb5330b3b3b5176b4.md) | 95 | `declaration-track:f371ebebb5330b3b3b5176b4637f4e76f4d95d95e0e67a3f128d3ad4f407b23d` |
| 5 | `def` | [RingHom.LocalizationAwayPreserves](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-localizationawaypreserves--00615f397fcbb909d1d159ea.md) | 103 | `declaration-track:00615f397fcbb909d1d159ea6cbed55982d90817d715ba6127fc0f51f55c0e32` |
| 6 | `def` | [RingHom.OfLocalizationFiniteSpan](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationfinitespan--089eb1f3f35278107bb34900.md) | 115 | `declaration-track:089eb1f3f35278107bb34900f518a9d1623bdad917a0648f1009b405a69936e4` |
| 7 | `def` | [RingHom.OfLocalizationSpan](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspan--98251931d500e3ec7f52d614.md) | 125 | `declaration-track:98251931d500e3ec7f52d61415bea75b0c454941e8a50b1902a7ecb834f58bff` |
| 8 | `def` | [RingHom.HoldsForLocalization](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalization--f701cacabb6cfdaab567093a.md) | 131 | `declaration-track:f701cacabb6cfdaab567093ab62f20b3f57b69cb83efece2de8d0ee151f7aafc` |
| 9 | `def` | [RingHom.HoldsForLocalizationAway](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalizationaway--9f41709a3f65d5a95c2b3552.md) | 137 | `declaration-track:9f41709a3f65d5a95c2b355292258d3e9407c8627c373b796647885f9cb11dab` |
| 10 | `def` | [RingHom.StableUnderCompositionWithLocalizationAwaySource](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-stableundercompositionwithlocalizationawaysource--b9d7a2231d83e734446f988a.md) | 144 | `declaration-track:b9d7a2231d83e734446f988a88aa5d3bcf36d83448cc5054a45049481736ea9b` |
| 11 | `def` | [RingHom.StableUnderCompositionWithLocalizationAwayTarget](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-stableundercompositionwithlocalizationawaytarget--35774901e35f2c3c187daff1.md) | 151 | `declaration-track:35774901e35f2c3c187daff134ef64cb901f7500085070b47035d79a491b14f1` |
| 12 | `def` | [RingHom.StableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-stableundercompositionwithlocalizationaway--308d8763a2b59ceb0a3d3101.md) | 158 | `declaration-track:308d8763a2b59ceb0a3d3101b6f06d965139d23ecac3ba8da94259831a097033` |
| 13 | `def` | [RingHom.OfLocalizationFiniteSpanTarget](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationfinitespantarget--260c8339fed02f4b8912df57.md) | 168 | `declaration-track:260c8339fed02f4b8912df57218999ed1369c7d53f9bece83db10a3dd9c166d4` |
| 14 | `def` | [RingHom.OfLocalizationSpanTarget](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspantarget--1a760b2ec6108dd9514d5937.md) | 179 | `declaration-track:1a760b2ec6108dd9514d5937dce0a920801bda4ea26d2da74e8c37cb2e6ed2f9` |
| 15 | `def` | [RingHom.OfLocalizationPrime](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationprime--d8676e495c3937d6edaffa70.md) | 185 | `declaration-track:d8676e495c3937d6edaffa7073619caf34b5f6d3afc945ec6f44fa21f44f12a9` |
| 16 | `structure` | [RingHom.PropertyIsLocal](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-propertyislocal--787ff6a7cfc54210b98da06a.md) | 191 | `declaration-track:787ff6a7cfc54210b98da06a7ac2c8db1c19ea1b1a0c2a4e5527d676c4968eda` |
| 17 | `theorem` | [RingHom.ofLocalizationSpan_iff_finite](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspan-iff-finite--45011ba3f8922c1a07371b7c.md) | 198 | `result-track:45011ba3f8922c1a07371b7cfa5f01770045b6a5725a6ffd185fb9a348966f9a` |
| 18 | `theorem` | [RingHom.ofLocalizationSpanTarget_iff_finite](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspantarget-iff-finite--2de44b702826eb67fc1a4c07.md) | 210 | `result-track:2de44b702826eb67fc1a4c0766f6529b6c5e4f114dea7c1ad259a59b7fed0e35` |
| 19 | `lemma` | [RingHom.OfLocalizationSpan.mk](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspan-mk--77637d8a8cbec58882dadfe0.md) | 225 | `result-track:77637d8a8cbec58882dadfe006f60dd29baa5a883b7622fd53415197652dc4f6` |
| 20 | `lemma` | [RingHom.HoldsForLocalization.mk](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalization-mk--3c7f84e49f85cf00aecaf3d8.md) | 249 | `result-track:3c7f84e49f85cf00aecaf3d8b16935a325e65e4bab5f3412f159569fc6f56fb8` |
| 21 | `lemma` | [RingHom.HoldsForLocalization.holdsForLocalizationAway](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalization-holdsforlocalizationaway--b9152c89e65d7df297d75c78.md) | 256 | `result-track:b9152c89e65d7df297d75c783adb47a0ecf0e21b063f1553772552905579611c` |
| 22 | `lemma` | [RingHom.HoldsForLocalization.isLocalizationMap](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalization-islocalizationmap--90dc392cec1d8633a21f3d2d.md) | 260 | `result-track:90dc392cec1d8633a21f3d2d218713f0b18fe769ecaa5c30956e02aa46212dc1` |
| 23 | `lemma` | [RingHom.HoldsForLocalization.localRingHom](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalization-localringhom--393fdb914b482a05870e4c07.md) | 285 | `result-track:393fdb914b482a05870e4c07d022e19ca331ab4b8a0e127c317e9fe175ada8b4` |
| 24 | `theorem` | [RingHom.HoldsForLocalizationAway.of_bijective](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalizationaway-of-bijective--22258c781fc3221eaa8d56f8.md) | 294 | `result-track:22258c781fc3221eaa8d56f81e318751473c928b21a0aa6a000e30dcecc9703b` |
| 25 | `lemma` | [RingHom.StableUnderComposition.stableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-stableundercomposition-stableundercompositionwithlocalizationawa--8ad53d4899ea779fee2f9cf7.md) | 305 | `result-track:8ad53d4899ea779fee2f9cf7ddd0d49a3867a79b83839882028d6b2a89e2aa98` |
| 26 | `lemma` | [RingHom.HoldsForLocalizationAway.containsIdentities](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-holdsforlocalizationaway-containsidentities--56e85355282c99c5a2c60db1.md) | 314 | `result-track:56e85355282c99c5a2c60db1e654880bfb0c11332d26b2d8255becff39aa8008` |
| 27 | `lemma` | [RingHom.LocalizationAwayPreserves.respectsIso](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-localizationawaypreserves-respectsiso--1b2e0f555176a9603abebf06.md) | 319 | `result-track:1b2e0f555176a9603abebf068b416225aee714ce945e5a6ec6f1e133b3483b35` |
| 28 | `lemma` | [RingHom.StableUnderCompositionWithLocalizationAway.respectsIso](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-stableundercompositionwithlocalizationaway-respectsiso--2e8099b2b4f116a731cf36b5.md) | 345 | `result-track:2e8099b2b4f116a731cf36b56d91081b7c105573aa7c8b00762d25d0a9effa98` |
| 29 | `theorem` | [RingHom.PropertyIsLocal.respectsIso](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-propertyislocal-respectsiso--5b6f49474a8e7bbdaa403286.md) | 359 | `result-track:5b6f49474a8e7bbdaa403286c3d216e819f393c1996f20847f567d107b19e770` |
| 30 | `theorem` | [RingHom.LocalizationPreserves.away](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-localizationpreserves-away--8347504ef5d27e23a8956dd8.md) | 364 | `result-track:8347504ef5d27e23a8956dd85d22bb55ff518d52923b246b991f69b3282eb17f` |
| 31 | `lemma` | [RingHom.PropertyIsLocal.HoldsForLocalizationAway](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-propertyislocal-holdsforlocalizationaway--0e1d921980d4b1bf008e1a86.md) | 370 | `result-track:0e1d921980d4b1bf008e1a8684196ce7d93bdc663e45c530b82b59dcfbbebea0` |
| 32 | `theorem` | [RingHom.OfLocalizationSpanTarget.ofLocalizationSpan](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspantarget-oflocalizationspan--452fa82f22f26bcde9f2b813.md) | 379 | `result-track:452fa82f22f26bcde9f2b813553e6d9ef8e6df8a3a03672efe435dd84d8f7bf2` |
| 33 | `lemma` | [RingHom.OfLocalizationSpan.ofIsLocalization](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspan-ofislocalization--801b9907fe82de0586b6a23a.md) | 393 | `result-track:801b9907fe82de0586b6a23a34852d2101bce3a886e94de22bf3dea094861385` |
| 34 | `lemma` | [RingHom.OfLocalizationSpan.ofIsLocalization'](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspan-ofislocalization--9a782d90735d01b8ad260cdf.md) | 421 | `result-track:9a782d90735d01b8ad260cdf83615c4d35a883eb1e05a22a7eedc800d33511c5` |
| 35 | `lemma` | [RingHom.OfLocalizationSpanTarget.ofIsLocalization](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspantarget-ofislocalization--b5e6b508629861acd1ad2fb7.md) | 435 | `result-track:b5e6b508629861acd1ad2fb7eaadbad63f632a0a2da851bbdcbf3e324493325a` |
| 36 | `lemma` | [RingHom.OfLocalizationSpanTarget.and](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspantarget-and--a507980a9fa12c4566a0cf8b.md) | 452 | `result-track:a507980a9fa12c4566a0cf8bf952273f1b9a563725a36a83554030744b497853` |
| 37 | `lemma` | [RingHom.OfLocalizationSpan.and](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-oflocalizationspan-and--0fb319f86e3c41c1b1d7971d.md) | 458 | `result-track:0fb319f86e3c41c1b1d7971dd275a63312c2e5543deda7b583dcc30eafea97fd` |
| 38 | `lemma` | [RingHom.LocalizationAwayPreserves.and](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-localizationawaypreserves-and--6327c31707e847a05342c819.md) | 463 | `result-track:6327c31707e847a05342c8194aedcf3357f4707234a119d610820909957e689b` |
| 39 | `lemma` | [RingHom.StableUnderCompositionWithLocalizationAwayTarget.and](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-stableundercompositionwithlocalizationawaytarget-and--9fb9041992bf7833908d4440.md) | 469 | `result-track:9fb9041992bf7833908d4440e420ca3807f84ba3369f137cffadafbef91ccf90` |
| 40 | `lemma` | [RingHom.PropertyIsLocal.and](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-propertyislocal-and--348938443c3f650308a7d3b0.md) | 476 | `result-track:348938443c3f650308a7d3b03a5fddf6479f3f3f8b96e91640eaed3583003a31` |
| 41 | `lemma` | [RingHom.IsStableUnderBaseChange.of_isLocalization](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-isstableunderbasechange-of-islocalization--f8c5fb332fc58f821eae127d.md) | 498 | `result-track:f8c5fb332fc58f821eae127df49bb5a95a21762a929321660a4bc9be53ecaca6` |
| 42 | `lemma` | [RingHom.IsStableUnderBaseChange.isLocalization_map](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-isstableunderbasechange-islocalization-map--e8ec7d1e5e77368923fda69c.md) | 507 | `result-track:e8ec7d1e5e77368923fda69cbd34b4db353223a4bf627c04fb5f0d6b7f6add44` |
| 43 | `lemma` | [RingHom.IsStableUnderBaseChange.localizationPreserves](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ringhom-isstableunderbasechange-localizationpreserves--02e81042830f2899d22ae35a.md) | 518 | `result-track:02e81042830f2899d22ae35a74617e94a5643142c769a58cdf83450a947e76fc` |
| 44 | `theorem` | [Ideal.localized'_eq_map](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-localized-eq-map--60b4f959f45d0016640bbf53.md) | 533 | `result-track:60b4f959f45d0016640bbf53d01b9c0cff46e18f75a52cc214958820b6ed83db` |
| 45 | `theorem` | [Ideal.localized₀_eq_restrictScalars_map](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-localized-eq-restrictscalars-map--b4b992698ffaa2e82ce87c7b.md) | 537 | `result-track:b4b992698ffaa2e82ce87c7b1ee75a2cc460177903368e18bb296f0616c288a4` |
| 46 | `theorem` | [Algebra.idealMap_eq_ofEq_comp_toLocalized₀](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/algebra-idealmap-eq-ofeq-comp-tolocalized--651193c57dd59efc674274dd.md) | 541 | `result-track:651193c57dd59efc674274dd607cd0b7850e61652a074191b01b8e5bf14bc2d1` |
| 47 | `theorem` | [Ideal.mem_of_localization_maximal](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-mem-of-localization-maximal--35562bd15352303c1f984fe0.md) | 547 | `result-track:35562bd15352303c1f984fe08de049e4b64580e5ac5c50d68cac07271c79a098` |
| 48 | `theorem` | [Ideal.le_of_localization_maximal](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-le-of-localization-maximal--cf3436c8489a0db74a791cb1.md) | 556 | `result-track:cf3436c8489a0db74a791cb1583e6d3348c331715e56e25468ad93e9bf6f28a9` |
| 49 | `lemma` | [Ideal.iInf_ker_le](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-iinf-ker-le--7dba122106c1c3113ac0f8d2.md) | 563 | `result-track:7dba122106c1c3113ac0f8d276eaf639c7f4cc741114366ea41a1a29be6503f7` |
| 50 | `theorem` | [Ideal.eq_of_localization_maximal](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-eq-of-localization-maximal--3dd4cbb0934e64ae868b27aa.md) | 575 | `result-track:3dd4cbb0934e64ae868b27aa144083545241b06061054574dea6404286409443` |
| 51 | `theorem` | [ideal_eq_bot_of_localization'](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-eq-bot-of-localization--c284c3836c5516f6a8633a6c.md) | 584 | `result-track:c284c3836c5516f6a8633a6c3b6bb312fa0099ad97f0a5e4661916232ec4f915` |
| 52 | `theorem` | [eq_zero_of_localization](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/eq-zero-of-localization--dcebfa1ebba1b61b4210ae7a.md) | 590 | `result-track:dcebfa1ebba1b61b4210ae7a24a789b82c01bcbd6ab7f9f6ca3beae68d8a7799` |
| 53 | `theorem` | [ideal_eq_bot_of_localization](../../../../mathematics/Algebra/Basic/Variant3867d13344a9fcb9af25957a7edeb9d2de01991de2f8482c55ad4fac086c8ce9.lean/declarations/ideal-eq-bot-of-localization--0ec5d9e3b5f5cb15fd758ea9.md) | 596 | `result-track:0ec5d9e3b5f5cb15fd758ea973bf93873a0401bc3dd593c1e9b7cf61bd15081c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
