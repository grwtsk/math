# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticDecayAttempt03.Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0755738c8340bdda40c965299a618f9c8c1c5010",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0755738c8340bdda40c965299a618f9c8c1c5010`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MangoldtLaplaceIntegrability` — import line 6; external provider; requires a separately pinned dependency.
- `ActualPrimeIntercept` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RawMangoldtDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/rawmangoldtdecay--c322c4c95e7d34516c776b10.md) | 27 | `declaration-track:c322c4c95e7d34516c776b1026e8ffd08b1d864320f9ff1499e67d72ec6b9e7b` |
| 2 | `def` | [RawPrimeDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/rawprimedecay--c4fba07b1ca404d3ae5e79d5.md) | 31 | `declaration-track:c4fba07b1ca404d3ae5e79d56f51216de6d5df11711535223eb200daf55d4753` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/inverse-square-integrable--1c4823c0bcfcf58d1516964f.md) | 34 | `result-track:1c4823c0bcfcf58d1516964f9e3ea9bad53a6c2c37cac3ece9ec24034713e4e0` |
| 4 | `theorem` | [inverse_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/inverse-square-integral--2c552a03da92b1b01def8ba8.md) | 42 | `result-track:2c552a03da92b1b01def8ba8e1dad5b0f8a2aea390b2aee8d895ba0146a805fd` |
| 5 | `theorem` | [actual_remainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/actual-remainder-measurable--3eaf3566d0fd17c02100c7b5.md) | 51 | `result-track:3eaf3566d0fd17c02100c7b57d02098a41ee40a6cee3f58d253d76a97fa939de` |
| 6 | `theorem` | [actual_remainder_integrable_near_origin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/actual-remainder-integrable-near-origin--eb844e86f6cdfa1814a1b4d7.md) | 55 | `result-track:eb844e86f6cdfa1814a1b4d7a081ef2b20465b524d8d6820d91941e6656106d1` |
| 7 | `theorem` | [actual_remainder_integrable_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/actual-remainder-integrable-tail--193f10e13a119c0d8330295f.md) | 65 | `result-track:193f10e13a119c0d8330295fc90aacb0a5f49d2255b0c507213b8f1ff2aac9fa` |
| 8 | `theorem` | [actual_remainder_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/actual-remainder-integrable--6609f2ca2396f85eda50bd5e.md) | 73 | `result-track:6609f2ca2396f85eda50bd5ee71ecbf3c7e5524a4e60576a0ed0e7fa9da3c09d` |
| 9 | `theorem` | [raw_prime_decay_of_mangoldt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/raw-prime-decay-of-mangoldt--f431eca1bea574965fbcf0ab.md) | 91 | `result-track:f431eca1bea574965fbcf0ab7e1d10482dac4f7319b14f7a5205211ef5f0ae42` |
| 10 | `theorem` | [actual_prime_remainder_integrable_of_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/actual-prime-remainder-integrable-of-decay--4ee6ac0598cb34a531f7d168.md) | 107 | `result-track:4ee6ac0598cb34a531f7d16842ef6edd733609303403a840da7ac37809489bd5` |
| 11 | `theorem` | [tail_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/tail-norm-bound--83b115b9cfd9684bad1913f0.md) | 112 | `result-track:83b115b9cfd9684bad1913f099f421d6b06de0917a6e4e7a7633e50f2113064b` |
| 12 | `theorem` | [actual_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/actual-remainder-tail-bound--a30c1cd815309e4f4a9ef3e1.md) | 126 | `result-track:a30c1cd815309e4f4a9ef3e1e13175f1c0b18392ce7344462d97b439a9f0c64a` |
| 13 | `theorem` | [actual_prime_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant85760a3d79e64be8bf6d87af154cd91b7e4d0a653fe8b15d3688705509c73fc4.lean/declarations/actual-prime-remainder-tail-bound--c2d3d8a7b3c9222c637839e2.md) | 131 | `result-track:c2d3d8a7b3c9222c637839e207d9e5fa958c823f9f07156690b27ff32aabfec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
