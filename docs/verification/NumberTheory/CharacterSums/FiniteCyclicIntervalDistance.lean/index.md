# Verification target: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d78497f8a1cdadee5da6a0b4a8083b3c97ab008",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d78497f8a1cdadee5da6a0b4a8083b3c97ab008`.

Source path: `GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.CharacterSums.FiniteCyclicInterval`](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCyclicCircularDistance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/finitecycliccirculardistance--3d3e74e5066d88c5bff2452c.md) | 31 | `declaration-track:3d3e74e5066d88c5bff2452c679b5a2bf9d642f0d49873d53cc26e80297b3ec0` |
| 2 | `theorem` | [finiteCyclicCircularDistance_eq_zero_iff](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/finitecycliccirculardistance-eq-zero-iff--2003ea586a607334e37f882e.md) | 36 | `result-track:2003ea586a607334e37f882ee9f84f9864f9ab4646077e7905a35555319d686f` |
| 3 | `theorem` | [finiteCyclicCircularDistance_two_mul_le](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/finitecycliccirculardistance-two-mul-le--dca6e7f06dbeae1ef87b4a79.md) | 53 | `result-track:dca6e7f06dbeae1ef87b4a7952d7bea9a6410a10f8ad9265e2b14e48c6b4199c` |
| 4 | `theorem` | [finiteCyclic_stdAddChar_sub_one_norm_neg](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/finitecyclic-stdaddchar-sub-one-norm-neg--3c970c08a38930b7bafe2acf.md) | 70 | `result-track:3c970c08a38930b7bafe2acfaac948d4d16e720b2b5e0d8edd741e010deabfc6` |
| 5 | `theorem` | [finiteCyclic_stdAddChar_sub_one_norm_eq_valSine](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/finitecyclic-stdaddchar-sub-one-norm-eq-valsine--fd545d6350cc0c357b54c5b1.md) | 86 | `result-track:fd545d6350cc0c357b54c5b1268379b4016bf7c42118874f92fcaa9fb4a1ae7a` |
| 6 | `theorem` | [norm_stdAddChar_sub_one_eq_sineCircularDistance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/norm-stdaddchar-sub-one-eq-sinecirculardistance--655bdec21ae19bb110f048ca.md) | 103 | `result-track:655bdec21ae19bb110f048ca45f5a0cb57e6e2e56be7dee8ff9b55a3b4080911` |
| 7 | `def` | [finiteCyclicJordanLowerScale](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/finitecyclicjordanlowerscale--fa20bc09e35189b66710dc7c.md) | 117 | `declaration-track:fa20bc09e35189b66710dc7c5ff5031356953d99595f46eb5c3968932d3f1fce` |
| 8 | `theorem` | [finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/finitecyclicjordanlowerscale-le-norm-stdaddchar-sub-one--acf494488ba47ccd5e040bcf.md) | 122 | `result-track:acf494488ba47ccd5e040bcf02ffd5bd222c7856cc7f160323956a6252431847` |
| 9 | `theorem` | [norm_inv_stdAddChar_sub_one_le_circularDistance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/norm-inv-stdaddchar-sub-one-le-circulardistance--0c21a02c8c735061f492529b.md) | 169 | `result-track:0c21a02c8c735061f492529bf37b3fe90a4f3f5c71f504cd5c5bec57521266f4` |
| 10 | `theorem` | [norm_sum_stdAddChar_neg_Ico_le_circularDistance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/norm-sum-stdaddchar-neg-ico-le-circulardistance--8afbe34d06874eb025ec4437.md) | 198 | `result-track:8afbe34d06874eb025ec44375946cd2c6db990d72a64dffa2cb2a76a1e9bf6c1` |
| 11 | `theorem` | [norm_sum_stdAddChar_neg_Ico_le_regularCutoff](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/declarations/norm-sum-stdaddchar-neg-ico-le-regularcutoff--d981f1a2e0130b85a7aef13a.md) | 224 | `result-track:d981f1a2e0130b85a7aef13a8ee9e9f1a7a973b5c7b7113e93e6867d928e2846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
