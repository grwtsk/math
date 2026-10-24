# Verification target: GRWTSK.NumberTheory.Height.RationalVectorAffineHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08bf6ec91f9a7815932c3a245b5d5132fb986135",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08bf6ec91f9a7815932c3a245b5d5132fb986135`.

Source path: `GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Height/RationalVectorAffineHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm`](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Algebra.GCDMonoid.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ClearsValue](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/clearsvalue--5aba65948fa25e91a04d83b9.md) | 24 | `declaration-track:5aba65948fa25e91a04d83b92f0d435064ec07cd0f35b4492510dd22299a25f9` |
| 2 | `theorem` | [clearsValue_iff](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/clearsvalue-iff--e23a1d236aec00e0faa66c13.md) | 26 | `result-track:e23a1d236aec00e0faa66c1335d6a62596fe3068f05c08aca249f790ce241f53` |
| 3 | `theorem` | [clears_add](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/clears-add--aa38566f159ea7a70a85174f.md) | 45 | `result-track:aa38566f159ea7a70a85174f2c0f0b44bf300623a2ceae3a297dedfe877ba51d` |
| 4 | `theorem` | [clears_sub](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/clears-sub--11364c091937bbc11a7dc1c1.md) | 52 | `result-track:11364c091937bbc11a7dc1c197820b262179c8e67e8235366bd706cc02fd4fd9` |
| 5 | `theorem` | [clears_int_mul](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/clears-int-mul--c46ad564d220ea745b3a6c3f.md) | 59 | `result-track:c46ad564d220ea745b3a6c3f4260ccefaa997b3e208fd45d75d385dc0c0d0f01` |
| 6 | `theorem` | [clears_divisor](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/clears-divisor--b7031dfdf978c2e772a43c41.md) | 68 | `result-track:b7031dfdf978c2e772a43c41c8340391bbe88fd261b2c308eadfc3e118548c01` |
| 7 | `theorem` | [clears_reciprocal_iff](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/clears-reciprocal-iff--0eca498ff91934ade1327a3e.md) | 81 | `result-track:0eca498ff91934ade1327a3e6e05322d806d44d1f2ca7eae9f827dafa7fd7350` |
| 8 | `def` | [denominator](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/denominator--23c95a72efaf512818f553c6.md) | 100 | `declaration-track:23c95a72efaf512818f553c6a37221fb8750a80179625a3be2979d9d221ea9b0` |
| 9 | `theorem` | [denominator_ne_zero](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/denominator-ne-zero--870abd2e0d34ad21afbf5729.md) | 102 | `result-track:870abd2e0d34ad21afbf5729e54cd6e3fc8b3d6ec9f3e30de21db0ff23cbafd8` |
| 10 | `theorem` | [denominator_dvd_iff](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/denominator-dvd-iff--cc56c69248346daf1dcb52f5.md) | 105 | `result-track:cc56c69248346daf1dcb52f54af7723d53ed445c83ccb6d864921e07f04d814c` |
| 11 | `theorem` | [denominator_dvd_iff_clears](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/denominator-dvd-iff-clears--8e631c4829816cca8ad56625.md) | 109 | `result-track:8e631c4829816cca8ad56625a0490265c3ce7f450d02a8a1c136e2137972e07a` |
| 12 | `theorem` | [denominator_clears](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/denominator-clears--60fc9108656ebc7a6d6d1fd8.md) | 114 | `result-track:60fc9108656ebc7a6d6d1fd8fa8a725e04cb8402b7e87548dad76d38b0cf0485` |
| 13 | `theorem` | [denominator_int](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/denominator-int--91b31e9d16e87d3225ca23a7.md) | 117 | `result-track:91b31e9d16e87d3225ca23a7ccaf9ff843ecd8230d98a9beac670751e01d754f` |
| 14 | `def` | [numerator](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/numerator--8fa706c4c84baa9865cbad54.md) | 121 | `declaration-track:8fa706c4c84baa9865cbad54f9a7d833199e185f4cd3b426fc50646c7cf0087c` |
| 15 | `theorem` | [numerator_spec](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/numerator-spec--ef0372dda31853810c6eee2c.md) | 123 | `result-track:ef0372dda31853810c6eee2cd9486b8ae235bbbf7114e47d750826859e0cb421` |
| 16 | `def` | [representative](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/representative--7747da42cd418867295c913e.md) | 129 | `declaration-track:7747da42cd418867295c913ecafb7418a5f98676b0a74e2ebe7073598f10926d` |
| 17 | `theorem` | [representative_primitive](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/representative-primitive--ba05adec6325dd5b413d6d70.md) | 134 | `result-track:ba05adec6325dd5b413d6d70d3048b1b3ab8afc1a6df63080b14bda20720860a` |
| 18 | `def` | [height](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/height--50905332820380b278974db4.md) | 164 | `declaration-track:50905332820380b278974db4f27613a66f33adccba5fb5f0dedd87c1e882eaea` |
| 19 | `def` | [logHeight](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/logheight--4e70a538bde66158e24e78a4.md) | 166 | `declaration-track:4e70a538bde66158e24e78a42cffd785fed1e7195c8e3d6827fba0a626c6f5d1` |
| 20 | `theorem` | [height_one_le](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/height-one-le--61ae25d413f0d30203cd3dee.md) | 168 | `result-track:61ae25d413f0d30203cd3dee702688fce9052a0891226bd7d0c79c30ab26a3c5` |
| 21 | `theorem` | [representative_height](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/representative-height--f86b2472f0e9573654e8271c.md) | 175 | `result-track:f86b2472f0e9573654e8271ca86050a7200c13aba7191ffa3212f8085db6457e` |
| 22 | `theorem` | [height_zero](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/height-zero--01e82f47df1a8b4ef3d9ddc6.md) | 209 | `result-track:01e82f47df1a8b4ef3d9ddc62a021db86d6836006d0d356c38cd830daa2b13e6` |
| 23 | `theorem` | [height_integer](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/height-integer--43468413c8e8df0e91205831.md) | 214 | `result-track:43468413c8e8df0e91205831afe0556f0087e3fe8f96cef050c10430d8cf6cb0` |
| 24 | `theorem` | [height_le_of_denominator_dvd](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/height-le-of-denominator-dvd--e139fb6feec390a20f053d27.md) | 219 | `result-track:e139fb6feec390a20f053d27cbfe6e1d996c4aa0276448c83a32021f8b66c1ca` |
| 25 | `theorem` | [logHeight_le_of_height_le](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/logheight-le-of-height-le--21477e6f1570e741489ead16.md) | 237 | `result-track:21477e6f1570e741489ead1616ed4058d30042dabd7ea7830495725ba1920d2f` |
| 26 | `theorem` | [affine_scaling_fixture](../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/declarations/affine-scaling-fixture--c14772dbeedab4d4d77c545e.md) | 248 | `result-track:c14772dbeedab4d4d77c545e75084c8a0ca119b9f4aff3f36f2d78984537341b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
