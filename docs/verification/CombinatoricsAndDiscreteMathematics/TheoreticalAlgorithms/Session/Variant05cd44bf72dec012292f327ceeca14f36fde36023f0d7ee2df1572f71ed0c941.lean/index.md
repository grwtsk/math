# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Session.Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cb1aded51371722dcb0652f91e3f26a8b88fc58",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cb1aded51371722dcb0652f91e3f26a8b88fc58`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.ClientChart` — import line 1; external provider; requires a separately pinned dependency.
- `NetworkElements.Cursor` — import line 2; external provider; requires a separately pinned dependency.
- `NetworkElements.Kind` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SessionIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean/declarations/sessionidentity--290f49706df7be02733e0544.md) | 12 | `declaration-track:290f49706df7be02733e05446cf6fdd40ba14bbc81846bd05cb816c1a883e972` |
| 2 | `structure` | [SessionState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean/declarations/sessionstate--18c49c8853872100b7dc1735.md) | 20 | `declaration-track:18c49c8853872100b7dc1735328170bd89141e80cf754fce39016c6d7e3f3a14` |
| 3 | `inductive` | [SessionEvent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean/declarations/sessionevent--385ad591646801acb596e632.md) | 26 | `declaration-track:385ad591646801acb596e632b60f72616ed675bb62c2ba8b37f64ce945133062` |
| 4 | `inductive` | [SessionStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean/declarations/sessionstep--b07465437967fa7dc218197c.md) | 31 | `declaration-track:b07465437967fa7dc218197c4e2ebb887f0bb4aa135aa6f35a91bb3a94159145` |
| 5 | `theorem` | [disconnect_preserves_logical_session](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941.lean/declarations/disconnect-preserves-logical-session--c1b8caf9198110d556fcddb2.md) | 53 | `result-track:c1b8caf9198110d556fcddb22b6761bd2784a5c7e92547ddcce15dcaa3791583` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
