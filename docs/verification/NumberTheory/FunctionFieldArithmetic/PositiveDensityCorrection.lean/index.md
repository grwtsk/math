# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.PositiveDensityCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16f0355f3d892208825765ad0b05560b40590944",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16f0355f3d892208825765ad0b05560b40590944`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebiusCorrection`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_moebius_function_multiplicative](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-moebius-function-multiplicative--060f08e9f133b2d0fb66f3f8.md) | 21 | `result-track:060f08e9f133b2d0fb66f3f83314e8a1d1c953d7691aa4b0e38bd11820fb80dc` |
| 2 | `theorem` | [density_moebius_correction_multiplicative](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-moebius-correction-multiplicative--184467899daea32bce6a96fd.md) | 27 | `result-track:184467899daea32bce6a96fd9b1dc02f297270f113eb86eff1b25a8999a4ce65` |
| 3 | `theorem` | [density_coefficient_prime_power](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-coefficient-prime-power--e5c053c89bb299ff5f44af3b.md) | 31 | `result-track:e5c053c89bb299ff5f44af3b6f1ac8d4ff4cb9ea5f106b210d3d59506763e719` |
| 4 | `theorem` | [density_moebius_correction_prime_power](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-moebius-correction-prime-power--af91639b57ac30a97deec6f3.md) | 39 | `result-track:af91639b57ac30a97deec6f3fe66d9fd831ecc65b3bbe9294eada7135a591b24` |
| 5 | `theorem` | [density_moebius_correction_bounds](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-moebius-correction-bounds--18ae8af8ebf48966fc88e693.md) | 54 | `result-track:18ae8af8ebf48966fc88e693e21f30ecd712a801d3f11d00c926267fcc01cb61` |
| 6 | `theorem` | [density_moebius_correction_nonneg](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-moebius-correction-nonneg--92699c80bfd9063ee3c08ca9.md) | 71 | `result-track:92699c80bfd9063ee3c08ca9eccd7776ab75b6d0fcf3843cc670de00606c6c66` |
| 7 | `theorem` | [density_moebius_correction_le_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-moebius-correction-le-one--a8fda366765ca108914f45a3.md) | 74 | `result-track:a8fda366765ca108914f45a37412ffbf232d2dadf1ad26b6ce62e7e7794d9321` |
| 8 | `theorem` | [density_moebius_correction_pos](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/declarations/density-moebius-correction-pos--1da97598fc575107ef9df66e.md) | 78 | `result-track:1da97598fc575107ef9df66e0531f02290f33fe76447eaba638b3300a009ed7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
