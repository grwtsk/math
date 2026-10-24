# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Metric.Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "346936d4cc8b82ff10777c43859cd99dc6426362",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `346936d4cc8b82ff10777c43859cd99dc6426362`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Bitfield` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/positiveweights--ba6e08f5010fc2bb1dcfb61a.md) | 18 | `declaration-track:ba6e08f5010fc2bb1dcfb61a0842df0d6fed5ede09e3bc20db94e7cff2fdd3e6` |
| 2 | `def` | [weightedHamming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/weightedhamming--18dd63c8f7679cd2fce035d8.md) | 22 | `declaration-track:18dd63c8f7679cd2fce035d88f3a3abe35226a127abe1712daf7745856ee08fd` |
| 3 | `theorem` | [weightedHamming_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/weightedhamming-nonnegative--1e33bf63679bc563340843ee.md) | 31 | `result-track:1e33bf63679bc563340843ee957db4a9a2dcb9907a3dcc7707d0f0631358d842` |
| 4 | `theorem` | [weightedHamming_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/weightedhamming-self--f25edbd86c3e808293fba255.md) | 43 | `result-track:f25edbd86c3e808293fba2554a43c3d7663551053ac98f26971a86c5c5cb591c` |
| 5 | `theorem` | [weightedHamming_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/weightedhamming-symmetric--c97f931e00952433544badeb.md) | 50 | `result-track:c97f931e00952433544badeb35219b3b448dfd7d966d0649b5af267869781ad0` |
| 6 | `theorem` | [weightedHamming_triangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/weightedhamming-triangle--15d3f13d767efbae17abb9c3.md) | 64 | `result-track:15d3f13d767efbae17abb9c3c0fa63aae7c7d2b1505caf679bd9b31d0affa437` |
| 7 | `theorem` | [weightedHamming_separates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/weightedhamming-separates--481414cc46d96f5db4574c1c.md) | 82 | `result-track:481414cc46d96f5db4574c1c1cff1eac5697b52d3c56af889b87e02f897af928` |
| 8 | `structure` | [PseudometricData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/pseudometricdata--b2d482b672d49a22ecaffb3a.md) | 118 | `declaration-track:b2d482b672d49a22ecaffb3a6a6e10a6c4b8b0d60058f40e26835a19a1abc4a2` |
| 9 | `def` | [ZeroDistance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/zerodistance--fc1ebc0765f206d8e36e5ff6.md) | 128 | `declaration-track:fc1ebc0765f206d8e36e5ff671685d784ea19ddbaf1dd6202858cac1ceff445d` |
| 10 | `theorem` | [zeroDistance_equivalence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/zerodistance-equivalence--9c476304de9a5fc27c7466a7.md) | 134 | `result-track:9c476304de9a5fc27c7466a71e009c78fc81d38d68ffa0421ce75a976da60ebd` |
| 11 | `def` | [zeroDistanceSetoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/zerodistancesetoid--bf8b68486fcdbe677266bdd8.md) | 148 | `declaration-track:bf8b68486fcdbe677266bdd8c53274348db4d8b2bc96af4c31e498da13eab7a8` |
| 12 | `abbrev` | [SeparatedQuotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/separatedquotient--be1d646f07d2a2eb2d37eb47.md) | 155 | `declaration-track:be1d646f07d2a2eb2d37eb47d8fa3c1593697a3d2c7a4f2ebcf465456ac78b05` |
| 13 | `theorem` | [quotient_identifies_exactly_zero_distance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/quotient-identifies-exactly-zero-distance--dac9ddf140f299d240e02d15.md) | 160 | `result-track:dac9ddf140f299d240e02d15885ad522e2318e5e44e0ec8e86a234f0eb381e2c` |
| 14 | `def` | [Separated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/declarations/separated--ba7b0343fe4d5abd576cfebe.md) | 169 | `declaration-track:ba7b0343fe4d5abd576cfebeb6861cf5dd0742b954d17afe666e51d6a2ec808f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
