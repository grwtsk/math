# Verification target: GRWTSK.Analysis.MeasureTheory.Lebesgue.Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be8598a7f6d8ddce356a6e9b6960c247e1b4768d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be8598a7f6d8ddce356a6e9b6960c247e1b4768d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean.json)

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
| 1 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/havelebesguedecomposition--dd4ba849fbcbc4dc204c801c.md) | 64 | `declaration-track:dd4ba849fbcbc4dc204c801caf235208b48007c56080e68e2d9620bae8103004` |
| 2 | `theorem` | [not_haveLebesgueDecomposition_iff](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/not-havelebesguedecomposition-iff--46b55e41d9a8295a8994919c.md) | 72 | `result-track:46b55e41d9a8295a8994919c5a85b7ed534ddbd716de723a2bb3b6cd5fc63b74` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/instance--f74dda0596eb8d6febe82f56.md) | 80 | `declaration-track:f74dda0596eb8d6febe82f56466ac02c48bc21a4bee54fd02bbd04896b6103f0` |
| 4 | `instance` | [haveLebesgueDecomposition_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/havelebesguedecomposition-neg--00aa33e9142fb27aeb334924.md) | 85 | `declaration-track:00aa33e9142fb27aeb3349240d073c5790d92ea6a420caf11f8ce5b0804fc026` |
| 5 | `instance` | [haveLebesgueDecomposition_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/havelebesguedecomposition-smul--d5383ce05a55ed4a8b95a34f.md) | 94 | `declaration-track:d5383ce05a55ed4a8b95a34f214ad2b3b9aa31ba872fa5830074e25da2052ee5` |
| 6 | `instance` | [haveLebesgueDecomposition_smul_real](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/havelebesguedecomposition-smul-real--582e6d2adcd5b08e751e092f.md) | 103 | `declaration-track:582e6d2adcd5b08e751e092fa83229fe6cc8de7ccd77b9261ca96a001aca19f7` |
| 7 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart--72ead98ab227cb9f6c8337cf.md) | 119 | `declaration-track:72ead98ab227cb9f6c8337cf1387f1dc28f225ee0f9d568722814c800393f087` |
| 8 | `theorem` | [singularPart_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-mutuallysingular--1afcc0eab70324d8ae33ccfa.md) | 125 | `result-track:1afcc0eab70324d8ae33ccfa267b67740aded65717ded810d7850572fa604171` |
| 9 | `theorem` | [singularPart_totalVariation](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-totalvariation--bc1b58d3cbccc8ad7dfedf12.md) | 130 | `result-track:bc1b58d3cbccc8ad7dfedf12d8d7f9a72ff562bde28823dbbaf669d5f6a8586f` |
| 10 | `theorem` | [mutuallySingular_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/mutuallysingular-singularpart--8b191386f5be3d83f089a5bf.md) | 142 | `result-track:8b191386f5be3d83f089a5bfedf43d251d0cd8639e4d930b96aecc3ff60e318a` |
| 11 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/rnderiv--c5fbff7cd58c8514d8a65462.md) | 156 | `declaration-track:c5fbff7cd58c8514d8a65462124522d1ded70023e992e70b3fda3c033fdc75a8` |
| 12 | `theorem` | [rnDeriv_def](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/rnderiv-def--cc0f7fe4e94d4dae1e161ada.md) | 161 | `result-track:cc0f7fe4e94d4dae1e161ada6e686bc6e93a50469915bd976ed3aa1595be78db` |
| 13 | `theorem` | [measurable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/measurable-rnderiv--e619aa0f649350dad2d9c187.md) | 169 | `result-track:e619aa0f649350dad2d9c187072fc68dbdf8c02d3904ed621595b49aedcc2dce` |
| 14 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/integrable-rnderiv--17c305ef3b427a24c7d1eccb.md) | 173 | `result-track:17c305ef3b427a24c7d1eccb7c45e1cc53d834ff239426ccd2d7378dba03847f` |
| 15 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-add-withdensity-rnderiv-eq--5b9b53f3486ef7e09cd82b91.md) | 187 | `result-track:5b9b53f3486ef7e09cd82b91a7e7810e838575986c9756866566b1dc2942be11` |
| 16 | `theorem` | [jordanDecomposition_add_withDensity_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/jordandecomposition-add-withdensity-mutuallysingular--5818c879892631c872a808d3.md) | 211 | `result-track:5818c879892631c872a808d37bc2333c0e45665e3a5cae7365e62105ab02c1d2` |
| 17 | `theorem` | [toJordanDecomposition_eq_of_eq_add_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/tojordandecomposition-eq-of-eq-add-withdensity--fc81fd521208400f48163892.md) | 223 | `result-track:fc81fd521208400f48163892b7c6d0280cf3511f38035dd6eb5b6609b747c617` |
| 18 | `theorem` | [haveLebesgueDecomposition_mk'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/havelebesguedecomposition-mk--e87ced53b438940de72a4411.md) | 247 | `result-track:e87ced53b438940de72a441185e0ef3707b051a19548c671232d370866673830` |
| 19 | `theorem` | [haveLebesgueDecomposition_mk](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/havelebesguedecomposition-mk--b4a418c1110cfa307803cea0.md) | 264 | `result-track:b4a418c1110cfa307803cea027b2a6b0702bd10b5a664ec9b8c3d41b8d458c27` |
| 20 | `theorem` | [eq_singularPart'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/eq-singularpart--9bf5cff0f82995887aa41d98.md) | 273 | `result-track:9bf5cff0f82995887aa41d987e8677a8b4089582bb6a44acc61fdaa3d743d43a` |
| 21 | `theorem` | [eq_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/eq-singularpart--91faf9181050fcf9584c2b85.md) | 293 | `result-track:91faf9181050fcf9584c2b85cd4287ecad077584527c00c07fd55eec7c3a0c65` |
| 22 | `theorem` | [singularPart_zero](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-zero--4d2a9b2c7ddea10dcc9b6e88.md) | 303 | `result-track:4d2a9b2c7ddea10dcc9b6e887decd152604f89155884d7bb2f3f8366da28da60` |
| 23 | `theorem` | [singularPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-neg--f8a87596cdb7f1d82c90b750.md) | 307 | `result-track:f8a87596cdb7f1d82c90b7504ae32cd83db648d38a060cd92a79f01e3ab9dd81` |
| 24 | `theorem` | [singularPart_smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-smul-nnreal--52a0bd88727a6e353fe92e41.md) | 311 | `result-track:52a0bd88727a6e353fe92e41a2e50f1b387575f387e79f19f7fbc4cbf10a1e93` |
| 25 | `theorem` | [singularPart_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-smul--ee139e68ec9ee288c0c068c4.md) | 321 | `result-track:ee139e68ec9ee288c0c068c4c32e00b436fcd399e81a763724338a25176b8f6b` |
| 26 | `theorem` | [singularPart_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-add--5054cdbbfe9c4348542b61da.md) | 340 | `result-track:5054cdbbfe9c4348542b61da82c1e43bd67911fad0b5a01ee0b7891a5f8868fa` |
| 27 | `theorem` | [singularPart_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-sub--f2e9485e0a81af3a6efdefed.md) | 352 | `result-track:f2e9485e0a81af3a6efdefedb9c90022d677c6941edf8e112767165481c838d7` |
| 28 | `theorem` | [eq_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/eq-rnderiv--f2898c4ae96d813ca4962325.md) | 360 | `result-track:f2898c4ae96d813ca4962325aa1ba9b5f3bc5bea9c61020112962b0f5fde70df` |
| 29 | `theorem` | [rnDeriv_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/rnderiv-neg--c6d8a2a81ad65e5386840d43.md) | 372 | `result-track:c6d8a2a81ad65e5386840d4346749a5132a892f408f9718d8fc517e0b8960497` |
| 30 | `theorem` | [rnDeriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/rnderiv-smul--e01605c63d676033e0d85bca.md) | 380 | `result-track:e01605c63d676033e0d85bca3554a5ce1d1406024251fcf6d048f409831e780e` |
| 31 | `theorem` | [rnDeriv_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/rnderiv-add--802f0144add387b877fc7c38.md) | 389 | `result-track:802f0144add387b877fc7c38c12194c7b117b42c63076ec10caeebefade7ad98` |
| 32 | `theorem` | [rnDeriv_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/rnderiv-sub--48185376fbdd5ed70bcb0df5.md) | 401 | `result-track:48185376fbdd5ed70bcb0df5c9a3ac5c65c207c5349e1ae499791bcd58494d03` |
| 33 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/havelebesguedecomposition--e8492c9209bacf422b15e197.md) | 414 | `declaration-track:e8492c9209bacf422b15e1979505c1603650339e6291cbe623850b783445464a` |
| 34 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart--b04585469db81fe34750dd85.md) | 425 | `declaration-track:b04585469db81fe34750dd85443150fe093b2a348c877fcb425a81869fe1da74` |
| 35 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/rnderiv--7300f5e6f1afe2d1c01cccc0.md) | 429 | `declaration-track:7300f5e6f1afe2d1c01cccc051568e9f6934a2ec8c536788e62ac64c19794350` |
| 36 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/integrable-rnderiv--063a93598c3acdf848bb3146.md) | 434 | `result-track:063a93598c3acdf848bb31467dd4e5041d7ac3d2692739b99b36278524c76c9a` |
| 37 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/declarations/singularpart-add-withdensity-rnderiv-eq--6aa73640c6e0c60161162d36.md) | 440 | `result-track:6aa73640c6e0c60161162d36387849e334327da09a29dfffae44d71f466a0aa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
