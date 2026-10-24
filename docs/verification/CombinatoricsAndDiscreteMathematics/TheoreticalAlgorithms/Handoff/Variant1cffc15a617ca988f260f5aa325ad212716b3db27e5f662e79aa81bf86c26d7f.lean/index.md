# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Handoff.Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10c4b24b05e43ff4926115b2bf99717f8bdcba5d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10c4b24b05e43ff4926115b2bf99717f8bdcba5d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Execution` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HandoffContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean/declarations/handoffcontext--dd4580bbcd7c78d978f6c963.md) | 12 | `declaration-track:dd4580bbcd7c78d978f6c963447e6d0456ab7a056f081f37c1e1622bf71d6a7d` |
| 2 | `def` | [HandoffContext.transferredLease](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean/declarations/handoffcontext-transferredlease--56a3e8f408e99489b6058291.md) | 21 | `declaration-track:56a3e8f408e99489b605829154e55ec357c828bce6feb1f8abcaa73fcd3cfcc1` |
| 3 | `theorem` | [handoff_transfers_no_lease](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean/declarations/handoff-transfers-no-lease--cdf802bd6b574ca3ad7a20b5.md) | 26 | `result-track:cdf802bd6b574ca3ad7a20b5bcad5bbd31f3b7d245ca61acd1947ce1d24671d2` |
| 4 | `theorem` | [source_lease_does_not_authorize_target](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean/declarations/source-lease-does-not-authorize-target--6ac87cce2f0717ebdcbcbfa6.md) | 31 | `result-track:6ac87cce2f0717ebdcbcbfa64b71855bd3da0781f815597c1dbc22dcdcecdf6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
