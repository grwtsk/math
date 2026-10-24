# Verification target: GRWTSK.Topology.GeneralTopology.Partial.Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17baebb4fb05ae195db3e7250811147536e34d20",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17baebb4fb05ae195db3e7250811147536e34d20`.

Source path: `GRWTSK/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Partial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Neighborhoods` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rtendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/rtendsto-nhds--882e59ee705330eea4b3c1b2.md) | 31 | `result-track:882e59ee705330eea4b3c1b20701fa5b8506ca50095451f932b342e32e0aad00` |
| 2 | `theorem` | [rtendsto'_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/rtendsto-nhds--58d9ca7cd4f83faa84f45734.md) | 35 | `result-track:58d9ca7cd4f83faa84f45734419ee4193e9f970533a2b733498e15dd713eca2f` |
| 3 | `theorem` | [ptendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/ptendsto-nhds--cff45ade9f6754206704988c.md) | 41 | `result-track:cff45ade9f6754206704988c299ec1bd208b0da8e1b8d4c62acdb2a778fbfd11` |
| 4 | `theorem` | [ptendsto'_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/ptendsto-nhds--5888beda6a96dee43a808bf9.md) | 45 | `result-track:5888beda6a96dee43a808bf99625c2eb5cb107ef78c22609eab237c479008e38` |
| 5 | `def` | [PContinuous](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/pcontinuous--38c20cca455a5f96e5eeb866.md) | 55 | `declaration-track:38c20cca455a5f96e5eeb866ebf10d42ea53717b9db83c55a24210bb916e8706` |
| 6 | `theorem` | [open_dom_of_pcontinuous](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/open-dom-of-pcontinuous--b5fd0444f37ed4ff32724e76.md) | 58 | `result-track:b5fd0444f37ed4ff32724e766f25d3ff0a39dce5374088fa633f74ed9dcc9610` |
| 7 | `theorem` | [pcontinuous_iff'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/pcontinuous-iff--64547fae53fd4b921a4dee88.md) | 61 | `result-track:64547fae53fd4b921a4dee88b6002e255a7117a38916497fd96853de9f3be13e` |
| 8 | `theorem` | [continuousWithinAt_iff_ptendsto_res](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantded598584e3e39227716be62eba2efda01e149bcf88c1a65c58034351af11b40.lean/declarations/continuouswithinat-iff-ptendsto-res--39e81ddf31319676abed5e8e.md) | 84 | `result-track:39e81ddf31319676abed5e8e174df9ecb82330d687463e12540c83c2e99f6a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
