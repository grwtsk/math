# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RosserSchoenfeldPrime.Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5bbda4de7955429ab43110d8409ee59338e06c8",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5bbda4de7955429ab43110d8409ee59338e06c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Stieltjes` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pntBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/pntbigo--d173efacb244269324c78110.md) | 30 | `result-track:d173efacb244269324c7811065fdef248ff4ab9ea665ecfee3b0ee57dc02e87a` |
| 2 | `theorem` | [pnt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/pnt--0076317acc9f742e1b513f5a.md) | 93 | `result-track:0076317acc9f742e1b513f5a33040d7cc9e2e025f0843de9aacf1969ae8dfd33` |
| 3 | `def` | [θ.Stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/stieltjes--6d5fa031e0112fa897db0480.md) | 126 | `declaration-track:6d5fa031e0112fa897db0480b9ab3f77dc49c1ea4cc0854848009dc439584e7e` |
| 4 | `lemma` | [theta_succ_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/theta-succ-sub--55caace3a36f3fce250c4cec.md) | 139 | `result-track:55caace3a36f3fce250c4cec3cb0dcffcf4a1ee84058a74fdc5872037dd35ff0` |
| 5 | `lemma` | [theta_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/theta-one--9cd297a14273325d5129249b.md) | 142 | `result-track:9cd297a14273325d5129249bcc6aeed05ab8e8b3ce138be8e428a94aca2befcf` |
| 6 | `lemma` | [theta_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/theta-two--51230f547a39b7add759d71e.md) | 145 | `result-track:51230f547a39b7add759d71ea470164aba38a558baae1f0b02183a4ab6e62d9f` |
| 7 | `lemma` | [leftLim_theta_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/leftlim-theta-succ--c5e3c387e63e33672f1f457d.md) | 148 | `result-track:c5e3c387e63e33672f1f457d7b1f5cf8be9466c6af3101ec0905ef0ba0c3c16b` |
| 8 | `theorem` | [summable_pre413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/summable-pre413--f604f394fbf71456411cc5fd.md) | 168 | `result-track:f604f394fbf71456411cc5fd48fd94479589c0bf87779b932baa035722e7c8cf` |
| 9 | `lemma` | [support_pre413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/support-pre413--b1831b4e222280f6fcf7a41f.md) | 223 | `result-track:b1831b4e222280f6fcf7a41f9e63ada1423e06c804edf1136f2e09b6d943910f` |
| 10 | `lemma` | [pre_413_measure_inter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/pre-413-measure-inter--b93584d74b31fda233fbbde6.md) | 290 | `result-track:b93584d74b31fda233fbbde6691ebaf0fd50d89d926e6372be062b296dc4258a` |
| 11 | `theorem` | [pre_413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/pre-413--9cc73b5f63a687f14e03e947.md) | 357 | `result-track:9cc73b5f63a687f14e03e947fafcbb7c3342bf1f574efdaebe41fbff25177b01` |
| 12 | `theorem` | [eq_413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/eq-413--5ff7b4e80c65e23218f0a1f8.md) | 508 | `result-track:5ff7b4e80c65e23218f0a1f8a61c63d71593cebf0b66943f324b4883c2a277ab` |
| 13 | `theorem` | [eq_414](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/eq-414--54ae73c8192ddc9b3c93481e.md) | 538 | `result-track:54ae73c8192ddc9b3c93481e10bb75a178a975e9d0b695cfcb7b58d99ee56a45` |
| 14 | `def` | [L](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/l--6abdb4c9c067efb5ec19faff.md) | 612 | `declaration-track:6abdb4c9c067efb5ec19faffa4a4786de62e29909b6c09c6e98bdf2eee586e37` |
| 15 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PntBigO.Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.intervalIntegral.interval_add_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-pntbigo-variant02--8a1e5b54497e1474d5c815b3.md) | 616 | `result-track:8a1e5b54497e1474d5c815b338484064aef1d3480a4dd564f156f11faffd92ce` |
| 16 | `theorem` | [intervalIntegrable_inv_log_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/intervalintegrable-inv-log-pow--496992ce6f356478fe88a69f.md) | 626 | `result-track:496992ce6f356478fe88a69f6b7d458fdc3d06a97504e26c0ff71e561bd7b3e8` |
| 17 | `theorem` | [ioiIntegrable_inv_log_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/ioiintegrable-inv-log-pow--27f1637f94c3f65c79020174.md) | 635 | `result-track:27f1637f94c3f65c790201749218f5759b162ed54b3e0374422e47604ea31d33` |
| 18 | `theorem` | [bound_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/bound-deriv--ad1a771c71a86b49b88866e4.md) | 662 | `result-track:ad1a771c71a86b49b88866e40b6221c559eb59eec0eed0aec118d236b8df725e` |
| 19 | `theorem` | [integrableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/integrableon-deriv--e160b256a3afe302183179a2.md) | 687 | `result-track:e160b256a3afe302183179a218b1188ae1ce340f2161a7264083a0afe7046281` |
| 20 | `theorem` | [eq_415](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/eq-415--9537a52cdc96dc06a7a9ca04.md) | 721 | `result-track:9537a52cdc96dc06a7a9ca04554494ce74f792518fec41e13c0caa40e1a6d4e8` |
| 21 | `theorem` | [eq_417](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/eq-417--36f66d2720fca37da2edb611.md) | 739 | `result-track:36f66d2720fca37da2edb611bf3b8ca34a162b44fa041ee312499fab94c7dab6` |
| 22 | `theorem` | [eq_418](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/eq-418--bbd425a9eda6318d7ed3cc3b.md) | 752 | `result-track:bbd425a9eda6318d7ed3cc3bd3a736ed6496f909bc7c92be61769425b85eee93` |
| 23 | `theorem` | [ioiIntegral_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/ioiintegral-tendsto-zero--9b44c166e7765ae4b7c4c1fb.md) | 780 | `result-track:9b44c166e7765ae4b7c4c1fbd08418b5072b79e693962b9e3bb0b8cbb7c5e052` |
| 24 | `def` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PntBigO.Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.meisselMertensConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-pntbigo-variant02--a8d81111155dea4a56143f58.md) | 797 | `declaration-track:a8d81111155dea4a56143f58477c432e13704a90dfb558a888858398e23393c0` |
| 25 | `theorem` | [integrableOn_deriv_inv_div_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/integrableon-deriv-inv-div-log--ef248eebaacdbb02f6b04d42.md) | 799 | `result-track:ef248eebaacdbb02f6b04d4216381100dbb243692d2a10827b02f373ee1ca309` |
| 26 | `theorem` | [meisselMertensConstant_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/meisselmertensconstant-identity--383cee6997cd5ac80a6b4224.md) | 807 | `result-track:383cee6997cd5ac80a6b4224fab5a7db6621221fa40240fa0b7bb83632b4de5c` |
| 27 | `theorem` | [mertens_second_theorem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/mertens-second-theorem--41c064950f8c860edd4da7cc.md) | 825 | `result-track:41c064950f8c860edd4da7cc10edbca4595d95533580334ea6afc3f28411d441` |
| 28 | `theorem` | [eq_419](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/eq-419--f8b8ffb4812f9c588bc9cec1.md) | 857 | `result-track:f8b8ffb4812f9c588bc9cec15e43423e44522e9054ec46c01b17ba55b3def496` |
| 29 | `theorem` | [mertens_second_theorem'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/mertens-second-theorem--eebd88026684ae3d594c760b.md) | 874 | `result-track:eebd88026684ae3d594c760b3f2f477f21613fd394e48ec8c9ae64f114148a8c` |
| 30 | `def` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PntBigO.Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.mertensConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-pntbigo-variant02--f2ccaa910914bf56368bda3c.md) | 903 | `declaration-track:f2ccaa910914bf56368bda3c443b37210aa933d532f4889e7f0ffa1af0d6c914` |
| 31 | `lemma` | [log_div_log_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/log-div-log-eq--684305a39ce11732fa44282c.md) | 905 | `result-track:684305a39ce11732fa44282ccbf1eec3510e8b46e6a978c00c6e0724cde5dfd6` |
| 32 | `lemma` | [deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/deriv-eq--051cadf72c2911182770587d.md) | 909 | `result-track:051cadf72c2911182770587db9a0a0da38dec0f2185f7039883639fe8663a985` |
| 33 | `lemma` | [intervalIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/intervalintegral-eq--03b6dfbf6886db82bb22d8bc.md) | 913 | `result-track:03b6dfbf6886db82bb22d8bcb5111c441fc956c7ef0ab42ec20c3222e3c120c1` |
| 34 | `theorem` | [integrableOn_deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/integrableon-deriv-inv--30066d4aff8f6993c2cf297b.md) | 918 | `result-track:30066d4aff8f6993c2cf297bc279ca5fe2cf8dc98414c20884f3f333aec3b143` |
| 35 | `theorem` | [eq_420](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/eq-420--d2f05a57d73d8bfdea3f41da.md) | 942 | `result-track:d2f05a57d73d8bfdea3f41da57c94495982be589d70a670469edd0429d582d0b` |
| 36 | `theorem` | [mertens_first_theorem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/mertens-first-theorem--76d74589ba9ef3407437a59f.md) | 966 | `result-track:76d74589ba9ef3407437a59f1edac68c9f3e1f722b796eabb929c34ea5c73159` |
| 37 | `theorem` | [mertens_first_theorem'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/mertens-first-theorem--66449d7182685f7d58dda908.md) | 988 | `result-track:66449d7182685f7d58dda90807d6c0368a7ad7554f093e3cdc6f66d84f14fca6` |
| 38 | `theorem` | [theorem_12](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/declarations/theorem-12--eca8ee30e16b1a896842b1ed.md) | 1016 | `result-track:eca8ee30e16b1a896842b1ed90a282caf84a0d1fce0cf4c690beecdd58bdfbf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
