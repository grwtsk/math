# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ProductMeasure.Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "235cbc8fdb311106a29dbe5ba5299fb35e3cf95e",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `235cbc8fdb311106a29dbe5ba5299fb35e3cf95e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isProjectiveMeasureFamily_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/isprojectivemeasurefamily-pi--c6129c787600d97574f8a512.md) | 73 | `result-track:c6129c787600d97574f8a5125e06ae7c84732c99abf1ffe9705e847740f4d983` |
| 2 | `def` | [piContent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/picontent--72a1c6a6c5952d16e0813a08.md) | 86 | `declaration-track:72a1c6a6c5952d16e0813a08ba63edbb7d14f6a2107bf3fe9aecc351cde62329` |
| 3 | `lemma` | [piContent_cylinder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/picontent-cylinder--e60450955df30df2b6df56e7.md) | 89 | `result-track:e60450955df30df2b6df56e79be16784f01e251c1d9880ff05871e872c930adb` |
| 4 | `theorem` | [piContent_eq_measure_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/picontent-eq-measure-pi--0890b0dcf46a0d4630b9e999.md) | 93 | `result-track:0890b0dcf46a0d4630b9e999f30b3284f18ea0c30df0f6b3592dd5d1bf50f47f` |
| 5 | `def` | [infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepinat--498b905bcd105a7c594e964f.md) | 121 | `declaration-track:498b905bcd105a7c594e964f7c9183616767087601e76810aa59c8e0ccf655f6` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/instance--3ebd46d6860f3b53b1591f0d.md) | 124 | `declaration-track:3ebd46d6860f3b53b1591f0df44e5ce9f8e60619714122b77cdfa16d39fdd6e6` |
| 7 | `lemma` | [pi_prod_map_IocProdIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/pi-prod-map-iocprodioc--9911c90085536512226056f1.md) | 130 | `result-track:9911c90085536512226056f14bb7fb341324c85d85f4c5f8696fe1a2863b6c3f` |
| 8 | `lemma` | [pi_prod_map_IicProdIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/pi-prod-map-iicprodioc--cd8233cc6927a726fb931e6f.md) | 146 | `result-track:cd8233cc6927a726fb931e6f77aa09985122d5f233b3ab2d093abe44b3d0f09c` |
| 9 | `lemma` | [map_piSingleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/map-pisingleton--aef72efb89d77a0772362db4.md) | 165 | `result-track:aef72efb89d77a0772362db44e834a9e2e89abe72c5f681e3533a2638f5665bc` |
| 10 | `theorem` | [partialTraj_const_restrict₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/partialtraj-const-restrict--de009f69833b7423d0a26fe9.md) | 181 | `result-track:de009f69833b7423d0a26fe9e3fd5eff144527853a71a29b5dba0505bd917ecb` |
| 11 | `theorem` | [partialTraj_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/partialtraj-const--7d7cc14bd9a05cdc4e121bb3.md) | 210 | `result-track:7d7cc14bd9a05cdc4e121bb3fcd0e33b8fe79e255929b946f09edd49a0dd19ec` |
| 12 | `theorem` | [isProjectiveLimit_infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/isprojectivelimit-infinitepinat--0e226228a2907267538c44a4.md) | 217 | `result-track:0e226228a2907267538c44a4e797973c7c2b199a831d9478326ff6fd2fda0275` |
| 13 | `lemma` | [infinitePiNat_map_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepinat-map-restrict--a709589678b0d36a0e55797b.md) | 228 | `result-track:a709589678b0d36a0e55797bed8cde9a19f2979c89939c9f2223799cf5a5e2ef` |
| 14 | `theorem` | [piContent_eq_infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/picontent-eq-infinitepinat--beae4cfe46fc4851121f6b20.md) | 232 | `result-track:beae4cfe46fc4851121f6b20fc8e9a5c5cbb7c3da2e9810fac1853d5b92f6056` |
| 15 | `lemma` | [Measure.infinitePiNat_map_piCongrLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/measure-infinitepinat-map-picongrleft--ecfdc4e02ec8a03ce4ac2cb3.md) | 255 | `result-track:ecfdc4e02ec8a03ce4ac2cb3ac98194fdb60abb3b88c3de80016011fc0abfb3d` |
| 16 | `theorem` | [piContent_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/picontent-tendsto-zero--b2037a111155410cdea377a2.md) | 272 | `result-track:b2037a111155410cdea377a2762a2b27faa59dd9cf1972b414b2354002d3db36` |
| 17 | `theorem` | [isSigmaSubadditive_piContent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/issigmasubadditive-picontent--b8fcec80421d6970d606ad96.md) | 347 | `result-track:b8fcec80421d6970d606ad96eb28e11afe5ca797f37136e9d56c2ed55878960e` |
| 18 | `def` | [infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi--e09aeec3dd134813ea977946.md) | 363 | `declaration-track:e09aeec3dd134813ea97794633dccceb27f18cd9f4ccaceb40e9418949107e31` |
| 19 | `theorem` | [isProjectiveLimit_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/isprojectivelimit-infinitepi--61ecddc6ba3b08f63a67d710.md) | 371 | `result-track:61ecddc6ba3b08f63a67d710e2c469f44098cba39646d72e1efec043187ffe9b` |
| 20 | `theorem` | [infinitePi_map_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-restrict--91b92739ffe3def0e492d31d.md) | 382 | `result-track:91b92739ffe3def0e492d31d213bf0562de6019e8c96caf824b1eb9583542fb6` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/instance--36e595cfa2e2c57dd08f96bd.md) | 386 | `declaration-track:36e595cfa2e2c57dd08f96bd5d27c76ed1fb283759d17587f5d0b06ea0f5aed8` |
| 22 | `theorem` | [eq_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/eq-infinitepi--a6612762683d0c9f53170aff.md) | 393 | `result-track:a6612762683d0c9f53170aff479103777471ed96699054ce6b558ab3f0b5bdda` |
| 23 | `lemma` | [infinitePi_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-pi--791ac9a857474fa43461e7d8.md) | 410 | `result-track:791ac9a857474fa43461e7d89166420b0f232dbfcbbb3b783c40d3ff3036ef2a` |
| 24 | `theorem` | [infinitePi_map_restrict'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-restrict--ec97609563f61903d2dedeeb.md) | 421 | `result-track:ec97609563f61903d2dedeeb28449cb47b4b87413238869c192056f3fda5c6be` |
| 25 | `lemma` | [infinitePi_pi_of_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-pi-of-countable--ab1dc50e7c52a7926501e5b3.md) | 430 | `result-track:ab1dc50e7c52a7926501e5b313751997a771b63af874fc810a8291f9f8b8313a` |
| 26 | `lemma` | [infinitePi_pi_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-pi-univ--9b033dbd1be71265ace76a49.md) | 457 | `result-track:9b033dbd1be71265ace76a49152cb7cdf4893b84d41e69349ec495467d2cd593` |
| 27 | `lemma` | [infinitePi_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-singleton--9bddea3db222fc15ef025cea.md) | 465 | `result-track:9bddea3db222fc15ef025ceac6e6d463e8437b76eeab08a041cb91fb363f0b20` |
| 28 | `lemma` | [infinitePi_singleton_of_fintype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-singleton-of-fintype--91a83b402f3f7dfc408ee405.md) | 469 | `result-track:91a83b402f3f7dfc408ee405a6b523900365c8fd5e263cb138ded4a4c494646b` |
| 29 | `lemma` | [infinitePi_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-dirac--bf76af06fec6af77bd71fa84.md) | 472 | `result-track:bf76af06fec6af77bd71fa843846b36cf95050ec4bf8c69529b3fac29caa5092` |
| 30 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.IsProjectiveMeasureFamilyPi.Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.measurePreserving_eval_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/root-grwtsk-analysis-realanalysis-integration-isprojectivemeasurefamilyp--1a7d2ed98631e351a070c305.md) | 475 | `result-track:1a7d2ed98631e351a070c305c386b17782a4ebad5ca2f710a4a52840afd363df` |
| 31 | `lemma` | [infinitePi_map_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-eval--14c5409952a3a91e12fd3fe9.md) | 486 | `result-track:14c5409952a3a91e12fd3fe9edfb621aa0bbdef385882f99a5428cae216bb45f` |
| 32 | `lemma` | [infinitePi_map_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-pi--94e7bac22999217e5c5bda44.md) | 490 | `result-track:94e7bac22999217e5c5bda44599199a0b8704d952f56ce9fdb5c8b4427453d87` |
| 33 | `theorem` | [infinitePi_map_piCongrLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-picongrleft--d23aacb7651c578ae6b42632.md) | 503 | `result-track:d23aacb7651c578ae6b426321056613812514ab7e416431a40e22cbce7a05ac0` |
| 34 | `theorem` | [infinitePi_eq_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-eq-pi--7c19fd9ef70c9619c28212aa.md) | 515 | `result-track:7c19fd9ef70c9619c28212aaca8a2bbfdf76d32a8f167a111acd0900e9fdd24b` |
| 35 | `lemma` | [infinitePi_cylinder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-cylinder--88565b588179d8d5c45fef8e.md) | 520 | `result-track:88565b588179d8d5c45fef8ef11e02bb5d52762bb5f49830f53a56695a19bfed` |
| 36 | `lemma` | [infinitePi_map_piCurry_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-picurry-symm--d8ef3e5e2d93e7e4f324e3aa.md) | 530 | `result-track:d8ef3e5e2d93e7e4f324e3aab55445345515bd6d081b0f932dc08df3754cc914` |
| 37 | `lemma` | [infinitePi_map_piCurry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-picurry--99d6689b32daabd8cbff4e16.md) | 543 | `result-track:99d6689b32daabd8cbff4e169917131a467b62c44f90c99fdabf533985c1e764` |
| 38 | `lemma` | [infinitePi_map_curry_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-curry-symm--a059f9a4ed8e4cc372a6e732.md) | 551 | `result-track:a059f9a4ed8e4cc372a6e73248977f19b3e0656736f1ee5d9304ee72b999fa13` |
| 39 | `lemma` | [infinitePi_map_curry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/infinitepi-map-curry--845713ee5f423cec7ce9f0b4.md) | 563 | `result-track:845713ee5f423cec7ce9f0b4ccc16f180b92c5ad7664518b4529a37ef3bb8204` |
| 40 | `theorem` | [integral_restrict_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/integral-restrict-infinitepi--42350b4753f428c56d171684.md) | 574 | `result-track:42350b4753f428c56d171684b3a36ae6bb3b2dbb33eded591d629e58d5f4dd01` |
| 41 | `theorem` | [lintegral_restrict_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/lintegral-restrict-infinitepi--81d2ba3a05d0253921adadfc.md) | 582 | `result-track:81d2ba3a05d0253921adadfc768f380af8aae42abbd24fa0ef481160ccb0e18b` |
| 42 | `theorem` | [integral_infinitePi_of_piFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/integral-infinitepi-of-pifinset--6cb5e21c679527759a82f235.md) | 589 | `result-track:6cb5e21c679527759a82f2357c5fc1e1f70e87c0c29dbc36ddb31fae34d46dd7` |
| 43 | `theorem` | [lintegral_infinitePi_of_piFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/declarations/lintegral-infinitepi-of-pifinset--8ba86eee65288de1ccc8e818.md) | 601 | `result-track:8ba86eee65288de1ccc8e8181f9d9398ec0f85988377acc0e9f765e1e5fd3910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
