# Verification target: GRWTSK.Algebra.LinearAlgebra.Circulant.Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b063e5490634b283d35d0b80a41fcb315eb41f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b063e5490634b283d35d0b80a41fcb315eb41f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant--f00018ba08105cd743d2c7af.md) | 54 | `declaration-track:f00018ba08105cd743d2c7afeb982be13e5a82589f165b4be21e55978ca1ec4d` |
| 2 | `theorem` | [circulant_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-apply--b577affc6c8711dc3317abea.md) | 60 | `result-track:b577affc6c8711dc3317abeaf0d2c20ead5bffd13ddb808fe0e7b1828bd890c4` |
| 3 | `theorem` | [circulant_col_zero_eq](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-col-zero-eq--9e3c1dd498fe69284d280f4a.md) | 63 | `result-track:9e3c1dd498fe69284d280f4afd738eb72528378c256ed8129b28c183f67f6901` |
| 4 | `theorem` | [circulant_injective](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-injective--10650faaf7a65a4b4b159a59.md) | 67 | `result-track:10650faaf7a65a4b4b159a592e0e7953852e4a3c02c82679643c8971e6f0d40f` |
| 5 | `theorem` | [Fin.circulant_injective](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-circulant-injective--c27222a916d35c6b333d0b7d.md) | 73 | `result-track:c27222a916d35c6b333d0b7df2a46fcfc045053ce87ec833b447eefa2d04f753` |
| 6 | `theorem` | [circulant_inj](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-inj--7cc2c4a3dc13f583d3862de0.md) | 79 | `result-track:7cc2c4a3dc13f583d3862de0e6b0e09b03ee286ad1b5ba4594a70955b895dec2` |
| 7 | `theorem` | [Fin.circulant_inj](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-circulant-inj--e2d9c098de142bd927e071c8.md) | 84 | `result-track:e2d9c098de142bd927e071c8b2c82a7100737215b04f0d8c0a8e0dadd9dbbb9d` |
| 8 | `theorem` | [transpose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/transpose-circulant--f625cb5eebfec4d7e768490e.md) | 88 | `result-track:f625cb5eebfec4d7e768490e507857bacf1b1b213736e435341e6b3ee1dc0c40` |
| 9 | `theorem` | [conjTranspose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/conjtranspose-circulant--2c1af9dce9a706879c186a0e.md) | 92 | `result-track:2c1af9dce9a706879c186a0e1ef530789e4566ee59204a29214b44af3305fea8` |
| 10 | `theorem` | [Fin.transpose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-transpose-circulant--341551444f102fd35befc07e.md) | 96 | `result-track:341551444f102fd35befc07e0ddfaf38e78b4662b85523f6c65d7e6a9c9dcda6` |
| 11 | `theorem` | [Fin.conjTranspose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-conjtranspose-circulant--f528da49d103905a4d2ace54.md) | 101 | `result-track:f528da49d103905a4d2ace546d7343523f3998d229b90a6130dd252b321f5ba8` |
| 12 | `theorem` | [map_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/map-circulant--4973a034e5cb1a880e330645.md) | 107 | `result-track:4973a034e5cb1a880e330645d2dc8ca6bee3d4d427eab74e6eff57995ed63137` |
| 13 | `theorem` | [circulant_neg](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-neg--2511a781cedd4da0639efca0.md) | 112 | `result-track:2511a781cedd4da0639efca09faf33f5d70bb7baf50aaf358b9e66bf41899e38` |
| 14 | `theorem` | [circulant_zero](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-zero--067968372279c0d89a4ca018.md) | 117 | `result-track:067968372279c0d89a4ca0188d44f7fe8907c5a83858f1a01d3b7df47fd8cf4d` |
| 15 | `theorem` | [circulant_add](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-add--92e9e0f95fe444d70fb4d273.md) | 121 | `result-track:92e9e0f95fe444d70fb4d27394dc2f91243e6114c8e54d4f5b6d0f79d1f805eb` |
| 16 | `theorem` | [circulant_sub](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-sub--aa29711aee749dd116bbe392.md) | 126 | `result-track:aa29711aee749dd116bbe392623e9290aac868bc20488bebc331ef512f82cee8` |
| 17 | `theorem` | [circulant_mul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-mul--f205963ac83cf6f056528025.md) | 133 | `result-track:f205963ac83cf6f05652802572c57ee778c52e1ead59134025c8b60d71ef0f93` |
| 18 | `theorem` | [Fin.circulant_mul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-circulant-mul--9ff85cb5256835d9982c8266.md) | 142 | `result-track:9ff85cb5256835d9982c82664fa9e9af6457e8ebd4e4e019dcc7bfb90fcb8ca9` |
| 19 | `theorem` | [circulant_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-mul-comm--b8cc942b6aeb832ee4d1ac40.md) | 149 | `result-track:b8cc942b6aeb832ee4d1ac40d9adad9bb5caa530b0d5ea7ef18b628d2f4df0a2` |
| 20 | `theorem` | [Fin.circulant_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-circulant-mul-comm--802ae3c5fb8205e481dfd11a.md) | 160 | `result-track:802ae3c5fb8205e481dfd11a1895b760a04b124c1103de2af515993588126e9f` |
| 21 | `theorem` | [circulant_smul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-smul--0cc1bf9001d7bb7968c09329.md) | 167 | `result-track:0cc1bf9001d7bb7968c093292e07ef4298feda6b486a0a556f5c01bedfbc1b37` |
| 22 | `theorem` | [circulant_single_one](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-single-one--ccce4aff033f0cb4ecb9b459.md) | 172 | `result-track:ccce4aff033f0cb4ecb9b4599ad2af415e7c056a46aad83ca42e639ee1914a50` |
| 23 | `theorem` | [circulant_single](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-single--15304c4ed7702116a724a834.md) | 179 | `result-track:15304c4ed7702116a724a834bdb090b606a6c999b1ece995b61367e9fd96c517` |
| 24 | `theorem` | [Fin.circulant_ite](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-circulant-ite--fac8aacb34320be3d8f17cf9.md) | 187 | `result-track:fac8aacb34320be3d8f17cf993853030a7f8095ecaad071f072b26af1f4f87bb` |
| 25 | `theorem` | [circulant_isSymm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-issymm-iff--3f3e42c72fa521dcaa3915e5.md) | 197 | `result-track:3f3e42c72fa521dcaa3915e5281fc1d69c65703b5e88c2ae3b4a0ad704d12b6c` |
| 26 | `theorem` | [Fin.circulant_isSymm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-circulant-issymm-iff--2d2009c07d509abb0cd6b7f8.md) | 202 | `result-track:2d2009c07d509abb0cd6b7f8efe480ac76f292b517f9bb90d3b58eed49b53284` |
| 27 | `theorem` | [circulant_isSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/circulant-issymm-apply--1a978526aade530de246ef05.md) | 208 | `result-track:1a978526aade530de246ef05caabc8720cac8ed8feec492ac7ffd8a672c9c9af` |
| 28 | `theorem` | [Fin.circulant_isSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/declarations/fin-circulant-issymm-apply--458be894c22d9028741622de.md) | 213 | `result-track:458be894c22d9028741622de57b6b7d5fd9cb59299553e01a50dcc6a3291b477` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
