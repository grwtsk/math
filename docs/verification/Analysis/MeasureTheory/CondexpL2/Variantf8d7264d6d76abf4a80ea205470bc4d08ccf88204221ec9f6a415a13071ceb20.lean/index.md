# Verification target: GRWTSK.Analysis.MeasureTheory.CondexpL2.Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "172a21b38af0ebb005aae58d3b00347b42bb5117",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `172a21b38af0ebb005aae58d3b00347b42bb5117`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Unique` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condExpL2](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2--979dc6d1cf1b72b7da9c13d0.md) | 65 | `declaration-track:979dc6d1cf1b72b7da9c13d0ec02a9ddc1308d5b165814557a5939b6aded0ea6` |
| 2 | `theorem` | [aestronglyMeasurable_condExpL2](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/aestronglymeasurable-condexpl2--60763fd8109ea46d028e38ff.md) | 73 | `result-track:60763fd8109ea46d028e38fffa8a49651e0a18182075d8279d7afa30612ca68a` |
| 3 | `theorem` | [integrableOn_condExpL2_of_measure_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/integrableon-condexpl2-of-measure-ne-top--1b221782feb33d9a7363cc2c.md) | 83 | `result-track:1b221782feb33d9a7363cc2c69442240bee14175be747bd05d5fa5660f235798` |
| 4 | `theorem` | [integrable_condExpL2_of_isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/integrable-condexpl2-of-isfinitemeasure--cd8d82bd99eb448ace5cbafe.md) | 91 | `result-track:cd8d82bd99eb448ace5cbafecc32fee630fd0d4ffbd290bf31c4a1622f1b1ca7` |
| 5 | `theorem` | [norm_condExpL2_le_one](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/norm-condexpl2-le-one--e0d4093b2e57ec0c4bdb788c.md) | 98 | `result-track:e0d4093b2e57ec0c4bdb788c85f002f39d890542e072db57d6e376ca8faafff8` |
| 6 | `theorem` | [norm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/norm-condexpl2-le--555fef20feacf0c97a766ff3.md) | 104 | `result-track:555fef20feacf0c97a766ff35cc5f737a120a25d3573b9e10db83097c613ba96` |
| 7 | `theorem` | [eLpNorm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/elpnorm-condexpl2-le--72fefe6ea3569ab129a965a0.md) | 110 | `result-track:72fefe6ea3569ab129a965a080bdba20eb67095bda93b12a37238842ec872090` |
| 8 | `theorem` | [norm_condExpL2_coe_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/norm-condexpl2-coe-le--5ac3ea3371b7cc2a36bcbf8e.md) | 118 | `result-track:5ac3ea3371b7cc2a36bcbf8e1d0dd4a6bda5099ed9660f604ff44ff8f6cebd55` |
| 9 | `theorem` | [inner_condExpL2_left_eq_right](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/inner-condexpl2-left-eq-right--8c3d15079a5254b188e7e442.md) | 125 | `result-track:8c3d15079a5254b188e7e442aa16018ff4311f29b8efd963ec3f4a9ba10eb913` |
| 10 | `theorem` | [condExpL2_indicator_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2-indicator-of-measurable--919ee25c16857e35e1095220.md) | 133 | `result-track:919ee25c16857e35e10952208333cd36abf24591b8f1304c532010a346f54b4c` |
| 11 | `theorem` | [inner_condExpL2_eq_inner_fun](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/inner-condexpl2-eq-inner-fun--4719d6d07f395ff10f1d64d1.md) | 149 | `result-track:4719d6d07f395ff10f1d64d196ec605b07f0e150bab0d3c9e97d4eba806e0179` |
| 12 | `theorem` | [integral_condExpL2_eq_of_fin_meas_real](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/integral-condexpl2-eq-of-fin-meas-real--2dfa418f603f95c41e4b034c.md) | 164 | `result-track:2dfa418f603f95c41e4b034c2e93581f46c22be34f3bc66f0f0d57dad0bc6874` |
| 13 | `theorem` | [lintegral_nnnorm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/lintegral-nnnorm-condexpl2-le--a56644b9181cc28c3b122aa4.md) | 175 | `result-track:a56644b9181cc28c3b122aa4fc3fdbc34e776bbc00edb0621b977e7bed7daa5d` |
| 14 | `theorem` | [condExpL2_ae_eq_zero_of_ae_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2-ae-eq-zero-of-ae-eq-zero--ea0eaa3b015e2e3e8dd8b05f.md) | 201 | `result-track:ea0eaa3b015e2e3e8dd8b05fcaeaf4fdc0668ba14e469a2bdf542979dd93aff9` |
| 15 | `theorem` | [lintegral_nnnorm_condExpL2_indicator_le_real](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le-real--12097d9da986419f64cbdef9.md) | 223 | `result-track:12097d9da986419f64cbdef987d74817975ad0e44eae6c2f273221805a734092` |
| 16 | `theorem` | [condExpL2_const_inner](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2-const-inner--8f4a18cb22881b30bd3628d4.md) | 248 | `result-track:8f4a18cb22881b30bd3628d4f8c60343c7742c14ece15801465f8249d4f70db0` |
| 17 | `theorem` | [integral_condExpL2_eq](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/integral-condexpl2-eq--88556d3f6590969f41e60ba3.md) | 276 | `result-track:88556d3f6590969f41e60ba39885c048223eb8941629c270567ebf860ebc7a08` |
| 18 | `theorem` | [condExpL2_comp_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2-comp-continuouslinearmap--8f628e015ab81fa7dfb5d21e.md) | 302 | `result-track:8f628e015ab81fa7dfb5d21e51e0c8ca137d98c032e3e39f58070b6d3570898d` |
| 19 | `theorem` | [condExpL2_indicator_ae_eq_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2-indicator-ae-eq-smul--dd0c1095de29e1007f73821e.md) | 331 | `result-track:dd0c1095de29e1007f73821e520f07c0656c2b9fce00f79a7db023ad6a30f97d` |
| 20 | `theorem` | [condExpL2_indicator_eq_toSpanSingleton_comp](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2-indicator-eq-tospansingleton-comp--3780370e5b1b4b67a2decb55.md) | 345 | `result-track:3780370e5b1b4b67a2decb551d4c1217a1b88a45a0d52a9aaeb7ffffd550bc64` |
| 21 | `theorem` | [setLIntegral_nnnorm_condExpL2_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/setlintegral-nnnorm-condexpl2-indicator-le--008cfa5fcfd5b435f68b9420.md) | 361 | `result-track:008cfa5fcfd5b435f68b942074f46ff77ab2aa87aeda01ba295948513862db45` |
| 22 | `theorem` | [lintegral_nnnorm_condExpL2_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le--f591b026837922e81cf39d28.md) | 380 | `result-track:f591b026837922e81cf39d28ccca1680d58f048837e4cdc5a45ef290f05f53e6` |
| 23 | `theorem` | [integrable_condExpL2_indicator](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/integrable-condexpl2-indicator--8ccc5a11e3e429431e2d243f.md) | 393 | `result-track:8ccc5a11e3e429431e2d243f9a9a368ea96207baf5d562bc083995a0c5598e63` |
| 24 | `def` | [condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpindsmul--0cfd9289d3b75e9397e842e9.md) | 414 | `declaration-track:0cfd9289d3b75e9397e842e9ff56131ecb1973b446df70d4a29b198258f6a327` |
| 25 | `theorem` | [aestronglyMeasurable_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/aestronglymeasurable-condexpindsmul--5cb44c5767665a142b41b4e8.md) | 420 | `result-track:5cb44c5767665a142b41b4e85a415683274be15e2fc14072cc33eef5cba1913e` |
| 26 | `theorem` | [condExpIndSMul_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpindsmul-add--b5ac04304f236cbcf8142c76.md) | 434 | `result-track:b5ac04304f236cbcf8142c768a05089ce94e2fc4429d703b7da9c8209efabb7d` |
| 27 | `theorem` | [condExpIndSMul_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpindsmul-smul--39e11f58eb42b47cb39b6a97.md) | 440 | `result-track:39e11f58eb42b47cb39b6a979aa68b3c89cfa44d8c843ead23355177fb7727f0` |
| 28 | `theorem` | [condExpIndSMul_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpindsmul-smul--3a015ad6dc64eb975d44e041.md) | 446 | `result-track:3a015ad6dc64eb975d44e0417e10c9303df6690805cbc2ee826894c8a413e011` |
| 29 | `theorem` | [condExpIndSMul_ae_eq_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpindsmul-ae-eq-smul--9e556ad9f262b8c72bdab1cf.md) | 454 | `result-track:9e556ad9f262b8c72bdab1cffb01d912702f39e92515ef6175e82fb0e92d138e` |
| 30 | `theorem` | [setLIntegral_nnnorm_condExpIndSMul_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/setlintegral-nnnorm-condexpindsmul-le--7096e4d788ab29f9d2116d0b.md) | 461 | `result-track:7096e4d788ab29f9d2116d0bd4b9f4afa097033dc48c8da80d95e1e52ca673b4` |
| 31 | `theorem` | [lintegral_nnnorm_condExpIndSMul_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/lintegral-nnnorm-condexpindsmul-le--0d2f3e6847d70fd337a9df32.md) | 479 | `result-track:0d2f3e6847d70fd337a9df32c7fbb77fbc01de455ffc159ceab6c9845a7c6dd1` |
| 32 | `theorem` | [integrable_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/integrable-condexpindsmul--ed8539b39c39d092b25a998e.md) | 491 | `result-track:ed8539b39c39d092b25a998eb414b80c4db89765580ed160e34bc821f3b7e73c` |
| 33 | `theorem` | [condExpIndSMul_empty](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpindsmul-empty--5f19ab3de599774034d2d7a3.md) | 502 | `result-track:5f19ab3de599774034d2d7a31933c1cb2e75527a7d15d94d3f13ae6d38014770` |
| 34 | `theorem` | [setIntegral_condExpL2_indicator](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/setintegral-condexpl2-indicator--8033ed0b22055d56b2b0d464.md) | 509 | `result-track:8033ed0b22055d56b2b0d4644e16cef2c95ad9582023a9f2bf867142966e01c1` |
| 35 | `theorem` | [setIntegral_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/setintegral-condexpindsmul--8074e28ea4f0c1cc278303cd.md) | 522 | `result-track:8074e28ea4f0c1cc278303cd78c7e32aca186cb6d8f45374b4c37454e4b6f4b2` |
| 36 | `theorem` | [condExpL2_indicator_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpl2-indicator-nonneg--6f293b4e275b5aaf03bdce64.md) | 536 | `result-track:6f293b4e275b5aaf03bdce64906635fe4a8835ebdd8c4416c867587bac53a30f` |
| 37 | `theorem` | [condExpIndSMul_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantf8d7264d6d76abf4a80ea205470bc4d08ccf88204221ec9f6a415a13071ceb20.lean/declarations/condexpindsmul-nonneg--c7bad996b37da506dd9f9165.md) | 560 | `result-track:c7bad996b37da506dd9f9165d391e18612347d01e37b9aae44358d5d56125a0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
