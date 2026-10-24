# Verification target: GRWTSK.Topology.AlgebraicTopology.BranchSeamCell.Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db2b5e986f78c865cea11b45842e8aab2f2bc8ea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db2b5e986f78c865cea11b45842e8aab2f2bc8ea`.

Source path: `GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Core.ComplexAnalysis.RectangleContour` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientOneForm](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/declarations/coefficientoneform--e7f5d5e57467c9273206d714.md) | 33 | `declaration-track:e7f5d5e57467c9273206d7141b12c42726c18798d02181a6bc1a121f7cbdbb4c` |
| 2 | `theorem` | [curveIntegral_coefficientOneForm_homotopy](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/declarations/curveintegral-coefficientoneform-homotopy--8c5cd52b916aabe27fd3f82c.md) | 37 | `result-track:8c5cd52b916aabe27fd3f82cdc1136e0784211c0c3de142f9e84a91887158cf4` |
| 3 | `theorem` | [four_seam_cells_cancel](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/declarations/four-seam-cells-cancel--ecda937b34fb1a7a6c24c74e.md) | 79 | `result-track:ecda937b34fb1a7a6c24c74e0e3bf46afe47fed345d6e88d50e97d4be6a67672` |
| 4 | `theorem` | [coefficientOneForm_curveIntegral_segment](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/declarations/coefficientoneform-curveintegral-segment--b961093272444f35fe04c238.md) | 151 | `result-track:b961093272444f35fe04c238e500d362cce7ba6ad38ef560ec972845e38d37da` |
| 5 | `theorem` | [coefficientOneForm_curveIntegral_add_reverse_eq_zero](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant318c42bbda726259d39bce920c1dd6948eeaeaf569b27f38c54d35b93a58b311.lean/declarations/coefficientoneform-curveintegral-add-reverse-eq-zero--71c59e4c9d2536ea0e45e775.md) | 161 | `result-track:71c59e4c9d2536ea0e45e7750513cfc29e27e2d4063e52a074de0e2c7eb12a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
