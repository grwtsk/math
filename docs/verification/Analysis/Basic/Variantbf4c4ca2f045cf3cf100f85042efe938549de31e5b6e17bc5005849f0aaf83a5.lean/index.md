# Verification target: GRWTSK.Analysis.Basic.Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2c3d5d9049cdb3fb5dd81e3fd5e67ed5a10842b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/index.md) · [Full source](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2c3d5d9049cdb3fb5dd81e3fd5e67ed5a10842b`.

Source path: `GRWTSK/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.SelfAdjoint` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Star` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedStarGroup](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/normedstargroup--2fc7debfc80d6e1a9b21e292.md) | 39 | `declaration-track:2fc7debfc80d6e1a9b21e29293ac25c93a8fe75b108bc9ea0bb8e59caf8ab927` |
| 2 | `lemma` | [norm_star](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-star--10d99d9428aa2fe597efe18d.md) | 49 | `result-track:10d99d9428aa2fe597efe18d9641353ade1d113146c9354644d987cd5080721d` |
| 3 | `theorem` | [nnnorm_star](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/nnnorm-star--860a86deedaf67c23c4ba700.md) | 53 | `result-track:860a86deedaf67c23c4ba700bf6166f05475e77cdd81cfe2570e5232b1349a51` |
| 4 | `def` | [starNormedAddGroupHom](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/starnormedaddgrouphom--5feb826534357e37e2b0f675.md) | 57 | `declaration-track:5feb826534357e37e2b0f675bd515b1b7cd3413d2abad4552e8c923160ce002a` |
| 5 | `theorem` | [star_isometry](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/star-isometry--5aaea7e063b6a56bc708fe94.md) | 61 | `result-track:5aaea7e063b6a56bc708fe9472c32343aaaf949feb2c7a576e08dc43a950cb57` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/instance--7c52b20ff2aac59a7a081838.md) | 65 | `declaration-track:7c52b20ff2aac59a7a081838100ee4255b784d99e529fda2eb9ef2e245902448` |
| 7 | `instance` | [RingHomIsometric.starRingEnd](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/ringhomisometric-starringend--a5ff3ecd104b0924dcb6640f.md) | 70 | `declaration-track:a5ff3ecd104b0924dcb6640f086c1849459ed5cafa066a4705545d19676ab07f` |
| 8 | `class` | [CStarRing](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/cstarring--3ff57b1aaa84ddf6743bb5c8.md) | 77 | `declaration-track:3ff57b1aaa84ddf6743bb5c8205fa82b6dd0a2377cb45888591a98cfc2827f45` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/instance--8a71a23cc718f8d88dac626e.md) | 80 | `declaration-track:8a71a23cc718f8d88dac626ec35ce0957f7790e37874deb57d428821ebc29fb0` |
| 10 | `lemma` | [of_le_norm_mul_star_self](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/of-le-norm-mul-star-self--787deb935adb74f1c7b986e3.md) | 88 | `result-track:787deb935adb74f1c7b986e38968304174e57261deb06f5c3e3e3528fa9020bc` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/instance--d0e36d6fa8434b4c4ef3b797.md) | 103 | `declaration-track:d0e36d6fa8434b4c4ef3b797cd62795f519828c18b0cb3c86cf32dce1feaa8af` |
| 12 | `theorem` | [norm_star_mul_self](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-star-mul-self--58035d95c7e010a5782ec86b.md) | 110 | `result-track:58035d95c7e010a5782ec86b4326f1ce922d708443842d4b6fc180cb3f4734c2` |
| 13 | `theorem` | [norm_self_mul_star](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-self-mul-star--fc61451374c326622ea69017.md) | 113 | `result-track:fc61451374c326622ea69017b374e4064033ec8b183729836270ca989d756f7b` |
| 14 | `theorem` | [norm_star_mul_self'](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-star-mul-self--7f1fe497e20690156441659d.md) | 117 | `result-track:7f1fe497e20690156441659dfd9115ac31d6de1e028194c1b1a3fa1be2af1277` |
| 15 | `theorem` | [nnnorm_self_mul_star](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/nnnorm-self-mul-star--c856b180ec34ede9fe0bb721.md) | 119 | `result-track:c856b180ec34ede9fe0bb7211957a2db498d150bd7363592dccffa9035e56df0` |
| 16 | `theorem` | [nnnorm_star_mul_self](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/nnnorm-star-mul-self--df1ccdae02cb2bcaccb174e1.md) | 122 | `result-track:df1ccdae02cb2bcaccb174e18f5c337d120b98ce48b58066b27d2fad3d9085e4` |
| 17 | `theorem` | [star_mul_self_eq_zero_iff](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/star-mul-self-eq-zero-iff--6441319c558baff8757c0e63.md) | 126 | `result-track:6441319c558baff8757c0e6349233f726ca0f24b129eabab91517be5173e56db` |
| 18 | `theorem` | [star_mul_self_ne_zero_iff](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/star-mul-self-ne-zero-iff--76a3e65e399b02e4a3c78ac1.md) | 130 | `result-track:76a3e65e399b02e4a3c78ac13331f0de9847cf54d6cdab4e5879902341ca7820` |
| 19 | `theorem` | [mul_star_self_eq_zero_iff](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/mul-star-self-eq-zero-iff--bedb7f987c37a9a5be6d99e4.md) | 134 | `result-track:bedb7f987c37a9a5be6d99e4730dd07f158604ed68bd91fef464cbd7e39601b1` |
| 20 | `theorem` | [mul_star_self_ne_zero_iff](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/mul-star-self-ne-zero-iff--a8bd1bc84ad8ef3a2e0ac5a0.md) | 137 | `result-track:a8bd1bc84ad8ef3a2e0ac5a0f70f11826e05abff0434f3e8a5d0458a610a04c4` |
| 21 | `instance` | [_root_.Pi.starRing'](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/root-pi-starring--6e03792596dcf916f3c2b087.md) | 151 | `declaration-track:6e03792596dcf916f3c2b0878c431101c1db483c6c4bead48571137cda505f3d` |
| 22 | `instance` | [_root_.Prod.cstarRing](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/root-prod-cstarring--1d0b0ed0f90767328397c7b1.md) | 156 | `declaration-track:1d0b0ed0f90767328397c7b1411f852e642365f526da236b4f0c4ef18b5a58fc` |
| 23 | `instance` | [_root_.Pi.cstarRing](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/root-pi-cstarring--9cf8b1e5e222bf5d6d54cea9.md) | 163 | `declaration-track:9cf8b1e5e222bf5d6d54cea9d40c788068a545876432f4c264cf62d76e4194d3` |
| 24 | `instance` | [_root_.Pi.cstarRing'](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/root-pi-cstarring--892f2128a9de3502957a105a.md) | 172 | `declaration-track:892f2128a9de3502957a105ab39501357d83125dd6dcb183f9473630c205b73c` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/instance--fe0e554b2138378dea6b9a4a.md) | 179 | `declaration-track:fe0e554b2138378dea6b9a4a9d4eb6f9c0c49eaafddf335b60eb6fac9f0370c6` |
| 26 | `theorem` | [norm_one](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-one--3a26df3972437909277deec9.md) | 189 | `result-track:3a26df3972437909277deec9ee2e35f6a97e3bf1ac952c7e561b9178c7619204` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/instance--3ea1ca0852d05c82d19a6f37.md) | 194 | `declaration-track:3ea1ca0852d05c82d19a6f37c66fa7d90218e1f88c58ecaa78a490b196d6b427` |
| 28 | `theorem` | [norm_coe_unitary](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-coe-unitary--e0c33517a95449f77d548d57.md) | 197 | `result-track:e0c33517a95449f77d548d57969322164743db1bd2cb62edde4c2fb9270c0e0a` |
| 29 | `theorem` | [norm_of_mem_unitary](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-of-mem-unitary--7c4a6a656c4cf1e73d2755f7.md) | 202 | `result-track:7c4a6a656c4cf1e73d2755f77f4b99e3dc6034185455e4b1e037116c39726f13` |
| 30 | `theorem` | [norm_coe_unitary_mul](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-coe-unitary-mul--6af0fddcc3a6edb63d1e51f2.md) | 206 | `result-track:6af0fddcc3a6edb63d1e51f2cf1b429f57dfcc998b64ea31630cf9119fedbf47` |
| 31 | `theorem` | [norm_unitary_smul](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-unitary-smul--d7fc3ab5616c0814ceb660ba.md) | 220 | `result-track:d7fc3ab5616c0814ceb660baf4fcba8ef341eb14b408c25750fc2900c9c3283a` |
| 32 | `theorem` | [norm_mem_unitary_mul](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-mem-unitary-mul--ccf1e737845351dccd766da2.md) | 223 | `result-track:ccf1e737845351dccd766da217462bddba611b9ff3b38b0da8276a9619db5448` |
| 33 | `theorem` | [norm_mul_coe_unitary](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-mul-coe-unitary--d218caa246de53b30ee7ce04.md) | 227 | `result-track:d218caa246de53b30ee7ce0488acf4ea9e55f100b6ca6e593404648ed630f99d` |
| 34 | `theorem` | [norm_mul_mem_unitary](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/norm-mul-mem-unitary--835ea0b539a4affc9e2b0d49.md) | 234 | `result-track:835ea0b539a4affc9e2b0d494f1a95b9637ffa7e55550cb6da573d56daab7ec6` |
| 35 | `theorem` | [IsSelfAdjoint.nnnorm_pow_two_pow](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/isselfadjoint-nnnorm-pow-two-pow--e341f7d3143138c256119c2d.md) | 241 | `result-track:e341f7d3143138c256119c2d003a8586760a8771573d6916960cd6163b2428ac` |
| 36 | `theorem` | [selfAdjoint.nnnorm_pow_two_pow](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/selfadjoint-nnnorm-pow-two-pow--4c3dd33b898e448f95af8ca3.md) | 249 | `result-track:4c3dd33b898e448f95af8ca38d14604c9ff84782f453a27738fc54eef15ba77c` |
| 37 | `def` | [starₗᵢ](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/star--3afb316b8fc58b964ca71fd7.md) | 261 | `declaration-track:3afb316b8fc58b964ca71fd701b9ea21a5c6c77a208cee60061a4205bf091443` |
| 38 | `theorem` | [coe_starₗᵢ](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/coe-star--b667e6e947f08b5825b6d710.md) | 267 | `result-track:b667e6e947f08b5825b6d71075f8de62177f5e4cc70df5f381ad8fabdb1dfa5d` |
| 39 | `theorem` | [starₗᵢ_apply](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/star-apply--0b74b6a0867e891e557a5ea3.md) | 270 | `result-track:0b74b6a0867e891e557a5ea373159b07123bbd7386990cab0721eb8858689085` |
| 40 | `theorem` | [starₗᵢ_toContinuousLinearEquiv](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/star-tocontinuouslinearequiv--1b7c4ccf9059bac33ee010d6.md) | 274 | `result-track:1b7c4ccf9059bac33ee010d68a967b63f1123a3c30e32ef907f14ae3defafc58` |
| 41 | `instance` | [toNormedAlgebra](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/tonormedalgebra--cc3415292fed42eafe52051c.md) | 282 | `declaration-track:cc3415292fed42eafe52051ca8bba6b490dbad27921465ef775200385a3a8fda` |
| 42 | `instance` | [to_cstarRing](../../../../mathematics/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean/declarations/to-cstarring--c6cdb185437b6e32d78b80f7.md) | 286 | `declaration-track:c6cdb185437b6e32d78b80f73e33059479a931920063e25c17cfd614df88c9b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
