# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ActualPositiveCount.Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24e9a0fae70f158e8b1c83e96d4b03f190da1922",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24e9a0fae70f158e8b1c83e96d4b03f190da1922`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.LocalCount` — import line 1; external provider; requires a separately pinned dependency.
- `CountWindow` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.
- `LogarithmicTail` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositiveOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/positiveoccurrences--6473c5b899bf71337972b4ea.md) | 19 | `declaration-track:6473c5b899bf71337972b4ea5098e4e4702d91ac4c12d14d5593beed9d56f7d4` |
| 2 | `def` | [WindowOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/windowoccurrences--c6d272ee41a3e19a23e8db8f.md) | 22 | `declaration-track:c6d272ee41a3e19a23e8db8fdcc104dfa5f024117b18eba694973b7c31c29351` |
| 3 | `def` | [occurrenceEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/occurrenceequiv--ddbe011835108692a2735934.md) | 25 | `declaration-track:ddbe011835108692a2735934008f4eb1f351eef3589463ab228d032a89f59126` |
| 4 | `theorem` | [positiveOccurrences_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/positiveoccurrences-finite--c412b1b4bac0c4ffe7d0d9f6.md) | 33 | `result-track:c412b1b4bac0c4ffe7d0d9f6348cfc805d1fa20823f45a71565c398c59acc01c` |
| 5 | `theorem` | [occurrence_card_eq_Ncount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/occurrence-card-eq-ncount--24b7d20616d21a0678fea93b.md) | 39 | `result-track:24b7d20616d21a0678fea93b0c0e0b90913d3b0ed050bd7a8115325ea7c1c274` |
| 6 | `theorem` | [Ncount_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/ncount-same--af40526542e9901795d44cbc.md) | 52 | `result-track:af40526542e9901795d44cbc1aa787c1c7c8cc096bf7b680e34801721b3140e2` |
| 7 | `theorem` | [cumulative_nat_of_unit_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/cumulative-nat-of-unit-bound--97771ec6ee993291246f53a6.md) | 60 | `result-track:97771ec6ee993291246f53a6bdf5e976d04963bf4da8123a663e4a043e1f0774` |
| 8 | `theorem` | [cumulative_real_of_unit_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/cumulative-real-of-unit-bound--81f141eea5f8274f2fda6546.md) | 82 | `result-track:81f141eea5f8274f2fda6546e46aaf1d54b5dbf484c0f9c1522839272198e723` |
| 9 | `theorem` | [actual_Ncount_logarithmic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/actual-ncount-logarithmic--b4e653c4f3c19cb4c9be36bb.md) | 113 | `result-track:b4e653c4f3c19cb4c9be36bb788e2aff16206a3849265aa473f5452017b18e28` |
| 10 | `theorem` | [actual_occurrence_count_logarithmic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/actual-occurrence-count-logarithmic--273adcb4648fa4d9aa529175.md) | 120 | `result-track:273adcb4648fa4d9aa52917574568038f4378bf5ef0e78a5ce27582e60a3c943` |
| 11 | `theorem` | [positiveCount_eq_Ncount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/positivecount-eq-ncount--91dfe20f7e53bfe1408f9008.md) | 125 | `result-track:91dfe20f7e53bfe1408f9008e84c2fa0b6438de35b167a906a745dc03db6da46` |
| 12 | `theorem` | [actual_positiveCountBound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/declarations/actual-positivecountbound--78b3fd51fc4413298288a03c.md) | 130 | `result-track:78b3fd51fc4413298288a03c74ba26544566552a21e4f061a210f95d7c2b4c37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
