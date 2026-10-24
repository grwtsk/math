# Verification target: GRWTSK.Algebra.QuarticBaseResolventRootSet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37f2b2199747fb6435f853cfe49f8fff8691c13a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticBaseResolventRootSet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticBaseResolventRootSet.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticBaseResolventRootSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37f2b2199747fb6435f853cfe49f8fff8691c13a`.

Source path: `GRWTSK/Algebra/QuarticBaseResolventRootSet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticBaseResolventRootSet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticBaseResolventMatching`](../../../mathematics/Algebra/QuarticBaseResolventMatching.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mapped_resolvent_isRoot_iff](../../../mathematics/Algebra/QuarticBaseResolventRootSet.lean/declarations/mapped-resolvent-isroot-iff--0da63e88fdc4f2d5003a658d.md) | 31 | `result-track:0da63e88fdc4f2d5003a658d50c60b0135d1f843b2a410c1b65e65074c654403` |
| 2 | `theorem` | [mapped_resolvent_rootSet_eq_matching_range](../../../mathematics/Algebra/QuarticBaseResolventRootSet.lean/declarations/mapped-resolvent-rootset-eq-matching-range--04ed991f1db0dd7370ebd6ee.md) | 49 | `result-track:04ed991f1db0dd7370ebd6ee47108c28fb4ed8f1c513c948102e3b67a791e120` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
