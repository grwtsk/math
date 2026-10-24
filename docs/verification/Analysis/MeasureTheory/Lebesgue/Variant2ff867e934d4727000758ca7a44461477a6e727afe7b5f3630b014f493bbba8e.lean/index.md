# Verification target: GRWTSK.Analysis.MeasureTheory.Lebesgue.Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bb96252bae541dc36dfd476ae8e77bb951a6cd0",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bb96252bae541dc36dfd476ae8e77bb951a6cd0`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.Lebesgue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Complex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.Decomposition.Jordan` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.WithDensity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/havelebesguedecomposition--57f4f04ef4bc135afa66a842.md) | 68 | `declaration-track:57f4f04ef4bc135afa66a84221faf63314b25bd0315029248f37070bf0aeb73c` |
| 2 | `theorem` | [not_haveLebesgueDecomposition_iff](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/not-havelebesguedecomposition-iff--5c8a9072a80357396a90a6f0.md) | 76 | `result-track:5c8a9072a80357396a90a6f09c531786bc94b11d7ea92ee3db5dd958771e1b11` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/instance--ef2299c3ac295365d52d3da0.md) | 84 | `declaration-track:ef2299c3ac295365d52d3da0caf329a2a8ea801c8a4267bc1bd564b81b944ead` |
| 4 | `instance` | [haveLebesgueDecomposition_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/havelebesguedecomposition-neg--56bbd839bce420ecb4128732.md) | 89 | `declaration-track:56bbd839bce420ecb4128732b94811d547ed9a66914a3b8d2a3e75be171da52f` |
| 5 | `instance` | [haveLebesgueDecomposition_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/havelebesguedecomposition-smul--7889dc6505a4835881a7e6e5.md) | 98 | `declaration-track:7889dc6505a4835881a7e6e55430a2ff539d648e8847ecb15f2520726ab12535` |
| 6 | `instance` | [haveLebesgueDecomposition_smul_real](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/havelebesguedecomposition-smul-real--ae17fc47a13865710a47626f.md) | 107 | `declaration-track:ae17fc47a13865710a47626f8fca54338bf36a893e593f3e1cff959c705a1cf6` |
| 7 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart--222b54257e0a771652e3722a.md) | 124 | `declaration-track:222b54257e0a771652e3722a390676b16ccd89bbf3946ad1f00f0c992b5f7543` |
| 8 | `theorem` | [singularPart_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-mutuallysingular--388cbe23c43cc8d1f0375ab9.md) | 130 | `result-track:388cbe23c43cc8d1f0375ab9b08fd0577fe62a96fd47843522aaf842848e1ed9` |
| 9 | `theorem` | [singularPart_totalVariation](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-totalvariation--509d6bfde05cffbb5d80657e.md) | 146 | `result-track:509d6bfde05cffbb5d80657e2eb942be5526327c6cd5fabd5990124eb4faca9b` |
| 10 | `theorem` | [mutuallySingular_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/mutuallysingular-singularpart--ca88439e2949b6a9bc2f63db.md) | 158 | `result-track:ca88439e2949b6a9bc2f63db63934f4cee1d88bbd9c20fb540a7987c6b25a0dd` |
| 11 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/rnderiv--1802399e6c7d4010e47c1c90.md) | 172 | `declaration-track:1802399e6c7d4010e47c1c90d8bbf31bd7565472e710b36be8f92dd84072d62c` |
| 12 | `theorem` | [rnDeriv_def](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/rnderiv-def--08c30997cf10783edcad4b35.md) | 177 | `result-track:08c30997cf10783edcad4b359170e1d9671e6847610757278e70e812f0462725` |
| 13 | `theorem` | [measurable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/measurable-rnderiv--5213fa98928908821a2637bc.md) | 185 | `result-track:5213fa98928908821a2637bc6f1c2ec275fba4d95fe82f028f681bee40aac117` |
| 14 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/integrable-rnderiv--63f85100826704bf7e85acf3.md) | 189 | `result-track:63f85100826704bf7e85acf3fbea4e75ba0ed816d6ab1d363c0972adbde0fd76` |
| 15 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-add-withdensity-rnderiv-eq--67e9dbc23de1c51194570db0.md) | 203 | `result-track:67e9dbc23de1c51194570db0f1fde35297a38abbc88839a49fa33aaa26892fd2` |
| 16 | `theorem` | [jordanDecomposition_add_withDensity_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/jordandecomposition-add-withdensity-mutuallysingular--0583a47ea840605d17459345.md) | 227 | `result-track:0583a47ea840605d1745934583ed298ba0b639464bc99970831108b3cac4743f` |
| 17 | `theorem` | [toJordanDecomposition_eq_of_eq_add_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/tojordandecomposition-eq-of-eq-add-withdensity--be1402ac95d8e62730cbd30d.md) | 239 | `result-track:be1402ac95d8e62730cbd30d640e05d8008dd7cf9a318bb86bd5dc3c6e4793c0` |
| 18 | `theorem` | [haveLebesgueDecomposition_mk'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/havelebesguedecomposition-mk--e55dd83707d486e01c0245d4.md) | 263 | `result-track:e55dd83707d486e01c0245d462b40b8047b5585ee7242ce99d96e997bcc39824` |
| 19 | `theorem` | [haveLebesgueDecomposition_mk](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/havelebesguedecomposition-mk--f71a6c4dcf454a256a293782.md) | 280 | `result-track:f71a6c4dcf454a256a2937826d07a8f6a439a7442b3c57cdc1dce9cee27d6467` |
| 20 | `theorem` | [eq_singularPart'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/eq-singularpart--d6c6b713e0af393799c69f51.md) | 289 | `result-track:d6c6b713e0af393799c69f511c293f53e3d05a3ca951e9bed5c2810960076a1f` |
| 21 | `theorem` | [eq_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/eq-singularpart--a23e3d407fd1c17600c30590.md) | 314 | `result-track:a23e3d407fd1c17600c30590a847a28dd48fffdc2feaf48d142335c9101d6560` |
| 22 | `theorem` | [singularPart_zero](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-zero--d1b8e58c8520ca376c72a2ea.md) | 324 | `result-track:d1b8e58c8520ca376c72a2eab4d9620bab29bad6469f5905b65d74cdd5004444` |
| 23 | `theorem` | [singularPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-neg--bb5abf80c7438179db18a282.md) | 328 | `result-track:bb5abf80c7438179db18a282b06fa2f737d4586f4a635466fe7aae624086f1ef` |
| 24 | `theorem` | [singularPart_smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-smul-nnreal--dc732d9ff62f556361faeed8.md) | 342 | `result-track:dc732d9ff62f556361faeed813f81710c4b0eebcb00a90fe30ca4780e2147678` |
| 25 | `theorem` | [singularPart_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-smul--a0721df05600b90185c54918.md) | 352 | `result-track:a0721df05600b90185c54918925d42f2857bf2522c8766da8b320cebb5562eb0` |
| 26 | `theorem` | [singularPart_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-add--ddceb71f870d1c9bdb072112.md) | 371 | `result-track:ddceb71f870d1c9bdb072112c780fc2e155e98ed349049625c971403b3ccc51d` |
| 27 | `theorem` | [singularPart_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-sub--29b8fc8c31930ae85bc0ea13.md) | 383 | `result-track:29b8fc8c31930ae85bc0ea13c2439545fe3bc63bc7da09eb49a6a31000662361` |
| 28 | `theorem` | [eq_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/eq-rnderiv--34f350f016b29d37d902e73a.md) | 391 | `result-track:34f350f016b29d37d902e73a0896f594ef8678f0ea25d2566cd27a21a15dc0be` |
| 29 | `theorem` | [rnDeriv_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/rnderiv-neg--b4e690d6cf07a2390c17cfd2.md) | 403 | `result-track:b4e690d6cf07a2390c17cfd2a843cda50b3d63bd248683b1ecb99d1d2395e491` |
| 30 | `theorem` | [rnDeriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/rnderiv-smul--b634c9cf5e5544821fbd817e.md) | 411 | `result-track:b634c9cf5e5544821fbd817ee15f645c5dc79a2a1adf49ba6e684216cfe388b9` |
| 31 | `theorem` | [rnDeriv_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/rnderiv-add--0cdbd0456d5f2c9c121f1eeb.md) | 420 | `result-track:0cdbd0456d5f2c9c121f1eeb1474a11cf7d29548ddadf66209e541ff541c256a` |
| 32 | `theorem` | [rnDeriv_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/rnderiv-sub--736065da8a0b788a5f1592aa.md) | 432 | `result-track:736065da8a0b788a5f1592aa57c040eee561709b2deabd0afd42e3e72fe6a8ae` |
| 33 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/havelebesguedecomposition--7254135a6c3790e4433dc291.md) | 445 | `declaration-track:7254135a6c3790e4433dc29170e788ea6a10f02ce1cb6745fffeb211358ea702` |
| 34 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart--9215f36d88598e34b1030521.md) | 456 | `declaration-track:9215f36d88598e34b10305210564d8fbb9ff918a5a486d82fa99fa6b6baf4c93` |
| 35 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/rnderiv--a3e22c251de61b81947e7ae3.md) | 460 | `declaration-track:a3e22c251de61b81947e7ae3a76f7535417f5e0b55f470e2eb4952dcfcab7856` |
| 36 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/integrable-rnderiv--8c1e53220ffb03a82fe69e41.md) | 465 | `result-track:8c1e53220ffb03a82fe69e41de1c983c52cef1d7bff34f9099e1d93d05d8984a` |
| 37 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/declarations/singularpart-add-withdensity-rnderiv-eq--6e5b03c1172e4c8ad84101e8.md) | 471 | `result-track:6e5b03c1172e4c8ad84101e801cdfe8a5b5cf78aa0ba2a4519e4f1147e8ea071` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
