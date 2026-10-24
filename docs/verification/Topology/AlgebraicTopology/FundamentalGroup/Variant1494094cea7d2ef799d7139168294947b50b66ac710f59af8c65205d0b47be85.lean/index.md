# Verification target: GRWTSK.Topology.AlgebraicTopology.FundamentalGroup.Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89a796c9c183c5ffc8200822bca3218fac4aa92b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89a796c9c183c5ffc8200822bca3218fac4aa92b`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PathConnected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FundamentalGroup](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/fundamentalgroup--932afd53f4b14f4e004412dc.md) | 42 | `declaration-track:932afd53f4b14f4e004412dc4b4ada8aa100fc0cf918e738796822b2076ad2f6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/instance--796a156c0e5cf8bf69bbec56.md) | 46 | `declaration-track:796a156c0e5cf8bf69bbec56a15b136a68c54b2717161a6f9a7910963f09625c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/instance--97846db1488d2f51a76236af.md) | 50 | `declaration-track:97846db1488d2f51a76236aff8a3bd88f5904eb13d8889af83982027dcc13e2f` |
| 4 | `def` | [fundamentalGroupMulEquivOfPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/fundamentalgroupmulequivofpath--04ec75518dbaa34fcd373a90.md) | 62 | `declaration-track:04ec75518dbaa34fcd373a90426e8fc78b0cf0f5d2543a1fdf69c5c523299638` |
| 5 | `def` | [fundamentalGroupMulEquivOfPathConnected](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/fundamentalgroupmulequivofpathconnected--bd88ab96d41525f47c60617e.md) | 70 | `declaration-track:bd88ab96d41525f47c60617ee4908607260e8915452373968549d0cdce93ee3d` |
| 6 | `abbrev` | [toArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/toarrow--8c7d01ef483765fac3da0496.md) | 76 | `declaration-track:8c7d01ef483765fac3da0496647b78bacaa71945d44c2ba9a413c65c4807c06e` |
| 7 | `abbrev` | [toPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/topath--e85727fbbf33e9faf095c410.md) | 81 | `declaration-track:e85727fbbf33e9faf095c410cbb6060247768fc5be72163941f63d714676b0cc` |
| 8 | `abbrev` | [fromArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/fromarrow--00dc2e2c3f7294a6cd159579.md) | 86 | `declaration-track:00dc2e2c3f7294a6cd15957982ed6f5c9f5200399871c9ee0749d3b456cd0a30` |
| 9 | `abbrev` | [fromPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/declarations/frompath--ea896d68c777ecb1b20d4461.md) | 92 | `declaration-track:ea896d68c777ecb1b20d446105396a7b60de97b8055ae85b09bb7b6b0e106022` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
