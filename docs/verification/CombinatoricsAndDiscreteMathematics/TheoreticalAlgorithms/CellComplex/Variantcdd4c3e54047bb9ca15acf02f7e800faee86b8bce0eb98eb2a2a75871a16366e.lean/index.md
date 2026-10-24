# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CellComplex.Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a52fb1c9fdbfe7f44514ced4c4f6f532fde028b0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a52fb1c9fdbfe7f44514ced4c4f6f532fde028b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticGeometry.AngleRatio` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteCellComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/declarations/finitecellcomplex--0b9d80bce241e22dc30506b0.md) | 33 | `declaration-track:0b9d80bce241e22dc30506b0154d0bb419908b6fd65126d7dc1e4350236abc90` |
| 2 | `structure` | [Chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/declarations/chain--56ebd04706323d031e2eb908.md) | 43 | `declaration-track:56ebd04706323d031e2eb9085716fb938c8529014edecc5bfef0a687dd96312e` |
| 3 | `def` | [Chain.boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/declarations/chain-boundary--9c9836d84d91cfb60bbe531d.md) | 47 | `declaration-track:9c9836d84d91cfb60bbe531d73eb94fb293dbab6d105de9b6eb6aca82dae78e6` |
| 4 | `structure` | [ClosedChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/declarations/closedchain--b9df7f165e481401634981ed.md) | 60 | `declaration-track:b9df7f165e481401634981ed4bbd4921a5cfb010811c620b833f2e983b58313b` |
| 5 | `structure` | [NonBoundaryChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/declarations/nonboundarychain--1c7b59108421ed71c75df74b.md) | 68 | `declaration-track:1c7b59108421ed71c75df74b11c5ade86b38f7fba134406d975d31ddbfc8783d` |
| 6 | `structure` | [HomologyClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/declarations/homologyclass--d2a8595b008291169709b1fc.md) | 77 | `declaration-track:d2a8595b008291169709b1fc613b62cefe850385678aff527015d8dd40bfe055` |
| 7 | `theorem` | [homologyClass_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CellComplex/Variantcdd4c3e54047bb9ca15acf02f7e800faee86b8bce0eb98eb2a2a75871a16366e.lean/declarations/homologyclass-sound--1ca3f4e2c2778b2ba374fd82.md) | 86 | `result-track:1ca3f4e2c2778b2ba374fd821235e0bdf38c28e2a8dbdd46f8553870c5c87ab1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
