# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Boundary.Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "318ff4b29b1922f46f5c0c01462cad06952ffd67",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `318ff4b29b1922f46f5c0c01462cad06952ffd67`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Obstruction.MUS` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Refinement.Tree` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TreeCompletionCompatibility](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/declarations/treecompletioncompatibility--717390ee656313ff56739fcf.md) | 28 | `declaration-track:717390ee656313ff56739fcfca28fc1b93e7dc41d141f0c6bb7428e74cb2a89f` |
| 2 | `structure` | [FirstInfeasibleBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/declarations/firstinfeasibleboundary--04849c20e436bbc64540738d.md) | 48 | `declaration-track:04849c20e436bbc64540738d8021e48aec36cd1ac305e5e7ddb6e1cb76bff1cc` |
| 3 | `structure` | [RootedBranch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/declarations/rootedbranch--cd459aad408c086171fd27a9.md) | 74 | `declaration-track:cd459aad408c086171fd27a9564b4d21c60f8f8f5fa56a6610345f0b62490bae` |
| 4 | `structure` | [FailedBranchBoundaryCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/declarations/failedbranchboundarycertificate--0b74ea0d5fee6db27643c9cb.md) | 92 | `declaration-track:0b74ea0d5fee6db27643c9cb480892539e4b367f5b5fc7af0800af4218d1a664` |
| 5 | `theorem` | [failed_branch_has_first_infeasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/declarations/failed-branch-has-first-infeasible--02ff8320f3f42368a4a4c52a.md) | 120 | `result-track:02ff8320f3f42368a4a4c52a9258a27e769b8794efbe7de15b7388f9b6d25d44` |
| 6 | `theorem` | [first_infeasible_unique_on_branch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/declarations/first-infeasible-unique-on-branch--150e8a4cc697deed811998d1.md) | 144 | `result-track:150e8a4cc697deed811998d1d3fa32efcd791b858a6c6dfe8dbda23c83165a66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
