# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicTopology.Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4849abbe384fea0074a2b23f052622181c5a52a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4849abbe384fea0074a2b23f052622181c5a52a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/adic-basis--59ae786bc6f09116aab32261.md) | 62 | `result-track:59ae786bc6f09116aab322610a9671a196251477f3f919bc258a3383a069d29e` |
| 2 | `def` | [ringFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/ringfilterbasis--7a7ed95d0056e79c75dbd01e.md) | 85 | `declaration-track:7a7ed95d0056e79c75dbd01e30acce439613755689a9ee3a282cfcc6ea1d2e68` |
| 3 | `def` | [adicTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/adictopology--6d1b523a93e017a2ed59ea10.md) | 91 | `declaration-track:6d1b523a93e017a2ed59ea1061e8489c1fc73261de3e581cf023bfffac14eaa0` |
| 4 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/nonarchimedean--38a83b06ea12d04e5c734703.md) | 94 | `result-track:38a83b06ea12d04e5c73470384a56c753ce11a325b770b8309bb5cc4f095e2f9` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/hasbasis-nhds-zero-adic--2a2cc8e1824ef928b9f7d3f9.md) | 98 | `result-track:2a2cc8e1824ef928b9f7d3f9014ea2b2d17073006a557e2b914bb6c863d398f3` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/hasbasis-nhds-adic--86c1490bde268961f45cb338.md) | 111 | `result-track:86c1490bde268961f45cb338d90dec2bf25411462976fa32a179509d0225f3d2` |
| 7 | `theorem` | [isLinearTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/islineartopology--7ceaca6e9dd8b204b2d9423e.md) | 118 | `result-track:7ceaca6e9dd8b204b2d9423e8d6407cc662c2aa8a1f30a4da2268c30f957bc18` |
| 8 | `theorem` | [adic_module_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/adic-module-basis--a6077e3723269526e8696303.md) | 124 | `result-track:a6077e3723269526e86963037930c8119e44900595e4934540500959afed7e87` |
| 9 | `def` | [adicModuleTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/adicmoduletopology--62dde1cf9c24f3811a7fbbcd.md) | 139 | `declaration-track:62dde1cf9c24f3811a7fbbcd4fa59e1488662422b5d9830fcd6eefce1d816e84` |
| 10 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/openaddsubgroup--e3d71cb37d47299df3a9364e.md) | 145 | `declaration-track:e3d71cb37d47299df3a9364e1057ec04812c132b9de652612e9dfd608bf47591` |
| 11 | `def` | [IsAdic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/isadic--b7047127f9fdf2af2194f267.md) | 158 | `declaration-track:b7047127f9fdf2af2194f267a504a7e7d7e38d3d171ec23762b33351d55df551` |
| 12 | `theorem` | [isAdic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/isadic-iff--23ca0c643a847e537c6644c3.md) | 163 | `result-track:23ca0c643a847e537c6644c3d252213e1d1d71b9411e317a68496b18b5a5a403` |
| 13 | `theorem` | [is_ideal_adic_pow](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/is-ideal-adic-pow--694c9f6fc01882eb62c2dcee.md) | 193 | `result-track:694c9f6fc01882eb62c2dceeb86545e37e8c4eb253ab8bc34549ea05d1b164ec` |
| 14 | `theorem` | [is_bot_adic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/is-bot-adic-iff--255a94e45d674cc754185407.md) | 210 | `result-track:255a94e45d674cc75418540752c454861a3a928cb17066bbbfc9e2d6f9415f3d` |
| 15 | `theorem` | [IsAdic.hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/isadic-hasbasis-nhds-zero--bf173a627bc54d72489a101a.md) | 225 | `result-track:bf173a627bc54d72489a101aafdd1355e299da3838b3d10549719de0293df6be` |
| 16 | `theorem` | [IsAdic.hasBasis_nhds](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/isadic-hasbasis-nhds--54402e251ec6823f18789e8f.md) | 230 | `result-track:54402e251ec6823f18789e8fcdac54279623ac3910f3174ac7e89f193e9552bb` |
| 17 | `class` | [WithIdeal](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/withideal--e1ff6e0c705adcd5cee06b93.md) | 237 | `declaration-track:e1ff6e0c705adcd5cee06b93e0f0dae7a9cab7f12f932ba42a743def99043c4d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/instance--c8ff8fa70ff1aa49d9cc3bda.md) | 245 | `declaration-track:c8ff8fa70ff1aa49d9cc3bda83ea85608d20f5113def01bfe0690ca961081e4f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/instance--3ad8d096e9c70ec9c275a467.md) | 248 | `declaration-track:3ad8d096e9c70ec9c275a467e4f3087cf141e3a33e0673543487a0935078b0c2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/instance--f631e130bd341d5b8b9f8e05.md) | 251 | `declaration-track:f631e130bd341d5b8b9f8e05656771b7268cb4595d9ea883a6e55c408f994d94` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/instance--02f8bf71f7be98966ebbc4da.md) | 254 | `declaration-track:02f8bf71f7be98966ebbc4da426aa0769f610f81bef337e56a3270f48ff93d21` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/instance--d746018b96ffb79d941281a8.md) | 257 | `declaration-track:d746018b96ffb79d941281a8412ebed7f1bbc29071d42399404d719c2c9b43e4` |
| 23 | `theorem` | [uniformContinuous_of_map_le](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/uniformcontinuous-of-map-le--a3b5629e66e3c83710cbf21f.md) | 260 | `result-track:a3b5629e66e3c83710cbf21f5affde533caf72e3ea9aa3e838f2209e9b25bdf4` |
| 24 | `def` | [uniformEquiv](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/uniformequiv--7ff45a0fa60fed20ce50c33b.md) | 269 | `declaration-track:7ff45a0fa60fed20ce50c33bfc827f1087947a7c5fbe095f1e801781c9474f9a` |
| 25 | `lemma` | [isTopologicallyNilpotent_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/istopologicallynilpotent-of-mem--aa685fbbd09cdfdb1b083e59.md) | 276 | `result-track:aa685fbbd09cdfdb1b083e594934ffab10c083f84b572df8e8bf371ae977e331` |
| 26 | `def` | [topologicalSpaceModule](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/topologicalspacemodule--0cc64b062e7d2ff4cc22b43b.md) | 284 | `declaration-track:0cc64b062e7d2ff4cc22b43bfa6002cd9faf0e8cf47f6b130e194cd900fc0f98` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/example--f692484cb049c3c5ad506005.md) | 291 | `declaration-track:f692484cb049c3c5ad506005283b9a1e24e4a0cee1bfac3be516b724ac7b81c6` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/example--a3ca264a0b77b011671cae58.md) | 293 | `declaration-track:a3ca264a0b77b011671cae5803d6f1983b85f4f866c9fb9dbdbaa21695f61497` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/example--7382f192bb1d088d0e4ea378.md) | 295 | `declaration-track:7382f192bb1d088d0e4ea3789d088c8af722cb67d5f0742275ca33ad13234df7` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/example--24ff041fd61e0c972c4b79e1.md) | 298 | `declaration-track:24ff041fd61e0c972c4b79e167f1dcbdf792304fa381c6f387e26292c0d110e3` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant7a9d03e2065576a3f08da00120e618b5076d8e143497239830366e80fe7de92e.lean/declarations/example--b9e4a218185a65a7151e8106.md) | 301 | `declaration-track:b9e4a218185a65a7151e81063faa8b285fb5548444c6dc70d55cdb460c8ec52b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
