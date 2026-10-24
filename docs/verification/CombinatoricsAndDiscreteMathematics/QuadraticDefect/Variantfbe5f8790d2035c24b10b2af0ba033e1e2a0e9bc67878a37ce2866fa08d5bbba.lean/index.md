# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.QuadraticDefect.Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9ffac11e84cb22c9c26614dbd2cc329c2e77e8d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9ffac11e84cb22c9c26614dbd2cc329c2e77e8d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MaximalDefect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/value--e898eaf1e2ea9728c6da4e69.md) | 24 | `declaration-track:e898eaf1e2ea9728c6da4e692e97308754c99aca4b696330ca77bd6a84b70351` |
| 2 | `def` | [cross](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/cross--4a492f1ef9a55db00d8013e3.md) | 28 | `declaration-track:4a492f1ef9a55db00d8013e3643ffd4eeb134fcf5b879bad41275072538608d8` |
| 3 | `theorem` | [cross_eq_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/cross-eq-sum--d22b7a16100f27c5d0357412.md) | 32 | `result-track:d22b7a16100f27c5d035741237531f5dcbe210bd2ddaf2867f960f0beddc777d` |
| 4 | `theorem` | [value_eq_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/value-eq-sum--6cfb3ca0aef4362da5159dca.md) | 39 | `result-track:6cfb3ca0aef4362da5159dca9045e8be403fc81a8f03854a7602492aadb5c7cb` |
| 5 | `theorem` | [cross_singletons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/cross-singletons--c3cc67fec51b9c71052bcab7.md) | 46 | `result-track:c3cc67fec51b9c71052bcab7414794291bfccfabd0f0efea702d1216a90268cc` |
| 6 | `theorem` | [union_inter_defect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/union-inter-defect--89187ea14090e790eb783e48.md) | 52 | `result-track:89187ea14090e790eb783e4805c4c48c146f030f9beb6ed069f734c09f8f571c` |
| 7 | `theorem` | [real_entry_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/real-entry-symm--5593195fc501468767445417.md) | 67 | `result-track:5593195fc501468767445417ff2bfcb4a408016fe7aa712ce2498049cca4a817` |
| 8 | `theorem` | [cross_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/cross-symm--0085b9c0c98ef55a0e65d529.md) | 73 | `result-track:0085b9c0c98ef55a0e65d529b5635030114d2250f23edfcee406d4826d227ac8` |
| 9 | `theorem` | [hermitian_union_inter_defect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/hermitian-union-inter-defect--89e75aefc24b5e4edf79e7ce.md) | 85 | `result-track:89e75aefc24b5e4edf79e7ce9e8fcbcc34c5e8fba77c7417658569499790fd58` |
| 10 | `theorem` | [supermodular_iff_cross_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/supermodular-iff-cross-nonneg--35ae8ebfb014ec5e6ee7b2e6.md) | 93 | `result-track:35ae8ebfb014ec5e6ee7b2e6de5fed1067280adee505d3639f07c21ded705d30` |
| 11 | `theorem` | [not_supermodular_of_negative_cross](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/not-supermodular-of-negative-cross--ecee9be99884f9f555b1afcd.md) | 109 | `result-track:ecee9be99884f9f555b1afcd62591c27687ce7a54152390401da367b2c6b56f6` |
| 12 | `theorem` | [not_supermodular_of_negative_entry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/declarations/not-supermodular-of-negative-entry--f5c84379576fd0561c861edd.md) | 117 | `result-track:f5c84379576fd0561c861edd2f578609cbd9a796e43f4fce575b3df1cb199d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
