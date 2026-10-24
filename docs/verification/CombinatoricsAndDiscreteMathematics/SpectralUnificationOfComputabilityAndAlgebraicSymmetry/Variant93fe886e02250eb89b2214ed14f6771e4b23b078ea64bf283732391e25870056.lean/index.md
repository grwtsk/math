# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "002466182e0de7474a2fc4541f031b3d45d1afd6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `002466182e0de7474a2fc4541f031b3d45d1afd6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusDiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/mobiusdiagonal--7233ffe294cee957945f2103.md) | 22 | `declaration-track:7233ffe294cee957945f210345ab6c461fc715f89f247ae7d14b6978a17eaa6f` |
| 2 | `def` | [logDiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/logdiagonal--f28b4fea30c68987946aca0c.md) | 26 | `declaration-track:f28b4fea30c68987946aca0cbcb1bf6b76c44968ce23a20bd9a7749ab1954c7f` |
| 3 | `theorem` | [mobiusDiagonal_one_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/mobiusdiagonal-one-le--d42446fa6cde99f61855f25f.md) | 29 | `result-track:d42446fa6cde99f61855f25f34137165a21e161887febdc6e3a92de1125c448c` |
| 4 | `theorem` | [logDiagonal_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/logdiagonal-nonneg--622ea5917243eb157d721783.md) | 37 | `result-track:622ea5917243eb157d7217836d57ab655f3477ffdd0568c1ef9a686937f9cf22` |
| 5 | `theorem` | [logDiagonal_harmonic_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/logdiagonal-harmonic-lower--3274dd0704512b67dfca4d51.md) | 41 | `result-track:3274dd0704512b67dfca4d518d2e9b3d6516d5eeea62c6d1259a7b03a2e2e815` |
| 6 | `theorem` | [logDiagonal_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/logdiagonal-log-lower--b9d1f4bf09b0ba2461c1132f.md) | 71 | `result-track:b9d1f4bf09b0ba2461c1132fcad20ba05623987eeb522981cb7b2ec1f58b2729` |
| 7 | `theorem` | [logDiagonal_source_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/logdiagonal-source-lower--cd97fa92ac8ab031e0fda486.md) | 78 | `result-track:cd97fa92ac8ab031e0fda486d6c5465bf7c05b786ca23fec41e862e86d47a3fb` |
| 8 | `theorem` | [diagonal_budget_source_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/diagonal-budget-source-lower--53022e832059c06862739f6d.md) | 90 | `result-track:53022e832059c06862739f6d3545c08687c8beac31c3f732df2fd379edd667c6` |
| 9 | `theorem` | [no_diagonal_budget_tail_upper_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean/declarations/no-diagonal-budget-tail-upper-bound--2d7f0b167976d93fd203853b.md) | 102 | `result-track:2d7f0b167976d93fd203853bb4a5b0348cfaa84c83a32be2bf4f2f4e08131f35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
