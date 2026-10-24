# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.C8bf774f256acfb34f12EstimateNormalizedSourceProfile.Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34c0bcf58cc8ef091d5c491dd48676342dfbe449",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34c0bcf58cc8ef091d5c491dd48676342dfbe449`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitprofile--e354d6b3f6e54469072905fb.md) | 24 | `declaration-track:e354d6b3f6e54469072905fbf6c20c5c2c299c7722e7dff8d8ebd930ed4ecb47` |
| 2 | `def` | [unitCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation--77dc770d5604cdc14b8855a5.md) | 28 | `declaration-track:77dc770d5604cdc14b8855a58df0505344f3562fc932e8ac2a00ab9b2ed7b755` |
| 3 | `theorem` | [normalizedTest_eq_unitProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/normalizedtest-eq-unitprofile--a8cd24b3ee22a592320e2fcc.md) | 32 | `result-track:a8cd24b3ee22a592320e2fcca396bfe8c5a3fdc8e41aa9b8b9c58292b9411287` |
| 4 | `theorem` | [unitProfile_zero_of_one_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitprofile-zero-of-one-le-abs--7e934582d37d00648d1a296e.md) | 38 | `result-track:7e934582d37d00648d1a296e506901418f81d22b7bc98e4d2919578d8a4f4aaa` |
| 5 | `theorem` | [unitProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitprofile-contdiff--8b4a5fb1d5bdb0aa545db9d0.md) | 46 | `result-track:8b4a5fb1d5bdb0aa545db9d0b7a1bcb8c85971a950570122f4446ba4301f1120` |
| 6 | `theorem` | [unitProfile_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitprofile-integrable--43eaec2af2aec8ae08d49efb.md) | 51 | `result-track:43eaec2af2aec8ae08d49efbd3b8131dfa41fdd7716cef63ff989bad700ec597` |
| 7 | `theorem` | [unitProfile_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitprofile-product-integrable--0ef5a1236650a93649daa58b.md) | 56 | `result-track:0ef5a1236650a93649daa58b33a2e2e3068fdb14aea464cc1d4ac6966d9b7d79` |
| 8 | `theorem` | [sourceCorrelation_mul_eq_unitCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/sourcecorrelation-mul-eq-unitcorrelation--ddfc70f08a0bcde41d6889dc.md) | 70 | `result-track:ddfc70f08a0bcde41d6889dce6d7bf492459f8f7893252f80cd6aa61a937cff5` |
| 9 | `theorem` | [sourceCorrelation_eq_unitCorrelation_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/sourcecorrelation-eq-unitcorrelation-div--5aee43b409bceb5595980c41.md) | 94 | `result-track:5aee43b409bceb5595980c415e56d7d32621cf8ed0ba88f75eaded249e62bd51` |
| 10 | `theorem` | [unitCorrelation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation-contdiff--1cf3ffcc82554f57c6d20b31.md) | 99 | `result-track:1cf3ffcc82554f57c6d20b31622ac4e62b655f734a9d69a1230cc3e60adb047f` |
| 11 | `theorem` | [unitCorrelation_zero_of_two_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation-zero-of-two-le-abs--034fbdeced5cdfea94a2bfb1.md) | 109 | `result-track:034fbdeced5cdfea94a2bfb1c28468aa48b10ffd1ed0b076727093802aa3e8ae` |
| 12 | `theorem` | [unitCorrelation_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation-support-subset--5efefdedccc39593fe90eefd.md) | 116 | `result-track:5efefdedccc39593fe90eefd99eaf782f94984801fa73d883a1ab92a1ad30454` |
| 13 | `theorem` | [unitCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation-hascompactsupport--b40d5e3af716ef97b2c02be6.md) | 125 | `result-track:b40d5e3af716ef97b2c02be61c0403bc9a55bdffb2d3db227c09311eb4e0ad5d` |
| 14 | `theorem` | [unitCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation-integrable--e875b43ecc65f9176d93deaf.md) | 132 | `result-track:e875b43ecc65f9176d93deaf1e17390de3de3e7e8e8bb75c31789f5c50730172` |
| 15 | `theorem` | [unitCorrelation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation-zero--6124687746cbea8d54f3f619.md) | 137 | `result-track:6124687746cbea8d54f3f619bebbe0b187ba9197e63c4eaf5a3576a71c8047be` |
| 16 | `theorem` | [unitProfile_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitprofile-square-integral--f81f1ff838656d6a010d70a9.md) | 142 | `result-track:f81f1ff838656d6a010d70a9001cbb39cfa060654058c771b6239ad1d3c21881` |
| 17 | `theorem` | [unitCorrelation_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/declarations/unitcorrelation-hasderivat--dfe791c1e11b0598f50ba618.md) | 147 | `result-track:dfe791c1e11b0598f50ba61861f426a5757fe8c4edb79d2acfa6257185043450` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
