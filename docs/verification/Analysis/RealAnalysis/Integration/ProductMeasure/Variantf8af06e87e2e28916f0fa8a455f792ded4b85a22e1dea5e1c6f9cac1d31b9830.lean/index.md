# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ProductMeasure.Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d08d1f6fd3e41bf2d944035d34aa244be8f4ead8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d08d1f6fd3e41bf2d944035d34aa244be8f4ead8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureComp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IonescuTulcea.Traj` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isProjectiveMeasureFamily_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/isprojectivemeasurefamily-pi--04e8b94ef59c6a4419b18f75.md) | 61 | `result-track:04e8b94ef59c6a4419b18f75816d8d66b0bb935cd486b8e26b02622df62e45e3` |
| 2 | `def` | [piContent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/picontent--ca3781075b06ef76664c31b2.md) | 73 | `declaration-track:ca3781075b06ef76664c31b277386b8b4ce922ff44c023ea6043201b67a033f2` |
| 3 | `lemma` | [piContent_cylinder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/picontent-cylinder--3fcabc1a7b22b24367ffb12b.md) | 76 | `result-track:3fcabc1a7b22b24367ffb12b41df9f5953719d3fd9c4d6909e27b11be78852df` |
| 4 | `theorem` | [piContent_eq_measure_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/picontent-eq-measure-pi--5dda76ff0e6336e3153329c7.md) | 80 | `result-track:5dda76ff0e6336e3153329c70080828bdb6324190d5c75e9226decb0f194fee3` |
| 5 | `def` | [infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepinat--91634ce033092119ed19f935.md) | 109 | `declaration-track:91634ce033092119ed19f9356dccec148b8b55d585e8191746e859fed883f593` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/instance--ffb324be6b36c4a35a179001.md) | 112 | `declaration-track:ffb324be6b36c4a35a179001cb4002b94314f2b86beda58475b54c981fd7ed37` |
| 7 | `lemma` | [pi_prod_map_IocProdIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/pi-prod-map-iocprodioc--4b2740e9dae7f05725855d2b.md) | 118 | `result-track:4b2740e9dae7f05725855d2b0e0c999e030afaac63318fae9b941b417703f595` |
| 8 | `lemma` | [pi_prod_map_IicProdIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/pi-prod-map-iicprodioc--72a7190535cf4dcdd434cb6e.md) | 134 | `result-track:72a7190535cf4dcdd434cb6eeb9c3047028c1c53d9d02f5012bc318477a9af76` |
| 9 | `lemma` | [map_piSingleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/map-pisingleton--3902ebc6b5cd00146babccd2.md) | 153 | `result-track:3902ebc6b5cd00146babccd2e0f2474382ec6cc416945ebf51fba10094b82d20` |
| 10 | `theorem` | [partialTraj_const_restrict₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/partialtraj-const-restrict--2a9f0132d9c939e5f43c1d73.md) | 169 | `result-track:2a9f0132d9c939e5f43c1d73400a4a46d8355eb566180f609bccffd2f182e5d7` |
| 11 | `theorem` | [partialTraj_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/partialtraj-const--ccb92174b81c876a921761db.md) | 198 | `result-track:ccb92174b81c876a921761db0e8f11d8c5d5b2b6f9a3fe7c89dfb69230baf2e3` |
| 12 | `theorem` | [isProjectiveLimit_infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/isprojectivelimit-infinitepinat--8f29d4a71f8c0d3f2c1bc42d.md) | 205 | `result-track:8f29d4a71f8c0d3f2c1bc42d81cd7c7a4406f704bb6de6ee046b7ca5515a1de8` |
| 13 | `lemma` | [infinitePiNat_map_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepinat-map-restrict--9af813357b6c776326403e81.md) | 216 | `result-track:9af813357b6c776326403e81d1df8ac9bf8a3e8efa352af53cfc8a8b0bba2fbf` |
| 14 | `theorem` | [piContent_eq_infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/picontent-eq-infinitepinat--5c1c1a61e656ae58c74e8068.md) | 220 | `result-track:5c1c1a61e656ae58c74e8068488bd2cae6bf6271c9ad615ef666aad243a483c4` |
| 15 | `lemma` | [Measure.infinitePiNat_map_piCongrLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/measure-infinitepinat-map-picongrleft--df3a17d04200a53e03bca1af.md) | 243 | `result-track:df3a17d04200a53e03bca1af1b6c6235364b6a6b526c23fc3d6591edb578ea82` |
| 16 | `theorem` | [piContent_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/picontent-tendsto-zero--578065fcce7c64fad4656a26.md) | 260 | `result-track:578065fcce7c64fad4656a26837ca352115da047f94037f92394f54bc2cb28af` |
| 17 | `theorem` | [isSigmaSubadditive_piContent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/issigmasubadditive-picontent--115bf452d4e0a35d93c0f720.md) | 335 | `result-track:115bf452d4e0a35d93c0f72076af4946847324a7138b0193b94422d5a762bae0` |
| 18 | `def` | [infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepi--c9ec180c9bb94deba1850337.md) | 347 | `declaration-track:c9ec180c9bb94deba1850337036b92c0823f9db30c24fc1cac48b82ba816bfb5` |
| 19 | `theorem` | [isProjectiveLimit_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/isprojectivelimit-infinitepi--bf5b08cdf13cd2252995bfa6.md) | 353 | `result-track:bf5b08cdf13cd2252995bfa67cda404b83edf15af0600d337c7c9022b8003f90` |
| 20 | `theorem` | [infinitePi_map_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepi-map-restrict--3888f9ae9d28fbc6482b46d0.md) | 364 | `result-track:3888f9ae9d28fbc6482b46d0c065408af46af6b5fd2f309c432d4995a48ea5c6` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/instance--1171c1327ac8a7fbef67b17e.md) | 368 | `declaration-track:1171c1327ac8a7fbef67b17efec966e47f8a1f34c284655df8de55842483dc1b` |
| 22 | `theorem` | [eq_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/eq-infinitepi--01eaa504b542ef547fd91aa7.md) | 375 | `result-track:01eaa504b542ef547fd91aa75610202322ff19a208fca73ab4163776bbc73455` |
| 23 | `lemma` | [infinitePi_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepi-pi--ad452a4348c27454ead97dd9.md) | 390 | `result-track:ad452a4348c27454ead97dd980cfab2ddfbbf2e7f145659242ab89209f2668d9` |
| 24 | `theorem` | [infinitePi_map_piCongrLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepi-map-picongrleft--9fa9e6d0a7c64720e3a9164c.md) | 403 | `result-track:9fa9e6d0a7c64720e3a9164c28f9549f20b4565bd51229c8ab4ddce4c447a004` |
| 25 | `theorem` | [infinitePi_eq_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepi-eq-pi--d6499737fd471637a802eb52.md) | 415 | `result-track:d6499737fd471637a802eb5272c8500d920ca8ce0cb948d9bd5e3cbfe1583322` |
| 26 | `lemma` | [infinitePi_cylinder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/infinitepi-cylinder--343560587f43ac08cec7db1e.md) | 420 | `result-track:343560587f43ac08cec7db1ec7333cc7019ae9f59c444d997c4802cec9878a37` |
| 27 | `theorem` | [integral_restrict_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/integral-restrict-infinitepi--826a643e4d91bad61c6d4c9f.md) | 428 | `result-track:826a643e4d91bad61c6d4c9f7e65defd7e9cfbbcafcc529dc289dccb5eabc3f5` |
| 28 | `theorem` | [lintegral_restrict_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/lintegral-restrict-infinitepi--d6de2499da4a7544ea7baa26.md) | 436 | `result-track:d6de2499da4a7544ea7baa268c6012b659a44558062dd7a0cb0aac75cd604739` |
| 29 | `theorem` | [integral_infinitePi_of_piFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/integral-infinitepi-of-pifinset--971c7d98b437e0077a5d1313.md) | 443 | `result-track:971c7d98b437e0077a5d1313c64628123424574c686fbe4d68b161c95eeaa28f` |
| 30 | `theorem` | [lintegral_infinitePi_of_piFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/declarations/lintegral-infinitepi-of-pifinset--3d211cb41092fad953c26683.md) | 455 | `result-track:3d211cb41092fad953c266833ea2b7f8afda429fd753fd6513bb2cd34f71fc75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
