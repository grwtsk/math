# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Verschiebung.Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c183cdbd3c11f6c002298e0211d14197f142ff38",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c183cdbd3c11f6c002298e0211d14197f142ff38`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebungfun--b759c9b7523b834c86a3e392.md) | 44 | `declaration-track:b759c9b7523b834c86a3e392506a4e40ef27cd5d14990af654a60d2c45d0957e` |
| 2 | `theorem` | [verschiebungFun_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebungfun-coeff--32165bed7333c9b3be50cbd1.md) | 47 | `result-track:32165bed7333c9b3be50cbd1dbf9aee8c85a4524f3a650ab92d2e1b893242949` |
| 3 | `theorem` | [verschiebungFun_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebungfun-coeff-zero--9c274be2728419ce782ae4cd.md) | 51 | `result-track:9c274be2728419ce782ae4cd99a48e5bdf70a0f425d4376eb9c9a4bf34a78a70` |
| 4 | `theorem` | [verschiebungFun_coeff_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebungfun-coeff-succ--29a6b6af71585aafd97b9a20.md) | 55 | `result-track:29a6b6af71585aafd97b9a20f931773e051e942e32e27eb98bae9927ed375e32` |
| 5 | `theorem` | [ghostComponent_zero_verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/ghostcomponent-zero-verschiebungfun--dfe6efab0528d3fad7ef0594.md) | 60 | `result-track:dfe6efab0528d3fad7ef0594ba4f26ea03446e7332f3e932065ff0b8e4cfd86f` |
| 6 | `theorem` | [ghostComponent_verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/ghostcomponent-verschiebungfun--e8f5d492199500ef1a9b580d.md) | 66 | `result-track:e8f5d492199500ef1a9b580dc4576cfde8db7a0b2609ed2ffb1b3f2e070dc596` |
| 7 | `def` | [verschiebungPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebungpoly--0f604ae59b96e3b5735e979b.md) | 77 | `declaration-track:0f604ae59b96e3b5735e979bc1080b1f80cc32117f5bd233f805406c5975e0d2` |
| 8 | `theorem` | [verschiebungPoly_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebungpoly-zero--4f88f6a6539a03f71957fd6a.md) | 81 | `result-track:4f88f6a6539a03f71957fd6aaa8e5eb9922425c4f29b3b17e6e937c7244eee90` |
| 9 | `theorem` | [aeval_verschiebung_poly'](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/aeval-verschiebung-poly--951d8d60cd4369ea9beeec55.md) | 84 | `result-track:951d8d60cd4369ea9beeec551b0e290a3f9fc8c47777fe71ebea7f5b15a99cec` |
| 10 | `instance` | [verschiebungFun_isPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebungfun-ispoly--4dfad382fd13525df05e689c.md) | 96 | `declaration-track:4dfad382fd13525df05e689ccd23b7712e2bc643a6987bd60b6952d00aec5913` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/example--660c51bd790a29c02a8e8b2c.md) | 102 | `declaration-track:660c51bd790a29c02a8e8b2c113983b6981219a7d98b54c03a423e994ba642c2` |
| 12 | `def` | [verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebung--ee5bda5af98a80557763e005.md) | 115 | `declaration-track:ee5bda5af98a80557763e00542d2343bfad7545254359dba755c12fcdf482f7d` |
| 13 | `theorem` | [verschiebung_isPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebung-ispoly--38d064b4dc365893ac11ae8b.md) | 126 | `result-track:38d064b4dc365893ac11ae8b4cf99f72881c284e3ec6cd5eb2664264aaa771cf` |
| 14 | `theorem` | [map_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/map-verschiebung--8d9a2eea4b0fb2c6347f335d.md) | 131 | `result-track:8d9a2eea4b0fb2c6347f335d944c6d58b9856c80ce9bda73a7b4e12901654f95` |
| 15 | `theorem` | [ghostComponent_zero_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/ghostcomponent-zero-verschiebung--dfe06a5d8586e17f1fb9c531.md) | 138 | `result-track:dfe06a5d8586e17f1fb9c531f2e859d39f7c6e8e3989daca29589380d92a0066` |
| 16 | `theorem` | [ghostComponent_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/ghostcomponent-verschiebung--6e349e7d601b7690d1ed75cb.md) | 142 | `result-track:6e349e7d601b7690d1ed75cbb053bbe132cbb6ffcc5a00e0253a33becc688853` |
| 17 | `theorem` | [verschiebung_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebung-coeff-zero--51b44ff9987ab57ff121af39.md) | 147 | `result-track:51b44ff9987ab57ff121af3915e46df437e9e38ca00eecba282b9778785a7add` |
| 18 | `theorem` | [verschiebung_coeff_add_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebung-coeff-add-one--024a09cdb28e02507b8f99ba.md) | 151 | `result-track:024a09cdb28e02507b8f99ba28ab43ea718c6e867c2462b6ab5a1e4f8f8f4899` |
| 19 | `theorem` | [verschiebung_coeff_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebung-coeff-succ--4faa9a4cace1c2d69eece1db.md) | 156 | `result-track:4faa9a4cace1c2d69eece1dbc19be8d6b1679a3c18219e073db1e9e517c73431` |
| 20 | `theorem` | [verschiebung_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/verschiebung-injective--bae19a5da653b7fa29aaa0ae.md) | 160 | `result-track:bae19a5da653b7fa29aaa0ae9426b919bddf45587f449ed59bd207ed7068e563` |
| 21 | `theorem` | [aeval_verschiebungPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/aeval-verschiebungpoly--f97ea98a9ee890a2e6b3752c.md) | 167 | `result-track:f97ea98a9ee890a2e6b3752c1f647915f44dfe981da7718d16d2434961420165` |
| 22 | `theorem` | [bind₁_verschiebungPoly_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/declarations/bind-verschiebungpoly-wittpolynomial--10bd374ee8e129e772112707.md) | 172 | `result-track:10bd374ee8e129e772112707fb1b7c4c14c21b4977286469b4ca407a02315ad7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
