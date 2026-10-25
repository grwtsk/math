# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalVerificationPolicy.Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20becf4cef534fbf0f95a6e1021d0ff6f949ff9c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20becf4cef534fbf0f95a6e1021d0ff6f949ff9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FormalVerificationPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/declarations/formalverificationpolicy--1769e395f121d793980c2a44.md) | 16 | `declaration-track:1769e395f121d793980c2a4481aa088450c9d748d0309366f1938732962c7b76` |
| 2 | `def` | [defaultFormalVerificationPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/declarations/defaultformalverificationpolicy--2218ba4ea1673ff3d34a719c.md) | 26 | `declaration-track:2218ba4ea1673ff3d34a719cb8f64832bdad80f0a59de812dc9d1477e981fe1b` |
| 3 | `theorem` | [formal_policy_requires_kernel_check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/declarations/formal-policy-requires-kernel-check--33f6cf0422ae4d85039282d1.md) | 38 | `result-track:33f6cf0422ae4d85039282d119bad287b258419d8eca2956218dcffb5cab563f` |
| 4 | `theorem` | [formal_policy_forbids_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/declarations/formal-policy-forbids-sorry--832afe5ac00a88a3fe8dcd0e.md) | 42 | `result-track:832afe5ac00a88a3fe8dcd0ed46655b5c6e03e13f050cb8b6c620e42441614b6` |
| 5 | `theorem` | [formal_policy_forbids_axiom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/declarations/formal-policy-forbids-axiom--101a5536b05fcf51249de342.md) | 46 | `result-track:101a5536b05fcf51249de342c05d42b363d58f7afe3be7229486cee24425a536` |
| 6 | `theorem` | [formal_policy_allows_informal_heuristics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean/declarations/formal-policy-allows-informal-heuristics--ffa8f8b6d8f2bd53fd674d5e.md) | 50 | `result-track:ffa8f8b6d8f2bd53fd674d5eacb607a6c7dc0de8caa4045be804eefbe35b3418` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
