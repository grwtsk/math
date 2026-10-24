# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c50de8a94c52a45e3b906cf41c0e130e20d2becc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c50de8a94c52a45e3b906cf41c0e130e20d2becc`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Clopen` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuous_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean/declarations/continuous-mulindicator--b81914e132e728218b8209f5.md) | 20 | `result-track:b81914e132e728218b8209f5b2cd634f49ff4074257808e8c641aa92b86b481c` |
| 2 | `lemma` | [Continuous.mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean/declarations/continuous-mulindicator--153eb03d946e9aaa1c00f198.md) | 25 | `result-track:153eb03d946e9aaa1c00f19892fd7b1422e6e86abf057a2f6c527ee7f859e567` |
| 3 | `theorem` | [ContinuousOn.continuousAt_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean/declarations/continuouson-continuousat-mulindicator--31d3fc028feb95bcea4016c4.md) | 30 | `result-track:31d3fc028feb95bcea4016c4afad9cf124f463b14293a742ece856d75c4f4230` |
| 4 | `lemma` | [IsClopen.continuous_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534.lean/declarations/isclopen-continuous-mulindicator--3c5a7e10c88e3c36bd59e738.md) | 42 | `result-track:3c5a7e10c88e3c36bd59e73833537d59f17ad5f4051932a96c58f4571a4d828d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
