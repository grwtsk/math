# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubini.Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d42e00af7d40b44dcec4d4f5ee54f2cb0600370",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d42e00af7d40b44dcec4d4f5ee54f2cb0600370`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 6; external provider; requires a separately pinned dependency.
- `SourceFullXiCesaroConsumer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/finitedensity--2154b10a50d2bc5e6f6e9584.md) | 32 | `declaration-track:2154b10a50d2bc5e6f6e95842505bc93b7e63144a3f3db1bfd3e3b9a47975941` |
| 2 | `theorem` | [threshold_order](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/threshold-order--ba5bf2ffb9e0f0c1ed4406e9.md) | 37 | `result-track:ba5bf2ffb9e0f0c1ed4406e9ece292391148c7051f7093ba80a135ce1c337e3d` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/finitedensity-integrable--37c67675b3775b15514f66d0.md) | 41 | `result-track:37c67675b3775b15514f66d03947ad16c62c56e51a28a206622ab7e27b506808` |
| 4 | `theorem` | [density_left_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/density-left-slice--47eb6838485ac9eac1aae065.md) | 96 | `result-track:47eb6838485ac9eac1aae0657e01f3a9dbcf77ddd7571fb3ce1269b8449ccf12` |
| 5 | `theorem` | [density_right_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/density-right-slice--ba4be8700287b2d618d8776d.md) | 118 | `result-track:ba4be8700287b2d618d8776de82b8f79550effae191b6b930a83662fb21f9027` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/actualfinitesecondreadout-outer-fubini--1639df99f54e256e20c5e781.md) | 144 | `result-track:1639df99f54e256e20c5e781837e7f2c0deefe5d83f60e08601a3dd0ac5cbe0c` |
| 7 | `theorem` | [signedCesaroPairing_eq_actual_Xi_plain_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/signedcesaropairing-eq-actual-xi-plain-pairing--e9c17ba3a5eea87ae0862d13.md) | 169 | `result-track:e9c17ba3a5eea87ae0862d13b083e055ca23831c18fb4fd4b596a1d4b3a52f08` |
| 8 | `theorem` | [remainingAtomWork_eq_actual_Xi_plain_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/remainingatomwork-eq-actual-xi-plain-pairing--1d45aadd271d24edfc180c01.md) | 175 | `result-track:1d45aadd271d24edfc180c010df129223732c1d11877909c0154459d2a4625c8` |
| 9 | `theorem` | [estimate_of_actual_Xi_plain_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variantb16a76ee3c1cea4be786e7411837423af4172fb8829aa01ed152a4205263369f.lean/declarations/estimate-of-actual-xi-plain-pairing--2195be1aed61c112daa6d891.md) | 185 | `result-track:2195be1aed61c112daa6d891b304aeca8ea8c46bf25e34cc5b5cd176d1ec5fbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
