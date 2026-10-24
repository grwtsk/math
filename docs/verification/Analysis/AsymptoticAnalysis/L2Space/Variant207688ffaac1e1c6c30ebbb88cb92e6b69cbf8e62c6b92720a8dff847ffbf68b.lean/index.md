# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.L2Space.Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e76c750c5aa131e73c2a50d1eb09ff7a7c3beaa2",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e76c750c5aa131e73c2a50d1eb09ff7a7c3beaa2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.lpSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/macro-rules--4a3945227219d52e15e060e2.md) | 99 | `declaration-track:4a3945227219d52e15e060e2e0b1dfd93f30e0c64aea055c7f265bfa2bb75b3c` |
| 2 | `theorem` | [summable_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/summable-inner--4b8f854054d19688610eef7f.md) | 120 | `result-track:4b8f854054d19688610eef7fcf2837149d45b2c5a12e0a5d8b11bec2017eb3c6` |
| 3 | `instance` | [instInnerProductSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/instinnerproductspace--19fb20fd627d0bd7a7c48e23.md) | 129 | `declaration-track:19fb20fd627d0bd7a7c48e235f2835607e4c6c355d090cf7caffc4edee01bfc7` |
| 4 | `theorem` | [inner_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/inner-eq-tsum--feafbeac1d02d7ee13597534.md) | 170 | `result-track:feafbeac1d02d7ee1359753410b90159ec9f962e2c878eaf40f3a1456b29a449` |
| 5 | `theorem` | [hasSum_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/hassum-inner--30259687625e64f6080b8f3d.md) | 174 | `result-track:30259687625e64f6080b8f3db3851cb2189046e8e238c2a9b834171888197b8a` |
| 6 | `theorem` | [inner_single_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/inner-single-left--e936320ddce7c0d95dafa5ec.md) | 178 | `result-track:e936320ddce7c0d95dafa5ec35a3969d0648ffd35cbbf77434769e679f6d5741` |
| 7 | `theorem` | [inner_single_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/inner-single-right--b196507e54f34cd7cf3279fe.md) | 188 | `result-track:b196507e54f34cd7cf3279fed80fb3ecba8782e20ac3e35d335ba4cd6d3d9f03` |
| 8 | `theorem` | [summable_of_lp](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/summable-of-lp--caf35d137c8df2870759731c.md) | 201 | `result-track:caf35d137c8df2870759731cc564760049c55173defb02e077ea1b795a4f8436` |
| 9 | `def` | [linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/linearisometry--fe685512e9c64f12454d7780.md) | 210 | `declaration-track:fe685512e9c64f12454d7780a909aa6191bd24d775b72e39a454bdcd61cbea37` |
| 10 | `theorem` | [linearIsometry_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/linearisometry-apply--b570b094a2cd24635ad1031a.md) | 230 | `result-track:b570b094a2cd24635ad1031a5862e7816ff8adb38c572602651d0e30c24b2353` |
| 11 | `theorem` | [hasSum_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/hassum-linearisometry--337f0e10b7d7424d11179e61.md) | 234 | `result-track:337f0e10b7d7424d11179e610360c1ee1fe4786d380182c6d19e5bc1ec67fcbd` |
| 12 | `theorem` | [linearIsometry_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/linearisometry-apply-single--762b3941e7882e9db357a93e.md) | 240 | `result-track:762b3941e7882e9db357a93ed08b9c6330c72e733e7b68f2c334d76d89a05bbe` |
| 13 | `theorem` | [linearIsometry_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/linearisometry-apply-dfinsupp-sum-single--3324e06006d3c25a29ad33d5.md) | 252 | `result-track:3324e06006d3c25a29ad33d5d29ff0cca1eb9f943705574ed37d75116da4008c` |
| 14 | `theorem` | [range_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/range-linearisometry--dc3304ddc1043f6e0d930201.md) | 263 | `result-track:dc3304ddc1043f6e0d9302016f28c7591fe775f2c737b03142e0f43e91287fd2` |
| 15 | `structure` | [IsHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum--97a874b45e539ff969e0c446.md) | 298 | `declaration-track:97a874b45e539ff969e0c446902fa0c6ebc053e09ea268866969bd09bb813875` |
| 16 | `theorem` | [IsHilbertSum.mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-mk--81e8954926aae7a82bb5b233.md) | 310 | `result-track:81e8954926aae7a82bb5b2338cec095ec3632532f77b98e7462c1603cb788305` |
| 17 | `theorem` | [IsHilbertSum.mkInternal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-mkinternal--07e7affc19568e11c18a613b.md) | 321 | `result-track:07e7affc19568e11c18a613bafba20912a6c44c779a3678429d2bda0a928cb2f` |
| 18 | `def` | [IsHilbertSum.linearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-linearisometryequiv--a74231d132072c24b3a8d951.md) | 332 | `declaration-track:a74231d132072c24b3a8d951a995121919635e74756921fc93e640cbc0d00969` |
| 19 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply--69011652d75ddd51e1eda69c.md) | 339 | `result-track:69011652d75ddd51e1eda69c3d99cb69d0a605f86fa65e15a7b943be578d0c54` |
| 20 | `theorem` | [IsHilbertSum.hasSum_linearIsometryEquiv_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-hassum-linearisometryequiv-symm--9a6c18b547d8df31abe4127e.md) | 347 | `result-track:9a6c18b547d8df31abe4127e7c621ed42f96cf840851d65c348100270a0a62bd` |
| 21 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-single--f2d2077654c09ccdd2db026f.md) | 356 | `result-track:f2d2077654c09ccdd2db026ff3a62087b03b1c9321a8e867233baf6ee09283d1` |
| 22 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-dfinsupp-sum-single--8aa6162714fe6957c1515dd9.md) | 365 | `result-track:8aa6162714fe6957c1515dd94b00c7d565cc1ff897e9b41c07835cd881e07196` |
| 23 | `theorem` | [IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single--34fe8e1fe9ad0bf110745f86.md) | 375 | `result-track:34fe8e1fe9ad0bf110745f8651aeb151d571f14789af3f8d7648500207d5d64c` |
| 24 | `theorem` | [Orthonormal.isHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/orthonormal-ishilbertsum--983648d8b18b126bded196fc.md) | 386 | `result-track:983648d8b18b126bded196fcb498ed7a76b8c52468b99c00ba65fa3185468158` |
| 25 | `theorem` | [Submodule.isHilbertSumOrthogonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/submodule-ishilbertsumorthogonal--b7bc3557a8a3c0c0becb1922.md) | 394 | `result-track:b7bc3557a8a3c0c0becb192223340c14f5af0e66086fd8a5d71bca20fcc0da9f` |
| 26 | `structure` | [HilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/hilbertbasis--ae20e3040a177196e75d33e5.md) | 417 | `declaration-track:ae20e3040a177196e75d33e5cee3245023c518bafad1ba008b46f185fca463c5` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/instance--e91d6254013b90f87eac161a.md) | 426 | `declaration-track:e91d6254013b90f87eac161a60620817ef1bed885b200073fd87e17cc4a7131b` |
| 28 | `instance` | [instCoeFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/instcoefun--7bd3aa75b75348fb6690e7bc.md) | 430 | `declaration-track:7bd3aa75b75348fb6690e7bc48dc1eeb05bab6e8e91bbff5a88413284a56ff93` |
| 29 | `theorem` | [repr_symm_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/repr-symm-single--46776179503b80d7b9e46830.md) | 434 | `result-track:46776179503b80d7b9e4683042d58305abc125317b984ba95fee8b5d6cae9571` |
| 30 | `theorem` | [repr_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/repr-self--40aac1ac07bdf9deed39cd37.md) | 440 | `result-track:40aac1ac07bdf9deed39cd37e1b06e78aff1662cc7d741ae625a5211f10fbcb6` |
| 31 | `theorem` | [repr_apply_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/repr-apply-apply--d294eb7244d878193ea8eb22.md) | 445 | `result-track:d294eb7244d878193ea8eb223b5589df2fd5e253fc9ec1d930b7c862f42fbb22` |
| 32 | `theorem` | [orthonormal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/orthonormal--aadc85aca00f59c92fabbde6.md) | 452 | `result-track:aadc85aca00f59c92fabbde69af512ad20f9c366da48bf0d5900ae738e0cacd5` |
| 33 | `theorem` | [hasSum_repr_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/hassum-repr-symm--17599d565a170a789f9e15f7.md) | 460 | `result-track:17599d565a170a789f9e15f7fcb5c3efdb219040ed709926a88b6824fb35eb24` |
| 34 | `theorem` | [hasSum_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/hassum-repr--bd4af9df5f053c70f14dd11b.md) | 478 | `result-track:bd4af9df5f053c70f14dd11b3eed0118c3acf5f1133abcde3189a94137df1794` |
| 35 | `theorem` | [dense_span](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/dense-span--5c365d40c885e79249bf37b5.md) | 483 | `result-track:5c365d40c885e79249bf37b5413a196c9d7c03cdcc7d15fc9592f3e4afc8e8be` |
| 36 | `theorem` | [hasSum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/hassum-inner-mul-inner--a9394d9f9871084dbf938b8e.md) | 497 | `result-track:a9394d9f9871084dbf938b8ea4ff5209e7e9eae72bd33da8535020790d6433a0` |
| 37 | `theorem` | [summable_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/summable-inner-mul-inner--566cfd55898c6fb2098b9d23.md) | 504 | `result-track:566cfd55898c6fb2098b9d23cf88f5520425a352c534345ae389c26f5fb81534` |
| 38 | `theorem` | [tsum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/tsum-inner-mul-inner--9f72c2488f706ee13be9b5e3.md) | 509 | `result-track:9f72c2488f706ee13be9b5e3d2a06a08f60765dbe28a196a64b97fa9dc17bf2e` |
| 39 | `def` | [toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/toorthonormalbasis--69c579f7b7e8d13c41a6bc41.md) | 517 | `declaration-track:69c579f7b7e8d13c41a6bc4187a44908eb5624f422bc19b139a2ea2a3de349d3` |
| 40 | `theorem` | [coe_toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/coe-toorthonormalbasis--0a8d4d2c571e17ee8599e975.md) | 527 | `result-track:0a8d4d2c571e17ee8599e9757a3915d7f688705cf85bf1a0a1542305f528a3b2` |
| 41 | `theorem` | [hasSum_orthogonalProjection](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/hassum-orthogonalprojection--52bb8b2dd4ef8cc840c458dc.md) | 532 | `result-track:52bb8b2dd4ef8cc840c458dc560f985b8ea5b167479a32534c1e7e8b30361e61` |
| 42 | `theorem` | [finite_spans_dense](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/finite-spans-dense--4255cfde55139228db5a4c1c.md) | 539 | `result-track:4255cfde55139228db5a4c1c81939283e9be078049be34b100694af5f30612d0` |
| 43 | `def` | [mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/mk--d58fc86d094d9fe072286134.md) | 551 | `declaration-track:d58fc86d094d9fe072286134c1dd6d011aff0879d49f0a32172f925cdbb9707a` |
| 44 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.Orthonormal.linearIsometryEquiv_symm_apply_single_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variantc36ad931c9f6--82ba0d34315edaec71539176.md) | 555 | `result-track:82ba0d34315edaec715391764307a22d485fa1c24afe03b6f2692c21cc4f51f6` |
| 45 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/coe-mk--b6c06d70864a2663755a394f.md) | 562 | `result-track:b6c06d70864a2663755a394f82741e23ee8dd03187531ee39153733d2820ac04` |
| 46 | `def` | [mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/mkoforthogonaleqbot--0c740628172f8acc21572f3c.md) | 569 | `declaration-track:0c740628172f8acc21572f3c5851734102d5e382ad251490cbc97457735bfe60` |
| 47 | `theorem` | [coe_mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/coe-mkoforthogonaleqbot--57a719e65757a70e1136d117.md) | 575 | `result-track:57a719e65757a70e1136d117aa873963eb1a7e8c4b871d02c3ecb85a2339ed60` |
| 48 | `def` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.OrthonormalBasis.toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variantc36ad931c9f6--1784315de5ad4c01c4632032.md) | 583 | `declaration-track:1784315de5ad4c01c463203272c973301437caaf23bbc8cca667764c91d27667` |
| 49 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.OrthonormalBasis.coe_toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variantc36ad931c9f6--9402cfaa867263d81a9787df.md) | 591 | `result-track:9402cfaa867263d81a9787df84a2894dd366d6d38bae555ed15483f8154e3f29` |
| 50 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.Orthonormal.exists_hilbertBasis_extension](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variantc36ad931c9f6--23a7211d1663eb754b4d235d.md) | 597 | `result-track:23a7211d1663eb754b4d235d344ec0f31893dd21b1f04340b01ded2fb6867a4e` |
| 51 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.exists_hilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant207688ffaac1e1c6c30ebbb88cb92e6b69cbf8e62c6b92720a8dff847ffbf68b.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variantc36ad931c9f6--a96deaaac30d489cabd963a6.md) | 609 | `result-track:a96deaaac30d489cabd963a6359f0d26570f3d25f67bb9aa4c872e3833e28eaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
