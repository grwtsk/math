# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraph.Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58cac87297eaeafd0bbd9e432c9b0374d3eb9966",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58cac87297eaeafd0bbd9e432c9b0374d3eb9966`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.GraphCut` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeCutGraphAdapter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean/declarations/primecutgraphadapter--1bcb9ad6a5e3cbef4e2afffe.md) | 18 | `declaration-track:1bcb9ad6a5e3cbef4e2afffe230b6329d7bb8740a125203913ee96a645b1374d` |
| 2 | `theorem` | [PrimeCutGraphAdapter.edge_strictly_enlarges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean/declarations/primecutgraphadapter-edge-strictly-enlarges--a64e82274570b68374da34e6.md) | 45 | `result-track:a64e82274570b68374da34e610b0e28066476cfbb6b1bfeea6cb9f05e93e024c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
