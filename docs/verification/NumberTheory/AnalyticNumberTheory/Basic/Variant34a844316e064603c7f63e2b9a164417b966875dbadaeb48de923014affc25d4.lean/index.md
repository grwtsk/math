# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Basic.Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c09349957b62a9be3d79786a903b80e6048ac221`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Defs` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_Ioc_mul_apply](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/sum-ioc-mul-apply--389f948ff50c97fbaed0706d.md) | 41 | `result-track:389f948ff50c97fbaed0706dc00d19446fde1ac211b3a55b152a3a9e0adacc94` |
| 2 | `theorem` | [sum_Ioc_mul_apply'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/sum-ioc-mul-apply--503b33257ef974600dd815b5.md) | 74 | `result-track:503b33257ef974600dd815b5c0bfa439a0b1966565c7ac2dda822dc1846a3055` |
| 3 | `structure` | [SubmultWeight](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/submultweight--9a7c5a8e749da62c1d81e86c.md) | 85 | `declaration-track:9a7c5a8e749da62c1d81e86c3b82dbcf5ce0be071675afef2dba84a05c51b67e` |
| 4 | `lemma` | [SubmultWeight.rpow_neg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/submultweight-rpow-neg--03acbebcd9a47986d3234f5c.md) | 89 | `result-track:03acbebcd9a47986d3234f5ce27080a0e24e1c261e28b0f9211241d0fa6a9c46` |
| 5 | `theorem` | [sum_Ioc_mul_apply_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/sum-ioc-mul-apply-le--ab369751fa28d67881cdfeb3.md) | 94 | `result-track:ab369751fa28d67881cdfeb32cde8cbe3cad4919f2a86979bac0ff455434dd4a` |
| 6 | `lemma` | [mul_apply_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/mul-apply-nonneg--efa3f0bc5d03d6219f07bc4d.md) | 111 | `result-track:efa3f0bc5d03d6219f07bc4d811887ef9017c3b44e7959f146b867964364a826` |
| 7 | `lemma` | [pow_apply_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/pow-apply-nonneg--8e8df6414acdeaac4b6f7671.md) | 117 | `result-track:8e8df6414acdeaac4b6f76715a03e7946496494684e551de062f862c7b31bdc6` |
| 8 | `theorem` | [sum_Ioc_pow_apply_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/sum-ioc-pow-apply-le--b144f37980ab95f359b013fe.md) | 126 | `result-track:b144f37980ab95f359b013fef72bf423bea2d304cb2c37a54800d4538cb3c68c` |
| 9 | `def` | [lamLog](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlog--424c54aa1a6d1005726b485f.md) | 146 | `declaration-track:424c54aa1a6d1005726b485faca92647f9d617b3eb463e0b42d6e7fccc061191` |
| 10 | `lemma` | [lamLog_apply](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlog-apply--37ad4638d503aa351adff3dc.md) | 149 | `result-track:37ad4638d503aa351adff3dcc2147082bb5c61de7812406e5417e9ea47e63f4e` |
| 11 | `lemma` | [lamLogConv_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlogconv-eq--ba7e8d988b899834fd58f657.md) | 152 | `result-track:ba7e8d988b899834fd58f657a7291b7236c85069638ac1c4c15302834b262618` |
| 12 | `lemma` | [lamLog_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlog-nonneg--fbd190f5b780736437036195.md) | 154 | `result-track:fbd190f5b7807364370361957e35929e06a83030eaaed3a4e72e53f457e9f04d` |
| 13 | `lemma` | [vonMangoldt_nonneg'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/vonmangoldt-nonneg--db7ab589c582d03e5057f2e7.md) | 158 | `result-track:db7ab589c582d03e5057f2e7a24a32d4f11f29a964372ed5fabef574cb6d491e` |
| 14 | `lemma` | [lamPow_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lampow-nonneg--6e222f0a0467fba3b8e039d3.md) | 160 | `result-track:6e222f0a0467fba3b8e039d387e717d6e77498326d6d7a80119c76e554b63cc3` |
| 15 | `lemma` | [lamLogConv_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlogconv-nonneg--e82b962fa6f6114d12e77156.md) | 162 | `result-track:e82b962fa6f6114d12e77156bf25bfdc8e67174f4e12ec60c092238b86024f7a` |
| 16 | `lemma` | [one_le_cardFactors_of_vonMangoldt_ne_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/one-le-cardfactors-of-vonmangoldt-ne-zero--0fe7f9d109c746a709fa2edd.md) | 167 | `result-track:0fe7f9d109c746a709fa2edde8cedfa6f78eae5b2e0641a86955123b72dcc753` |
| 17 | `lemma` | [cardFactors_of_mem_divisorsAntidiagonal](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/cardfactors-of-mem-divisorsantidiagonal--4de19c31683e4726d78da581.md) | 172 | `result-track:4de19c31683e4726d78da581b6970257e47c413ee3d1fb9a96ed1e02a226edbd` |
| 18 | `lemma` | [lamPow_eq_zero_of_cardFactors_lt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lampow-eq-zero-of-cardfactors-lt--42bdf9f36c26c47c39804d7f.md) | 180 | `result-track:42bdf9f36c26c47c39804d7fbf61c2d25cb0c93448de613fa8281f4db42ede26` |
| 19 | `lemma` | [lamLogConv_eq_zero_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlogconv-eq-zero-of-le--aa63c6a5b8bd3d1cbaba90d9.md) | 192 | `result-track:aa63c6a5b8bd3d1cbaba90d9f205229f6dfbccd5ab3ad55350f78b3312b7d92b` |
| 20 | `lemma` | [lamPow_le_log_pow](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lampow-le-log-pow--d8a9dad43f6f477caed7336d.md) | 202 | `result-track:d8a9dad43f6f477caed7336de84529edb5d7da0c79e30e344564eee3236baf1d` |
| 21 | `lemma` | [lamLogConv_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlogconv-le--98e1df69959b24884e378229.md) | 226 | `result-track:98e1df69959b24884e37822986a6deb211438ef5de12279f0b132fce43429251` |
| 22 | `lemma` | [lamLogPow_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlogpow-le--6ec2557a64954cdcffc01a06.md) | 241 | `result-track:6ec2557a64954cdcffc01a06770440b8e8a0d48af7fa8cbf643615a7d62a86c0` |
| 23 | `lemma` | [lamLogPow_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/lamlogpow-nonneg--19e4b6fa108d569344cba58b.md) | 271 | `result-track:19e4b6fa108d569344cba58be27164ca0946f82839ec62b9d9710d10d7a6ff97` |
| 24 | `lemma` | [xiCoeff_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeff-zero--37b62875a6b4d03cd4a8ac31.md) | 275 | `result-track:37b62875a6b4d03cd4a8ac3167250da0f588f542214465320364a0eee9b438ae` |
| 25 | `lemma` | [xiCoeff_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeff-one--ee0f58849adbe94e67ad8f77.md) | 278 | `result-track:ee0f58849adbe94e67ad8f77e9b9a5231a1a998b5e883964b8567777ededa715` |
| 26 | `lemma` | [xiCoeff_eq_sum_range_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeff-eq-sum-range-of-le--55c54ccf072adbcf43fa8129.md) | 282 | `result-track:55c54ccf072adbcf43fa81299b7113b1ce55e9ac9f8be7f7c54267e3bcade377` |
| 27 | `lemma` | [xiCoeff_conj](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeff-conj--9f1e0830d7fd1581288d9bb5.md) | 292 | `result-track:9f1e0830d7fd1581288d9bb5d3058c332485968f16098f7b629b06e3b9d20f1e` |
| 28 | `def` | [xiCoeffJ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeffj--f4f14066478fbdd0d59ef75b.md) | 298 | `declaration-track:f4f14066478fbdd0d59ef75bad4e733e3f19c93c01326053b233f2eecd3338f6` |
| 29 | `lemma` | [xiCoeff_eq_neg_add_xiCoeffJ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeff-eq-neg-add-xicoeffj--adc6ec931d6e284617972c68.md) | 301 | `result-track:adc6ec931d6e284617972c68ab5bcccd7aa888a8b00d5889a14338e969fe1596` |
| 30 | `lemma` | [xiCoeffJ_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeffj-zero--3ed6a69b781bf17b871817f9.md) | 304 | `result-track:3ed6a69b781bf17b871817f97972c75a263c9df0df8cb5369c22ee1a2bb31614` |
| 31 | `lemma` | [xiCoeffJ_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeffj-one--58c1ce0f0a3dfacbc11e0967.md) | 307 | `result-track:58c1ce0f0a3dfacbc11e0967b412ec3eb637299cc5f910c198bbf52726d7683b` |
| 32 | `lemma` | [xiCoeffJ_eq_sum_range_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeffj-eq-sum-range-of-le--77d474566b8823292d4964f2.md) | 310 | `result-track:77d474566b8823292d4964f228bdaa0b9b02923c2eb59ac403b9de64ac7afebe` |
| 33 | `lemma` | [xiCoeffJ_conj](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/xicoeffj-conj--16a3688f63f676bb6651ab5d.md) | 317 | `result-track:16a3688f63f676bb6651ab5d3fcd021d20a2f4cba1b978d259f9ada02818bd87` |
| 34 | `lemma` | [norm_xiCoeffJ_le_aux](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/norm-xicoeffj-le-aux--37d3d02b2baf4c37d7f7f4e7.md) | 322 | `result-track:37d3d02b2baf4c37d7f7f4e78a94b10d33fef2d94b5a2dbbdf36a005238b6f93` |
| 35 | `def` | [Fmaj](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/fmaj--a4fa585baa342e2a21a10649.md) | 331 | `declaration-track:a4fa585baa342e2a21a10649cffed038fe3d87b8763de89a2cbec0abc238331a` |
| 36 | `lemma` | [Fmaj_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/fmaj-nonneg--6eb956032a055ab9650420b3.md) | 333 | `result-track:6eb956032a055ab9650420b319a166a9d29d1f4aa0b80896b214e13cdd7b3c56` |
| 37 | `lemma` | [Fmaj_eq_sum_range_of_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/fmaj-eq-sum-range-of-le--3f916d91978abd07af036770.md) | 337 | `result-track:3f916d91978abd07af0367702fac62ad267b81ac2c624185059a7409ba965b66` |
| 38 | `lemma` | [norm_xiCoeffJ_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/norm-xicoeffj-le--f2b106fd8198821c848020d3.md) | 345 | `result-track:f2b106fd8198821c848020d3a6fcccc6d486c3c8461cfaaf76079834ca444619` |
| 39 | `lemma` | [norm_xiCoeff_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/norm-xicoeff-le--2026a78f7baef7f4db0ffee9.md) | 352 | `result-track:2026a78f7baef7f4db0ffee9d236eb4105da00502e8baf067716c5815ed6497f` |
| 40 | `lemma` | [norm_xiCoeff_sq_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/declarations/norm-xicoeff-sq-le--d00da7afe0d83af78940351b.md) | 367 | `result-track:d00da7afe0d83af78940351bfe0658c2ee2420578e6bb95df1475ed70be7b727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
