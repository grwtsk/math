# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Completion.Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cd89cfe38ee15d4ceb73000e95a9f90ee53137b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cd89cfe38ee15d4ceb73000e95a9f90ee53137b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Completion` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isBigO_completion_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/declarations/isbigo-completion-left--9a734de5b56c39fe499c5a94.md) | 34 | `result-track:9a734de5b56c39fe499c5a94b44c0079e926a6c1b7236ab4bca7079f936f5c7f` |
| 2 | `lemma` | [isBigO_completion_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/declarations/isbigo-completion-right--f6e17b2e174fe1e60cedcfbc.md) | 38 | `result-track:f6e17b2e174fe1e60cedcfbcf315c40719e48b0d096cd8853bbbb9b100073f02` |
| 3 | `lemma` | [isTheta_completion_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/declarations/istheta-completion-left--30f12370629c536e5bb83238.md) | 42 | `result-track:30f12370629c536e5bb83238e013d1339a02f801b4b6358c84349865c2e7e0b0` |
| 4 | `lemma` | [isTheta_completion_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/declarations/istheta-completion-right--4d89b530c7ee459ff3bdba78.md) | 46 | `result-track:4d89b530c7ee459ff3bdba784104fed66d8c350c50a04a2005209f5924f45aa9` |
| 5 | `lemma` | [isLittleO_completion_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/declarations/islittleo-completion-left--b1b41cfc67c1ec5233ab2c68.md) | 50 | `result-track:b1b41cfc67c1ec5233ab2c6840612c39b950566d3e0a3d9072abdd48e815c70c` |
| 6 | `lemma` | [isLittleO_completion_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant580beb1fa9760c8ba5d7e8019566a0f7a40372b1e632ee1f2f54980854ec7090.lean/declarations/islittleo-completion-right--63ac5f1c6d82bc6c56656202.md) | 54 | `result-track:63ac5f1c6d82bc6c566562025ee2f6ad9cdea89a541f4554c829bf88f9a86bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
