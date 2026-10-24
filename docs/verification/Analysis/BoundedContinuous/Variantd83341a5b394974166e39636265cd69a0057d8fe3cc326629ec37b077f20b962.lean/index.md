# Verification target: GRWTSK.Analysis.BoundedContinuous.Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbf35faed31147d6ff852fb48bba39fe7a7d43b1",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BoundedContinuous/Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BoundedContinuous/Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962.lean/index.md) · [Full source](../../../../mathematics/Analysis/BoundedContinuous/Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbf35faed31147d6ff852fb48bba39fe7a7d43b1`.

Source path: `GRWTSK/Analysis/BoundedContinuous/Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BoundedContinuous/Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [restrict_toContinuousMap_eq_toContinuousMapStar_restrict](../../../../mathematics/Analysis/BoundedContinuous/Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962.lean/declarations/restrict-tocontinuousmap-eq-tocontinuousmapstar-restrict--f8215d9d555fed106ee4f810.md) | 31 | `result-track:f8215d9d555fed106ee4f810f0fd45a097f577716666d7403514ecf02332a9c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
