# Verification target: GRWTSK.Algebra.LinearAlgebra.Convolution.Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "821ec4e16ca3f4e5c3f82797c61e4de58f1414fc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `821ec4e16ca3f4e5c3f82797c61e4de58f1414fc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [antipode_comp_mul_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/antipode-comp-mul-comp-comm--c5433acbd69d1f5ce281e0af.md) | 49 | `result-track:c5433acbd69d1f5ce281e0afec383be72726689226681731c20526bdf1804b6c` |
| 2 | `lemma` | [antipode_mul_antidistrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/antipode-mul-antidistrib--23c4543721ca4be74cb8d5c1.md) | 65 | `result-track:23c4543721ca4be74cb8d5c1581b06d4e30563a0cea9c64c4046a7ff3ddc8c2e` |
| 3 | `def` | [antipodeAlgHomOp](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/antipodealghomop--b98935468c493438ee75de25.md) | 73 | `declaration-track:b98935468c493438ee75de2576c3ae7143aeabb92bb06d817376fba004807cd1` |
| 4 | `lemma` | [antipode_mul_distrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/antipode-mul-distrib--e69d0a7a6bfa1351397c48d7.md) | 82 | `result-track:e69d0a7a6bfa1351397c48d725f1ca6616beea225f435c8ed2d01791e4f5d720` |
| 5 | `def` | [antipodeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/antipodealghom--7a6873e863002864d6eb4da2.md) | 88 | `declaration-track:7a6873e863002864d6eb4da24f2b0e94c38c21360d84b872dc580a5ba36a7cb4` |
| 6 | `lemma` | [toLinearMap_antipodeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/tolinearmap-antipodealghom--0706d850ab21652666805a8a.md) | 90 | `result-track:0706d850ab21652666805a8a59671513ccc4d2f725ec3c85129a70b8595ef591` |
| 7 | `lemma` | [antipode_mul_id](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/antipode-mul-id--0227c40ba7da2b6a997515ed.md) | 98 | `result-track:0227c40ba7da2b6a997515ed6c457a17ca7cb1d6eec74a48860b37d19d38b6c1` |
| 8 | `lemma` | [id_mul_antipode](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/id-mul-antipode--8a936f15c5937c4488fe81ef.md) | 101 | `result-track:8a936f15c5937c4488fe81ef39c1b5e34338f97af7178641dee18ac0e44ee0e9` |
| 9 | `theorem` | [eq_antipode_of_convMul_id_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/eq-antipode-of-convmul-id-eq-one--737137f139bd5930cf43c603.md) | 111 | `result-track:737137f139bd5930cf43c60350fd5a85ab396cd7ac2e14062b387af34c6ec904` |
| 10 | `theorem` | [eq_antipode_of_id_convMul_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/eq-antipode-of-id-convmul-eq-one--aa668756959ac43b7e9876e7.md) | 117 | `result-track:aa668756959ac43b7e9876e7253346c4d3cbb116858d3d96fa0d8b7c7913788c` |
| 11 | `lemma` | [comul_right_inv](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/comul-right-inv--d569b6bedd6a9db53b450c21.md) | 130 | `result-track:d569b6bedd6a9db53b450c2153609d916d590f0d60ffdceac6a8731afcabadec` |
| 12 | `instance` | [convInv](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/convinv--cb494c3ad080ea764520df48.md) | 151 | `declaration-track:cb494c3ad080ea764520df48d164ff3fefc0e7de38c2f66ecf53412cc92c5159` |
| 13 | `instance` | [convGroup](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/convgroup--a3ec5a3752338c36616db1ac.md) | 154 | `declaration-track:a3ec5a3752338c36616db1ac8857a0853290eac366e0e6295cd998a637065931` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/instance--d18f027431b20c6ee0562fb5.md) | 170 | `declaration-track:d18f027431b20c6ee0562fb5b4a3338df51b46cdf193f0e5454394826aaf1f2b` |
| 15 | `lemma` | [antipode_id_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/antipode-id-cancel--4acf6acf486095ea13994c91.md) | 172 | `result-track:4acf6acf486095ea13994c9196986a1648a316b1ea0958a75b3e3d328a7a9f4e` |
| 16 | `lemma` | [counitAlgHom_comp_antipodeAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/declarations/counitalghom-comp-antipodealghom--4a2233df370da4ace54bbd92.md) | 180 | `result-track:4a2233df370da4ace54bbd9215ae303efb38e22156a2ae926c920f75c4257c32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
