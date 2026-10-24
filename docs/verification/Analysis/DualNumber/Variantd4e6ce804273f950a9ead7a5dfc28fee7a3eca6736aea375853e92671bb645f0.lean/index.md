# Verification target: GRWTSK.Analysis.DualNumber.Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76d8d8fe8257c059aaa17ed72702bc0ab0d346f5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DualNumber/Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DualNumber/Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0.lean/index.md) · [Full source](../../../../mathematics/Analysis/DualNumber/Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76d8d8fe8257c059aaa17ed72702bc0ab0d346f5`.

Source path: `GRWTSK/Analysis/DualNumber/Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DualNumber/Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.TrivSqZeroExt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_eps](../../../../mathematics/Analysis/DualNumber/Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0.lean/declarations/exp-eps--e6a6d4cf5fc9076a55c40ab2.md) | 34 | `result-track:e6a6d4cf5fc9076a55c40ab239716ab483dbf6ba5947e964aadf934940b136fd` |
| 2 | `theorem` | [exp_smul_eps](../../../../mathematics/Analysis/DualNumber/Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0.lean/declarations/exp-smul-eps--6f5bd9d6e74245206ca09cda.md) | 39 | `result-track:6f5bd9d6e74245206ca09cda65f41e915667d77884df1c7d78b495a47ea9b1b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
