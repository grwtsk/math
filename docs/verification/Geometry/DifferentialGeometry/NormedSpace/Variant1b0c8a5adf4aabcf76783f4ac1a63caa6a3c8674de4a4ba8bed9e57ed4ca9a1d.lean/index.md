# Verification target: GRWTSK.Geometry.DifferentialGeometry.NormedSpace.Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3636c81b5541dc170f09795b708c2bc85b0b7293",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3636c81b5541dc170f09795b708c2bc85b0b7293`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contMDiffWithinAt_iff_contDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-iff-contdiffwithinat--ba2a26b35f4bcc6532690991.md) | 38 | `result-track:ba2a26b35f4bcc653269099198cd535503364b2d685f50bddef2c176621bc9eb` |
| 2 | `theorem` | [contMDiffAt_iff_contDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-iff-contdiffat--3b90de79b0c485a5d6a71bd8.md) | 47 | `result-track:3b90de79b0c485a5d6a71bd8ab1610619a91ceb06ab3842e64b737101284b157` |
| 3 | `theorem` | [contMDiffOn_iff_contDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-iff-contdiffon--2b1ddde9d3bd90ed308f547b.md) | 53 | `result-track:2b1ddde9d3bd90ed308f547b2b2b15d681d57124e4dd9788202940e71805ff92` |
| 4 | `theorem` | [contMDiff_iff_contDiff](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-iff-contdiff--8798a44bdb61f39a31257646.md) | 59 | `result-track:8798a44bdb61f39a31257646036528a9a88ebf64307fae89394e2794d3440e74` |
| 5 | `theorem` | [ContDiffWithinAt.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contdiffwithinat-comp-contmdiffwithinat--2ca177adcd834db7402fa11b.md) | 64 | `result-track:2ca177adcd834db7402fa11be2119c8b33068c6e59b220a7b21f608ae0403559` |
| 6 | `theorem` | [ContDiffAt.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contdiffat-comp-contmdiffwithinat--bb92d237bc2bf6c02f141793.md) | 69 | `result-track:bb92d237bc2bf6c02f14179300e1c2305a0212b8e07227afbc4d2425478528d3` |
| 7 | `theorem` | [ContDiffAt.comp_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contdiffat-comp-contmdiffat--171b6e91842a594b1207ea40.md) | 74 | `result-track:171b6e91842a594b1207ea40c00fc6f8938e17b46f26de5441d3a4b439f622bd` |
| 8 | `theorem` | [ContDiff.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contdiff-comp-contmdiffwithinat--c75df722ba99981e8fe2ad83.md) | 78 | `result-track:c75df722ba99981e8fe2ad831d6954333ea0712913c8767c732c71c782f779a0` |
| 9 | `theorem` | [ContDiff.comp_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contdiff-comp-contmdiffat--7f8e57cb3d78cd1788663356.md) | 83 | `result-track:7f8e57cb3d78cd17886633564354b70ea138ba28adcf41e1d0c256557c81d019` |
| 10 | `theorem` | [ContDiff.comp_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contdiff-comp-contmdiff--cdd4cc1c1bb65a00086a2412.md) | 87 | `result-track:cdd4cc1c1bb65a00086a24120cbedad8706293d898b0ddb75e79c6549ac414b5` |
| 11 | `theorem` | [ContinuousLinearMap.contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/continuouslinearmap-contmdiff--7ba741bf09b06d570d3b2c08.md) | 95 | `result-track:7ba741bf09b06d570d3b2c087c7d7e7e983c599b4dcc8bcced57bb1fe8f10b48` |
| 12 | `theorem` | [ContinuousLinearMap.contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/continuouslinearmap-contmdiffat--bdd31147689c5b68dccbdd23.md) | 98 | `result-track:bdd31147689c5b68dccbdd232a8c0cd1d91b466a84bc4721132ba3e974e15e1a` |
| 13 | `theorem` | [ContinuousLinearMap.contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/continuouslinearmap-contmdiffwithinat--40b30c03f112b0393825b734.md) | 101 | `result-track:40b30c03f112b0393825b734eb0ef11c2510df7319f6d814b60668ac408b8810` |
| 14 | `theorem` | [ContinuousLinearMap.contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/continuouslinearmap-contmdiffon--b9a648e880d64194fef00992.md) | 105 | `result-track:b9a648e880d64194fef009929b9a7ffed0716321aac4fcf77e8812c8bb6a0bf3` |
| 15 | `theorem` | [ContMDiffWithinAt.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-clm-precomp--41e780f0b25593faa8a29ca3.md) | 111 | `result-track:41e780f0b25593faa8a29ca3cbb87dc19ca1739bfa3d64965e7077d357bb7d56` |
| 16 | `theorem` | [ContMDiffAt.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-clm-precomp--3d7f64c5fb49f2e7894e2991.md) | 118 | `result-track:3d7f64c5fb49f2e7894e299187e09ef32eb2e4df6b103b63e88c1750711f5d76` |
| 17 | `theorem` | [ContMDiffOn.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-clm-precomp--78701a3f835a6c7888478475.md) | 124 | `result-track:78701a3f835a6c78884784750a78f785929b15b089822ddff5545aa48c082f06` |
| 18 | `theorem` | [ContMDiff.clm_precomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-clm-precomp--1c5073bf7b2fb71e24413aa9.md) | 130 | `result-track:1c5073bf7b2fb71e24413aa960f38be8c2a37e26c5434299dcf287b5ea05455b` |
| 19 | `theorem` | [ContMDiffWithinAt.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-clm-postcomp--d01cb9d93b6dfce1df107436.md) | 135 | `result-track:d01cb9d93b6dfce1df107436fa8c625e272fa448a04722461ab6617c65542d62` |
| 20 | `theorem` | [ContMDiffAt.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-clm-postcomp--5f1e3586538f34f862a7b916.md) | 142 | `result-track:5f1e3586538f34f862a7b916133700d5d8416c189f011516a8f1d9a5ab1436ee` |
| 21 | `theorem` | [ContMDiffOn.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-clm-postcomp--71e601313018d254da1ec71d.md) | 148 | `result-track:71e601313018d254da1ec71db00aa2669a1813b8d6497a47d59e9f737c7274a8` |
| 22 | `theorem` | [ContMDiff.clm_postcomp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-clm-postcomp--3095502218190eef1f083092.md) | 154 | `result-track:3095502218190eef1f083092faad130d6adee229f41a873ebcdff0b37369f75b` |
| 23 | `theorem` | [ContMDiffWithinAt.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-clm-comp--81b25c48725b7db19195362e.md) | 159 | `result-track:81b25c48725b7db19195362e215b9e3cd2fa528cfb526bff37c8ee28b8ff65f0` |
| 24 | `theorem` | [ContMDiffAt.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-clm-comp--7f5512dfdf9378c52aff053a.md) | 166 | `result-track:7f5512dfdf9378c52aff053a97b604f7675e3d50470f7904d6f75b41a3fd3a34` |
| 25 | `theorem` | [ContMDiffOn.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-clm-comp--0611956b5359081d70e485af.md) | 171 | `result-track:0611956b5359081d70e485af2661cf3dd6d05e201717d48528f61073f1e96718` |
| 26 | `theorem` | [ContMDiff.clm_comp](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-clm-comp--8d89365e7953eda3b28d3f3c.md) | 176 | `result-track:8d89365e7953eda3b28d3f3c7582abc1b60e52d2d785a5fbe0a5388ac6f18d6a` |
| 27 | `theorem` | [ContMDiffWithinAt.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-clm-apply--dea70172e2a9b299160b331c.md) | 182 | `result-track:dea70172e2a9b299160b331cef58fa6e6b9deb26d8c31f9b51a29e5b27e1b995` |
| 28 | `theorem` | [ContMDiffAt.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-clm-apply--1cdf1519ae27dd2fca79a855.md) | 193 | `result-track:1cdf1519ae27dd2fca79a855d970365d259e2d06d9e13a69c5e9f2bb024fc220` |
| 29 | `theorem` | [ContMDiffOn.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-clm-apply--3fc1e500d67cae45e7163cb2.md) | 198 | `result-track:3fc1e500d67cae45e7163cb2450efc1b63411366857b0ddacac474cd5bbf2d61` |
| 30 | `theorem` | [ContMDiff.clm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-clm-apply--9f1b25ea70efebf2d5e3cb89.md) | 202 | `result-track:9f1b25ea70efebf2d5e3cb89c2caecf0bd0a18aff45abcd712cef4f7d35e310a` |
| 31 | `theorem` | [ContMDiffWithinAt.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-cle-arrowcongr--7280e2e0ba176ef27cf374ad.md) | 206 | `result-track:7280e2e0ba176ef27cf374ad3c302409f7fa4812cac0692866e74fefef490e4a` |
| 32 | `theorem` | [ContMDiffAt.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-cle-arrowcongr--5a3e055c063c87f57b9830f9.md) | 216 | `result-track:5a3e055c063c87f57b9830f94812a9af0354460f4bb23fca4342d91fb9108c8a` |
| 33 | `theorem` | [ContMDiffOn.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-cle-arrowcongr--6757c35d1c73eb0697cea0c8.md) | 223 | `result-track:6757c35d1c73eb0697cea0c839a981de8495123de0bcf7765aad01b4f5dfff96` |
| 34 | `theorem` | [ContMDiff.cle_arrowCongr](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-cle-arrowcongr--67e32a5a99702e63fa2e70a2.md) | 230 | `result-track:67e32a5a99702e63fa2e70a24d3dadbe44a59d656cfb4e682cae510e8a8a2bd7` |
| 35 | `theorem` | [ContMDiffWithinAt.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-clm-prodmap--39e6480457b10da6ddfd246a.md) | 237 | `result-track:39e6480457b10da6ddfd246a4833bcb468c71cf0c6465a06bdbf7e5ee3d934c9` |
| 36 | `theorem` | [ContMDiffAt.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-clm-prodmap--f4eaf6038bcdfcae515e0cb4.md) | 245 | `result-track:f4eaf6038bcdfcae515e0cb47f8b8cbde8d6a98636a71248af48083d896fa49e` |
| 37 | `theorem` | [ContMDiffOn.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-clm-prodmap--91a18bfefe9a10ae3c24a483.md) | 250 | `result-track:91a18bfefe9a10ae3c24a483e0bcaa6a6538226d722ed8fdaf0e075fc7477aa0` |
| 38 | `theorem` | [ContMDiff.clm_prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-clm-prodmap--3d9efd69e3d2680580e2f877.md) | 255 | `result-track:3d9efd69e3d2680580e2f87726c679dc0ccb21625b554bbee60dbc19262d0965` |
| 39 | `theorem` | [contMDiff_smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-smul--8173a049e5612cbb0dd14935.md) | 265 | `result-track:8173a049e5612cbb0dd14935dd9e4e47af04054a83711aec3054278e5d1b56d6` |
| 40 | `theorem` | [ContMDiffWithinAt.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffwithinat-smul--1ef16e835f2bbf58b805f133.md) | 270 | `result-track:1ef16e835f2bbf58b805f1339f444ef25065c00c63e3dce0357ed66a5b32161f` |
| 41 | `theorem` | [ContMDiffAt.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffat-smul--7d8369f6aae14f1d753feb2a.md) | 275 | `result-track:7d8369f6aae14f1d753feb2ae956ab5ef40564458ea486cfc6868da43f3a003a` |
| 42 | `theorem` | [ContMDiffOn.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiffon-smul--94cf44713c35951294181193.md) | 279 | `result-track:94cf44713c35951294181193dc199b8c4841c141277aee6ed94fe003a80f2a85` |
| 43 | `theorem` | [ContMDiff.smul](../../../../../mathematics/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/declarations/contmdiff-smul--6b90ce4dac1f534b3e0166fb.md) | 283 | `result-track:6b90ce4dac1f534b3e0166fb99c44383f31762e53c53d1d94956aa29b5c54a3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
