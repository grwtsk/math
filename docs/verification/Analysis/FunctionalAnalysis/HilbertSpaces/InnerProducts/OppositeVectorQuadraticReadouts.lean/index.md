# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.InnerProducts.OppositeVectorQuadraticReadouts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db33bd899132a6924db00f1c8d8890a2da5c9ef",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/InnerProducts/OppositeVectorQuadraticReadouts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/InnerProducts/OppositeVectorQuadraticReadouts.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/InnerProducts/OppositeVectorQuadraticReadouts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db33bd899132a6924db00f1c8d8890a2da5c9ef`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/InnerProducts/OppositeVectorQuadraticReadouts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertSpaces/InnerProducts/OppositeVectorQuadraticReadouts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [opposite_row_readout](../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/InnerProducts/OppositeVectorQuadraticReadouts.lean/declarations/opposite-row-readout--1a9cc5a30f65432cb2bb9bb0.md) | 29 | `result-track:1a9cc5a30f65432cb2bb9bb02e0a689b6fdaccdbdd4bffbf67812bf3da55877e` |
| 2 | `theorem` | [opposite_row_scale_readout](../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/InnerProducts/OppositeVectorQuadraticReadouts.lean/declarations/opposite-row-scale-readout--271d9e7eda2ba4d0400ea4c8.md) | 35 | `result-track:271d9e7eda2ba4d0400ea4c81274ad4a9279c02b855f2ac2bc5199ca11b2e1cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
