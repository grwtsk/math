# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Opposite.Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b513d07864d91f61ecbbe6cac7ffcc7ecfc50d3c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b513d07864d91f61ecbbe6cac7ffcc7ecfc50d3c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/op--b8d70c31cd18918dba21c8a8.md) | 22 | `declaration-track:b8d70c31cd18918dba21c8a8ee2025e5f2bbb4b6c58b2d14fbe4fc089db3e393` |
| 2 | `def` | [unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/unop--fc3a7f08386327a5b30576f5.md) | 26 | `declaration-track:fc3a7f08386327a5b30576f5aa22b961907c47a0a2149b53e95268f82fceaf8f` |
| 3 | `theorem` | [mem_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/mem-op--f76bd2bc19c1218c1117d727.md) | 30 | `result-track:f76bd2bc19c1218c1117d727cb0cff099520fa0956d094292aad8b07c7c3d547` |
| 4 | `theorem` | [op_mem_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/op-mem-op--03f6da92ff830e95ede039fd.md) | 34 | `result-track:03f6da92ff830e95ede039fd7b8d654c0b14e748d61d1863bb42331f9b45b622` |
| 5 | `theorem` | [mem_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/mem-unop--3bfbdaa933446eafb03029df.md) | 37 | `result-track:3bfbdaa933446eafb03029df428674d613b8bdf695d07688788e16e53b51a14f` |
| 6 | `theorem` | [unop_mem_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/unop-mem-unop--c06e6e6f6871e4986bac21d4.md) | 41 | `result-track:c06e6e6f6871e4986bac21d43b7ab951327ac2c75fcf53b4b8806ae3b6aa56d0` |
| 7 | `theorem` | [op_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/op-unop--fe0417275fa3be1b73e0d5f6.md) | 44 | `result-track:fe0417275fa3be1b73e0d5f67d218d65124559831d806da88de8dd72ac7db78d` |
| 8 | `theorem` | [unop_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/unop-op--977f28232636453e2ea4d25f.md) | 47 | `result-track:977f28232636453e2ea4d25f7dd32359e21b953e7e0fb58f07e2c92d43e674d0` |
| 9 | `def` | [opEquiv_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/opequiv-self--6e7cc4812bbc9e1428bca023.md) | 51 | `declaration-track:6e7cc4812bbc9e1428bca02380aaa9d6479307b7b8b7b0fe9f29a0cb1630647e` |
| 10 | `def` | [opEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/opequiv--48758e4e44b2fe86aeb0f60c.md) | 56 | `declaration-track:48758e4e44b2fe86aeb0f60c1e508be97e30fa6e75cada692669e504a9cdf061` |
| 11 | `theorem` | [singleton_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/singleton-op--64984ed339232e83bda23407.md) | 60 | `result-track:64984ed339232e83bda234075872f9225238e7ce4850a1ccc6d6112d9f673ea3` |
| 12 | `theorem` | [singleton_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/singleton-unop--735b4f65b3996e54c70ab820.md) | 67 | `result-track:735b4f65b3996e54c70ab8201b9c0c4bf39b0761aebffb1a9ef258e1c0818f05` |
| 13 | `theorem` | [singleton_op_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/singleton-op-unop--f19ce55ad9690e725cb55ac1.md) | 74 | `result-track:f19ce55ad9690e725cb55ac1741ffba0b57c09b9ff80430919c8fd988388af63` |
| 14 | `theorem` | [singleton_unop_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variant9f9c5d62191ff4cfa636a52ea7fb9b2103a7425405a5f7b872b29ecc40c64454.lean/declarations/singleton-unop-op--86de8682b9365e1059f93479.md) | 81 | `result-track:86de8682b9365e1059f93479f512716d07a2a899d2d08069185fadec94133658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
