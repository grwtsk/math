# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PenroseDiagram.Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fde6130461a8e7484412e172ed82dde54095684e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fde6130461a8e7484412e172ed82dde54095684e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiagramProps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/diagramprops--9ce40c392285dc3c1d5c3d88.md) | 18 | `declaration-track:9ce40c392285dc3c1d5c3d88f72e90d29853365203854da698fcc0068b8f7560` |
| 2 | `def` | [Diagram](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/diagram--545580b4d81d123ef74095d6.md) | 52 | `declaration-track:545580b4d81d123ef74095d6b3b182d303aa142905af6f25c108307ff0b29d5c` |
| 3 | `structure` | [DiagramState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/diagramstate--56b90d632c22ebb30b5b9b89.md) | 57 | `declaration-track:56b90d632c22ebb30b5b9b89f97de8230599f29576270131049601da1732e4a1` |
| 4 | `abbrev` | [DiagramBuilderM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/diagrambuilderm--eefafe800d4d79d1271babd2.md) | 66 | `declaration-track:eefafe800d4d79d1271babd26fbb95661434a95ffd5e20c65d85d5f84d13f1fc` |
| 5 | `def` | [buildDiagram](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/builddiagram--bd6a071ac4b41fa84058d4f5.md) | 74 | `declaration-track:bd6a071ac4b41fa84058d4f5b6aa9302c2c56071fb3c6fe52537f7f4437cb6c3` |
| 6 | `def` | [addEmbed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/addembed--c009ad14656d10bdca55a552.md) | 92 | `declaration-track:c009ad14656d10bdca55a5525d1ee416a3eb76a4e842ef2e7e647bd3cd5ad54e` |
| 7 | `def` | [addExpr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/addexpr--23441ae1bbd383c5db3a74e5.md) | 100 | `declaration-track:23441ae1bbd383c5db3a74e56531f9c885a53665def0dbc83f02bb12c4d3ab46` |
| 8 | `def` | [addInstruction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/addinstruction--f5827c8b89b30df933db7a81.md) | 107 | `declaration-track:f5827c8b89b30df933db7a8145d4707c454bfec110fdc02370865e2289bc6a22` |
| 9 | `def` | [run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/run--9003032d54724489f466e892.md) | 110 | `declaration-track:9003032d54724489f466e8924b3cadcbca1a03d99f2dc2a325a91b2f3a1a7440` |
| 10 | `abbrev` | [PenroseDiagramProps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/penrosediagramprops--5380056f7e96273afbaf3dea.md) | 117 | `declaration-track:5380056f7e96273afbaf3dea18ed3eb5de19cc34feb5e1699e74b5d16e9f311f` |
| 11 | `abbrev` | [PenroseDiagram](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc.lean/declarations/penrosediagram--cee82aa561720e7c1e9d2d89.md) | 119 | `declaration-track:cee82aa561720e7c1e9d2d89fc9646d87fca39a6c2444bb25975f9e5bd58bf55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
