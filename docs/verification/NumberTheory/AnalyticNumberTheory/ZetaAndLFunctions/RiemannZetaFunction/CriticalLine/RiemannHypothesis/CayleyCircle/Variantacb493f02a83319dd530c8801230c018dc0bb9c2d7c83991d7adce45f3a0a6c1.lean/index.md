# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CayleyCircle.Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4c681eea715c98b8f438a3d163251e323a9eccc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4c681eea715c98b8f438a3d163251e323a9eccc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cayley](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/cayley--b85acc08bd2562a9c6d8d79d.md) | 29 | `declaration-track:b85acc08bd2562a9c6d8d79d7680f80c96957cf53483298102d85bf37df3765c` |
| 2 | `theorem` | [normSq_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/normsq-difference--d4970cda9526d22150fd8a0b.md) | 32 | `result-track:d4970cda9526d22150fd8a0b2f52bdc0e493c5b7ff8f80572236b7e5dc8587a4` |
| 3 | `theorem` | [denominator_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/denominator-pos--f7a81be1dfda17d419404fa4.md) | 39 | `result-track:f7a81be1dfda17d419404fa43fd0efdd18b02cec957bc64239c0a9aa865c36bf` |
| 4 | `theorem` | [normSq_defect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/normsq-defect--83b5001a1c42193bacdd89a6.md) | 45 | `result-track:83b5001a1c42193bacdd89a6d9d1807c73fb5abd70a9f0134e4f82195383d951` |
| 5 | `theorem` | [normSq_eq_one_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/normsq-eq-one-iff--65a7aa02b569ba6385f71ac4.md) | 53 | `result-track:65a7aa02b569ba6385f71ac4fbfa15e3b07a5e44c737d36013b339098b425441` |
| 6 | `theorem` | [norm_eq_one_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/norm-eq-one-iff--a5dd3255550be7ea456ec006.md) | 68 | `result-track:a5dd3255550be7ea456ec00635deed6e2c024d24aa08b8ad7579908e722dc86a` |
| 7 | `theorem` | [normSq_lt_one_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/normsq-lt-one-iff--bdb116fbf1a7e5910a4f47eb.md) | 79 | `result-track:bdb116fbf1a7e5910a4f47eba7405e37bbbea206fd676d4e59d20ea8ff45fecf` |
| 8 | `theorem` | [criticalReflection_transport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/criticalreflection-transport--fce603da00583b3109074792.md) | 94 | `result-track:fce603da00583b310907479277107e529133545ee5d44ee3b6fe9950da80c102` |
| 9 | `def` | [ZeroImagesOnCircle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/zeroimagesoncircle--938bc1c7a0ac4987a3519504.md) | 99 | `declaration-track:938bc1c7a0ac4987a35195049b77705ec59807d714fe9675d82cf26b50b314f9` |
| 10 | `theorem` | [rh_iff_zeroImagesOnCircle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/rh-iff-zeroimagesoncircle--228d9963aa2b00e386c0baeb.md) | 102 | `result-track:228d9963aa2b00e386c0baeb949839cc71408694c2250ccfbb20ad4d257140ef` |
| 11 | `def` | [trivialLocation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/triviallocation--9d6f0cb433a9466c86fdcdb2.md) | 110 | `declaration-track:9d6f0cb433a9466c86fdcdb2c16f49d8d6f1e21d72c6164636b600cb6b083d00` |
| 12 | `theorem` | [trivialLocation_is_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/triviallocation-is-zero--e74511849221d5c70d8b02fd.md) | 113 | `result-track:e74511849221d5c70d8b02fd59afb9f2fd4e6c8b3c49843521a29fa86fa94190` |
| 13 | `def` | [trivialDenominator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/trivialdenominator--94bed95dc4fdee7178830a8c.md) | 117 | `declaration-track:94bed95dc4fdee7178830a8cb00f2f6050c22b0cb7a8b98cb4157e30fc5be517` |
| 14 | `theorem` | [trivialLocation_image](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/triviallocation-image--80cb1a9da98ac44232d38384.md) | 120 | `result-track:80cb1a9da98ac44232d38384105a12af9ace2df734f19ff3987ae086b2313de5` |
| 15 | `theorem` | [trivialLocation_inside](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/triviallocation-inside--f1e2c6f353fe5d8118d291d2.md) | 140 | `result-track:f1e2c6f353fe5d8118d291d2d07b054fef8ace1479efd7acfc0c7f8f2d6e60d2` |
| 16 | `theorem` | [trivialDenominator_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/trivialdenominator-tendsto--2076b463753ccebdde38ef75.md) | 151 | `result-track:2076b463753ccebdde38ef75a69e83aec34ceb3aa4ecdc744dd70335f4ad4011` |
| 17 | `theorem` | [trivialLocation_image_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variantacb493f02a83319dd530c8801230c018dc0bb9c2d7c83991d7adce45f3a0a6c1.lean/declarations/triviallocation-image-tendsto--bacb4e931ef3db1094af7339.md) | 161 | `result-track:bacb4e931ef3db1094af7339c3be3e45382cfb732aa49dfec032b3b937633458` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
