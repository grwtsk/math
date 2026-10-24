# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e78de916d77e5f4112ba98417d4d854aa5e6958d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e78de916d77e5f4112ba98417d4d854aa5e6958d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ioo--aed18877883588767a6d8003.md) | 31 | `declaration-track:aed18877883588767a6d8003f12baac46d77fb4cc6fc6382200bd3a9e16071a5` |
| 2 | `theorem` | [mem_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-ioo--8bd625e47d4a5f9f318e3643.md) | 33 | `result-track:8bd625e47d4a5f9f318e3643ec5fb17ed9aaf5fec6715dd2a5004d089b59a8ee` |
| 3 | `theorem` | [Ioo_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ioo-def--bd741beb99d87a326f04b0e3.md) | 34 | `result-track:bd741beb99d87a326f04b0e3ed456d3012318de9f5f164ccf299f3819fbfdc68` |
| 4 | `def` | [Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ico--1bdee3294b3024dbc1159517.md) | 37 | `declaration-track:1bdee3294b3024dbc11595179245ae21c47623d0fb28b292aad189936b66277c` |
| 5 | `theorem` | [mem_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-ico--7139325061266729761860b6.md) | 39 | `result-track:7139325061266729761860b64d85a39cef24ebd64913c88966c03368cd2b266c` |
| 6 | `theorem` | [Ico_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ico-def--4dec99fb8a7f455cdd3bf7b5.md) | 40 | `result-track:4dec99fb8a7f455cdd3bf7b51e31227422d735d7af502b723c04f64233696ea0` |
| 7 | `def` | [Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/iio--8397af3b52e207b2ec7f6305.md) | 43 | `declaration-track:8397af3b52e207b2ec7f6305a23672297558bc15a42fd0fb6ac3fd7bda175d3c` |
| 8 | `theorem` | [mem_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-iio--4724987df4f825bbe2607878.md) | 45 | `result-track:4724987df4f825bbe2607878ace053efa9c0f32c028c3940c941e7e77d607e4e` |
| 9 | `theorem` | [Iio_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/iio-def--207ddf8742f7154a42dc53f6.md) | 46 | `result-track:207ddf8742f7154a42dc53f6bfc06583761f90379a9ad168811117877f448db6` |
| 10 | `def` | [Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/icc--20351248a921fff49fe1e90d.md) | 49 | `declaration-track:20351248a921fff49fe1e90dd1325bdcb5001831d6e7d36cd821e9c3884862ff` |
| 11 | `theorem` | [mem_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-icc--f7e17b8c84abe6159b27ace2.md) | 51 | `result-track:f7e17b8c84abe6159b27ace26e9d98d7114faf2fe3a9f2fefd84375c9b91ec0a` |
| 12 | `theorem` | [Icc_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/icc-def--bbbd4c1ce9b0dfb31ce56770.md) | 52 | `result-track:bbbd4c1ce9b0dfb31ce567700f806f346c47f5b9710a0c70728719d4ee80b18b` |
| 13 | `def` | [Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/iic--0588bea696ae82c3ded9e71e.md) | 55 | `declaration-track:0588bea696ae82c3ded9e71e71085454159d81686e0672661dc7c577ce1e7148` |
| 14 | `theorem` | [mem_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-iic--74a7c50cd1e8b1e94fdc9cf3.md) | 57 | `result-track:74a7c50cd1e8b1e94fdc9cf36d4f61adaf119db2f7abf2e9ae0a95cc5f2f900b` |
| 15 | `theorem` | [Iic_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/iic-def--9365726e59661c79d331a3a3.md) | 58 | `result-track:9365726e59661c79d331a3a32aa778ccd5e506a4864d37134f5baabb9904bde0` |
| 16 | `def` | [Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ioc--8a21bb78c461e8a6204e5c59.md) | 61 | `declaration-track:8a21bb78c461e8a6204e5c590b58ac10cdc642bcb80118c7f68e879266ef00e1` |
| 17 | `theorem` | [mem_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-ioc--fdfb6bf72cd694e555a1c340.md) | 63 | `result-track:fdfb6bf72cd694e555a1c340c918751a55fcd9fc4d6b7080685baef5eb8d4822` |
| 18 | `theorem` | [Ioc_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ioc-def--f0b63be98ce6fa8ba5c42a3e.md) | 64 | `result-track:f0b63be98ce6fa8ba5c42a3e22cec4c83de56e1f262e57c0ce3794bb246964b8` |
| 19 | `def` | [Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ici--32ab3d0680d2ec0495a57c9d.md) | 67 | `declaration-track:32ab3d0680d2ec0495a57c9d852d39f9529b8e1217aae9f418f6d773cc706848` |
| 20 | `theorem` | [mem_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-ici--0c91c0f19b76da1a47fe3b57.md) | 69 | `result-track:0c91c0f19b76da1a47fe3b57d5ad006bf6d7c4a410bc865f0b3abf6a8dfff15e` |
| 21 | `theorem` | [Ici_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ici-def--3e743189cfb87c2dc5bf942c.md) | 70 | `result-track:3e743189cfb87c2dc5bf942c0b6f2f0baec01cd627f6b915a92d0ff9de1d2b19` |
| 22 | `def` | [Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ioi--550247e2cc31b927b6ffe36f.md) | 73 | `declaration-track:550247e2cc31b927b6ffe36fecbcdcab630172aeeac84c5e511faeee36b0c9a1` |
| 23 | `theorem` | [mem_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/mem-ioi--7e264d4a50047d4cd00b65a2.md) | 75 | `result-track:7e264d4a50047d4cd00b65a22b1d867925a9b5ea3816bff0acbc816b09f962b4` |
| 24 | `theorem` | [Ioi_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ioi-def--ed0268def8131e02658e367f.md) | 76 | `result-track:ed0268def8131e02658e367fab191f6bae0bfbeff91b47d8a26fcfc27fa8e638` |
| 25 | `class` | [OrdConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant951d56f36154c89f41b0a5f796cda11b7e887301893cf18636fed6637ac7b41d.lean/declarations/ordconnected--c1acea17762b331a4fa7c3aa.md) | 82 | `declaration-track:c1acea17762b331a4fa7c3aa00398f6c690f445ebf8e5fb44e9ba769920a3cce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
