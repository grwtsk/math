# Verification target: GRWTSK.Topology.GeneralTopology.Order.Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63094d57fd2588fb38f59134cfd585348c9c2bc2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63094d57fd2588fb38f59134cfd585348c9c2bc2`.

Source path: `GRWTSK/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Closeds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClopenUpperSet](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/clopenupperset--29b5bc303445125703e669b0.md) | 23 | `declaration-track:29b5bc303445125703e669b0ca9363f047d1314a09f17cdfdfa97bc8fc587fff` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--6fd03a7a66a74b2d48cc44d9.md) | 28 | `declaration-track:6fd03a7a66a74b2d48cc44d9657f859699447e00869947a732341f1db30a086b` |
| 3 | `def` | [Simps.coe](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/simps-coe--9dce5eb7e4a040ae0d1e22a9.md) | 36 | `declaration-track:9dce5eb7e4a040ae0d1e22a9a7e47e9d77a4aa43574dcd4f6bc224629ed96c51` |
| 4 | `theorem` | [upper](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/upper--e3a67f39f21a616fa71c507f.md) | 40 | `result-track:e3a67f39f21a616fa71c507fab440ba923a0ff688e7be8199353720a0eafad47` |
| 5 | `theorem` | [isClopen](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/isclopen--45f20376a2b8aba071803ef3.md) | 43 | `result-track:45f20376a2b8aba071803ef350b48d7000da67e82374ca663343019f7237a56a` |
| 6 | `def` | [toUpperSet](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/toupperset--b777da5fc562b58df9dbe8ac.md) | 48 | `declaration-track:b777da5fc562b58df9dbe8accf6c4a40a52b371fbac51b6276bda3e883275b0b` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/ext--499a0909e7238b9308831d20.md) | 52 | `result-track:499a0909e7238b9308831d20af7f325802fed0ee487a60b4610fc819a8bdd86b` |
| 8 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/coe-mk--71d579034d178346ad37eb79.md) | 56 | `result-track:71d579034d178346ad37eb79c42eed46c8cd91f2575bd998d71fa6ba4af08d35` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--2e6abdfca3bae196af041514.md) | 59 | `declaration-track:2e6abdfca3bae196af0415144dbb938b7a63467a9e73960b3d0a0018447e9dff` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--75c15fed179e6dd975eb5bca.md) | 62 | `declaration-track:75c15fed179e6dd975eb5bca9e86ba6cba5fff58b3ba90e47b20dd06c13a119e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--8c3da830212fb90c6c8b402d.md) | 65 | `declaration-track:8c3da830212fb90c6c8b402d742b1add500a953fa6dd20b05cfd00fc0e5cb312` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--3de908f951ece013ad2faef4.md) | 68 | `declaration-track:3de908f951ece013ad2faef4c691f4a7f576461e5f7cbf66885749b904400be2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--110e98f13ff42971684f447e.md) | 71 | `declaration-track:110e98f13ff42971684f447e3d2197467fdee21c14606fca0fcd891549e96c32` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--e91e5ae144ad09790c243b17.md) | 74 | `declaration-track:e91e5ae144ad09790c243b17394536c9dcef4182b11dbe6538d4a0d2b4df151b` |
| 15 | `theorem` | [coe_sup](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/coe-sup--29186fc62f97ec8592cc06ba.md) | 78 | `result-track:29186fc62f97ec8592cc06ba3645379bfee75a31b84461e3ad396358a99bb55d` |
| 16 | `theorem` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/coe-inf--90154c9dd1a5ef5c154b14b0.md) | 82 | `result-track:90154c9dd1a5ef5c154b14b04aa0313a0d8e3face89cc62c308722c255532f37` |
| 17 | `theorem` | [coe_top](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/coe-top--8cc42e0056f5f739a871ebb0.md) | 86 | `result-track:8cc42e0056f5f739a871ebb00c242911332facbac0fd7645f75a4e7d5ed40063` |
| 18 | `theorem` | [coe_bot](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/coe-bot--ecaf7bfc6c79d7f780394dc2.md) | 90 | `result-track:ecaf7bfc6c79d7f780394dc2edb3a551fbd8f5f335e8212b94c6838d3aee7c93` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean/declarations/instance--cd85260a2b8e7c80e0937104.md) | 93 | `declaration-track:cd85260a2b8e7c80e09371047b58194573e7daca51e67d83182e07b200829436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
