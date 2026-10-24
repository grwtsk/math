# Verification target: GRWTSK.Algebra.UniversalAlgebra.UpperLower.Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4a280d8a2495c0dbd6bee48380e450285c9e3b",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4a280d8a2495c0dbd6bee48380e450285c9e3b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.OrderIso` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Closure` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.smul_subset](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/isupperset-smul-subset--0b74a86bca2f3952cfd72586.md) | 37 | `result-track:0b74a86bca2f3952cfd725866151b38d2386f0d64f94a385c71df8f55c344858` |
| 2 | `theorem` | [IsLowerSet.smul_subset](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/islowerset-smul-subset--7e351051e59ca12b767cb00f.md) | 41 | `result-track:7e351051e59ca12b767cb00f99896464d6dc2dc0ede53efb6847cdaade2f619b` |
| 3 | `theorem` | [IsUpperSet.smul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/isupperset-smul--6cc55b0d90e96a55ac343db1.md) | 51 | `result-track:6cc55b0d90e96a55ac343db1b257feb99048c506acb5c77c19d02c36fd3a421b` |
| 4 | `theorem` | [IsLowerSet.smul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/islowerset-smul--2676cb73514abe61f47461e5.md) | 54 | `result-track:2676cb73514abe61f47461e56117e3f10cd1fbe6f19be7d66c7d08e2a3eb529e` |
| 5 | `theorem` | [Set.OrdConnected.smul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/set-ordconnected-smul--0056e7f45d0c9d210e649a33.md) | 57 | `result-track:0056e7f45d0c9d210e649a33cc0694dfcb7c5fb6860c49b8a73c906c661c3038` |
| 6 | `theorem` | [IsUpperSet.mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/isupperset-mul-left--a2c7e3b301c628837f385441.md) | 62 | `result-track:a2c7e3b301c628837f385441391eacd720b4c590393431393cedb1a211a46683` |
| 7 | `theorem` | [IsUpperSet.mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/isupperset-mul-right--8e36fb0608c18e6176f4818d.md) | 67 | `result-track:8e36fb0608c18e6176f4818da274076631e9d7fbdb0daf2ad549273cf32d9934` |
| 8 | `theorem` | [IsLowerSet.mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/islowerset-mul-left--127261293800d14ee43be9f9.md) | 72 | `result-track:127261293800d14ee43be9f9f116ce91333f89da170e13fb06a2b324ec13a18f` |
| 9 | `theorem` | [IsLowerSet.mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/islowerset-mul-right--fd17461fc8f29d353ad1c710.md) | 75 | `result-track:fd17461fc8f29d353ad1c710b4ad4fd9aac4cdb2dd3547074cd2a332cdc06de8` |
| 10 | `theorem` | [IsUpperSet.inv](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/isupperset-inv--a9c6025c991b2f5f08192e59.md) | 78 | `result-track:a9c6025c991b2f5f08192e59428b651846157baa4958d9e7641768f791ce97e5` |
| 11 | `theorem` | [IsLowerSet.inv](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/islowerset-inv--43104c0ce7c589cb945f2809.md) | 81 | `result-track:43104c0ce7c589cb945f28097d1039ca6023ee598e5c44056082e04f214475a8` |
| 12 | `theorem` | [IsUpperSet.div_left](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/isupperset-div-left--aa517dfa2131270efecac1f7.md) | 84 | `result-track:aa517dfa2131270efecac1f7a20b34ec970456afc46c4920dbd528c4866d17be` |
| 13 | `theorem` | [IsUpperSet.div_right](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/isupperset-div-right--c2f9973ba8d170ed230c067e.md) | 89 | `result-track:c2f9973ba8d170ed230c067eda8acc3cd62ee9d7d189b1c3f548544aecac7456` |
| 14 | `theorem` | [IsLowerSet.div_left](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/islowerset-div-left--3a1415f7874e2c6fc9a8b774.md) | 94 | `result-track:3a1415f7874e2c6fc9a8b77410fe85e70a94f1ea63551e7725d85b4cba9b6e3f` |
| 15 | `theorem` | [IsLowerSet.div_right](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/islowerset-div-right--12aba0cf30cf42db2ad41a7f.md) | 97 | `result-track:12aba0cf30cf42db2ad41a7f871aae872cabd9779ed5d9c61b0f8025138855c0` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--7ac3da300ea59c3d5e075657.md) | 102 | `declaration-track:7ac3da300ea59c3d5e0756578f2de7cc04d8ad97fe8d8f6975c9c4a797d66ba2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--a50b3f044277fb84d213377f.md) | 106 | `declaration-track:a50b3f044277fb84d213377f584cef44ac799e96a70c4d365a7d349eefa4afca` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--a0540d980fe1e807fbfda65d.md) | 110 | `declaration-track:a0540d980fe1e807fbfda65dd984de60533ef59a18544b7def2af365c0f42ba4` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--26dd672371f1029ae5d6227f.md) | 114 | `declaration-track:26dd672371f1029ae5d6227f03868828b7dd1ed2559ddd96350ec27766a237c9` |
| 20 | `theorem` | [coe_one](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/coe-one--ef39c25c0a0fbbd13a43cae3.md) | 119 | `result-track:ef39c25c0a0fbbd13a43cae3e25612de2b93921963b8b6e9a96bbecf552f8112` |
| 21 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/coe-mul--5dce10577fe76f3c6ce54e0f.md) | 123 | `result-track:5dce10577fe76f3c6ce54e0f30afb903faa14414a6838d70c5846c808b26247a` |
| 22 | `theorem` | [coe_div](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/coe-div--76a2b1a4fe18550e5f6dd14e.md) | 127 | `result-track:76a2b1a4fe18550e5f6dd14e9436dc0cb6420ed070ae457dd8ff973f630a2405` |
| 23 | `theorem` | [Ici_one](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/ici-one--cc0b577d4ba87aded38a8b00.md) | 132 | `result-track:cc0b577d4ba87aded38a8b001177e352fa78b4079a08e87b5a1d48b465498dfd` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--bcbe79515a3e22d06e11ae8f.md) | 136 | `declaration-track:bcbe79515a3e22d06e11ae8fdf854cd26558639eb078fd837c9be262490563fa` |
| 25 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/commsemigroup--4b5ddf696993dbe164460585.md) | 140 | `declaration-track:4b5ddf696993dbe164460585632d0d9bfdd342c25dfc245c19f71d33fb71b24b` |
| 26 | `theorem` | [one_mul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/one-mul--75f2ed8e866f98eda4414a6f.md) | 144 | `result-track:75f2ed8e866f98eda4414a6f03b5bb095492a06c1bc599ee0eb0831533136f2b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--e0672c2521993b9c8a8d91f6.md) | 151 | `declaration-track:e0672c2521993b9c8a8d91f60b39b632d2353f8787703e5da492020335687757` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--7bb770889c0de02123869687.md) | 164 | `declaration-track:7bb770889c0de021238696872f2c573d96c0c186759343a43bdeb013cb15d6bb` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--a199c1044be5b40407cc49c9.md) | 168 | `declaration-track:a199c1044be5b40407cc49c9dd51f8aa477b5893cd6a12b9ca9dd016c9ac4459` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--5bdd19d10b2aeb185e400f1c.md) | 172 | `declaration-track:5bdd19d10b2aeb185e400f1c440a32921f67f5236bfb181692a1353133f791d6` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--7f0271595f81d6db9f18b9af.md) | 176 | `declaration-track:7f0271595f81d6db9f18b9aff228007e94db52b2e09cc8add70c00db6cfa889a` |
| 32 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/coe-mul--3ee2ef9fe2f877009c1a02f7.md) | 180 | `result-track:3ee2ef9fe2f877009c1a02f78aeda67443c87f8929ed7c11915f658b93878e51` |
| 33 | `theorem` | [coe_div](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/coe-div--1347dc74d940830590bbf565.md) | 184 | `result-track:1347dc74d940830590bbf565c882d84f0e72254a60eb5ba2e8d71e2c8b2cec2b` |
| 34 | `theorem` | [Iic_one](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/iic-one--95e97bb9f5ab9f463243eed0.md) | 189 | `result-track:95e97bb9f5ab9f463243eed041c4783326c0b45c371f69d3c305ff9b3b92fe6b` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--d0b516c4780eeb7c71bb4f01.md) | 193 | `declaration-track:d0b516c4780eeb7c71bb4f01c4bd2bd4fe0aaff8c41de0de2c0d6e804dc1d9e6` |
| 36 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/commsemigroup--6156cf791ee9b0fe52146876.md) | 197 | `declaration-track:6156cf791ee9b0fe52146876d96e0f5d68316d4743bf7c37d1729e8f110439ce` |
| 37 | `theorem` | [one_mul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/one-mul--8a56eb32ae7cbfb79fab199a.md) | 201 | `result-track:8a56eb32ae7cbfb79fab199a13dace213abc0d7ea82609828a373bd0083ab7de` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/instance--13436722fdda4d87928347d2.md) | 208 | `declaration-track:13436722fdda4d87928347d280fca2090ac2d8556d363d3d97df2972d5660e4d` |
| 39 | `theorem` | [upperClosure_one](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/upperclosure-one--b0e90432f9de4f247b3a727f.md) | 222 | `result-track:b0e90432f9de4f247b3a727f0e5a939914d3d99cdba59bea264e8235c4f0e84e` |
| 40 | `theorem` | [lowerClosure_one](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/lowerclosure-one--3e708b50a3e6aa2c9524d1d5.md) | 227 | `result-track:3e708b50a3e6aa2c9524d1d589ec513bc26f2b5976694a16150f34f10e65ac68` |
| 41 | `theorem` | [upperClosure_smul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/upperclosure-smul--d4b49f15a181b3ebd4a58154.md) | 231 | `result-track:d4b49f15a181b3ebd4a581546cd425da59cfd9700e9bcf44118bece260993540` |
| 42 | `theorem` | [lowerClosure_smul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/lowerclosure-smul--9e91b0fee59a1937affa4c8d.md) | 235 | `result-track:9e91b0fee59a1937affa4c8d81cb27f48773a0b910c394501bfe2fdd1c2c458a` |
| 43 | `theorem` | [mul_upperClosure](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/mul-upperclosure--5569623396ebae13fa808da0.md) | 239 | `result-track:5569623396ebae13fa808da0ecbf59d4dd7c79f642ddba38a2dd959d06650f59` |
| 44 | `theorem` | [mul_lowerClosure](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/mul-lowerclosure--7283446f23bad35d53ba6cbc.md) | 245 | `result-track:7283446f23bad35d53ba6cbc266955aec0a7fd6872f77c10a028dc5016354422` |
| 45 | `theorem` | [upperClosure_mul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/upperclosure-mul--3aa736f1cffd91991da3d659.md) | 251 | `result-track:3aa736f1cffd91991da3d65918e1cc67fad243fcd2396565b15aaae2ed636966` |
| 46 | `theorem` | [lowerClosure_mul](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/lowerclosure-mul--833d7ca1c3475c128eb915bb.md) | 256 | `result-track:833d7ca1c3475c128eb915bb5c4cfde42523f913f318b651031e75d9daa6cede` |
| 47 | `theorem` | [upperClosure_mul_distrib](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/upperclosure-mul-distrib--b8a24b40458c52b01e4db3d8.md) | 261 | `result-track:b8a24b40458c52b01e4db3d821d4ca636da52e5023a145d63e64c49135bdd3ee` |
| 48 | `theorem` | [lowerClosure_mul_distrib](../../../../../mathematics/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/declarations/lowerclosure-mul-distrib--6c324ecff6d30174b4174e5e.md) | 266 | `result-track:6c324ecff6d30174b4174e5e225734f770594fdd1f8b0a3081b9f15df36ea132` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
