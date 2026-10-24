# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPoleBeforeInventory.Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5195fa17e5a6f7b5a0020cfa7e6183f984349ba8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5195fa17e5a6f7b5a0020cfa7e6183f984349ba8`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/zetapolefactor--3825cf5fc1ed09638575f33a.md) | 19 | `declaration-track:3825cf5fc1ed09638575f33a05f058cea0337ff1545cc0b8bd74025ce5286aaa` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/zetapolefactor-zero--709d4d016c68cb9301099b36.md) | 21 | `result-track:709d4d016c68cb9301099b36574383e483693a8654bced642c79233401f0b279` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/zetapolefactor-off--19d99ddcebd7e64473988552.md) | 24 | `result-track:19d99ddcebd7e64473988552d15829e8f32c50ef8cf16260234fc9d149099028` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/zetapolefactor-limit--50ac9b8ca56826c6edbe82bd.md) | 28 | `result-track:50ac9b8ca56826c6edbe82bdaba7a1b7afa1b61821e732ea8ecea6bc00fbe380` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/zetapolefactor-analyticat-zero--ee9f8258ce25bc10cbf6c3b7.md) | 43 | `result-track:ee9f8258ce25bc10cbf6c3b73578b059af1139d5e6663f316121fb4403696715` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/reciprocalzeta--c532319f20fcba666001c4df.md) | 56 | `declaration-track:c532319f20fcba666001c4dfdef0da20e44113b68bac84241b00f832df9ddea0` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/reciprocalzeta-zero--a3cef06554a8d95cc81eef39.md) | 58 | `result-track:a3cef06554a8d95cc81eef3960d63a7ea6ab9fdc4c01649fb024e742bf901dc5` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/reciprocalzeta-off--55a917d7bd6099c799ccdf64.md) | 61 | `result-track:55a917d7bd6099c799ccdf64b8618cda5628bb582cad254690efa0300510e7ad` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/reciprocalzeta-eq-div-factor--517f70f4f4a5813dc702f290.md) | 65 | `result-track:517f70f4f4a5813dc702f290b6f1218e73b5df219d0804b1fbe8f0b8e2dfab2b` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/reciprocalzeta-analyticat-zero--273c6eaef26a9f4b5368680f.md) | 72 | `result-track:273c6eaef26a9f4b5368680fa42a8bb18ac642a9c831a1529b126a064c46d3d6` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/reciprocalzeta-hasderivat-zero--4dcb08e3c4473f9573915403.md) | 78 | `result-track:4dcb08e3c4473f9573915403eb6bffa33ae669561a1f05da4aa119d6bf535b10` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/reciprocalzeta-eventually-ne-zero--e2078c5c6c6ea0e0e7b9913c.md) | 86 | `result-track:e2078c5c6c6ea0e0e7b9913c87e8f7550c45ab3ecc2e62058a1f09477918929f` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/smoothedperronintegrand--e31b67364d9bcd0565e68b2e.md) | 97 | `declaration-track:e31b67364d9bcd0565e68b2e570df71e8d7641438a69547f3b42b3b6d980252b` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/smoothedperronintegrand-factor--d636c5b985ec3cad58fb0b11.md) | 100 | `result-track:d636c5b985ec3cad58fb0b11b6f3a2eedb2f975d3750333814bbfe626a72c3bd` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/perronnumerator-analyticat-zero--ce380af8bf3a3335991abf97.md) | 108 | `result-track:ce380af8bf3a3335991abf97dcde8c850b956a971f25382dab84daab132f4c73` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/smoothedperronintegrand-meromorphicat-zero--2436d899dc8f89655d4f9837.md) | 117 | `result-track:2436d899dc8f89655d4f9837a6ce6c4cfe90dd19ed749bd9dad180a311ffcf9f` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/smoothedperronintegrand-order-zero--4fd155bf1f252c69ca706189.md) | 124 | `result-track:4fd155bf1f252c69ca706189f04441fa163890659f7fb978808618c9b31d999a` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/smoothedperronintegrand-residue-limit--127b11dd3ff971f0f98ab81b.md) | 134 | `result-track:127b11dd3ff971f0f98ab81bd205c2843dcdb36a595dc67388d8d40749577e23` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleBeforeInventory/Variantb734262b919cd6d6bafb892767dd948a45eb144929c97f754f58e492bbc7cc84.lean/declarations/smoothedperronintegrand-residue-one--1277f48e75fbdc61263d03b8.md) | 145 | `result-track:1277f48e75fbdc61263d03b8b47255fc59d0b3242de928c13a26e7de41eab536` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
