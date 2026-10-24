# Verification target: GRWTSK.Topology.GeneralTopology.Adjunctions.Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01ad508f3485f3ea9260204cd84f21b46f5b6213",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01ad508f3485f3ea9260204cd84f21b46f5b6213`.

Source path: `GRWTSK/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Stonean.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Adjunctions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stoneCechObj](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean/declarations/stonecechobj--cc0e8067839d52c4743f3881.md) | 33 | `declaration-track:cc0e8067839d52c4743f3881d9d4c30f76a6b3bbb8c740aa865366153080d270` |
| 2 | `def` | [stoneCechEquivalence](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean/declarations/stonecechequivalence--56678563dd861f52f5617976.md) | 42 | `declaration-track:56678563dd861f52f56179766322f5481caddf6eaef17fc3a8d4c12b9a6ca196` |
| 3 | `def` | [typeToStonean](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean/declarations/typetostonean--4a7a0963fde6d1780abc8fea.md) | 53 | `declaration-track:4a7a0963fde6d1780abc8feafff87b2fa88ef2e218995fd853a71d2af0624219` |
| 4 | `def` | [stoneCechAdjunction](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean/declarations/stonecechadjunction--06ae0ae332d2c93727f67a19.md) | 59 | `declaration-track:06ae0ae332d2c93727f67a19c486954ee2a5548efc55197d638f09d7c12b943a` |
| 5 | `instance` | [forget.preservesLimits](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variantc01ca5bb81db59ce0e270c70cddad41b436978777ead41919d7a3ad3a25dcbc5.lean/declarations/forget-preserveslimits--98ab355b92783a334d6e000e.md) | 63 | `declaration-track:98ab355b92783a334d6e000e6a6b2bde66aeaddabc8aa8800a7e6c5558a27121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
