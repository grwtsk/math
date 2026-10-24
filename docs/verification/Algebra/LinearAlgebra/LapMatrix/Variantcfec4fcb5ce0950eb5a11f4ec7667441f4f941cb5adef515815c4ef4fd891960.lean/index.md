# Verification target: GRWTSK.Algebra.LinearAlgebra.LapMatrix.Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62654684abd09d46786536f0172042cb517cb891",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62654684abd09d46786536f0172042cb517cb891`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_eq_sum_if_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/degree-eq-sum-if-adj--8bd35db0c9a22874312d6aec.md) | 34 | `result-track:8bd35db0c9a22874312d6aec64cc9a502a0145c77fc983289c897f6d96298ff6` |
| 2 | `def` | [degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/degmatrix--3da5febc4c68ab177832621b.md) | 42 | `declaration-track:3da5febc4c68ab177832621b5f19bc5b61c6a6b14ba2820ffe2e29111ee444ab` |
| 3 | `def` | [lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix--9e342ed12a84263ccb6cbd0c.md) | 46 | `declaration-track:9e342ed12a84263ccb6cbd0c7ebc05f31147f7a2e4d047d57840d31ab19b37b6` |
| 4 | `theorem` | [isSymm_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/issymm-degmatrix--dc78c9100b665ac8034c4862.md) | 50 | `result-track:dc78c9100b665ac8034c486235ffac6f9d466fb6d9a7b321152fc0fd874af718` |
| 5 | `theorem` | [isSymm_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/issymm-lapmatrix--1bb0d8997657e6b6d6b9cf3f.md) | 53 | `result-track:1bb0d8997657e6b6d6b9cf3f8496b454a87cad11df3b9c71395e80186d1bf2dd` |
| 6 | `theorem` | [degMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/degmatrix-mulvec-apply--5329cf32b04de25eca61d90b.md) | 56 | `result-track:5329cf32b04de25eca61d90b6f81ce684552d37848e689ffd9183e401b0f7c1e` |
| 7 | `theorem` | [lapMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-mulvec-apply--e38bf6ef62af0eb75887d2ea.md) | 60 | `result-track:e38bf6ef62af0eb75887d2ea64a5e75b1ece716a6e0fb7ac67572aeb2bbaa20e` |
| 8 | `theorem` | [lapMatrix_mulVec_const_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-mulvec-const-eq-zero--8a1ae2d2895e7516c506b983.md) | 64 | `result-track:8a1ae2d2895e7516c506b983a7de8ed7bf975748a710c3e39fa99972c113fc7c` |
| 9 | `theorem` | [dotProduct_mulVec_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/dotproduct-mulvec-degmatrix--aed3d67fccd9aea930e5872b.md) | 70 | `result-track:aed3d67fccd9aea930e5872babda4a1afe82318d4aa08d3f5bf89198b91a2f3c` |
| 10 | `theorem` | [lapMatrix_toLinearMap₂'](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-tolinearmap--8c73faa5c93fc5584a2324e2.md) | 79 | `result-track:8c73faa5c93fc5584a2324e209454cb0025577878e59c2a4bd882b33e0bf7ebd` |
| 11 | `theorem` | [posSemidef_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/possemidef-lapmatrix--49593895769f88b04511dc0c.md) | 94 | `result-track:49593895769f88b04511dc0c84fb464e9f9124efa69c3f896c681393b3a1af47` |
| 12 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-adj--1409f31ca35fdd3ef176b4fd.md) | 102 | `result-track:1409f31ca35fdd3ef176b4fd8c145cbe359f251764c722ecff7dec56aa61948d` |
| 13 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-adj--266b80d22b99b4f33ca07c3b.md) | 108 | `result-track:266b80d22b99b4f33ca07c3b37a8ea92991053d75681f4499ce7116ac08c2ab6` |
| 14 | `theorem` | [lapMatrix_toLin'_apply_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-tolin-apply-eq-zero-iff-forall-adj--d81f9a326d9dc8592d29ad1d.md) | 114 | `result-track:d81f9a326d9dc8592d29ad1dae6e54e2216d14dac7b571424c5dcda49811518b` |
| 15 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-reachable--065456572b7a898d14f5e502.md) | 118 | `result-track:065456572b7a898d14f5e5021f8ccab719ce3c96c6637f37b0ba9c1b21c4da30` |
| 16 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-reachable--177ff7da7d9d598dba2ae40a.md) | 128 | `result-track:177ff7da7d9d598dba2ae40ac1959f343b63ab14c5882d5d25bdf01fd2289f83` |
| 17 | `theorem` | [lapMatrix_toLin'_apply_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-tolin-apply-eq-zero-iff-forall-reachable--8647326d22b4b0c3006b3b04.md) | 134 | `result-track:8647326d22b4b0c3006b3b048968870fa281b096080b00939b2de4ae0e40bdb7` |
| 18 | `lemma` | [mem_ker_toLin'_lapMatrix_of_connectedComponent](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/mem-ker-tolin-lapmatrix-of-connectedcomponent--f01c66db8b19e3ecf4cd9104.md) | 142 | `result-track:f01c66db8b19e3ecf4cd9104e25d75a4d4e472b29639e72ba0e18d2df8bb3e05` |
| 19 | `def` | [lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-ker-basis-aux--18c8b9aede22d650be605e20.md) | 160 | `declaration-track:18c8b9aede22d650be605e2085763db0eb94ac42637d2b6d45056ebabf34e8f5` |
| 20 | `lemma` | [linearIndependent_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/linearindependent-lapmatrix-ker-basis-aux--f512b0cd24ee9e5004f5c539.md) | 165 | `result-track:f512b0cd24ee9e5004f5c539a19fb48b11bc4a937aada7a6ea1a0b316020bcfb` |
| 21 | `lemma` | [top_le_span_range_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/top-le-span-range-lapmatrix-ker-basis-aux--39254037fc542a5d7fa16fae.md) | 181 | `result-track:39254037fc542a5d7fa16fae5729b60fb8609c31950f04d479671fefaa49e8e9` |
| 22 | `def` | [lapMatrix_ker_basis](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/lapmatrix-ker-basis--f715ae4f716974dcbb67b1b8.md) | 197 | `declaration-track:f715ae4f716974dcbb67b1b87cc19e0b58cfd9b76d680f2351ee57c8a386ab00` |
| 23 | `theorem` | [card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/declarations/card-connectedcomponent-eq-finrank-ker-tolin-lapmatrix--c5d1c8437d0dbccecdbb6998.md) | 204 | `result-track:c5d1c8437d0dbccecdbb699848881b339fbed2a989a2d54d13b737637cf29518` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
