# Verification target: GRWTSK.Algebra.LinearAlgebra.LapMatrix.Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f10d839092faf111a3b5f469ff69905ed56a66b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f10d839092faf111a3b5f469ff69905ed56a66b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_eq_sum_if_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/degree-eq-sum-if-adj--b57a84b6f44fc19082ba3da3.md) | 42 | `result-track:b57a84b6f44fc19082ba3da34453945bc9942dc5160875ce26ba213e01e08b50` |
| 2 | `def` | [degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/degmatrix--80af098f96d94e8ed2496d5d.md) | 50 | `declaration-track:80af098f96d94e8ed2496d5dfc100601dec5c63e87d220ff1567a95ff3efc851` |
| 3 | `def` | [lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix--c1ea112a06ee0186d67442ec.md) | 54 | `declaration-track:c1ea112a06ee0186d67442ec77e536c88e3c432ee1d8928f2f009ae5d335ad27` |
| 4 | `theorem` | [isSymm_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/issymm-degmatrix--e9cf4b12386c9919984b82d1.md) | 58 | `result-track:e9cf4b12386c9919984b82d1db77cc359ebfe48c0c92b396c0ca5dca68d26a9c` |
| 5 | `theorem` | [isSymm_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/issymm-lapmatrix--301b9383fafba8f2b3c7ea5e.md) | 61 | `result-track:301b9383fafba8f2b3c7ea5e70cd1663c0e75991523753a4f45e7889c06043eb` |
| 6 | `theorem` | [degMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/degmatrix-mulvec-apply--99381beaf96865fbf985b63d.md) | 64 | `result-track:99381beaf96865fbf985b63d954d9f3c1c93bc86e4dbdc084771b89493f6a206` |
| 7 | `theorem` | [lapMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-mulvec-apply--a0a27e52c7aff1cb04a5b899.md) | 68 | `result-track:a0a27e52c7aff1cb04a5b8992040d9716b9b5465bb77c881b45195f95f36defe` |
| 8 | `theorem` | [lapMatrix_mulVec_const_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-mulvec-const-eq-zero--b5612380a16ae5eb2eac6db1.md) | 72 | `result-track:b5612380a16ae5eb2eac6db1203d79b13f88b1ae4c6a58ea37fca548cffd302b` |
| 9 | `theorem` | [dotProduct_mulVec_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/dotproduct-mulvec-degmatrix--32fe3e50236c036234d9aeb7.md) | 78 | `result-track:32fe3e50236c036234d9aeb77e0834ece31c677f21622256f45701065f604a3a` |
| 10 | `theorem` | [lapMatrix_toLinearMap₂'](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-tolinearmap--f9cd0842eb1cd9909b9fd61e.md) | 87 | `result-track:f9cd0842eb1cd9909b9fd61e6de32b34c3887718eb70d596d2f170077ba898d7` |
| 11 | `theorem` | [posSemidef_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/possemidef-lapmatrix--72eb71a94a74ddd48c3da24b.md) | 102 | `result-track:72eb71a94a74ddd48c3da24b90ca4dd5d16b0346d7e86e82e5a1f45d1db22d06` |
| 12 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-adj--5058d29e7a45d9a949f9473a.md) | 110 | `result-track:5058d29e7a45d9a949f9473a802719bc1d3a69b1450c40f3776b5a2ab5ed6b77` |
| 13 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-adj--b9a7eda3eb397a4b16c929a6.md) | 116 | `result-track:b9a7eda3eb397a4b16c929a6f76f106d15abad8c0269e6e3ec560620b04bfc99` |
| 14 | `theorem` | [lapMatrix_toLin'_apply_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-tolin-apply-eq-zero-iff-forall-adj--354993f26012c47a8c87a45e.md) | 122 | `result-track:354993f26012c47a8c87a45eb3e02df5a13cdcf468478698ece6d4e1e598c7e2` |
| 15 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-reachable--eceb22726b09c042a5ca05c4.md) | 126 | `result-track:eceb22726b09c042a5ca05c4bf435bc35b6514a66a3f71e3af00b7123a1d58e2` |
| 16 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-reachable--466b11509ee8906c3edc462f.md) | 136 | `result-track:466b11509ee8906c3edc462f74b5963e1ce1decadfd8f2863ea64731cf4d8b75` |
| 17 | `theorem` | [lapMatrix_toLin'_apply_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-tolin-apply-eq-zero-iff-forall-reachable--f788c3ca997f96449529261d.md) | 142 | `result-track:f788c3ca997f96449529261d52737d51b7c4ac5f23fbb7b039f43850bb0bfff1` |
| 18 | `lemma` | [mem_ker_toLin'_lapMatrix_of_connectedComponent](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/mem-ker-tolin-lapmatrix-of-connectedcomponent--f7b754bd8c8f1cdee083ab4c.md) | 150 | `result-track:f7b754bd8c8f1cdee083ab4c8085266016b21188349037491ec1e1c444ec6ac8` |
| 19 | `def` | [lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-ker-basis-aux--9b682bb342f7f8de6b3b5ec2.md) | 168 | `declaration-track:9b682bb342f7f8de6b3b5ec29f5f7979ab0280c2f58137ff04fea97bd309cfcf` |
| 20 | `lemma` | [linearIndependent_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/linearindependent-lapmatrix-ker-basis-aux--e0943aedc3a3a5e310b47002.md) | 173 | `result-track:e0943aedc3a3a5e310b47002656d44e8c6553432d5b13b2a78afa46f15debc75` |
| 21 | `lemma` | [top_le_span_range_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/top-le-span-range-lapmatrix-ker-basis-aux--e50078d71753c277fa827a37.md) | 189 | `result-track:e50078d71753c277fa827a37539183dc3c09bbd58bf9545fd97e984fcaf54ce1` |
| 22 | `def` | [lapMatrix_ker_basis](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/lapmatrix-ker-basis--3f1f783ba733b3b8fd1fac08.md) | 205 | `declaration-track:3f1f783ba733b3b8fd1fac087203d31a59d0b16cea0823b2ad01868d82e3661b` |
| 23 | `theorem` | [card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/declarations/card-connectedcomponent-eq-finrank-ker-tolin-lapmatrix--9267fb773aff4daa5ae0844e.md) | 212 | `result-track:9267fb773aff4daa5ae0844ed066851e5fe9d3ecb6f53e85dd82a01bb0f8ace4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
