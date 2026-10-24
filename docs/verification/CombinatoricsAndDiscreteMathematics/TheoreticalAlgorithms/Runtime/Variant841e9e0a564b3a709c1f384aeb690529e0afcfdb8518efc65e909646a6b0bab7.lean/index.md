# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Runtime.Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c657f58cc8ed117c8d8d42065bbcc1e9865557c4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c657f58cc8ed117c8d8d42065bbcc1e9865557c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Manifest` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Refinement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HostedCellState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean/declarations/hostedcellstate--f0ab63943fcfacc4927dc83f.md) | 26 | `declaration-track:f0ab63943fcfacc4927dc83f20530a0662e4b33f40f1de0a27797dc61b79e55d` |
| 2 | `structure` | [BoundaryDefectSummary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean/declarations/boundarydefectsummary--22ac19890377cdad8ea784d5.md) | 34 | `declaration-track:22ac19890377cdad8ea784d5c2917dd7dd868010420cbdfe0513ffe0baca45de` |
| 3 | `structure` | [CellStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean/declarations/cellstatus--5ec826942385fc643a2a8484.md) | 41 | `declaration-track:5ec826942385fc643a2a8484e7062f77485f9e8487925ff4da7df44e76a4d77c` |
| 4 | `def` | [CellStatus.BoundaryClean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Runtime/Variant841e9e0a564b3a709c1f384aeb690529e0afcfdb8518efc65e909646a6b0bab7.lean/declarations/cellstatus-boundaryclean--3f746a12abdb14cadccdef48.md) | 50 | `declaration-track:3f746a12abdb14cadccdef48d8f197b391946e3377e3f84836cc7f63741c4e45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
