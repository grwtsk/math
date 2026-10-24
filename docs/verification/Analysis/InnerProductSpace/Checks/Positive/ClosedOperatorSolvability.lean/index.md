# Verification target: GRWTSK.Analysis.InnerProductSpace.Checks.Positive.ClosedOperatorSolvability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80e9c8922d84f8337624c8e8fa234fae04e3405f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80e9c8922d84f8337624c8e8fa234fae04e3405f`.

Source path: `GRWTSK/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability`](../../../../../../mathematics/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/declarations/example--6374cfbacf78468f82f1e58b.md) | 19 | `declaration-track:6374cfbacf78468f82f1e58b33c4aee7546bf10f1f854d2b1dfe267d51e20203` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/declarations/example--55901b11247b3e4b820e1519.md) | 25 | `declaration-track:55901b11247b3e4b820e1519e2233b9b8f10c75629820090f0cbe2ad70521cb4` |
| 3 | `theorem` | [zero_dense](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/declarations/zero-dense--9eed5a10c6acb0690a588c64.md) | 31 | `result-track:9eed5a10c6acb0690a588c6451a7b1062a2d363f3c9f05a1af04e731c1606d50` |
| 4 | `theorem` | [zero_closed](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/declarations/zero-closed--63ea0a37db9991eb3c09a591.md) | 35 | `result-track:63ea0a37db9991eb3c09a5912e3eec597b1798daa2f64799e00a74b193110c24` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/declarations/example--37164359166d86fba8fddf7e.md) | 49 | `declaration-track:37164359166d86fba8fddf7e9c219bd4d061d0b27184fa4fb8f943a915bb4580` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean/declarations/example--6b0a7011a4044f2a37083b8b.md) | 54 | `declaration-track:6b0a7011a4044f2a37083b8b1733c74a94295dea6f5ea875e92d4e582fa64767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
