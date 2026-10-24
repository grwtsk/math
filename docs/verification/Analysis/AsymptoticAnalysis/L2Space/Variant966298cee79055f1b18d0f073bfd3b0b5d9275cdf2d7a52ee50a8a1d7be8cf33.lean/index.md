# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.L2Space.Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8520356ab2f1c4a3fbd850e62a522fc8517f0bf",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8520356ab2f1c4a3fbd850e62a522fc8517f0bf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean.json)

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
| 1 | `theorem` | [summable_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/summable-inner--5a2ef83aee55fc944b2dddfa.md) | 109 | `result-track:5a2ef83aee55fc944b2dddfa241f6da44a6a509df8219c4dca6b1145b0aa3222` |
| 2 | `instance` | [instInnerProductSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/instinnerproductspace--2087b0e01a0811c202e0b5c8.md) | 117 | `declaration-track:2087b0e01a0811c202e0b5c8cf2f9ca763ee8ea5cf5d784be109f0427f108eef` |
| 3 | `theorem` | [inner_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/inner-eq-tsum--9fc6551dd4d3e86eb9fd6ea7.md) | 154 | `result-track:9fc6551dd4d3e86eb9fd6ea7d2569903028897bdc371a358359db18d289583e3` |
| 4 | `theorem` | [hasSum_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/hassum-inner--38aa73f0610df42fda35b32f.md) | 157 | `result-track:38aa73f0610df42fda35b32f054c397dc37984e806a32b2535d525f92d325cc5` |
| 5 | `theorem` | [inner_single_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/inner-single-left--68d327c1d7ebc3c231e48ebf.md) | 160 | `result-track:68d327c1d7ebc3c231e48ebf9ad6d1600af505599752f3ae05ea9bac6e062deb` |
| 6 | `theorem` | [inner_single_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/inner-single-right--c0ff4bd5e71e7a42e6312d0a.md) | 170 | `result-track:c0ff4bd5e71e7a42e6312d0a5525aac72fb9aa79b59a58fb5ad09b61f91bd5aa` |
| 7 | `theorem` | [summable_of_lp](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/summable-of-lp--842910c6e91f380adbbc1a59.md) | 184 | `result-track:842910c6e91f380adbbc1a596a5ba426886c2b3512da68a961e9093f4ebad7db` |
| 8 | `def` | [linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/linearisometry--0ef85e836fe8b57b29619400.md) | 193 | `declaration-track:0ef85e836fe8b57b29619400553d501ebffae5876a7685f9dfc40ecf1bd32d23` |
| 9 | `theorem` | [linearIsometry_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/linearisometry-apply--18656d4128ab43df3d55b01d.md) | 210 | `result-track:18656d4128ab43df3d55b01d11c2e6ee6e88631ede917275f167adc99aa35333` |
| 10 | `theorem` | [hasSum_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/hassum-linearisometry--e0cb65901d099f6d73584be7.md) | 213 | `result-track:e0cb65901d099f6d73584be7a8927f55cdaa58008407d0830466142379cc3528` |
| 11 | `theorem` | [linearIsometry_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/linearisometry-apply-single--9cbed3b2fd4a86052b238087.md) | 218 | `result-track:9cbed3b2fd4a86052b238087ec87b04f4ab5e9f2f902ab6e0bba42bf906a5bbd` |
| 12 | `theorem` | [linearIsometry_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/linearisometry-apply-dfinsupp-sum-single--dba1c97d1927c9043f521498.md) | 228 | `result-track:dba1c97d1927c9043f5214983ccc7e421bbe2f99b215d0485df6cc25f57f7241` |
| 13 | `theorem` | [range_linearIsometry](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/range-linearisometry--fe798d228b0980415c16ba4d.md) | 234 | `result-track:fe798d228b0980415c16ba4d5d3d49ea416e604bdb5c8557d0686c713c3fb5b3` |
| 14 | `structure` | [IsHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum--538e7381dcf4d667690ab8c2.md) | 267 | `declaration-track:538e7381dcf4d667690ab8c2b7f72d84b8bc141b510f1bb0b77a93a5cdc593b0` |
| 15 | `theorem` | [IsHilbertSum.mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-mk--40f2611d09bfe2dc2f4cc388.md) | 278 | `result-track:40f2611d09bfe2dc2f4cc3881e90bd59ef46596656308036c746f0f121efc079` |
| 16 | `theorem` | [IsHilbertSum.mkInternal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-mkinternal--9ef66df286b17d0d7d379e69.md) | 288 | `result-track:9ef66df286b17d0d7d379e69e631b5dd07aa181b4e3c06478bc13dd27dca6246` |
| 17 | `def` | [IsHilbertSum.linearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-linearisometryequiv--4c49e30c16e0308b1e97d0d0.md) | 298 | `declaration-track:4c49e30c16e0308b1e97d0d073ef832841b236a1d6f796845c752f29809831ea` |
| 18 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply--e8e625468595566fcb40e962.md) | 304 | `result-track:e8e625468595566fcb40e9625da842ff21a73adfe024be91cb3746587861bab9` |
| 19 | `theorem` | [IsHilbertSum.hasSum_linearIsometryEquiv_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-hassum-linearisometryequiv-symm--0f808a3b0adcc2fd01f39eef.md) | 311 | `result-track:0f808a3b0adcc2fd01f39eef53523d7348e868d0cb04dfe409243fe0fecfa26c` |
| 20 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-single--43c99658db55f8544edd9fe3.md) | 319 | `result-track:43c99658db55f8544edd9fe3c064dc78f71a8ff03228207f22a9e1c9f9f87bd1` |
| 21 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-dfinsupp-sum-single--08cb147eb223e507435e4428.md) | 327 | `result-track:08cb147eb223e507435e4428942f9ba9e099c5091f3664a4cc21d2e34ae08aee` |
| 22 | `theorem` | [IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single--c2eb8543c20aa7f5363a1ca6.md) | 337 | `result-track:c2eb8543c20aa7f5363a1ca61ed0c26f481738ca2a5e081b8aec7c57c1dd9278` |
| 23 | `theorem` | [Orthonormal.isHilbertSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/orthonormal-ishilbertsum--022bd1a2d03747d6aef9911e.md) | 348 | `result-track:022bd1a2d03747d6aef9911ef61baba91427516a3c2c230c6be69295a6b5ed57` |
| 24 | `theorem` | [Submodule.isHilbertSumOrthogonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/submodule-ishilbertsumorthogonal--13adbbfbf5cdc11c582d8710.md) | 355 | `result-track:13adbbfbf5cdc11c582d8710bd4c5f76e3f3021da3fdfd1995158da8d83c25fc` |
| 25 | `structure` | [HilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/hilbertbasis--8f354565b1b429ce2021b327.md) | 377 | `declaration-track:8f354565b1b429ce2021b327f2a6407222c8de584160bf8a6a9fde00ddbeb57d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/instance--5ee6ecbe3dd04891ceaecd94.md) | 385 | `declaration-track:5ee6ecbe3dd04891ceaecd9409c25dcce558271b0702b278fa6d54ec9eb5463e` |
| 27 | `instance` | [instFunLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/instfunlike--3387feadea7664a858beba18.md) | 391 | `declaration-track:3387feadea7664a858beba18af6d2cf451d0d020fcd19a73540fa158f172d00f` |
| 28 | `theorem` | [repr_symm_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/repr-symm-single--415aa3121d6f351e3f6e37d8.md) | 404 | `result-track:415aa3121d6f351e3f6e37d8f7540532269048647a52f0e53851d1454710c07d` |
| 29 | `theorem` | [repr_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/repr-self--51110d5204e05405a89ca8bd.md) | 410 | `result-track:51110d5204e05405a89ca8bd196acda89978a9ab00b9e66b75531d41223cbed9` |
| 30 | `theorem` | [repr_apply_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/repr-apply-apply--90477c3ffd793198c06723a7.md) | 414 | `result-track:90477c3ffd793198c06723a7e03c92f8bf20ecef4df236e6e59b4196edeeecaf` |
| 31 | `theorem` | [orthonormal](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/orthonormal--fac15668697c27c012e36a83.md) | 421 | `result-track:fac15668697c27c012e36a83d0b11ca3d8f94a126f9967d6e80e5b9a5617c415` |
| 32 | `theorem` | [hasSum_repr_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/hassum-repr-symm--6ebf25adb612269c02c47ad4.md) | 429 | `result-track:6ebf25adb612269c02c47ad474373c046101dc947ca8e28694eaa8ccf8b98c50` |
| 33 | `theorem` | [hasSum_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/hassum-repr--db2904d76cf79b0eede0ac31.md) | 446 | `result-track:db2904d76cf79b0eede0ac31f13543ec80b1a0aebc603aeee7468d828b6a57b4` |
| 34 | `theorem` | [dense_span](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/dense-span--d268a63c630f281f6810954d.md) | 450 | `result-track:d268a63c630f281f6810954d8ca78052139c56f110dd8f3de5eff8436d5ff304` |
| 35 | `theorem` | [hasSum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/hassum-inner-mul-inner--0d990236a2f6b5498f29483d.md) | 462 | `result-track:0d990236a2f6b5498f29483d45ad09cac800e4b1ee38b00969de009606510013` |
| 36 | `theorem` | [summable_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/summable-inner-mul-inner--65f4e112800c166778a990c0.md) | 468 | `result-track:65f4e112800c166778a990c048311264d56062b1c1542b6b40a5f9f8374bafb4` |
| 37 | `theorem` | [tsum_inner_mul_inner](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/tsum-inner-mul-inner--01afcd4593f5631df28a4a42.md) | 472 | `result-track:01afcd4593f5631df28a4a427ef76de8f6ce94c0e64425eadd94a30c70933247` |
| 38 | `def` | [toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/toorthonormalbasis--5aa8ba0a64584b714b43fb19.md) | 479 | `declaration-track:5aa8ba0a64584b714b43fb199f56079583ea7fd9a1444fb87d5b3bc195a6e517` |
| 39 | `theorem` | [coe_toOrthonormalBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/coe-toorthonormalbasis--2f0281df1428159c441f07d5.md) | 489 | `result-track:2f0281df1428159c441f07d59825150e63ac6c3ad9757fa59cab4b86488fb7e6` |
| 40 | `def` | [toUnconditionalSchauderBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/tounconditionalschauderbasis--313c26d8c962325b40d75808.md) | 497 | `declaration-track:313c26d8c962325b40d75808d52576b164a70795604c10ade4aa693e212345a7` |
| 41 | `def` | [toSchauderBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/toschauderbasis--73b97a1316ff8b70d8ca5d2a.md) | 510 | `declaration-track:73b97a1316ff8b70d8ca5d2ad001141aaed0fda954fa97226cb69ed15adfd7c2` |
| 42 | `theorem` | [hasSum_orthogonalProjectionOnto](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/hassum-orthogonalprojectiononto--65cbb7a59b8ad5c33df865b0.md) | 516 | `result-track:65cbb7a59b8ad5c33df865b0d7c643f4c740156bf19871daffc3fb740a9d7d69` |
| 43 | `theorem` | [finite_spans_dense](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/finite-spans-dense--472073626daf7abd8157788a.md) | 525 | `result-track:472073626daf7abd8157788acf040972c40a7a612deed1cd9d96667d494decaf` |
| 44 | `def` | [mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/mk--66fe896d6bd8c1e20233ce35.md) | 540 | `declaration-track:66fe896d6bd8c1e20233ce35774d92c00ce501c6de499f542b3783b0c7b5f391` |
| 45 | `theorem` | [_root_.Orthonormal.linearIsometryEquiv_symm_apply_single_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/root-orthonormal-linearisometryequiv-symm-apply-single-one--a75221e5934d1c06fa618faf.md) | 543 | `result-track:a75221e5934d1c06fa618fafc77e25a07fc52b66abd030d4b169c96fd4cfeb8d` |
| 46 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/coe-mk--fc6aae06d9c38ca8c73eea1a.md) | 549 | `result-track:fc6aae06d9c38ca8c73eea1a388aac65c7654a543fce427eb141fd88f8ebfdb8` |
| 47 | `def` | [mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/mkoforthogonaleqbot--1b75cc1a30d24c6e73dbdb89.md) | 556 | `declaration-track:1b75cc1a30d24c6e73dbdb893395660031cfd7d64404ac40fe117a3b1dfece7e` |
| 48 | `theorem` | [coe_mkOfOrthogonalEqBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/coe-mkoforthogonaleqbot--0f0e3d9e801e6dddc4c7ab0f.md) | 561 | `result-track:0f0e3d9e801e6dddc4c7ab0f5ce7e10a7245f8f037fdf1e9927a481394f4de05` |
| 49 | `def` | [_root_.OrthonormalBasis.toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/root-orthonormalbasis-tohilbertbasis--f5266c50ee7a43c38eebd333.md) | 568 | `declaration-track:f5266c50ee7a43c38eebd333f5ad473dbd0a22f8839e94f2d1b0a9d9b2570d03` |
| 50 | `theorem` | [_root_.OrthonormalBasis.coe_toHilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/root-orthonormalbasis-coe-tohilbertbasis--9d20381855dbad9df11fcc1b.md) | 577 | `result-track:9d20381855dbad9df11fcc1b07c1b023ba3cf458395ecb622eab3c1c40466cb2` |
| 51 | `theorem` | [_root_.Orthonormal.exists_hilbertBasis_extension](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/root-orthonormal-exists-hilbertbasis-extension--90daff2aafbdfac98ae720fb.md) | 582 | `result-track:90daff2aafbdfac98ae720fb9ae500e39cd22389b8cf8ae500fcc3be14b060ea` |
| 52 | `theorem` | [_root_.exists_hilbertBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/declarations/root-exists-hilbertbasis--0d4b1b9ddda7a81a02934fbe.md) | 594 | `result-track:0d4b1b9ddda7a81a02934fbe9b28fb5a0ed8d9d9502ec8b5b489866c33bbf201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
