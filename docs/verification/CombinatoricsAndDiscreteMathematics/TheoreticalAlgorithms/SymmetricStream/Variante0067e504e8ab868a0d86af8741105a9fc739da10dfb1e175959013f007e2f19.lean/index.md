# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SymmetricStream.Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aac3879a4909cb817596a2fc479e39a725141b75",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aac3879a4909cb817596a2fc479e39a725141b75`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.RuleEngine` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrixStream` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SymmetricMatrixStream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean/declarations/symmetricmatrixstream--7a5c696edcaab6f649092191.md) | 27 | `declaration-track:7a5c696edcaab6f649092191ce85ba869f04c0dc78728ca265a8a3feab8dddbb` |
| 2 | `def` | [materialize?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean/declarations/materialize--05e9445d020f3242c8e76ac5.md) | 35 | `declaration-track:05e9445d020f3242c8e76ac5bba77d77ed7bc2a10a65b34514687ee8ca856f73` |
| 3 | `def` | [binaryMatrixStreamOfList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean/declarations/binarymatrixstreamoflist--fcacc8326c606974f86a67aa.md) | 47 | `declaration-track:fcacc8326c606974f86a67aaf08d02d1bb9e150921211511396ad8a439e1c902` |
| 4 | `def` | [copyAtomStream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean/declarations/copyatomstream--fe69de2189e2df5a459ab46a.md) | 53 | `declaration-track:fe69de2189e2df5a459ab46aebb1057435ca23090f26257ac79fbebf90f7de9e` |
| 5 | `theorem` | [materialize_copy_atom_stream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variante0067e504e8ab868a0d86af8741105a9fc739da10dfb1e175959013f007e2f19.lean/declarations/materialize-copy-atom-stream--cb01207b6b7d0d0e3cb3f831.md) | 67 | `result-track:cb01207b6b7d0d0e3cb3f831cc95782934afcd287bdec408aea7c94f0b6708a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
