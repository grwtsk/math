# Verification target: GRWTSK.Algebra.FiniteCrossedProduct.Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f55b98726f2d1c8e6ac5e3c58d30e159253fc858",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteCrossedProduct/Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteCrossedProduct/Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteCrossedProduct/Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f55b98726f2d1c8e6ac5e3c58d30e159253fc858`.

Source path: `GRWTSK/Algebra/FiniteCrossedProduct/Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteCrossedProduct/Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Boundary.FiniteCut` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Trace.StableInvariantTrace` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCrossedProductStableTrace](../../../../mathematics/Algebra/FiniteCrossedProduct/Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d.lean/declarations/finitecrossedproductstabletrace--282727dda3a4cb156f990eb3.md) | 19 | `declaration-track:282727dda3a4cb156f990eb36923ae0b8cbe3af87cd3ddcb4824e62c5c0568b0` |
| 2 | `theorem` | [finite_stable_trace_is_canonical](../../../../mathematics/Algebra/FiniteCrossedProduct/Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d.lean/declarations/finite-stable-trace-is-canonical--0ed34fd743033126a45ad4ea.md) | 56 | `result-track:0ed34fd743033126a45ad4ea671f252ebf5ff71eb128f7a8246012a88b173eed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
