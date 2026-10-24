# Verification target: GRWTSK.Topology.GeneralTopology.Group.Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5279ed7a4c08544b00a27406c9f560a7bc9afa13",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5279ed7a4c08544b00a27406c9f560a7bc9afa13`.

Source path: `GRWTSK/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.MinMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Map` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Monoid` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_atTop_mul_left_of_le'](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-attop-mul-left-of-le--c2078035a4e98d999811b474.md) | 33 | `result-track:c2078035a4e98d999811b4744cd7904ed5c50e75aa69dfedb876e8eafed5a48c` |
| 2 | `theorem` | [tendsto_atBot_mul_left_of_ge'](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-atbot-mul-left-of-ge--b1cbad6369963c0e026a46aa.md) | 38 | `result-track:b1cbad6369963c0e026a46aa3ce1a1c5d714d76c32e18f2ff838e7310aedc034` |
| 3 | `theorem` | [tendsto_atTop_mul_left_of_le](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-attop-mul-left-of-le--555b197ed6f74661b72b200e.md) | 43 | `result-track:555b197ed6f74661b72b200e9b16530fa51686dcd6a4f2e646f8760c48b41826` |
| 4 | `theorem` | [tendsto_atBot_mul_left_of_ge](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-atbot-mul-left-of-ge--bf8d3770e6de3b2eacbbe21f.md) | 48 | `result-track:bf8d3770e6de3b2eacbbe21f91ce4bba40558aa6df8d7c22e04b671e9e2ce376` |
| 5 | `theorem` | [tendsto_atTop_mul_right_of_le'](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-attop-mul-right-of-le--8cb5beda1a84861ef5d098dc.md) | 53 | `result-track:8cb5beda1a84861ef5d098dccac7fb41972ae3781de098abd20f024e18553c81` |
| 6 | `theorem` | [tendsto_atBot_mul_right_of_ge'](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-atbot-mul-right-of-ge--b75d9f43a6d636bcff1f5ff8.md) | 58 | `result-track:b75d9f43a6d636bcff1f5ff855f8004df2ddc35c5c6bd3d8742f36b1b2905082` |
| 7 | `theorem` | [tendsto_atTop_mul_right_of_le](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-attop-mul-right-of-le--3bde2566b4b6e178c490ba92.md) | 63 | `result-track:3bde2566b4b6e178c490ba92f45c58ac8d2c05144b9b3699a1e18b4540147a2c` |
| 8 | `theorem` | [tendsto_atBot_mul_right_of_ge](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-atbot-mul-right-of-ge--80bc7f9154b7cb56d139e204.md) | 68 | `result-track:80bc7f9154b7cb56d139e2048397b5e78e5081ac7796db02598de0f3445f5a2e` |
| 9 | `theorem` | [tendsto_atTop_mul_const_left](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-attop-mul-const-left--14a8c1e00f1fbf741aa3065e.md) | 73 | `result-track:14a8c1e00f1fbf741aa3065eb7efb4313d040c50f543e437ca017c90e83af99b` |
| 10 | `theorem` | [tendsto_atBot_mul_const_left](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-atbot-mul-const-left--72841acffaf0f92aedfee78b.md) | 78 | `result-track:72841acffaf0f92aedfee78b0fb12e1d6714fa8ece2834c8432f04bd4914c21b` |
| 11 | `theorem` | [tendsto_atTop_mul_const_right](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-attop-mul-const-right--f34ad05e9b2bbdd73eded969.md) | 83 | `result-track:f34ad05e9b2bbdd73eded969bf5dd25f47b7c079e50b1125c62193cf14d96724` |
| 12 | `theorem` | [tendsto_atBot_mul_const_right](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-atbot-mul-const-right--4e6d21fbca66fbb6016dfbf3.md) | 88 | `result-track:4e6d21fbca66fbb6016dfbf34da1487bd65a7b952cec7ae640ee670a5bafb40b` |
| 13 | `theorem` | [map_inv_atBot](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/map-inv-atbot--9c8569bc2299fb9edab13d70.md) | 93 | `result-track:9c8569bc2299fb9edab13d70401ebdb1cb373b31c0d39e02544cb5ab961ef532` |
| 14 | `theorem` | [map_inv_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/map-inv-attop--b8356d1615550da7ca2003b3.md) | 97 | `result-track:b8356d1615550da7ca2003b3d72a8064a3e6510e25346625744d331143b6fcc1` |
| 15 | `theorem` | [comap_inv_atBot](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/comap-inv-atbot--789c8fba674f27fdc14947aa.md) | 101 | `result-track:789c8fba674f27fdc14947aa412b2c693828e9762c4d240f2cc52332a74b0855` |
| 16 | `theorem` | [comap_inv_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/comap-inv-attop--f268d64ef88e4d055d99c5ef.md) | 105 | `result-track:f268d64ef88e4d055d99c5ef9dd4c1050e17ec69edf3e366599791620e9766f8` |
| 17 | `theorem` | [tendsto_inv_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-inv-attop-atbot--4ed2eb4397875a495d029bf4.md) | 109 | `result-track:4ed2eb4397875a495d029bf4a4f2f50a74d513a7764758b86735b6fe16752aec` |
| 18 | `theorem` | [tendsto_inv_atBot_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-inv-atbot-attop--dbd8c64710df84747936a237.md) | 113 | `result-track:dbd8c64710df84747936a2378aee1491c9fb299d81fd94fe81fe38c68c6bdaca` |
| 19 | `theorem` | [tendsto_inv_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-inv-attop-iff--c7d43116b9dc218da179d003.md) | 119 | `result-track:c7d43116b9dc218da179d00318732490c5848ee29211df7c05527a12cefbf549` |
| 20 | `theorem` | [tendsto_inv_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-inv-atbot-iff--ee660d91c6c9c0e4aca685fb.md) | 123 | `result-track:ee660d91c6c9c0e4aca685fbcb64f17b5c2a40f69b9bd664b8dcb9803511db4e` |
| 21 | `theorem` | [tendsto_mabs_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-mabs-attop-attop--d5cdc23f931c2544a49049c2.md) | 134 | `result-track:d5cdc23f931c2544a49049c2d361ee11d90588fb36b9110384b21f9c16df96b5` |
| 22 | `theorem` | [tendsto_mabs_atBot_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/tendsto-mabs-atbot-attop--94a1ad35817850a7dc81aa39.md) | 139 | `result-track:94a1ad35817850a7dc81aa39770ed0702dfc1e9367d758999650d1eeccbf33e8` |
| 23 | `theorem` | [comap_mabs_atTop](../../../../../mathematics/Topology/GeneralTopology/Group/Variantc521f0d101f885504b43b86d8abc73d134b45c336805e4c249b2148d58da7967.lean/declarations/comap-mabs-attop--6a9f8b1d4acb044716b8f016.md) | 143 | `result-track:6a9f8b1d4acb044716b8f016cc6f78a58cee34086e2b613f22fef55ff69e26c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
