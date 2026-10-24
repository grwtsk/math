# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trace.Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e9ab0179cf972ac1427b65f6d635cebd4a0f7e7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e9ab0179cf972ac1427b65f6d635cebd4a0f7e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Handoff` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExecutionRecord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/executionrecord--dfa7cffe5872a421ddac891f.md) | 21 | `declaration-track:dfa7cffe5872a421ddac891f129f006f20a8dafefc0d757258f0e72096a94226` |
| 2 | `structure` | [MonitorState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/monitorstate--827f9a2c7fb83954b748b160.md) | 26 | `declaration-track:827f9a2c7fb83954b748b1607fb1471b17e81d581fc6674a303abedcd8c183f5` |
| 3 | `def` | [MonitorState.Safe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/monitorstate-safe--7546066e00d1c08018f8439f.md) | 32 | `declaration-track:7546066e00d1c08018f8439f4baafae9479f13fde9b588c41f7066c2a141e961` |
| 4 | `inductive` | [CapabilityEvent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/capabilityevent--8ee3e2067b2f65d3db39a721.md) | 38 | `declaration-track:8ee3e2067b2f65d3db39a7210dd422936009d328d9d9278e0dcd2993697dbfbf` |
| 5 | `inductive` | [MonitorStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/monitorstep--79d7b0a8c42873d0cdc3635f.md) | 43 | `declaration-track:79d7b0a8c42873d0cdc3635f77e5f1cf664d8fb50581f857b575a1400abb49ca` |
| 6 | `theorem` | [MonitorStep.preserves_safety](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/monitorstep-preserves-safety--ca5ae4c0c0527d3a65a66be3.md) | 77 | `result-track:ca5ae4c0c0527d3a65a66be35c384aba4d67d2c7aaf116ebba3e79c2ca1d58e1` |
| 7 | `def` | [initialMonitorState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/initialmonitorstate--a157e9eed0dc8690bcb2e503.md) | 105 | `declaration-track:a157e9eed0dc8690bcb2e503411c2345967db96242c6a5eea519065777f66438` |
| 8 | `theorem` | [initialMonitorState_safe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/initialmonitorstate-safe--c70b106fd539afd68b52b713.md) | 111 | `result-track:c70b106fd539afd68b52b7138af9cc09e0127cec3500ff22bab222e5ea1781d6` |
| 9 | `inductive` | [MonitorTrace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/monitortrace--6011711c40e6198278c19656.md) | 116 | `declaration-track:6011711c40e6198278c1965655bf37dbbfc318263c58eabfb0ddf96850e81714` |
| 10 | `theorem` | [MonitorTrace.preserves_safety](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/monitortrace-preserves-safety--20f66ae4dfc7cf0eeae9615a.md) | 128 | `result-track:20f66ae4dfc7cf0eeae9615a88ae2641dc490e6eb8d732a82f9bab0a61a78c8a` |
| 11 | `theorem` | [executed_records_are_authorized](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/declarations/executed-records-are-authorized--0c61d2af1a220aebf8998c94.md) | 139 | `result-track:0c61d2af1a220aebf8998c94d7da2bf774bd71210734ef952f4b73c10fe06608` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
