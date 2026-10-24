# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.L2Space.Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84288bb7e72158e443efb83186c4fe455335f863",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84288bb7e72158e443efb83186c4fe455335f863`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [summable_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/summable-inner--b0d07e9a7f85494bca3c9bfc.md) | 102 | `result-track:b0d07e9a7f85494bca3c9bfce4fa05cef674af310a95e15268b6ecab27ed7cdf` |
| 2 | `instance` | [instInnerProductSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/instinnerproductspace--daa28185776cfbea3c1514b7.md) | 110 | `declaration-track:daa28185776cfbea3c1514b7089f7aeadff1b59358dc6b17057aa0db2da65825` |
| 3 | `theorem` | [inner_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/inner-eq-tsum--1ad835bc3bbf5816628ebbc6.md) | 147 | `result-track:1ad835bc3bbf5816628ebbc66cf5d5e64b77156439b4bb9467efb7a4ea89ba6e` |
| 4 | `theorem` | [hasSum_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/hassum-inner--664267ae12fafa713e23f5d4.md) | 150 | `result-track:664267ae12fafa713e23f5d4de5dae01648b48866c68be35eed8f8fc62723e56` |
| 5 | `theorem` | [inner_single_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/inner-single-left--0aadc17a749d958ab90db949.md) | 153 | `result-track:0aadc17a749d958ab90db94925e5fc97266ac1b539fd01200a7a16abe4105617` |
| 6 | `theorem` | [inner_single_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/inner-single-right--7a0b46d6f3024905aa83cab3.md) | 163 | `result-track:7a0b46d6f3024905aa83cab3b3961d4e9e6d64ddc97def9145ebe2b469d1c020` |
| 7 | `theorem` | [summable_of_lp](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/summable-of-lp--2d5935c43ed749e63aedc56d.md) | 177 | `result-track:2d5935c43ed749e63aedc56d01ff752d7a461b801be6c74057247fa152004414` |
| 8 | `def` | [linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/linearisometry--c5eb526cd89d7830b0e65080.md) | 186 | `declaration-track:c5eb526cd89d7830b0e650803cae8dd00b4ae612e61bb40a18d68e84b4af782c` |
| 9 | `theorem` | [linearIsometry_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/linearisometry-apply--a99042628a15442fbf0b9629.md) | 205 | `result-track:a99042628a15442fbf0b96294c080ed538c14571746e6b6352ee5500e8483532` |
| 10 | `theorem` | [hasSum_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/hassum-linearisometry--5487764f1d897c6e175bf33e.md) | 208 | `result-track:5487764f1d897c6e175bf33eee35b255153809ce11a99caadfefdf78dbf63291` |
| 11 | `theorem` | [linearIsometry_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/linearisometry-apply-single--e96300151bb8587c9e95843c.md) | 213 | `result-track:e96300151bb8587c9e95843cbc67e59d3eabe2a8cf6f31e7e5d54f661ad00254` |
| 12 | `theorem` | [linearIsometry_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/linearisometry-apply-dfinsupp-sum-single--9ce2bbef4fae739e9b796e18.md) | 223 | `result-track:9ce2bbef4fae739e9b796e1866840b5379b4f73b4676219a6f7974cd94218126` |
| 13 | `theorem` | [range_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/range-linearisometry--46a166881573c442187aae9b.md) | 229 | `result-track:46a166881573c442187aae9b82b6e5610f610071cf184dd2cccbb2cec8ed070b` |
| 14 | `structure` | [IsHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum--83468fba5cb3688736177295.md) | 262 | `declaration-track:83468fba5cb36887361772950301496366d365e1cf84881ab0d4523b0f5bc505` |
| 15 | `theorem` | [IsHilbertSum.mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-mk--cb0a3d0e24046845e3c372a4.md) | 273 | `result-track:cb0a3d0e24046845e3c372a4447befb470f19ba49f138c14e67789017f9f056d` |
| 16 | `theorem` | [IsHilbertSum.mkInternal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-mkinternal--c1a7b87c5cce2f66853deb8c.md) | 283 | `result-track:c1a7b87c5cce2f66853deb8cdf0e77e6471ab55bda5a7175a5a9f8d42abe7970` |
| 17 | `def` | [IsHilbertSum.linearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-linearisometryequiv--aa5ada84c1031125228416df.md) | 293 | `declaration-track:aa5ada84c1031125228416df4aa339d923092852e266217f4adcc38f654a1a83` |
| 18 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply--8dbbcc6dfc9b6853f389f388.md) | 299 | `result-track:8dbbcc6dfc9b6853f389f388a3c9b6736d473ea83c3df4bea3265c4047550c76` |
| 19 | `theorem` | [IsHilbertSum.hasSum_linearIsometryEquiv_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-hassum-linearisometryequiv-symm--4645e86041dba4f2c72f96d8.md) | 306 | `result-track:4645e86041dba4f2c72f96d809d572e992ae9b09959b3c602663287ffb198d60` |
| 20 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-single--a98d4b1427c2786e7109c48a.md) | 314 | `result-track:a98d4b1427c2786e7109c48a64873e7ae8572ed57b8086fe46e99e1a0128be04` |
| 21 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-dfinsupp-sum-single--dc6eb659b0ca24550f6d5a46.md) | 322 | `result-track:dc6eb659b0ca24550f6d5a46431e593f697bd09b12683d419c4c214427ad1a7b` |
| 22 | `theorem` | [IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single--bf2a86469995f7f15a52fab7.md) | 331 | `result-track:bf2a86469995f7f15a52fab79419e3d957ba7d333eb14ffe90d799b7d4040e9d` |
| 23 | `theorem` | [Orthonormal.isHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/orthonormal-ishilbertsum--660ff5e69ab82fc56cb9e27d.md) | 342 | `result-track:660ff5e69ab82fc56cb9e27db64ab7384b7c7d5f0902edc43fa272997364dbc5` |
| 24 | `theorem` | [Submodule.isHilbertSumOrthogonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/submodule-ishilbertsumorthogonal--dd2ffbb53a0330da90d2a108.md) | 349 | `result-track:dd2ffbb53a0330da90d2a1089a928303410b2dc63a4e59e281376c835fc5e4e1` |
| 25 | `structure` | [HilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/hilbertbasis--617743e51dcb40a0e904e8a9.md) | 371 | `declaration-track:617743e51dcb40a0e904e8a96a0ca1b6b1d87e4e257c5e9d7d3b0e1bf389a891` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/instance--7538bf4cf6aa0253b92fe517.md) | 379 | `declaration-track:7538bf4cf6aa0253b92fe517f633367c28a5e7060af417714916a675f4428133` |
| 27 | `instance` | [instFunLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/instfunlike--c468ca5056a2ad5e56e2e688.md) | 384 | `declaration-track:c468ca5056a2ad5e56e2e6884d035a9e4782d21985d78da336dc6f1530abc230` |
| 28 | `theorem` | [repr_symm_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/repr-symm-single--40e2551ed0730db1edaf9b53.md) | 397 | `result-track:40e2551ed0730db1edaf9b536e19fdf1c2a3677d5f2d3e421a49287234ae6680` |
| 29 | `theorem` | [repr_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/repr-self--6473245d54aa12e94e2a906d.md) | 403 | `result-track:6473245d54aa12e94e2a906d0d64f73b69bfd36cee34d771d10833d3955c5094` |
| 30 | `theorem` | [repr_apply_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/repr-apply-apply--5e6009495fe65b88c6cf684f.md) | 407 | `result-track:5e6009495fe65b88c6cf684f153c3a55433f191e1cc0bd36311a0cf4a8306cf8` |
| 31 | `theorem` | [orthonormal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/orthonormal--e33dfbe7ca04fe6f556475bf.md) | 414 | `result-track:e33dfbe7ca04fe6f556475bfc7cc5427efdd50a08996d5fac0323454721788bc` |
| 32 | `theorem` | [hasSum_repr_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/hassum-repr-symm--e205af536c813979a1ee8a96.md) | 422 | `result-track:e205af536c813979a1ee8a9621eab2b641aef6a2df66faf589048c29b23263e3` |
| 33 | `theorem` | [hasSum_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/hassum-repr--347f8ef6082b413aafab8d52.md) | 440 | `result-track:347f8ef6082b413aafab8d529a8258f6e5b8df8980b15f3ac09a54fe4434f5e7` |
| 34 | `theorem` | [dense_span](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/dense-span--d11d2cf398df4c2b3b597e23.md) | 444 | `result-track:d11d2cf398df4c2b3b597e2325a0001c58c44fc95937a506c035a1ea29d642c7` |
| 35 | `theorem` | [hasSum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/hassum-inner-mul-inner--6f2d25ac6bd4bd544319104f.md) | 457 | `result-track:6f2d25ac6bd4bd544319104fe30b8c28d94cf4cf6f9d2f08096b18f69a377b7a` |
| 36 | `theorem` | [summable_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/summable-inner-mul-inner--5ff4de2c036ef4599eae24a9.md) | 463 | `result-track:5ff4de2c036ef4599eae24a97f71c7d48764a9a0789837a07b75d1931b9ae23d` |
| 37 | `theorem` | [tsum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/tsum-inner-mul-inner--c0bd10ac79ad0dfb8fd279a3.md) | 467 | `result-track:c0bd10ac79ad0dfb8fd279a338651fdd138b0e29a6e643740d2cbbce8393b2f7` |
| 38 | `def` | [toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/toorthonormalbasis--739bc2f7c0b99b82f244d6e2.md) | 474 | `declaration-track:739bc2f7c0b99b82f244d6e20783e4ed0d5a09f6cd4aa95863ae39199ec86f4d` |
| 39 | `theorem` | [coe_toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/coe-toorthonormalbasis--009f5f2a935c19e77a17a10b.md) | 484 | `result-track:009f5f2a935c19e77a17a10b69db4d02e76f44164b19830a1b1e9b804e21b8db` |
| 40 | `theorem` | [hasSum_orthogonalProjection](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/hassum-orthogonalprojection--be9e5e7f28d873227d290c03.md) | 488 | `result-track:be9e5e7f28d873227d290c03f1d59bd1794b8b8df33b41d0e098688b38274c1b` |
| 41 | `theorem` | [finite_spans_dense](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/finite-spans-dense--956a6fb34fe5889e27a03ac1.md) | 494 | `result-track:956a6fb34fe5889e27a03ac17654f4489d384e72d812f977080f9664a0fad126` |
| 42 | `def` | [mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/mk--02593f85e8dc76a195b44848.md) | 509 | `declaration-track:02593f85e8dc76a195b448489dc524f3ace8800786f6591824e3c859c31a786b` |
| 43 | `theorem` | [_root_.Orthonormal.linearIsometryEquiv_symm_apply_single_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/root-orthonormal-linearisometryequiv-symm-apply-single-one--d86cfd5958da4852786df6c6.md) | 512 | `result-track:d86cfd5958da4852786df6c65ba9862aca31e0b87985b46dc1aa2d492c5b476c` |
| 44 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/coe-mk--01ad68109bf5335ffcf96ae4.md) | 518 | `result-track:01ad68109bf5335ffcf96ae401e1cbf0212a09acafb702a70de0f1e649e7c562` |
| 45 | `def` | [mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/mkoforthogonaleqbot--4f0d47861e862cb33c361c36.md) | 525 | `declaration-track:4f0d47861e862cb33c361c369af0a697dbb16aecf0e56cc7fa773e0d113f6cd1` |
| 46 | `theorem` | [coe_mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/coe-mkoforthogonaleqbot--23936a4a4c60ec860e6c546a.md) | 530 | `result-track:23936a4a4c60ec860e6c546a59f43e133a675778260ba7e2b3eccb1f3524d2ea` |
| 47 | `def` | [_root_.OrthonormalBasis.toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/root-orthonormalbasis-tohilbertbasis--b78b51d2db84e0f55880de35.md) | 537 | `declaration-track:b78b51d2db84e0f55880de356ae627fc00f4d4a24319a5a5148ea405649eb1bd` |
| 48 | `theorem` | [_root_.OrthonormalBasis.coe_toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/root-orthonormalbasis-coe-tohilbertbasis--7ef7a814df4b4ae5ce277ac7.md) | 546 | `result-track:7ef7a814df4b4ae5ce277ac735b4ddf2857e9b7477ee8ffb33c36e308aeecf5f` |
| 49 | `theorem` | [_root_.Orthonormal.exists_hilbertBasis_extension](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/root-orthonormal-exists-hilbertbasis-extension--f9a3d8788fe84cb7c2d001be.md) | 551 | `result-track:f9a3d8788fe84cb7c2d001be32457b86f82fc3d7aeb92b7b31c8ab67881d1af6` |
| 50 | `theorem` | [_root_.exists_hilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.lean/declarations/root-exists-hilbertbasis--ed6b2e3d04e883dcf0d69b3c.md) | 563 | `result-track:ed6b2e3d04e883dcf0d69b3c5ccd0236694e93860aaeafefbdf2475f2b155738` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
