# Verification target: GRWTSK.Algebra.LinearAlgebra.Block.Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97a724930e365f533c97d633991cfcaea93f85d7",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97a724930e365f533c97d633991cfcaea93f85d7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Transvection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular--10816360aa7b0d6a417dbd8d.md) | 65 | `declaration-track:10816360aa7b0d6a417dbd8d8fddd21c132a66bc7ed311c9d1df812704774feb` |
| 2 | `theorem` | [BlockTriangular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-submatrix--a7b2096882dc35101f697ebe.md) | 69 | `result-track:a7b2096882dc35101f697ebe75f6d2ffcbe88db34b2ce7b835d0b3739048b16c` |
| 3 | `theorem` | [blockTriangular_reindex_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-reindex-iff--e14d4b5c2306662c821fe2f6.md) | 72 | `result-track:e14d4b5c2306662c821fe2f6edd386cd82b2d1246ea5acaaecce1ee3aaaa1bf9` |
| 4 | `theorem` | [BlockTriangular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-transpose--175b8a937a89bb619895bef9.md) | 80 | `result-track:175b8a937a89bb619895bef9ceb8c90ec7713f5464806d9bc10638597a63d0c9` |
| 5 | `theorem` | [blockTriangular_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-transpose-iff--59769b566815764965f9ae58.md) | 85 | `result-track:59769b566815764965f9ae5886559e9924bf7654dfc027ae8b61e184f67063bc` |
| 6 | `theorem` | [blockTriangular_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-zero--b32f450c47546c4b73610136.md) | 90 | `result-track:b32f450c47546c4b73610136bffbdb1e8b07c9e50706db96ac94d3e3027dfb33` |
| 7 | `theorem` | [BlockTriangular.neg](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-neg--45be2ff20c338df468b0e640.md) | 94 | `result-track:45be2ff20c338df468b0e640b376566e9e0feb7ba4c9b3ec2014b4dc07eb9536` |
| 8 | `theorem` | [BlockTriangular.add](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-add--c3bceff18706aacd5e2552d3.md) | 98 | `result-track:c3bceff18706aacd5e2552d375e43fe7b94566addf47154fba594fcf43819261` |
| 9 | `theorem` | [BlockTriangular.sub](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-sub--36ef1f28d0a1aa6c91f5648e.md) | 101 | `result-track:36ef1f28d0a1aa6c91f5648e4e30d8477a7ee3b58d1d05d32c7b07024ce4ae3d` |
| 10 | `lemma` | [BlockTriangular.add_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-add-iff-right--f674ec5dc907ecc8e571ea5b.md) | 105 | `result-track:f674ec5dc907ecc8e571ea5b1b0cc93c4dd71123832f660658d0939e531ab620` |
| 11 | `lemma` | [BlockTriangular.add_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-add-iff-left--b88d20005e44273ec39c4ea5.md) | 108 | `result-track:b88d20005e44273ec39c4ea5d1fbd361d7810712caa9706c2300129289d8f736` |
| 12 | `lemma` | [BlockTriangular.sub_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-sub-iff-right--e2fc599f8adb83733fd4e08e.md) | 111 | `result-track:e2fc599f8adb83733fd4e08e26baee7e0efdae85da21eac156b950e0880c83eb` |
| 13 | `lemma` | [BlockTriangular.sub_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-sub-iff-left--d4af1a302ffc9986463d8fae.md) | 114 | `result-track:d4af1a302ffc9986463d8fae932bcc7dfa54aca40e356ca1fa29ebca4bd0ec4f` |
| 14 | `lemma` | [BlockTriangular.map](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-map--2d9e547a938ef9bc35ac95c9.md) | 117 | `result-track:2d9e547a938ef9bc35ac95c963acd817512b4692956c19234b344578a18a3284` |
| 15 | `lemma` | [BlockTriangular.comp](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-comp--60b5703500a57303f602384f.md) | 121 | `result-track:60b5703500a57303f602384f24ad58afd968e66da74d6b04a5716981346a4c0a` |
| 16 | `theorem` | [blockTriangular_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-diagonal--5a30eabf044bf6e5aa81bd38.md) | 135 | `result-track:5a30eabf044bf6e5aa81bd38133e6d819ec82056ed2af576e8f0afc8f209887c` |
| 17 | `theorem` | [blockTriangular_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-blockdiagonal--2962fdfa3efa58128822a05d.md) | 138 | `result-track:2962fdfa3efa58128822a05dbaba60742623bba8e71da669bc5ad8fa9a6a9301` |
| 18 | `theorem` | [blockTriangular_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-blockdiagonal--22276be9fec978ee2be25df2.md) | 143 | `result-track:22276be9fec978ee2be25df2d91526f29806a4f20a79dc823d1b339305564074` |
| 19 | `theorem` | [blockTriangular_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-one--3755227e2e759abe39de5776.md) | 151 | `result-track:3755227e2e759abe39de5776bc96798de95bd00b512b7cf2ccbfd06b8c08081b` |
| 20 | `theorem` | [blockTriangular_single](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-single--f9aed09fd27f1b3e2129ce96.md) | 154 | `result-track:f9aed09fd27f1b3e2129ce96b70534ecac3f541bcac03f545490c67fbd3ab412` |
| 21 | `theorem` | [blockTriangular_single'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-single--277d72d5f88838bce68a1ca0.md) | 163 | `result-track:277d72d5f88838bce68a1ca01f7063c3633b4cc76f0d59bfbff46c4e6804e9f3` |
| 22 | `theorem` | [blockTriangular_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-transvection--5320ecb79f58c191bb5dec71.md) | 174 | `result-track:5320ecb79f58c191bb5dec7153a21ea50cd1af64a7051aaf56e4ce5b72c4ecd6` |
| 23 | `theorem` | [blockTriangular_transvection'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-transvection--120ad94e2ebb1d26ffc55378.md) | 178 | `result-track:120ad94e2ebb1d26ffc5537862441fdde8182c4e6e9f43847b6cca6019443194` |
| 24 | `theorem` | [BlockTriangular.mul](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-mul--d24e74f1eb2c1c0dccc5a81c.md) | 188 | `result-track:d24e74f1eb2c1c0dccc5a81c0cba31e721594b2da008508278063d0d1a1cdefe` |
| 25 | `theorem` | [upper_two_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/upper-two-blocktriangular--f10f5c12d5f7014c75acaba7.md) | 200 | `result-track:f10f5c12d5f7014c75acaba7dbda412c66b910aa62febf5eddb231530a0ae7f1` |
| 26 | `theorem` | [equiv_block_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/equiv-block-det--e195cab89f20e0d57818adcb.md) | 210 | `result-track:e195cab89f20e0d57818adcbe06b7b5f2861b21ba6b46121bc8c8a10762558b4` |
| 27 | `theorem` | [det_toSquareBlock_id](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/det-tosquareblock-id--f26487804cddb2edf8c4af71.md) | 216 | `result-track:f26487804cddb2edf8c4af711b27c458ec9ed2444d6d0dfbe04046a096f46425` |
| 28 | `theorem` | [det_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/det-toblock--6191191176a18d0fbed5baf7.md) | 220 | `result-track:6191191176a18d0fbed5baf731f783057a724b0f4d73fc0b09d11363742b9bdf` |
| 29 | `theorem` | [twoBlockTriangular_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/twoblocktriangular-det--17979262134736db36d9cbb6.md) | 233 | `result-track:17979262134736db36d9cbb69b1e4c8cc810ec07f486545a4e45bff86deb5bd6` |
| 30 | `theorem` | [twoBlockTriangular_det'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/twoblocktriangular-det--0f9b706edc15fdf94b3a5f7d.md) | 242 | `result-track:0f9b706edc15fdf94b3a5f7d16601d0cf6bd28059ff7ad65d65b30583bb14b54` |
| 31 | `theorem` | [BlockTriangular.det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-det--1acd805b6b4d8b1ebae9b0ef.md) | 250 | `result-track:1acd805b6b4d8b1ebae9b0ef7324a0d6b02733589c0ec7105b3fe1e6cad13361` |
| 32 | `theorem` | [BlockTriangular.det_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-det-fintype--ec2df999f0e16d578fb5fefb.md) | 284 | `result-track:ec2df999f0e16d578fb5fefbf06bf9b4fc800ba2d7a52caddabf1587179b105a` |
| 33 | `theorem` | [det_of_upperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/det-of-uppertriangular--1747a1836465dce59b502587.md) | 290 | `result-track:1747a1836465dce59b502587097887b86a3f051d4f4cbd9d112724f9222e65ec` |
| 34 | `theorem` | [det_of_lowerTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/det-of-lowertriangular--63b3e27691c9b719caad6f4b.md) | 295 | `result-track:63b3e27691c9b719caad6f4b59e9a970d7b32a6b3b4ffb84a6ceb99069253b12` |
| 35 | `theorem` | [matrixOfPolynomials_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/matrixofpolynomials-blocktriangular--3ed3eccc5a202edd29deeffd.md) | 302 | `result-track:3ed3eccc5a202edd29deeffd36d00770498c787dd3b728bbd6a0bafc3ce41a7f` |
| 36 | `theorem` | [det_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/det-matrixofpolynomials--a576ef81bfcc1f3b147d7b4d.md) | 308 | `result-track:a576ef81bfcc1f3b147d7b4db5e92eb4a91d1f8c027bd003e48c4ed572fa9aee` |
| 37 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one--0355dcfab4893fa767fd319b.md) | 319 | `result-track:0355dcfab4893fa767fd319b7dada57d9e393338af3f16760ec42dfcf97a252c` |
| 38 | `theorem` | [BlockTriangular.inv_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-inv-toblock--1a1869fb452233c16c8c4be0.md) | 337 | `result-track:1a1869fb452233c16c8c4be039f8bd4a63f3496f5954a7dbd460da132eeee736` |
| 39 | `def` | [BlockTriangular.invertibleToBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-invertibletoblock--52594cfd432e8b547f1f1ab2.md) | 344 | `declaration-track:52594cfd432e8b547f1f1ab2c03c61c2558880303dabfd455cb4cd8ec62384a2` |
| 40 | `theorem` | [toBlock_inverse_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/toblock-inverse-eq-zero--920d12737635b50c45854694.md) | 351 | `result-track:920d12737635b50c45854694708d3fe7f15fb2c6c120628a5b22dcebbf6d4208` |
| 41 | `theorem` | [blockTriangular_inv_of_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/declarations/blocktriangular-inv-of-blocktriangular--e61fdf2d0e6ed67df01a0f57.md) | 371 | `result-track:e61fdf2d0e6ed67df01a0f57ab8cb16a8d22d20bcab7c67f29b76bafad6f7700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
