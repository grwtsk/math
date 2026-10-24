# Verification target: GRWTSK.Algebra.LocalProperties.Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35b8347cfffef2a5d92031d75acf54bd7dc4d46d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35b8347cfffef2a5d92031d75acf54bd7dc4d46d`.

Source path: `GRWTSK/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteType` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHomProperties` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/macro-rules--ee34e0569058e714028798b1.md) | 41 | `declaration-track:ee34e0569058e714028798b11f38adbeb9a480bb0c2eb44ccae117977fb4d19d` |
| 2 | `def` | [LocalizationPreserves](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/localizationpreserves--4a8b7b83c936ff67f57cdd1e.md) | 61 | `declaration-track:4a8b7b83c936ff67f57cdd1e18ef36da8178df2cb401f414abb24697dcea9909` |
| 3 | `def` | [OfLocalizationMaximal](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/oflocalizationmaximal--c2f72610b36fd63801e8f30d.md) | 68 | `declaration-track:c2f72610b36fd63801e8f30dd47a46f1cb73a72344d8c735af104bdfd898290f` |
| 4 | `def` | [RingHom.LocalizationPreserves](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-localizationpreserves--f7b232a500467d1a26e387fe.md) | 81 | `declaration-track:f7b232a500467d1a26e387febf3e40194b60a142b8c65a5e61b64e2599b2d9ec` |
| 5 | `def` | [RingHom.OfLocalizationFiniteSpan](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-oflocalizationfinitespan--79251237393323a38f0e07e0.md) | 94 | `declaration-track:79251237393323a38f0e07e0ce13daf07b507b5359e3e4dd410b8ecb2101ef2d` |
| 6 | `def` | [RingHom.OfLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-oflocalizationspan--592ab5e3285c58507503b1a1.md) | 105 | `declaration-track:592ab5e3285c58507503b1a124359d569a229506608939189eadc31c4612d626` |
| 7 | `def` | [RingHom.HoldsForLocalizationAway](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-holdsforlocalizationaway--9ad2045b694044674aa91d91.md) | 112 | `declaration-track:9ad2045b694044674aa91d9117448f7b51066096f581edc18fa8b94ad22a4043` |
| 8 | `def` | [RingHom.OfLocalizationFiniteSpanTarget](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-oflocalizationfinitespantarget--89d076fddac009886329e949.md) | 123 | `declaration-track:89d076fddac009886329e949441ad4acec29941452b32bbc56aefca9c5959dcf` |
| 9 | `def` | [RingHom.OfLocalizationSpanTarget](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-oflocalizationspantarget--80a4a9b1b6c326cea333c0e8.md) | 135 | `declaration-track:80a4a9b1b6c326cea333c0e88b4f6fd23ab63c4ca52692aa1dd7a93a59ab941a` |
| 10 | `def` | [RingHom.OfLocalizationPrime](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-oflocalizationprime--19e00b429ca995412920f527.md) | 142 | `declaration-track:19e00b429ca995412920f5270fc6eb20e507d04d453d9088f211b48ba3f8a374` |
| 11 | `structure` | [RingHom.PropertyIsLocal](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-propertyislocal--93b1e9704b2becfb1110557c.md) | 149 | `declaration-track:93b1e9704b2becfb1110557c6a07c6928b88f139941135ee0c1158f9add8ff94` |
| 12 | `theorem` | [RingHom.ofLocalizationSpan_iff_finite](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-oflocalizationspan-iff-finite--3b2dc532c093ac05279c1da6.md) | 156 | `result-track:3b2dc532c093ac05279c1da623c39cdae75d92be643dde0f26a1d4de4b5598fd` |
| 13 | `theorem` | [RingHom.ofLocalizationSpanTarget_iff_finite](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-oflocalizationspantarget-iff-finite--601657787fe72feb30ace428.md) | 169 | `result-track:601657787fe72feb30ace428b2e2c8a658e1f8dad2b35a109678d775bf60b333` |
| 14 | `theorem` | [RingHom.PropertyIsLocal.respectsIso](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-propertyislocal-respectsiso--d3e07a9a252962583a2b259e.md) | 184 | `result-track:d3e07a9a252962583a2b259ee242bebe2ab08ac3573622ea0aad79e3980bcc1f` |
| 15 | `theorem` | [RingHom.LocalizationPreserves.away](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-localizationpreserves-away--621348322b76322d9e430dcb.md) | 196 | `result-track:621348322b76322d9e430dcb3e30eac0faa787e7d2a864a0775f4e9ab46deee2` |
| 16 | `theorem` | [RingHom.PropertyIsLocal.ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ringhom-propertyislocal-oflocalizationspan--18ef500d8544dcf1a0dee65b.md) | 203 | `result-track:18ef500d8544dcf1a0dee65b5ecd2776ba33db6172a859b1295e727230089271` |
| 17 | `theorem` | [Ideal.le_of_localization_maximal](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ideal-le-of-localization-maximal--c051410e6ad540056dec5180.md) | 225 | `result-track:c051410e6ad540056dec51808d835b05603624ac4a5fa9de51ab3fb6bf408f4b` |
| 18 | `theorem` | [Ideal.eq_of_localization_maximal](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ideal-eq-of-localization-maximal--10f2f029c11f4e4c2fd95cde.md) | 249 | `result-track:10f2f029c11f4e4c2fd95cdee93e5b77e06cc98a3074db5ff8c4cba7c82d99de` |
| 19 | `theorem` | [ideal_eq_bot_of_localization'](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ideal-eq-bot-of-localization--64f4390382524fce81d132ba.md) | 259 | `result-track:64f4390382524fce81d132baee67b6a4e9af86502e2b2abd9b7034be1fc4900e` |
| 20 | `theorem` | [ideal_eq_bot_of_localization](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/ideal-eq-bot-of-localization--b4e0cdde2e589feeb1f214ef.md) | 269 | `result-track:b4e0cdde2e589feeb1f214efda980cb9b3311c54df9bb0053b61b1ab9b8d1f61` |
| 21 | `theorem` | [eq_zero_of_localization](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/eq-zero-of-localization--75e6cf0474f4a6292af80c9a.md) | 279 | `result-track:75e6cf0474f4a6292af80c9af79902885e206039297b43c2881abdce2fcc2943` |
| 22 | `theorem` | [localization_isReduced](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/localization-isreduced--dba93faa495875abaa65e7cf.md) | 296 | `result-track:dba93faa495875abaa65e7cfa288317abad674ede287c7be8c121b7dac7389fa` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/instance--5e4c0515d116a8014423e9f9.md) | 316 | `declaration-track:5e4c0515d116a8014423e9f9a1d48f1843c10fc82beeedce022f885a26f716ff` |
| 24 | `theorem` | [isReduced_ofLocalizationMaximal](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/isreduced-oflocalizationmaximal--7686afc728ebb3f2192b19b0.md) | 319 | `result-track:7686afc728ebb3f2192b19b023eae26a1e196aa43c5a6cbe5c0e443d4aa97fef` |
| 25 | `theorem` | [localizationPreserves_surjective](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/localizationpreserves-surjective--b5b79a1c44fab7fbc097b1c8.md) | 333 | `result-track:b5b79a1c44fab7fbc097b1c822912e534e64fd8cfe2d0620975d3bb23ba62a87` |
| 26 | `theorem` | [surjective_ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/surjective-oflocalizationspan--0ce3312e4d00e663b47d28bc.md) | 342 | `result-track:0ce3312e4d00e663b47d28bcd962907ee8d723bb89f875853e3b43246ee7fb16` |
| 27 | `theorem` | [localization_finite](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/localization-finite--c8a2e1f10533082b93f6d126.md) | 366 | `result-track:c8a2e1f10533082b93f6d1267febdbe880f0bcc6e7d03bd994b751ffecf7cac2` |
| 28 | `theorem` | [localization_away_map_finite](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/localization-away-map-finite--430a66eb3e09907ad5c3f5b3.md) | 401 | `result-track:430a66eb3e09907ad5c3f5b3c4187bc8c878d070e8c3d5dbd59fb022bb690dc8` |
| 29 | `theorem` | [IsLocalization.smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/islocalization-smul-mem-finsetintegermultiple-span--15bf397b1101549849da8e85.md) | 411 | `result-track:15bf397b1101549849da8e8570c14fa5943d7d9a2333ae2af08d1b4c6a83e487` |
| 30 | `theorem` | [multiple_mem_span_of_mem_localization_span](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/multiple-mem-span-of-mem-localization-span--98e5d742428d41303a3ad80c.md) | 450 | `result-track:98e5d742428d41303a3ad80cc3440dcf5071f5719833b4e308fd07bb73a644d7` |
| 31 | `theorem` | [multiple_mem_adjoin_of_mem_localization_adjoin](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/multiple-mem-adjoin-of-mem-localization-adjoin--e8270a3816686c19c2b13814.md) | 475 | `result-track:e8270a3816686c19c2b138146d5e6483e574f679079db79b91142d89ec80e41b` |
| 32 | `theorem` | [finite_ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/finite-oflocalizationspan--9dd4d24233a7bd2c825e8261.md) | 484 | `result-track:9dd4d24233a7bd2c825e8261bd20056915f12e82a9e95f236f0edcc69668876b` |
| 33 | `theorem` | [localization_finiteType](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/localization-finitetype--4470c4c462c1337b87d57713.md) | 531 | `result-track:4470c4c462c1337b87d577133930c226d943c1966948a544f08054df70d84170` |
| 34 | `theorem` | [localization_away_map_finiteType](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/localization-away-map-finitetype--f9275ab1866c446a5b09d578.md) | 561 | `result-track:f9275ab1866c446a5b09d578381a39b56cc3e66bf2d79d4c6d8a02b5f206b2f5` |
| 35 | `theorem` | [IsLocalization.exists_smul_mem_of_mem_adjoin](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/islocalization-exists-smul-mem-of-mem-adjoin--402c84b3d7f3e3619c7f469b.md) | 574 | `result-track:402c84b3d7f3e3619c7f469b29c97d97b822e8f5354ef5f58fe3f182efdc5d99` |
| 36 | `theorem` | [IsLocalization.lift_mem_adjoin_finsetIntegerMultiple](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/islocalization-lift-mem-adjoin-finsetintegermultiple--e713991cfa1506e703165d2e.md) | 600 | `result-track:e713991cfa1506e703165d2eae0ff97faf07aac50dc3d0917c6f25cf9ef123d1` |
| 37 | `theorem` | [finiteType_ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/declarations/finitetype-oflocalizationspan--68342fca14b242eeb8f62012.md) | 613 | `result-track:68342fca14b242eeb8f62012dc16d9bbf340b423d795e2156af996c6715b5770` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
