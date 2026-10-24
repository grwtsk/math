# Verification target: GRWTSK.Topology.AlgebraicTopology.FundamentalGroup.Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34bfa3bd71c05fa6564eec8d58cc7f8a361df725",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34bfa3bd71c05fa6564eec8d58cc7f8a361df725`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FundamentalGroup](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/fundamentalgroup--ee5a64198c57600e0b1a8cd8.md) | 31 | `declaration-track:ee5a64198c57600e0b1a8cd8cb118cb29072609eed0f6acb88facc718547aa71` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/instance--57587ea524768642ab76457f.md) | 34 | `declaration-track:57587ea524768642ab76457f1bc459f126305cca17138a29aad5895bbedf4697` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/instance--ab0dbb62e9d6fd935ac82f79.md) | 38 | `declaration-track:ab0dbb62e9d6fd935ac82f79d51346a3f12c8ca2595d966da6edea09e76704f8` |
| 4 | `def` | [fundamentalGroupMulEquivOfPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/fundamentalgroupmulequivofpath--93e1e758d4b6254307244bbc.md) | 47 | `declaration-track:93e1e758d4b6254307244bbcdb8ee29752e99bac0471c4db34e8e5deaac8d499` |
| 5 | `def` | [fundamentalGroupMulEquivOfPathConnected](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/fundamentalgroupmulequivofpathconnected--4a8e5312e094ffa753a5c62f.md) | 54 | `declaration-track:4a8e5312e094ffa753a5c62f01058b5022c36c34418ba8a5048e506506ad034b` |
| 6 | `abbrev` | [toArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/toarrow--d67bb1b4c7cd09bc91bd8d11.md) | 59 | `declaration-track:d67bb1b4c7cd09bc91bd8d117a25d03ff0810d6f9294524a81278a397c266ca9` |
| 7 | `abbrev` | [toPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/topath--558062a586d8ac345b390d5d.md) | 64 | `declaration-track:558062a586d8ac345b390d5d358df0fd71147d622ab56bef343787ae465e858c` |
| 8 | `abbrev` | [fromArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/fromarrow--ecce96582b6887ac0e6fff35.md) | 68 | `declaration-track:ecce96582b6887ac0e6fff35951c97aac64ece58e80dcbeb729d3fd6ee703485` |
| 9 | `abbrev` | [fromPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63.lean/declarations/frompath--a86dba47bb5e9a03a89a6ee6.md) | 75 | `declaration-track:a86dba47bb5e9a03a89a6ee63afaafa3ae2d992689ddca4e8ba24e2416489741` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
