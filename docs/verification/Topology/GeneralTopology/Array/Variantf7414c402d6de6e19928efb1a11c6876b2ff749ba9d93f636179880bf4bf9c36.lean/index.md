# Verification target: GRWTSK.Topology.GeneralTopology.Array.Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00a1f1e2a113485dd159b4c2a7dddb16ac9a1785",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00a1f1e2a113485dd159b4c2a7dddb16ac9a1785`.

Source path: `GRWTSK/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Option.List` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/mem-toarray--20cb7b29d301f588dc32838e.md) | 30 | `result-track:20cb7b29d301f588dc32838e7df74c9eacdc9b29e32173fc77b83aacbb3277e2` |
| 2 | `theorem` | [forIn'_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/forin-toarray--65b5d8b29a05d07474324f46.md) | 33 | `result-track:65b5d8b29a05d07474324f46d59da52cf2d6bc0ad29c1583220335e6d5b37c32` |
| 3 | `theorem` | [forIn_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/forin-toarray--98925b63fd072c0366ddb2d7.md) | 37 | `result-track:98925b63fd072c0366ddb2d7e11cd1a667e2f569e7aff93d6dad3ddc888791df` |
| 4 | `theorem` | [foldlM_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/foldlm-toarray--acb8a25e88d81ba0a748d8fa.md) | 41 | `result-track:acb8a25e88d81ba0a748d8faf64627fe8f9a501b5bbb5f867096a6af73eb30ae` |
| 5 | `theorem` | [foldrM_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/foldrm-toarray--b98d29535842fbbec2518eb7.md) | 45 | `result-track:b98d29535842fbbec2518eb7378e679c3fdddeecbe5847b0d9628fe113246205` |
| 6 | `theorem` | [foldl_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/foldl-toarray--3ce446df2ca67ddfbb18e87e.md) | 49 | `result-track:3ce446df2ca67ddfbb18e87e07a51aec8b48f56ab49367a0536a6e5dcebe134c` |
| 7 | `theorem` | [foldr_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/foldr-toarray--7b70a62ac2a209d3260dbcb7.md) | 53 | `result-track:7b70a62ac2a209d3260dbcb7f8eaa6c5e7e9ab54a3af30bcaee9ff62ec6e31f7` |
| 8 | `theorem` | [toList_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/tolist-toarray--02b1ca6e613ebfa7724ce9b7.md) | 58 | `result-track:02b1ca6e613ebfa7724ce9b724950d14b8ba665e489818423e6e2b29868140ee` |
| 9 | `theorem` | [toArray_toList](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-tolist--0e5e9e0d01a15c0bf70e806a.md) | 62 | `result-track:0e5e9e0d01a15c0bf70e806ac0bcae10d3e9e68595072a681c53746632e239a3` |
| 10 | `theorem` | [toArray_filter](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-filter--b72094d138f7d10f264d358c.md) | 65 | `result-track:b72094d138f7d10f264d358cff5da7da02d062e77860f3dec5808a111ff9cf8f` |
| 11 | `theorem` | [toArray_bind](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-bind--41f223d0a14b33abd9bb3486.md) | 69 | `result-track:41f223d0a14b33abd9bb3486ea56999263cc93d2cab580018535ccb38a4fca47` |
| 12 | `theorem` | [toArray_join](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-join--ae1e18b11a47e208039fdd8f.md) | 73 | `result-track:ae1e18b11a47e208039fdd8ffe6ec5100b278d5fda0601709b5f905610f5d539` |
| 13 | `theorem` | [toArray_map](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-map--c896ffc3174e86d47d5fd9fc.md) | 76 | `result-track:c896ffc3174e86d47d5fd9fc49a133e9ae82322d5221fceda52deaee7c424ecd` |
| 14 | `theorem` | [toArray_min](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-min--8b4fd297cb6c89c9ab44fdb0.md) | 79 | `result-track:8b4fd297cb6c89c9ab44fdb0f07b1328e87402726f012209bfabacdc0e87a4b6` |
| 15 | `theorem` | [size_toArray_le](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/size-toarray-le--cd2ccf10c8147c980ed4476c.md) | 84 | `result-track:cd2ccf10c8147c980ed4476c3f6c871cf24b9d0b5c3b85b2eb9b09ab444a5eb2` |
| 16 | `theorem` | [size_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/size-toarray--ee77d5456ec5307fb203be62.md) | 88 | `result-track:ee77d5456ec5307fb203be62502b46071cb29e68356c066dd6ff0548d42d7999` |
| 17 | `theorem` | [toArray_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-eq-empty-iff--239c2fbf41cb0043b8b68d61.md) | 93 | `result-track:239c2fbf41cb0043b8b68d616e29da157bc6081a450e7f4983641801bd4eef4b` |
| 18 | `theorem` | [toArray_eq_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/toarray-eq-singleton-iff--1a0ef57317c63e606490ba17.md) | 97 | `result-track:1a0ef57317c63e606490ba178dbd50ecd8157779c3ea3d0febc40345263cb86e` |
| 19 | `theorem` | [size_toArray_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/size-toarray-eq-zero-iff--07e225961759a18508b2fa89.md) | 100 | `result-track:07e225961759a18508b2fa891ef6a7a4e58bd842bc4d28ea579f899d75f42089` |
| 20 | `theorem` | [size_toArray_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/size-toarray-eq-one-iff--06d35738aaa7b92e22adc00f.md) | 105 | `result-track:06d35738aaa7b92e22adc00f35746b3ab412984a4efdaea2576c47b69f11cc4d` |
| 21 | `theorem` | [size_toArray_choice_eq_one](../../../../../mathematics/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean/declarations/size-toarray-choice-eq-one--0abaaf46d7b8ee765c6ea8a7.md) | 109 | `result-track:0abaaf46d7b8ee765c6ea8a78d6b814ce41c8e0f4714e91bd7b9bdfba0222397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
