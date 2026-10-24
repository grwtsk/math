# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.L2Space.Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f03e57af87069e6dd0bedb504a804f6e4a4b3fd",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f03e57af87069e6dd0bedb504a804f6e4a4b3fd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [summable_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/summable-inner--a888c7602742a11f7098c07b.md) | 110 | `result-track:a888c7602742a11f7098c07b227eeb366dbb2b6011e09db7b0a90990cf0682df` |
| 2 | `instance` | [instInnerProductSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/instinnerproductspace--74d43469eb880306188623b3.md) | 118 | `declaration-track:74d43469eb880306188623b319d72732be51b261e15791c649670db2e9c94f60` |
| 3 | `theorem` | [inner_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/inner-eq-tsum--7e88f41ac2c01f13552070aa.md) | 155 | `result-track:7e88f41ac2c01f13552070aa565581c4253d45cffa915b4a5812d24525adff1f` |
| 4 | `theorem` | [hasSum_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/hassum-inner--c78ca8801927ab8e633bf2d9.md) | 158 | `result-track:c78ca8801927ab8e633bf2d959f4a6243bf5aacd5843dabdcf299b802819d940` |
| 5 | `theorem` | [inner_single_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/inner-single-left--be2953dfb9d70905121cce3f.md) | 161 | `result-track:be2953dfb9d70905121cce3f112df3e19e353b26f1413048c0a928ca13da9be0` |
| 6 | `theorem` | [inner_single_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/inner-single-right--df81520e3c9251ff355f100f.md) | 171 | `result-track:df81520e3c9251ff355f100f603321c444aaa92be3316b6e68f1f71546901e1e` |
| 7 | `theorem` | [summable_of_lp](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/summable-of-lp--dbed0165dc9e041c60e572cd.md) | 185 | `result-track:dbed0165dc9e041c60e572cd28808e54f9f2322e2a66e5181c93fd95f53677ed` |
| 8 | `def` | [linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/linearisometry--261101ee8d0f898018663e81.md) | 194 | `declaration-track:261101ee8d0f898018663e8147730e2dc1f5db7d6b4809899532c7ec582bcc4b` |
| 9 | `theorem` | [linearIsometry_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/linearisometry-apply--f5714d0417aab2a3ac3c5903.md) | 213 | `result-track:f5714d0417aab2a3ac3c590362f448b06bf8bbe7c55e2a6bfa7df33aac894559` |
| 10 | `theorem` | [hasSum_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/hassum-linearisometry--36ba8f09d0f76f6fc7cb448b.md) | 216 | `result-track:36ba8f09d0f76f6fc7cb448bb8eeeda5db2ffe2722a58a0d49fa73553f692c6f` |
| 11 | `theorem` | [linearIsometry_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/linearisometry-apply-single--10be44bd13ae111ec2f5909d.md) | 221 | `result-track:10be44bd13ae111ec2f5909d027110d1b667f560786ce65f5d6b507187b57585` |
| 12 | `theorem` | [linearIsometry_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/linearisometry-apply-dfinsupp-sum-single--c4013fa2ec9c4a38325572d4.md) | 231 | `result-track:c4013fa2ec9c4a38325572d41d55b33a6e56ac9db8e76ffa5147441c4bbd8e3d` |
| 13 | `theorem` | [range_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/range-linearisometry--ef03cd3b2fc439773ec37def.md) | 237 | `result-track:ef03cd3b2fc439773ec37defdf9668444ab42c52eb51e3feab8d5572ee45e6ec` |
| 14 | `structure` | [IsHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum--3482f39398d4daa130e97955.md) | 270 | `declaration-track:3482f39398d4daa130e97955b0398e7566de26ed0f8c4ee959f81a33ef9d594d` |
| 15 | `theorem` | [IsHilbertSum.mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-mk--d11c203e4c9394b01b8d1198.md) | 281 | `result-track:d11c203e4c9394b01b8d1198ed7f22cd3392570477933242a543805d19dbc578` |
| 16 | `theorem` | [IsHilbertSum.mkInternal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-mkinternal--79088a975be9f3a9b1c2b57e.md) | 291 | `result-track:79088a975be9f3a9b1c2b57edf60c58fa1b438909cfde844b2fb3c7cf4018372` |
| 17 | `def` | [IsHilbertSum.linearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-linearisometryequiv--edf8ea23cbf3d3e578239775.md) | 301 | `declaration-track:edf8ea23cbf3d3e57823977517007de8ea5639ef5e9efe2cd417e61d95183652` |
| 18 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply--5ca34ef4e68a9e2e3445c0c5.md) | 307 | `result-track:5ca34ef4e68a9e2e3445c0c5944ca5541a54caac47ca9c79f719c54b450913b4` |
| 19 | `theorem` | [IsHilbertSum.hasSum_linearIsometryEquiv_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-hassum-linearisometryequiv-symm--a9296dea5c2290e080cecca4.md) | 314 | `result-track:a9296dea5c2290e080cecca494461a194c7f38fcf6ca4ff8e8fab20f74c53914` |
| 20 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-single--872fe0fa33bce5659b538552.md) | 322 | `result-track:872fe0fa33bce5659b538552a78b97f6a359dcf7af468f7bc848e775c576c0c7` |
| 21 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-dfinsupp-sum-single--f70ce4c8abf0686cf49ce7c9.md) | 330 | `result-track:f70ce4c8abf0686cf49ce7c9f2847818f44fd6f4af4531ed39a4398ceb0d9406` |
| 22 | `theorem` | [IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single--b109fea536890b486b306323.md) | 339 | `result-track:b109fea536890b486b306323a0a48a974b2bc793369d5783c745c31b12f295eb` |
| 23 | `theorem` | [Orthonormal.isHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/orthonormal-ishilbertsum--4d6a9cbdae6f94423549f708.md) | 350 | `result-track:4d6a9cbdae6f94423549f7083a5e96b363c1fc2ef4b6b1976e647b1b223f1d98` |
| 24 | `theorem` | [Submodule.isHilbertSumOrthogonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/submodule-ishilbertsumorthogonal--4e2d97151d1ff73cd58d4a83.md) | 357 | `result-track:4e2d97151d1ff73cd58d4a83dc7674e62faf25a46af9cc2fef218f9fa9bebef0` |
| 25 | `structure` | [HilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/hilbertbasis--3a1edcff7d77d5e32b2138b7.md) | 379 | `declaration-track:3a1edcff7d77d5e32b2138b753820d85ea33927af4cb7791e419a9128c3a5908` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/instance--a453fc931c8fe51b80064c7c.md) | 387 | `declaration-track:a453fc931c8fe51b80064c7cf23d7299ec8e5f539546ef94e3eb9b53fd38c543` |
| 27 | `instance` | [instFunLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/instfunlike--1eca41efa347e901dd3f8987.md) | 392 | `declaration-track:1eca41efa347e901dd3f898791f063be736c29a8843b209e581408ade3bd37ce` |
| 28 | `theorem` | [repr_symm_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/repr-symm-single--11d515fc1d95fadfb5166620.md) | 405 | `result-track:11d515fc1d95fadfb516662089e3a34157cf956f3f371a98f13415a1bb17c848` |
| 29 | `theorem` | [repr_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/repr-self--c7d6792896d943c065c074c7.md) | 411 | `result-track:c7d6792896d943c065c074c76b9cb5e8997df5ced3f351cd52be0c5a66869372` |
| 30 | `theorem` | [repr_apply_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/repr-apply-apply--9d56087c3701e87cac53ae39.md) | 415 | `result-track:9d56087c3701e87cac53ae3921ffc55978f43e096a271e052147e93ae4260c91` |
| 31 | `theorem` | [orthonormal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/orthonormal--023695518803844ccc72e736.md) | 422 | `result-track:023695518803844ccc72e73697e9ee428fe506307b712911406b8c74ded6923b` |
| 32 | `theorem` | [hasSum_repr_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/hassum-repr-symm--250a42686f6e461c75cf54bf.md) | 430 | `result-track:250a42686f6e461c75cf54bff3020b53e0361863389be2aa90baa4225e6f8b2a` |
| 33 | `theorem` | [hasSum_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/hassum-repr--82a4e2b98212255f4ad893b1.md) | 448 | `result-track:82a4e2b98212255f4ad893b1ee058dcaac8a2356226bd9e49b46260bae1dcb4a` |
| 34 | `theorem` | [dense_span](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/dense-span--db3b7fd0cd62d8a708385011.md) | 452 | `result-track:db3b7fd0cd62d8a70838501133d4334a33778a92d39858eeca147e188e98371f` |
| 35 | `theorem` | [hasSum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/hassum-inner-mul-inner--d732f607cd9b470502e07b95.md) | 465 | `result-track:d732f607cd9b470502e07b954e282ae552d667c0826c82410f85c7f2ca66afc7` |
| 36 | `theorem` | [summable_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/summable-inner-mul-inner--30c8a554f8808cbd1589830a.md) | 471 | `result-track:30c8a554f8808cbd1589830ad1b14089d62479149655bb6c97602582b43ec7ee` |
| 37 | `theorem` | [tsum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/tsum-inner-mul-inner--6ffc34b9e779b725f7d22f61.md) | 475 | `result-track:6ffc34b9e779b725f7d22f61f818b96dc10b415e5c014cba184c421ea00a71fd` |
| 38 | `def` | [toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/toorthonormalbasis--65e5b1dd22e8c435d2a4b357.md) | 482 | `declaration-track:65e5b1dd22e8c435d2a4b357c732aa2ef09275161bae41f017d129ebbf7e810c` |
| 39 | `theorem` | [coe_toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/coe-toorthonormalbasis--c68f42de1aaaddaf16bfe9d4.md) | 492 | `result-track:c68f42de1aaaddaf16bfe9d41593f0210423d4f8b4e6c5b28e4c52a58f15e7b2` |
| 40 | `theorem` | [hasSum_orthogonalProjection](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/hassum-orthogonalprojection--9c1dd359313c0d68ba3b7d69.md) | 496 | `result-track:9c1dd359313c0d68ba3b7d69b5ddc6258092c9a079ada40bf8c932b77b863707` |
| 41 | `theorem` | [finite_spans_dense](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/finite-spans-dense--9c5b4b78dc94d7382b63d568.md) | 502 | `result-track:9c5b4b78dc94d7382b63d5685abd5f1d3badc1060c37fb46ba8a03253afe6963` |
| 42 | `def` | [mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/mk--6a03daea3b6284cb254d04ec.md) | 517 | `declaration-track:6a03daea3b6284cb254d04ec99698bfbade83b179ef26bbb60bbecdf898f8c4b` |
| 43 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.Orthonormal.linearIsometryEquiv_symm_apply_single_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variant9f24c9f3ac73--d214a83e962fc913425a1ec0.md) | 520 | `result-track:d214a83e962fc913425a1ec0c63a21b3286f93847c1b379a11b0ea66574bc623` |
| 44 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/coe-mk--b9a949efa0819c13afb64d4e.md) | 526 | `result-track:b9a949efa0819c13afb64d4e3d4de04e2f4a3795385f518a6618e0bbce487db8` |
| 45 | `def` | [mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/mkoforthogonaleqbot--7ce22fa87593177c6c9fdd94.md) | 533 | `declaration-track:7ce22fa87593177c6c9fdd94b3ade8530adf8725af95c733598d13c20cc231a8` |
| 46 | `theorem` | [coe_mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/coe-mkoforthogonaleqbot--3249e0f0439d70da944055b1.md) | 538 | `result-track:3249e0f0439d70da944055b16b010911ebd8f6be24cf4a0d18290fc820acd9f5` |
| 47 | `def` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.OrthonormalBasis.toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variant9f24c9f3ac73--9c930c52a2657dabcfe84f6b.md) | 545 | `declaration-track:9c930c52a2657dabcfe84f6bf4dbf82fb55a4759f4131b66ba26416175f9d46e` |
| 48 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.OrthonormalBasis.coe_toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variant9f24c9f3ac73--34abcc5ce28b5dc2c03bb9fb.md) | 554 | `result-track:34abcc5ce28b5dc2c03bb9fb64acf4f39d8ba9fa27598fd8846c969ef06a1d1c` |
| 49 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.Orthonormal.exists_hilbertBasis_extension](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variant9f24c9f3ac73--b41b33e12e47d8696ec508c7.md) | 559 | `result-track:b41b33e12e47d8696ec508c7d16d86bb6c919b4f328184d5f3b0cdd1319df545` |
| 50 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsHilbertSum.Variant9f24c9f3ac73cae7656cae0dce7ece2aef6845351599426ba0523597b70bef74.exists_hilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-ishilbertsum-variant9f24c9f3ac73--bd2d1d5ec21c7e0faad500fb.md) | 571 | `result-track:bd2d1d5ec21c7e0faad500fb02bde491805acd5ee8febd89ea26d168e4a780a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
