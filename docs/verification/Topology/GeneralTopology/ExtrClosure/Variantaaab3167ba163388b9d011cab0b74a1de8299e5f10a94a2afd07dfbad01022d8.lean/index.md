# Verification target: GRWTSK.Topology.GeneralTopology.ExtrClosure.Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31b06abf781bda1afaab16c05bef4d352e0e3e21",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31b06abf781bda1afaab16c05bef4d352e0e3e21`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/declarations/ismaxon-closure--91154ef1a2740705a615c929.md) | 25 | `result-track:91154ef1a2740705a615c929cd3e91de80267b1164b57c69504e09ab75ae870e` |
| 2 | `theorem` | [IsMinOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/declarations/isminon-closure--ea22bf35519cdb35eb1d4ea6.md) | 29 | `result-track:ea22bf35519cdb35eb1d4ea67d59bcb9a4923fb061ca9575768979d332c202b9` |
| 3 | `theorem` | [IsExtrOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/declarations/isextron-closure--94d6c0c6c451185692a5eff9.md) | 33 | `result-track:94d6c0c6c451185692a5eff9220810005022ad811a5c2ede1e5934178c62af40` |
| 4 | `theorem` | [IsLocalMaxOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/declarations/islocalmaxon-closure--496945b90aed9b902cce4a1b.md) | 37 | `result-track:496945b90aed9b902cce4a1be12d2b217e9b79bdcbfd7bfef711cba806abc537` |
| 5 | `theorem` | [IsLocalMinOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/declarations/islocalminon-closure--4c6301cdc7949aeeb9e4b1e1.md) | 48 | `result-track:4c6301cdc7949aeeb9e4b1e18d359be50b3f58befdad2a439e569de97d49723d` |
| 6 | `theorem` | [IsLocalExtrOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variantaaab3167ba163388b9d011cab0b74a1de8299e5f10a94a2afd07dfbad01022d8.lean/declarations/islocalextron-closure--6be36aafb8f015e9a150c177.md) | 52 | `result-track:6be36aafb8f015e9a150c177ba6c9dc5f51e91acf22b8f9649b49e3e00a96a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
