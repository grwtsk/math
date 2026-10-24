# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d1c465cf1145916d4d1e38cdad57c527c569b30",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d1c465cf1145916d4d1e38cdad57c527c569b30`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/declarations/instance--3c7e40e1feabdf78a9f3c79a.md) | 30 | `declaration-track:3c7e40e1feabdf78a9f3c79a8da9d1bfa8313dfc6794ac3260168e722fd6a3e9` |
| 2 | `lemma` | [extremallyDisconnected_preimage](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/declarations/extremallydisconnected-preimage--558397676618d62a603f59ad.md) | 36 | `result-track:558397676618d62a603f59ad1a708586fbc602f94439b782e075e507adec1417` |
| 3 | `lemma` | [extremallyDisconnected_pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/declarations/extremallydisconnected-pullback--12f3b5ee2512ab17020de747.md) | 46 | `result-track:12f3b5ee2512ab17020de747c2b303ae637c99773cc25717a9a2a59ca019bde9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/declarations/instance--88c7e50d3532790c03434fb7.md) | 55 | `declaration-track:88c7e50d3532790c03434fb753f97e1dac2e89c28444e5f705439bc2037fd011` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/declarations/example--e90913ad748f2a62882eeb93.md) | 60 | `declaration-track:e90913ad748f2a62882eeb937b628eac7649f8445b78a6fa9ff663cda3179b59` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/declarations/example--b347db561beddeadfb915e2d.md) | 62 | `declaration-track:b347db561beddeadfb915e2dfa81cad63d6608ea50f8b82082891abc0f7e93ee` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/declarations/example--30ddcc8ee6088a64148d88be.md) | 64 | `declaration-track:30ddcc8ee6088a64148d88bef47700a0d5babc6bb78b67e65cc1dd444e6b3df2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
