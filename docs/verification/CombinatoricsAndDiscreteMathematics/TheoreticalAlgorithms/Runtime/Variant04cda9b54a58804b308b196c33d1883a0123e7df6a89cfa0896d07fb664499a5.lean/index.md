# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Runtime.Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abec9d36a75dc532bfb4b2ba35b99799c25686f9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abec9d36a75dc532bfb4b2ba35b99799c25686f9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Manifest` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Refinement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HostedCellState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean/declarations/hostedcellstate--8260b5cf48b14755997f4fe6.md) | 18 | `declaration-track:8260b5cf48b14755997f4fe6abce1a8ca0e17443e426330a3521c17bd311d667` |
| 2 | `structure` | [BoundaryDefectSummary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean/declarations/boundarydefectsummary--aa8cbe8a1ddf25299ad5f9ef.md) | 26 | `declaration-track:aa8cbe8a1ddf25299ad5f9ef5dec025c109eaaccc7cb6db2ff22df4baaa2f0c1` |
| 3 | `structure` | [CellStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean/declarations/cellstatus--c1111b8a3674cd20dd2005b2.md) | 33 | `declaration-track:c1111b8a3674cd20dd2005b2c2855818efc6786a1dc2525af57be964743e5fd4` |
| 4 | `def` | [CellStatus.BoundaryClean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5.lean/declarations/cellstatus-boundaryclean--ffa7b985225b7ffe860a5a6f.md) | 42 | `declaration-track:ffa7b985225b7ffe860a5a6f364c219217a240ab3dbc8794a0e3c466427589d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
