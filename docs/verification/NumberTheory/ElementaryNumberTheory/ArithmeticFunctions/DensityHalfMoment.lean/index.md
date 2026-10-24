# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfMoment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfPrimeFactor`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.EulerProduct.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityCorrectionHalf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/densitycorrectionhalf--b8a9d97c94848dc7108678cb.md) | 21 | `declaration-track:b8a9d97c94848dc7108678cb2a2cf1981efb9019fa1385d8f434c79c7b4bc972` |
| 2 | `def` | [reciprocalThreeHalf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/reciprocalthreehalf--01e15890da53554426648ed4.md) | 23 | `declaration-track:01e15890da53554426648ed44843453832a8f044242e8beae89c8e77b552adb7` |
| 3 | `theorem` | [density_half_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-nonneg--ea81c859ac63cfd3629c31ac.md) | 25 | `result-track:ea81c859ac63cfd3629c31ac5575d6ea37012e7db105b1df7943250710086db4` |
| 4 | `theorem` | [density_half_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-one--0e9bb161c089f70c361a714d.md) | 28 | `result-track:0e9bb161c089f70c361a714dff0019670cb5d2cae082b25dfbda1f2126566b68` |
| 5 | `theorem` | [density_half_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-mul--e87e896b6c85940a2234344e.md) | 31 | `result-track:e87e896b6c85940a2234344e55991be83b4ea8fd33a878b14229ec8d7298f883` |
| 6 | `theorem` | [density_half_sqrt_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-sqrt-pow--58bea8e5f05a22e45af9becb.md) | 37 | `result-track:58bea8e5f05a22e45af9becb73a4c4605c61a8ecaa36aae8364598fe4b292fd5` |
| 7 | `theorem` | [density_half_prime_hasSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-prime-hassum--24ff7f5570daaf0bcd35c646.md) | 43 | `result-track:24ff7f5570daaf0bcd35c6461b3dee59121f0cc5b05c2bd0b55dedb9cbb54e75` |
| 8 | `theorem` | [reciprocal_three_half_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/reciprocal-three-half-summable--04dd3a116f63786f5b13e893.md) | 54 | `result-track:04dd3a116f63786f5b13e8935f10739b1cb649a054df8c3bc9808fb08f284753` |
| 9 | `theorem` | [reciprocal_three_half_sqrt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/reciprocal-three-half-sqrt--c37b07fd77a54173d0189044.md) | 57 | `result-track:c37b07fd77a54173d0189044da61ab23b2820581d96737036e0f15f0a50d16c7` |
| 10 | `theorem` | [density_half_prime_mass_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-prime-mass-le--306bc4dd7d3d1f17b0e2f3f1.md) | 68 | `result-track:306bc4dd7d3d1f17b0e2f3f156048f9f345645616e7e1ee00ff06dc65238e89f` |
| 11 | `theorem` | [density_half_factored_hasSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-factored-hassum--348530a55c5a4770951193c8.md) | 82 | `result-track:348530a55c5a4770951193c8100bcc7419bae6622379c96f19c41b1f1446bd30` |
| 12 | `theorem` | [density_half_factored_bound](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-factored-bound--88714625c9d4d68b5867636b.md) | 96 | `result-track:88714625c9d4d68b5867636b4395dca04ab81d9b23d18dcb918eb3ee5d67165d` |
| 13 | `theorem` | [density_half_range_bound](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-range-bound--9f219e9d08cbdefbd4159e23.md) | 121 | `result-track:9f219e9d08cbdefbd4159e23310bdd3f3c57f13278a37aad2fc45a268f0da55c` |
| 14 | `theorem` | [density_half_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-summable--fbd4700ee07ca22eb5bc5f5f.md) | 148 | `result-track:fbd4700ee07ca22eb5bc5f5fa0633f1c930dd852844bb21bd5a208a7169bb8df` |
| 15 | `theorem` | [density_half_tsum_bound](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-tsum-bound--ef04445b0b71b502d4217db6.md) | 151 | `result-track:ef04445b0b71b502d4217db64128e904cda2bf5f9d19c2c752a0704adccb4f57` |
| 16 | `theorem` | [density_half_euler_hasProd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-half-euler-hasprod--27340d7c4317c9a970b3b4a9.md) | 155 | `result-track:27340d7c4317c9a970b3b4a913151f7e7efaf13096bdfe32cf9a380a27c32adc` |
| 17 | `theorem` | [density_positive_half_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/declarations/density-positive-half-summable--adb65fc01d82443c8ecc3289.md) | 168 | `result-track:adb65fc01d82443c8ecc3289ed9c39f38c592f2a5199d9e0d7238539975fd2e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
