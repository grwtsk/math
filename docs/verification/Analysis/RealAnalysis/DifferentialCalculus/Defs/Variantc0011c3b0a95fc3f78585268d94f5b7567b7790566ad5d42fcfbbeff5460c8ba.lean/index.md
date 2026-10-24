# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Defs.Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66fe7dd088c3064d4a3dcc63ddece73e55b7180e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66fe7dd088c3064d4a3dcc63ddece73e55b7180e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv--72917b6facad0f51781e6446.md) | 52 | `declaration-track:72917b6facad0f51781e64467f09f492789ba7211c32cf38b02a1ea0f071c9dc` |
| 2 | `def` | [iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin--089fe9c19562796e2271e517.md) | 57 | `declaration-track:089fe9c19562796e2271e5178619dba819b46bdc38c59c14881ba129d1120d48` |
| 3 | `theorem` | [iteratedDerivWithin_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-univ--faecbea8ae47a21a379a350a.md) | 62 | `result-track:faecbea8ae47a21a379a350a5623d23f882926c9b2b8b628fc9fc062dae84eda` |
| 4 | `theorem` | [iteratedDerivWithin_eq_iteratedFDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-eq-iteratedfderivwithin--2cdaa740dca1347ef153e97b.md) | 69 | `result-track:2cdaa740dca1347ef153e97b16a538c579f5519c500f18fb2c956d9c7734da2a` |
| 5 | `theorem` | [iteratedDerivWithin_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-eq-equiv-comp--a82f4a563d3336751be3da40.md) | 75 | `result-track:a82f4a563d3336751be3da4004bbdaec1b83795d602e51cbcfa52e743dad5c08` |
| 6 | `theorem` | [iteratedFDerivWithin_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedfderivwithin-eq-equiv-comp--4ddb7efa9d3e47c2aa416133.md) | 81 | `result-track:4ddb7efa9d3e47c2aa416133b7576118650f9c008b73a449b31fd53ff4c2b1b6` |
| 7 | `theorem` | [iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedfderivwithin-apply-eq-iteratedderivwithin-mul-prod--cf5f4376440ea29ab55b5f8a.md) | 89 | `result-track:cf5f4376440ea29ab55b5f8ad9009add9193ebd16c1953b67b2d1a59ecfa1cf4` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_eq_norm_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/norm-iteratedfderivwithin-eq-norm-iteratedderivwithin--9a179cdeb9613e183369c4e7.md) | 95 | `result-track:9a179cdeb9613e183369c4e75fc2f365649f93e7d37ff80f329bcb6a697161e7` |
| 9 | `theorem` | [iteratedDerivWithin_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-zero--adab36f8c8f6463b68ad486d.md) | 100 | `result-track:adab36f8c8f6463b68ad486d355e9a9d7001a609bb2ebdd5238479a98f3471a4` |
| 10 | `theorem` | [iteratedDerivWithin_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-one--d9e65b93f7bf7105ca1b0271.md) | 105 | `result-track:d9e65b93f7bf7105ca1b0271e235db032e1ff746c3ace2daf2dd3b19c4349323` |
| 11 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiffon-of-continuouson-differentiableon-deriv--23a7e7bcf265f1de4a0b7dfb.md) | 117 | `result-track:23a7e7bcf265f1de4a0b7dfbf56e0d269b20f7a95a7e25c2aead7932e293e28a` |
| 12 | `theorem` | [contDiffOn_of_differentiableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiffon-of-differentiableon-deriv--5df41897f3b7ec0188637311.md) | 130 | `result-track:5df41897f3b7ec01886373119656057ca2080fcce83f0610483b76466417cfbe` |
| 13 | `theorem` | [ContDiffOn.continuousOn_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiffon-continuouson-iteratedderivwithin--6552254a18083700a4b2d686.md) | 138 | `result-track:6552254a18083700a4b2d6869c0535aac5765702d785a20260afe4f543636093` |
| 14 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiffwithinat-differentiablewithinat-iteratedderivwithin--b24a7c554fb91df4de5c86c8.md) | 144 | `result-track:b24a7c554fb91df4de5c86c8fe6d97ce731528d8f7a2ac74e69b110dc853ccf9` |
| 15 | `theorem` | [ContDiffOn.differentiableOn_iteratedDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiffon-differentiableon-iteratedderivwithin--7f4434ffe6e340aa333e87c9.md) | 153 | `result-track:7f4434ffe6e340aa333e87c976f878f25775ea502ce20f35a1810a8203c08213` |
| 16 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiffon-iff-continuouson-differentiableon-deriv--abb32cb5f217ff2f812e2e75.md) | 160 | `result-track:abb32cb5f217ff2f812e2e75ec7384bdd8ed66cb2375f311df5fae16daf43df7` |
| 17 | `theorem` | [contDiffOn_nat_iff_continuousOn_differentiableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiffon-nat-iff-continuouson-differentiableon-deriv--6476b07effd8cbf1ae34f7a0.md) | 168 | `result-track:6476b07effd8cbf1ae34f7a03b12d181d663719a74b1cbd0793b789ce1efec7c` |
| 18 | `theorem` | [iteratedDerivWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-succ--a6ef0e58127f8243ddb7afb1.md) | 177 | `result-track:a6ef0e58127f8243ddb7afb1c12c359ccab2d959f50eff44225f9ce1d804e966` |
| 19 | `theorem` | [iteratedDerivWithin_eq_iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-eq-iterate--cf2069420ab74331ef14c379.md) | 192 | `result-track:cf2069420ab74331ef14c37973d5db3f3430b2ab39d198b107952deef93a7843` |
| 20 | `theorem` | [iteratedDerivWithin_succ'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderivwithin-succ--3f5fa59ae893fce61ab2cc6f.md) | 202 | `result-track:3f5fa59ae893fce61ab2cc6f0637f0e3b52d6d407d827e424bc45c89fab4b672` |
| 21 | `theorem` | [iteratedDeriv_eq_iteratedFDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv-eq-iteratedfderiv--3e2ec5541a8e8be4dca19e38.md) | 209 | `result-track:3e2ec5541a8e8be4dca19e38a244fe3dbfc0c7f1b1e2704a4329d651bb55babe` |
| 22 | `theorem` | [iteratedDeriv_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv-eq-equiv-comp--675c0394c494dca1a5dfb2ea.md) | 215 | `result-track:675c0394c494dca1a5dfb2ea7157759acdf341fbf2eadda8e7a3884def9ccbd3` |
| 23 | `theorem` | [iteratedFDeriv_eq_equiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedfderiv-eq-equiv-comp--b69532202415f597d3958031.md) | 221 | `result-track:b69532202415f597d39580318e211eda4c4a4b0bb95a11a832720113d3b62fb4` |
| 24 | `theorem` | [iteratedFDeriv_apply_eq_iteratedDeriv_mul_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedfderiv-apply-eq-iteratedderiv-mul-prod--2f0e8c227660281948bfe45f.md) | 228 | `result-track:2f0e8c227660281948bfe45ffb0e721688dae6a73199d0abd1187d9b34ab86ff` |
| 25 | `theorem` | [norm_iteratedFDeriv_eq_norm_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/norm-iteratedfderiv-eq-norm-iteratedderiv--4513f5e43a312fcff2037712.md) | 232 | `result-track:4513f5e43a312fcff2037712388ef6a55baca9d2a168f9f67715ce6edd62b954` |
| 26 | `theorem` | [iteratedDeriv_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv-zero--a5dd3ab46cef75774183991f.md) | 237 | `result-track:a5dd3ab46cef75774183991f473bc2ba1143bbb5b67648dd63c2713944093a0f` |
| 27 | `theorem` | [iteratedDeriv_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv-one--bb9172c49f10dcdc94878db8.md) | 240 | `result-track:bb9172c49f10dcdc94878db8f4f10831b96106381bf950590d015c417442b1ce` |
| 28 | `theorem` | [contDiff_iff_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiff-iff-iteratedderiv--35660a517ef5a0269cf329b4.md) | 244 | `result-track:35660a517ef5a0269cf329b43df632de520ef3e4dcd969d45335a9567084d132` |
| 29 | `theorem` | [contDiff_nat_iff_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiff-nat-iff-iteratedderiv--fb82048ebe6183eb7296a6e5.md) | 252 | `result-track:fb82048ebe6183eb7296a6e5f1c40427576564edcd544c733602f3b43bc0baf3` |
| 30 | `theorem` | [contDiff_of_differentiable_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiff-of-differentiable-iteratedderiv--a8ffc4cb0f836de6b5148c31.md) | 263 | `result-track:a8ffc4cb0f836de6b5148c31ea66affff0f85fab6ce78f7b8dee7df25a0c5579` |
| 31 | `theorem` | [ContDiff.continuous_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiff-continuous-iteratedderiv--451af93d7cb7ee7d55dbf567.md) | 267 | `result-track:451af93d7cb7ee7d55dbf5678c78502d0b08af8245e3d0f11b940ef9afe057eb` |
| 32 | `theorem` | [ContDiff.continuous_iteratedDeriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiff-continuous-iteratedderiv--ecd467a010f181d300f5cb9a.md) | 272 | `result-track:ecd467a010f181d300f5cb9a6e6a54b261fef677be7cd0818115f5e016588387` |
| 33 | `theorem` | [ContDiff.differentiable_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiff-differentiable-iteratedderiv--e67cc2a1fac0d8d30c46c610.md) | 276 | `result-track:e67cc2a1fac0d8d30c46c610e9d962211d0ba5d8310264afcd62255ce0811578` |
| 34 | `theorem` | [ContDiff.differentiable_iteratedDeriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/contdiff-differentiable-iteratedderiv--9c81a5873951969007e39aa0.md) | 282 | `result-track:9c81a5873951969007e39aa01e0f72ecbf46ed74414a25cd32b909f8eb23be9e` |
| 35 | `theorem` | [iteratedDeriv_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv-succ--39ae5f4167f78c29e1c02125.md) | 288 | `result-track:39ae5f4167f78c29e1c021252c3357d9db32466022ee942e2cd292f2f1163fb8` |
| 36 | `theorem` | [iteratedDeriv_eq_iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv-eq-iterate--ab84e68bc0b2e463ba4f0f3c.md) | 295 | `result-track:ab84e68bc0b2e463ba4f0f3c95dee093fd6dcacc949be09be5676cba4fffc7f8` |
| 37 | `theorem` | [iteratedDeriv_succ'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/iteratedderiv-succ--8af6fdae22f2bb462acea2a7.md) | 303 | `result-track:8af6fdae22f2bb462acea2a71fd5473f35a3ea3333894b8fdd1035f3fcf266cf` |
| 38 | `lemma` | [AnalyticAt.hasFPowerSeriesAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/declarations/analyticat-hasfpowerseriesat--cd45ae259bc17dd9c08e89a4.md) | 306 | `result-track:cd45ae259bc17dd9c08e89a4afa6b733016ffe6695b5098d6cfa86bc6ea2279d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
