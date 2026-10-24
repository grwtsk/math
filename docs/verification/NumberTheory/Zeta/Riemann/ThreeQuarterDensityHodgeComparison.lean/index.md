# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ThreeQuarterDensityHodgeComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72ea0c7dcc6e92aa5b39b66a898b0c38f6201dd1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72ea0c7dcc6e92aa5b39b66a898b0c38f6201dd1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ExternalSevenEighthsBand`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThreeQuarterSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaGradedFourierNoDescent`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/index.md) — import line 16; pinned internal source present.
- `Mathlib.Tactic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [guthMaynardPointwiseExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/guthmaynardpointwiseexponent--fe9573d65e4f0b76c5646703.md) | 46 | `declaration-track:fe9573d65e4f0b76c5646703037045e5e7c8aa34e49a61b6e2af047743e428cd` |
| 2 | `def` | [guthMaynardUniformExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/guthmaynarduniformexponent--e317cf8250f507548758de5a.md) | 50 | `declaration-track:e317cf8250f507548758de5a69c5d607ab3e268dcf474b8118d36559a4cf7087` |
| 3 | `theorem` | [pointwiseExponent_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/pointwiseexponent-threequarters--9935b5306ac45ffc7ac8efcf.md) | 54 | `result-track:9935b5306ac45ffc7ac8efcf0ea90375575fcf906cbe1ee3cf7903d3bd75431d` |
| 4 | `theorem` | [uniformExponent_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/uniformexponent-threequarters--dc33ec95d886a4d4c8763ce6.md) | 58 | `result-track:dc33ec95d886a4d4c8763ce61955fdd14420202b4eeeaeed32a49f30189d9525` |
| 5 | `theorem` | [pointwise_improves_uniform_at_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/pointwise-improves-uniform-at-threequarters--0ff6297d78f6224423acc9b8.md) | 62 | `result-track:0ff6297d78f6224423acc9b83309f99f049639d9f96894581f004acd511444d1` |
| 6 | `def` | [bothSignZeroCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/bothsignzerocount--c65363909763e3587b39a14a.md) | 68 | `declaration-track:c65363909763e3587b39a14a0dea196dc94a9f5e134f6ce478b42621d05e3701` |
| 7 | `def` | [positiveHeightZeroCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/positiveheightzerocount--bdcdee8748ed2416b20fc0ad.md) | 74 | `declaration-track:bdcdee8748ed2416b20fc0adf7e1bca5334fb99d0b1fa7f20a83009a46f6f982` |
| 8 | `theorem` | [positiveHeightZeroCount_le_bothSignZeroCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/positiveheightzerocount-le-bothsignzerocount--24cef5954b8032896b2750ac.md) | 80 | `result-track:24cef5954b8032896b2750acba703b6266cc202b930da50be025d7cf2045e3b4` |
| 9 | `def` | [GuthMaynardBothSignThreeQuarter](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/guthmaynardbothsignthreequarter--469732129093088b262c6fd2.md) | 95 | `declaration-track:469732129093088b262c6fd2639af58030663e45dd3f98d607d43cb3f1b6c20d` |
| 10 | `def` | [PositiveThreeQuarterDensity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/positivethreequarterdensity--7040478e9b1154d256eb73e4.md) | 104 | `declaration-track:7040478e9b1154d256eb73e41c776d731d7f24c0b156b2b55ccb15213d2a0cc1` |
| 11 | `theorem` | [positiveDensity_of_guthMaynard](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/positivedensity-of-guthmaynard--9677666a8bdbf7cd1facd643.md) | 113 | `result-track:9677666a8bdbf7cd1facd6436df1cf84c3a796f5fa75f41c4bf2a1c001e7aff1` |
| 12 | `theorem` | [bothSignZeroCount_zero_right_of_sevenEighths](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/bothsignzerocount-zero-right-of-seveneighths--23578591f67bf525bffbfd1d.md) | 128 | `result-track:23578591f67bf525bffbfd1d49495beee70e9ba1269be7d531381033eae5dc6e` |
| 13 | `theorem` | [positiveHeightZeroCount_zero_at_low_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/positiveheightzerocount-zero-at-low-seed--6e14f4316bfbfb1fa37ee3b8.md) | 143 | `result-track:6e14f4316bfbfb1fa37ee3b8920317969d88ff3f0aa9b5ebdfe123782f156116` |
| 14 | `theorem` | [density_and_sevenEighths_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/density-and-seveneighths-band--a35b93b7c7c0c6a6931bdb18.md) | 161 | `result-track:a35b93b7c7c0c6a6931bdb1857a7cf6598ee50059f6ed29483362139ef749b42` |
| 15 | `theorem` | [naive_gradedFourier_strictly_misses_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/naive-gradedfourier-strictly-misses-threequarters--dd817795f20c47873c3b3308.md) | 173 | `result-track:dd817795f20c47873c3b33085255880baefd633ba0edae1234587670c98e52fd` |
| 16 | `theorem` | [distinct_threeQuarter_exponents](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/declarations/distinct-threequarter-exponents--cd7fc02460377643204dc0db.md) | 180 | `result-track:cd7fc02460377643204dc0db89cd71743b32951641e8744249accf58e20c6f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
