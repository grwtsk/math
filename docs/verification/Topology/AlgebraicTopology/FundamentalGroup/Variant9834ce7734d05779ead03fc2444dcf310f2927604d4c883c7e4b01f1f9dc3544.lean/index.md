# Verification target: GRWTSK.Topology.AlgebraicTopology.FundamentalGroup.Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5427453edae6b1bb215daa9c9d4b60855315ffa0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5427453edae6b1bb215daa9c9d4b60855315ffa0`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PathConnected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FundamentalGroup](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/fundamentalgroup--790085e1ee82b199e97f3adc.md) | 34 | `declaration-track:790085e1ee82b199e97f3adce87ae213f99fe8b549a5567cb3a9b8aa8fe31d24` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/instance--90710997b2f5d78a0c0c4c98.md) | 38 | `declaration-track:90710997b2f5d78a0c0c4c98e36356ddb783075748cd9916cece21f71115690b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/instance--7d5579398650fb337794089e.md) | 42 | `declaration-track:7d5579398650fb337794089e7aceecd2b4aacd810442ca8799a32eea858df257` |
| 4 | `def` | [fundamentalGroupMulEquivOfPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/fundamentalgroupmulequivofpath--3d4986a36977274dbc58d57b.md) | 54 | `declaration-track:3d4986a36977274dbc58d57bb0b54bf889985f6f71b165f328ed7a88ac2d30e3` |
| 5 | `def` | [fundamentalGroupMulEquivOfPathConnected](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/fundamentalgroupmulequivofpathconnected--9ca73603cb3f8bd4c07fe5c0.md) | 62 | `declaration-track:9ca73603cb3f8bd4c07fe5c07eab5e4b6881f332d7887b988735995dc5f9b26d` |
| 6 | `abbrev` | [toArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/toarrow--b43760d6b10d6d67c6edbed4.md) | 68 | `declaration-track:b43760d6b10d6d67c6edbed47467ac042615fa46d70759b312b71e5c9e78c440` |
| 7 | `abbrev` | [toPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/topath--e850b8cd23e8d983be93248e.md) | 73 | `declaration-track:e850b8cd23e8d983be93248e61bd402ad493ddd44ae1ba08120fcf978aa7bd76` |
| 8 | `abbrev` | [fromArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/fromarrow--06becb8b4d72376a752b8e23.md) | 78 | `declaration-track:06becb8b4d72376a752b8e23fb552e5d64379bb96589b72a3220e13f1f91f015` |
| 9 | `abbrev` | [fromPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/declarations/frompath--6b809ceb2da434b0d3b0fb6c.md) | 84 | `declaration-track:6b809ceb2da434b0d3b0fb6c38fc911e8b8330cc47cac6a826ad7ed5d8be6b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
