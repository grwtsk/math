# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EulerMascheroniBounds.Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67adb0c44c59889ed996a6114ab1cd9d4b74928f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Field` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ModuleTopology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [γ₁](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/anonymous--f8273fb0038fbbb7c5561fae.md) | 43 | `declaration-track:f8273fb0038fbbb7c5561fae76e640a6a198444a7834f63855c1f2d36f9705f1` |
| 2 | `def` | [γ₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/anonymous--bb62360ba7866010fe2316ec.md) | 47 | `declaration-track:bb62360ba7866010fe2316ecdb4a8862c64baa4d1257b8de604b55e3df93cc33` |
| 3 | `def` | [γ₃](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/anonymous--ac56da454637251207ea3635.md) | 52 | `declaration-track:ac56da454637251207ea363545964cb7292936e2824da8380b289f7f947448bb` |
| 4 | `lemma` | [one_add_le_exp_quadratic_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/one-add-le-exp-quadratic-div--d6b1c6f23b3006b1cda70378.md) | 55 | `result-track:d6b1c6f23b3006b1cda70378b4059f71f4f1953a54c981ba58400310d4a3a2ac` |
| 5 | `lemma` | [log_one_add_le_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-one-add-le-quadratic--f59ac29b0fcdf396f064e95d.md) | 60 | `result-track:f59ac29b0fcdf396f064e95d6fc6c7515ed6725105d6c0967f521a44411cc938` |
| 6 | `lemma` | [eulerMascheroniSeq_step_lb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/eulermascheroniseq-step-lb--279c7f62f1491683d42ce849.md) | 67 | `result-track:279c7f62f1491683d42ce849f275548cfc52e4f5db798a9e46524acc0f2bc3c8` |
| 7 | `lemma` | [eulerMascheroniSeq_diff_lb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/eulermascheroniseq-diff-lb--af871a0acebaebafa3431523.md) | 81 | `result-track:af871a0acebaebafa3431523075633343219a6ba38fd33f74eab17fe15a913f7` |
| 8 | `lemma` | [eulerMascheroniConstant_lb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/eulermascheroniconstant-lb--c03328410a792deb9fabbbee.md) | 98 | `result-track:c03328410a792deb9fabbbee55b4b7727601eb9339d56bbb49f268cbd28679ce` |
| 9 | `lemma` | [pos_of_mvt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/pos-of-mvt--8734673a4b308e0486c96bb2.md) | 121 | `result-track:8734673a4b308e0486c96bb2a98badd85a974ab86538904600f220a8887dba38` |
| 10 | `lemma` | [log_ineq_1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-1--1236aaceaf742c87bf61b0a0.md) | 132 | `result-track:1236aaceaf742c87bf61b0a04ce0649379cac21af42f30b431e326327f60c7c0` |
| 11 | `lemma` | [log_ineq_2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-2--656c72c6462726840aec9b67.md) | 145 | `result-track:656c72c6462726840aec9b67c4537791cebf26c99ec00704519a3d2024c48051` |
| 12 | `lemma` | [log_ineq_3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-3--867dda4e70165e9b0153efde.md) | 160 | `result-track:867dda4e70165e9b0153efdea378b56a130d9e62bce01697a4ed560490aadce9` |
| 13 | `lemma` | [euler_maclaurin_decreasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/euler-maclaurin-decreasing--f9752a7fc6dff7bae0f23d3a.md) | 185 | `result-track:f9752a7fc6dff7bae0f23d3a0f2261c4ac43c557b79c9956f8c77d3b9bb1a2ce` |
| 14 | `lemma` | [euler_maclaurin_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/euler-maclaurin-tendsto--c6550da8bb9186f980e13a27.md) | 198 | `result-track:c6550da8bb9186f980e13a27c1fde602d4fa2bda1477e51b0aee30ae5673c731` |
| 15 | `lemma` | [euler_maclaurin_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/euler-maclaurin-bound--ea59d7db65b4c1466f34c32a.md) | 209 | `result-track:ea59d7db65b4c1466f34c32a89260af6eb49d80c9b3292d5d307c09891eba7b7` |
| 16 | `lemma` | [euler_maclaurin_numerical](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/euler-maclaurin-numerical--d075545b5c6c065313f91ad0.md) | 226 | `result-track:d075545b5c6c065313f91ad0115d3242a45e955232115c26c708db6d7d1b9c18` |
| 17 | `lemma` | [hγ_hi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/h-hi--78d91c4519e6e74292c601d6.md) | 231 | `result-track:78d91c4519e6e74292c601d614d72dffdbd05ee3e7b22d18e63cd9c3538770f2` |
| 18 | `lemma` | [log_ineq_4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-4--db376e5f0c6ff41b0f7d5751.md) | 249 | `result-track:db376e5f0c6ff41b0f7d5751c012f4a3c25dd2a92b6596776e4c1ff45ec87bdc` |
| 19 | `lemma` | [hasDerivAt_log_one_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-log-one-add--24c5078d02cb0f19ba1056e7.md) | 255 | `result-track:24c5078d02cb0f19ba1056e749c0824c4fc6c2c660e63562d4ede918635ef7c3` |
| 20 | `lemma` | [hasDerivAt_one_add_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-one-add-mul-log--9d6d63be0339f0b072229673.md) | 260 | `result-track:9d6d63be0339f0b0722296735e0322bce7fab96ab9cf6a63ea4156cd8dd8eeb0` |
| 21 | `lemma` | [hasDerivAt_one_add_sq_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-one-add-sq-mul-log--3bf8307d7d9f8b68b27fce90.md) | 265 | `result-track:3bf8307d7d9f8b68b27fce90b1b3afc547337314e5dcf60f5e8fb1c478b7c3e5` |
| 22 | `lemma` | [hasDerivAt_one_add_pow_three_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-one-add-pow-three-mul-log--c248efb8e340e4ee30fcd4e9.md) | 272 | `result-track:c248efb8e340e4ee30fcd4e92dec1a324a20adee8a686ba5bd26b331a71b5037` |
| 23 | `lemma` | [hasDerivAt_one_add_pow_four_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-one-add-pow-four-mul-log--1bbe00a308c969b4142cf3b7.md) | 279 | `result-track:1bbe00a308c969b4142cf3b7fd6ed1c0ea881aed894b18c103ded50c29645a11` |
| 24 | `lemma` | [hasDerivAt_log_ineq_5](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-log-ineq-5--9195fe9222eb31297255bff7.md) | 286 | `result-track:9195fe9222eb31297255bff7780a7582aca88ccfe1a9744d21705ac17da08d42` |
| 25 | `lemma` | [hasDerivAt_log_ineq_6](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-log-ineq-6--19f2f33615fb2f9d32f83a71.md) | 300 | `result-track:19f2f33615fb2f9d32f83a712421f726766899d0bbe2db822df6e6379e6c70ea` |
| 26 | `lemma` | [hasDerivAt_log_ineq_7](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-log-ineq-7--d3c19091640e50176fccd01b.md) | 316 | `result-track:d3c19091640e50176fccd01b4d9775c78a5acd3ef6ead428d3aca0f7a299db45` |
| 27 | `lemma` | [hasDerivAt_log_ineq_8](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-log-ineq-8--22ddde4d4e545924cf297667.md) | 333 | `result-track:22ddde4d4e545924cf297667db466fd3449e3e33a75e596879ec343b54d0809f` |
| 28 | `lemma` | [hasDerivAt_log_ineq_9](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/hasderivat-log-ineq-9--81ac412a23c839931fc1cf12.md) | 351 | `result-track:81ac412a23c839931fc1cf12733ebc4846c685eca377ebe0da3084d0ebd812b8` |
| 29 | `lemma` | [log_ineq_5](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-5--13cd6602d7095c90929bd035.md) | 371 | `result-track:13cd6602d7095c90929bd03571ddd246cbbfb0db056a1eab912c0194b06abc4b` |
| 30 | `lemma` | [log_ineq_6](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-6--bc4f095d25b96e00acdab77f.md) | 382 | `result-track:bc4f095d25b96e00acdab77f88900eeb0ad396345d52ae6c8bd4172ad67922a2` |
| 31 | `lemma` | [log_ineq_7](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-7--f2c27fecd03cf349599e213d.md) | 393 | `result-track:f2c27fecd03cf349599e213dbd02636b41947128ec61050e2278dc85acc6f67a` |
| 32 | `lemma` | [log_ineq_8](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-8--2b529e29d924b7e2543d12fb.md) | 405 | `result-track:2b529e29d924b7e2543d12fb228908faf95a771f86cd34f21ed490f996acd51f` |
| 33 | `lemma` | [log_ineq_9](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/log-ineq-9--1136dc2ba88b79374570437b.md) | 416 | `result-track:1136dc2ba88b79374570437b2501232aeeb6f61d46a740af41a4f0abfcad2d16` |
| 34 | `lemma` | [γ₃_increasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/increasing--c0169b0353f8a2f9eab7dd52.md) | 432 | `result-track:c0169b0353f8a2f9eab7dd52b93891e956f3f54477260ed24cf078ff0915d227` |
| 35 | `lemma` | [γ₃_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/tendsto--6fe0d10874422e9f3c770122.md) | 456 | `result-track:6fe0d10874422e9f3c7701229aada022746c6e5058c4fa914d9b3bd6bf922d0b` |
| 36 | `lemma` | [γ₃_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/lower-bound--fd1851030941e6336df4592f.md) | 470 | `result-track:fd1851030941e6336df4592fdbb560faff807df2f8c79dfc1ac567a5a7a667f7` |
| 37 | `lemma` | [hγ_lo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/declarations/h-lo--efb5a2c23b72866bad6e7ce1.md) | 486 | `result-track:efb5a2c23b72866bad6e7ce14ce220108ebdf51c87efb6c300e77c4ecc22a30d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
