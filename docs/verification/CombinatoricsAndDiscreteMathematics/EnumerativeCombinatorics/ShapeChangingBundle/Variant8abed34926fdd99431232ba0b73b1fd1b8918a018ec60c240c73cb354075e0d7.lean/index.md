# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ShapeChangingBundle.Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f4546ac4d33bbc4b7551d40378219850d93965a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f4546ac4d33bbc4b7551d40378219850d93965a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Expansion.Shell` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Fiber` — import line 4; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [levelShape](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/levelshape--0e8624729396da76a0e7dba7.md) | 26 | `declaration-track:0e8624729396da76a0e7dba725ee4d1bc5c99bdb11c5f413d1b4e18af0398fc8` |
| 2 | `theorem` | [levelShape_rows_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/levelshape-rows-succ--8a1f33198b2687ae0a824f05.md) | 30 | `result-track:8a1f33198b2687ae0a824f05849c064d170b11422f227f5a3b15b89680790001` |
| 3 | `theorem` | [levelShape_cols_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/levelshape-cols-succ--5b5c5edfdcccc2473ed64dfb.md) | 37 | `result-track:5b5c5edfdcccc2473ed64dfba99f32f5a7f469370229018a3fb247278aea1882` |
| 4 | `structure` | [ShapeChangingState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/shapechangingstate--cd3ee89f2e0de71445a8fa4c.md) | 44 | `declaration-track:cd3ee89f2e0de71445a8fa4c8a9a96fccee0037a08cf9bfde32973454c671628` |
| 5 | `structure` | [ShapeStepPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/shapesteppayload--b4b3a4a3b0942e29c32c589a.md) | 50 | `declaration-track:b4b3a4a3b0942e29c32c589a21cc49b4318c41cb6a591644ef702f0b7ed3cd9b` |
| 6 | `def` | [expandWithShell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/expandwithshell--95f4b7185f04f5f4c12a08ba.md) | 56 | `declaration-track:95f4b7185f04f5f4c12a08baca3ebfc39db53f7fef6454ec67974cbe6e95cd0c` |
| 7 | `def` | [contractOneStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/contractonestep--ecd94683f2ae25cb98f3b408.md) | 68 | `declaration-track:ecd94683f2ae25cb98f3b40828f0d30f915ae874f818e88624451bba6f126fea` |
| 8 | `theorem` | [contract_expandWithShell_center](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/contract-expandwithshell-center--e0bce291b5e30d0a44eb3333.md) | 78 | `result-track:e0bce291b5e30d0a44eb3333068c3089905de8192f4ad47654c74de24350ece8` |
| 9 | `theorem` | [contract_expandWithShell_shell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/contract-expandwithshell-shell--3cfed7a62f9e3183d1ce40f8.md) | 95 | `result-track:3cfed7a62f9e3183d1ce40f8cab4ba0372647978bd77a5fd575c32caa90bac37` |
| 10 | `theorem` | [expand_contractOneStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/expand-contractonestep--3a4316f9a3295da95c5df2d5.md) | 111 | `result-track:3a4316f9a3295da95c5df2d576ca477c745d572bdc51f041d5a0db880b01375c` |
| 11 | `theorem` | [shape_changes_of_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/shape-changes-of-step--7eae050bb20ffe95274c35e7.md) | 127 | `result-track:7eae050bb20ffe95274c35e74ef5d46bde42d876761e1f72cf1e196bf8c1dfa2` |
| 12 | `def` | [catalanShape](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/catalanshape--7031f2ed0f379148d109d085.md) | 136 | `declaration-track:7031f2ed0f379148d109d085c52349172e750cee7dc7c5af9219a41e4fd9e3e5` |
| 13 | `theorem` | [catalanShape_rows_of_internal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/catalanshape-rows-of-internal-succ--8cee28a5bce2b2a2f324c756.md) | 141 | `result-track:8cee28a5bce2b2a2f324c756935f62c4197b0aee5811e87f59c9896bf67c42bd` |
| 14 | `theorem` | [catalanShape_cols_of_internal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/declarations/catalanshape-cols-of-internal-succ--2918d9fffe298e5cb0077370.md) | 151 | `result-track:2918d9fffe298e5cb007737081d907220775d3b853d70126edf3322f835b4d0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
