# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RadonNikodym.Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da0a630a7a4a37e6b12adc0a38fa99e523ab9183",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da0a630a7a4a37e6b12adc0a38fa99e523ab9183`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.Lebesgue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [withDensity_rnDeriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/withdensity-rnderiv-eq--da3c4081d662120dc60c578e.md) | 56 | `result-track:da3c4081d662120dc60c578e570f5e629f03c9e8d595e9cca39148c8d16a1cdd` |
| 2 | `theorem` | [absolutelyContinuous_iff_withDensity_rnDeriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/absolutelycontinuous-iff-withdensity-rnderiv-eq--d668042ebe8e7d9c24e15814.md) | 67 | `result-track:d668042ebe8e7d9c24e15814470044e03dafe8b479ae78ed6bac93f305fc7020` |
| 3 | `lemma` | [rnDeriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-pos--d93fa0b8b6f924e07a93292a.md) | 71 | `result-track:d93fa0b8b6f924e07a93292a67a2ce0cbdec42f8d1fd39cfa549d8a2cdbf70e4` |
| 4 | `lemma` | [rnDeriv_pos'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-pos--61c2080472de828fff992407.md) | 77 | `result-track:61c2080472de828fff992407fda7d23eebc2d2367fceec71256e2631a48c25c2` |
| 5 | `lemma` | [rnDeriv_withDensity_withDensity_rnDeriv_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-withdensity-withdensity-rnderiv-left--5b2c0a1f1e08ed41aec6b463.md) | 90 | `result-track:5b2c0a1f1e08ed41aec6b463b40809ee398073c549504d694253518db55ce788` |
| 6 | `lemma` | [rnDeriv_withDensity_withDensity_rnDeriv_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-withdensity-withdensity-rnderiv-right--73695d91e73ef528351fe223.md) | 101 | `result-track:73695d91e73ef528351fe2236d91a15d2c152bd5f4ade5d819404b44a72553d0` |
| 7 | `lemma` | [rnDeriv_withDensity_left_of_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-withdensity-left-of-absolutelycontinuous--6ddea743d0dcc91b2d45b623.md) | 112 | `result-track:6ddea743d0dcc91b2d45b623252ef40b1c2d7e2617b90cc3c5968e6b3526d5fe` |
| 8 | `lemma` | [rnDeriv_withDensity_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-withdensity-left--fc9103f282c7f8434f3c7622.md) | 128 | `result-track:fc9103f282c7f8434f3c7622bfa986c398a3a464690529e3c7b42515ae16234e` |
| 9 | `lemma` | [rnDeriv_withDensity_right_of_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-withdensity-right-of-absolutelycontinuous--d766645496d70091c817e141.md) | 142 | `result-track:d766645496d70091c817e14108d9be8de90745d52a39670af42ae0b720e4d21b` |
| 10 | `lemma` | [rnDeriv_withDensity_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-withdensity-right--66de055ca098141438744ec9.md) | 164 | `result-track:66de055ca098141438744ec9df531ce7de0b0e31635b08dc4363e229c4f6166b` |
| 11 | `lemma` | [rnDeriv_eq_zero_of_mutuallySingular](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-eq-zero-of-mutuallysingular--10ddf97e72887d0e9666477b.md) | 179 | `result-track:10ddf97e72887d0e9666477b0f1dd6e1b25ba024a726bf28b30583df24d32b04` |
| 12 | `lemma` | [rnDeriv_add_right_of_absolutelyContinuous_of_mutuallySingular](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-add-right-of-absolutelycontinuous-of-mutuallysingular--6a34f0afa7962a01e578289c.md) | 200 | `result-track:6a34f0afa7962a01e578289c8bda43b95699df9847de03425a86bbd4c7341de8` |
| 13 | `lemma` | [rnDeriv_add_right_of_mutuallySingular'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-add-right-of-mutuallysingular--8d12fb665db1cd6cccfcf830.md) | 216 | `result-track:8d12fb665db1cd6cccfcf830f42b156946e4c38de961a84c4ce15f8c9f2dbdd1` |
| 14 | `lemma` | [rnDeriv_add_right_of_mutuallySingular](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-add-right-of-mutuallysingular--cb6ca82ae4714c52cf37f410.md) | 236 | `result-track:cb6ca82ae4714c52cf37f4100e45e8044bddf8536f1e7d47a3c4521bdbeaebea` |
| 15 | `lemma` | [rnDeriv_withDensity_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-withdensity-rnderiv--4d0161db99950be8b4c8cea6.md) | 255 | `result-track:4d0161db99950be8b4c8cea63aaebe6f1907f8c25dc8d93fbce54ff90dda8a0c` |
| 16 | `lemma` | [inv_rnDeriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/inv-rnderiv-aux--ad942df5f6c2657493cf5df3.md) | 263 | `result-track:ad942df5f6c2657493cf5df3fd7c1c81edeab7531a79811d657a3b757b51a8de` |
| 17 | `lemma` | [inv_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/inv-rnderiv--5cf4d05c3d984fe111e50aa5.md) | 278 | `result-track:5cf4d05c3d984fe111e50aa5c7b193d9ac51acf2ac760711aa13e6c3ccff6a9d` |
| 18 | `lemma` | [inv_rnDeriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/inv-rnderiv--a42dfe73067fcbbbd62a5175.md) | 291 | `result-track:a42dfe73067fcbbbd62a5175a808f3c8c2f673424b78986528319f20dcc26567` |
| 19 | `lemma` | [setLIntegral_rnDeriv_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setlintegral-rnderiv-le--ade8063d113087d9653e801b.md) | 297 | `result-track:ade8063d113087d9653e801bcde56001bcef26ae7e1577faa9ce174cc7ed042c` |
| 20 | `lemma` | [lintegral_rnDeriv_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/lintegral-rnderiv-le--2212a6f85f91017da4176eb1.md) | 301 | `result-track:2212a6f85f91017da4176eb128fd157a1121969f02cd8ff8875f7fcae28157b4` |
| 21 | `lemma` | [setLIntegral_rnDeriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setlintegral-rnderiv--210cf90b7c6fffc3b22e7057.md) | 304 | `result-track:210cf90b7c6fffc3b22e7057c6f28254f85d658f85a6f0e3adcbd32b4b81d353` |
| 22 | `lemma` | [setLIntegral_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setlintegral-rnderiv--20404bb764fd3caa7de4732a.md) | 309 | `result-track:20404bb764fd3caa7de4732a57cc93908302b61a3f0dbdb90d78eb977dc16bd3` |
| 23 | `lemma` | [lintegral_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/lintegral-rnderiv--d1126b2be89aadb5908b5ae1.md) | 314 | `result-track:d1126b2be89aadb5908b5ae15e653149531b76f1911ef4c170a2c26cad751635` |
| 24 | `lemma` | [integrableOn_toReal_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/integrableon-toreal-rnderiv--debb24d9834b9be7d3c05068.md) | 318 | `result-track:debb24d9834b9be7d3c050680d0c7d8ac7b318200796302c45e765df27997549` |
| 25 | `lemma` | [setIntegral_toReal_rnDeriv_eq_withDensity'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setintegral-toreal-rnderiv-eq-withdensity--ded922604e2424d739c0b88c.md) | 323 | `result-track:ded922604e2424d739c0b88c6054a9a2bc5bcadf852f7173c09b5d2589d1117d` |
| 26 | `lemma` | [setIntegral_toReal_rnDeriv_eq_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setintegral-toreal-rnderiv-eq-withdensity--eca9641f67e081944a4bf37d.md) | 331 | `result-track:eca9641f67e081944a4bf37d81ac61b17bf476fdb713149ac19fb52f96a3d6cc` |
| 27 | `lemma` | [setIntegral_toReal_rnDeriv_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setintegral-toreal-rnderiv-le--956f5be45d6d480ce5027ada.md) | 338 | `result-track:956f5be45d6d480ce5027ada55f9ada24e0dd38ec4edeabe13013e51db373358` |
| 28 | `lemma` | [setIntegral_toReal_rnDeriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setintegral-toreal-rnderiv--55ebec105f231a6b833846ef.md) | 356 | `result-track:55ebec105f231a6b833846ef5fc0997c5b67aeb29664fcdd3f1bf823d6c95459` |
| 29 | `lemma` | [setIntegral_toReal_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setintegral-toreal-rnderiv--047767e3044bba58fd349c1c.md) | 362 | `result-track:047767e3044bba58fd349c1c21239322e1f77d4c01cf9889debd804e75eea4c5` |
| 30 | `lemma` | [integral_toReal_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/integral-toreal-rnderiv--e517b6d441af65ae9afb3e88.md) | 366 | `result-track:e517b6d441af65ae9afb3e883d22a4386441613468e07ef1e73cb8badb1563e8` |
| 31 | `lemma` | [integral_toReal_rnDeriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/integral-toreal-rnderiv--ad3b736df0b3ca6c7642d816.md) | 370 | `result-track:ad3b736df0b3ca6c7642d81662743744224e0a2ffc7f5c747ac567cb8329e09e` |
| 32 | `lemma` | [rnDeriv_mul_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-mul-rnderiv--871de5103bfd2e2c479daa84.md) | 379 | `result-track:871de5103bfd2e2c479daa84efccc746f30b8ffa38366c320ce2690aa89cc8a9` |
| 33 | `lemma` | [rnDeriv_mul_rnDeriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-mul-rnderiv--166ce4ad4443736fe0a8c8c4.md) | 387 | `result-track:166ce4ad4443736fe0a8c8c4bae6cc28d5d730299c66f0136ca1c4e8b91ade7d` |
| 34 | `lemma` | [rnDeriv_le_one_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-le-one-of-le--837c116f6690845787a324eb.md) | 397 | `result-track:837c116f6690845787a324ebde9c2f157163c40999f5f21e6bc12c29b3a5bec3` |
| 35 | `lemma` | [rnDeriv_le_one_iff_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-le-one-iff-le--dca0c6852b2fc038285a9015.md) | 402 | `result-track:dca0c6852b2fc038285a9015937124d9da4abe46411fefc16212194b83aa8701` |
| 36 | `lemma` | [rnDeriv_eq_one_iff_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/rnderiv-eq-one-iff-eq--d214f72fbd79236a8a30e124.md) | 408 | `result-track:d214f72fbd79236a8a30e12446048265132bec4f9b84d4c05fb3778df60b0aa8` |
| 37 | `lemma` | [_root_.MeasurableEmbedding.rnDeriv_map_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/root-measurableembedding-rnderiv-map-aux--ec64d3f1895a6d157ef075cf.md) | 417 | `result-track:ec64d3f1895a6d157ef075cff0ea982570a5926ed92ca6ee0e070b8de0d6d320` |
| 38 | `lemma` | [_root_.MeasurableEmbedding.rnDeriv_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/root-measurableembedding-rnderiv-map--407ff9690adbee4fbc65d952.md) | 429 | `result-track:407ff9690adbee4fbc65d952a0cff7287a838a1fded97102c336672fdca7c2f5` |
| 39 | `lemma` | [_root_.MeasurableEmbedding.map_withDensity_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/root-measurableembedding-map-withdensity-rnderiv--e976a8dca18315a550c4ff61.md) | 450 | `result-track:e976a8dca18315a550c4ff611e547aa2812e35d0d33df4f12bf42c7ce363526d` |
| 40 | `lemma` | [_root_.MeasurableEmbedding.singularPart_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/root-measurableembedding-singularpart-map--00b1accfbbf0056d551b41ce.md) | 459 | `result-track:00b1accfbbf0056d551b41ce6a51a3eee8e9a11c62d061e0a4881254d8869e05` |
| 41 | `theorem` | [lintegral_rnDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/lintegral-rnderiv-mul--1e591962422227d2adf759b8.md) | 479 | `result-track:1e591962422227d2adf759b881a17230f09730900bcbbc9442e33f928060c20c` |
| 42 | `lemma` | [setLIntegral_rnDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setlintegral-rnderiv-mul--cfe97ac9db1edf455bca7a73.md) | 485 | `result-track:cfe97ac9db1edf455bca7a736da6081bbf002056adfa99dd45bf9aca07cb5382` |
| 43 | `theorem` | [integrable_rnDeriv_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/integrable-rnderiv-smul-iff--9e145e2e81f1f18b8993737e.md) | 495 | `result-track:9e145e2e81f1f18b8993737e8bcef00ab2418b4abeb29a40bb33e8f8ba0a68b9` |
| 44 | `theorem` | [integral_rnDeriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/integral-rnderiv-smul--f765dc47700176a328f1d5c5.md) | 501 | `result-track:f765dc47700176a328f1d5c5780872396219aacd2336a7e0b469da03c9a607cb` |
| 45 | `lemma` | [setIntegral_rnDeriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setintegral-rnderiv-smul--2bfe440f11bd7143be6109a5.md) | 508 | `result-track:2bfe440f11bd7143be6109a5f2a0b29d5efaa74594b23be25e65ef7917c0ec33` |
| 46 | `lemma` | [setIntegral_rnDeriv_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/declarations/setintegral-rnderiv-smul--0983c7893ec28f5c03a2b947.md) | 516 | `result-track:0983c7893ec28f5c03a2b947f83970a53a61f28e6b4d9501f8aa7f975c03884f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
