# Verification target: GRWTSK.Analysis.MeromorphicOrder.Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cb1080eb7bde37b10ffa28db83334b75d7c2941",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/index.md) · [Full source](../../../../mathematics/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cb1080eb7bde37b10ffa28db83334b75d7c2941`.

Source path: `GRWTSK/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectangleDivisor](../../../../mathematics/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/declarations/rectangledivisor--665cb895675b9d375cb80f68.md) | 26 | `declaration-track:665cb895675b9d375cb80f686849f28ff7a1c5430e97a4e038b1eb8652d522ca` |
| 2 | `theorem` | [rectangleDivisor_apply](../../../../mathematics/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/declarations/rectangledivisor-apply--e1cffe2ceb61a9831cf3629a.md) | 32 | `result-track:e1cffe2ceb61a9831cf3629a593314fd8a03ba248d402f5fbaa382cd86cffa34` |
| 3 | `theorem` | [rectangleDivisor_support_finite](../../../../mathematics/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/declarations/rectangledivisor-support-finite--127ee607710cdbc685bae168.md) | 42 | `result-track:127ee607710cdbc685bae1685fbfc634fbca226dbeef9486c00463c28f8e2c01` |
| 4 | `def` | [rectangleDivisorSupportFinset](../../../../mathematics/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/declarations/rectangledivisorsupportfinset--98bf3f30c1c9c242390f919b.md) | 51 | `declaration-track:98bf3f30c1c9c242390f919b0df3b6f7fc2651e7eec65ec3853c46f6a77d2404` |
| 5 | `theorem` | [mem_rectangleDivisorSupportFinset](../../../../mathematics/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean/declarations/mem-rectangledivisorsupportfinset--d24bc2afed851ad957e511a0.md) | 57 | `result-track:d24bc2afed851ad957e511a01f85b349fe1dd600fb88003e3c8321a36bc51125` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
