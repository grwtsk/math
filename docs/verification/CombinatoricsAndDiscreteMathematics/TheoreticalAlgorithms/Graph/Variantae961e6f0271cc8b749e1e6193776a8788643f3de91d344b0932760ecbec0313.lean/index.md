# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Graph.Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7db0280d8a64a53ff566e55466db3f4b1a50e148",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7db0280d8a64a53ff566e55466db3f4b1a50e148`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Syntax.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Matrix.Warshall` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormulaTree.childEdgesFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean/declarations/formulatree-childedgesfrom--5757799bb0f6541401fdb1e8.md) | 15 | `declaration-track:5757799bb0f6541401fdb1e8e2492f45bdecf38a2f7d44f39b617bc847534b84` |
| 2 | `def` | [FormulaTree.adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean/declarations/formulatree-adjacencymatrix--4fe3a906d6da96fd744b821f.md) | 58 | `declaration-track:4fe3a906d6da96fd744b821fc732cf717e4177a76c7770eab97483b138d65ed5` |
| 3 | `theorem` | [FormulaTree.entry_adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean/declarations/formulatree-entry-adjacencymatrix--eaf33779110d5d6932293485.md) | 63 | `result-track:eaf33779110d5d6932293485d873314d572133c6def8b41bc34f9e32a02a6d57` |
| 4 | `def` | [FormulaTree.reachabilityMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313.lean/declarations/formulatree-reachabilitymatrix--13126fdf13fe0220387374db.md) | 75 | `declaration-track:13126fdf13fe0220387374db1af110e39226882805555a8544f04bb9e6e78f21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
