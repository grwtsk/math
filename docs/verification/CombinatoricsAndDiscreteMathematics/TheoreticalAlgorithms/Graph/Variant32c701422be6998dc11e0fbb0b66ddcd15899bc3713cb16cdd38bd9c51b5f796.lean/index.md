# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Graph.Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73110526a494a44c7cd420be444b5a061ae030bd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73110526a494a44c7cd420be444b5a061ae030bd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Syntax.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Matrix.Warshall` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormulaTree.childEdgesFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/declarations/formulatree-childedgesfrom--45f95d32f1928b4778d4be54.md) | 23 | `declaration-track:45f95d32f1928b4778d4be54e3bb668c6d4d87ed48428e382af80238a287b7ad` |
| 2 | `def` | [FormulaTree.adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/declarations/formulatree-adjacencymatrix--7712d4f2f587370748ec67bc.md) | 66 | `declaration-track:7712d4f2f587370748ec67bc7a01b56ab9ea91cdf61ca69a317f10e7eb79fddb` |
| 3 | `theorem` | [FormulaTree.entry_adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/declarations/formulatree-entry-adjacencymatrix--3e7d00662982602844f95de5.md) | 71 | `result-track:3e7d00662982602844f95de57e83d7ddf6f18d3bf38a882c765343a6c8684914` |
| 4 | `def` | [FormulaTree.reachabilityMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant32c701422be6998dc11e0fbb0b66ddcd15899bc3713cb16cdd38bd9c51b5f796.lean/declarations/formulatree-reachabilitymatrix--55dad63cd3ed654cd1007489.md) | 83 | `declaration-track:55dad63cd3ed654cd1007489d809de787938617bc88a5bdb5afd81e5bcdc3bc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
