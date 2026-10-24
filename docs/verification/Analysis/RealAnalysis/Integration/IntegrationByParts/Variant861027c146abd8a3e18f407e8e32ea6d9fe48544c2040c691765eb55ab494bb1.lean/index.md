# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegrationByParts.Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b0856d1349c9f1bb25c91f481091e125e3222b5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b0856d1349c9f1bb25c91f481091e125e3222b5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_deriv_mul_eq_sub_of_hasDeriv_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-mul-eq-sub-of-hasderiv-right--ac2a6de153ce20746bbdb8ad.md) | 37 | `result-track:ac2a6de153ce20746bbdb8ad792e3bd85625a000a998188731266a6999efd45e` |
| 2 | `theorem` | [integral_deriv_mul_eq_sub_of_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-mul-eq-sub-of-hasderivat--33069334148b0309cbfb6be1.md) | 50 | `result-track:33069334148b0309cbfb6be1acf83a2d4e3379ab1bfd148cce0782641fd641ec` |
| 3 | `theorem` | [integral_deriv_mul_eq_sub_of_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-mul-eq-sub-of-hasderivwithinat--1c54fcb74a81bdcdafa8eb80.md) | 62 | `result-track:1c54fcb74a81bdcdafa8eb80261b4ea1ac847fdb6fd2cb307596336d4a07716e` |
| 4 | `theorem` | [integral_deriv_mul_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-mul-eq-sub--9cd71315d624e2687f9fab93.md) | 77 | `result-track:9cd71315d624e2687f9fab93d42c6c83f3f21a6f3edc3266b79b18b391eaeff7` |
| 5 | `theorem` | [integral_mul_deriv_eq_deriv_mul_of_hasDeriv_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-mul-deriv-eq-deriv-mul-of-hasderiv-right--203129cd402c01297e2c3a1d.md) | 88 | `result-track:203129cd402c01297e2c3a1d934514aee647b10b420e76a1e628b7c48bf186cb` |
| 6 | `theorem` | [integral_mul_deriv_eq_deriv_mul_of_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-mul-deriv-eq-deriv-mul-of-hasderivat--7c8c53b2c00158783c012b4e.md) | 101 | `result-track:7c8c53b2c00158783c012b4e0ce5b119bd2edd2c5655cd9d2536f71be28c9af4` |
| 7 | `theorem` | [integral_mul_deriv_eq_deriv_mul_of_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-mul-deriv-eq-deriv-mul-of-hasderivwithinat--454e7ef1a10b40ce6e54bea8.md) | 113 | `result-track:454e7ef1a10b40ce6e54bea8bb0e0018e54639216e49a6a7765a4c9815bb6daa` |
| 8 | `theorem` | [integral_mul_deriv_eq_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-mul-deriv-eq-deriv-mul--0df9324d82e1e4250e9e6f3c.md) | 132 | `result-track:0df9324d82e1e4250e9e6f3c96e97f0128c87ceb5d765cad1756856266697aa5` |
| 9 | `theorem` | [integral_comp_smul_deriv'''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-smul-deriv--21fcd827edaf49244e189c8e.md) | 154 | `result-track:21fcd827edaf49244e189c8ecc2e485795561fe6fd5fc3ca60a4317e41d77dc8` |
| 10 | `theorem` | [integral_comp_smul_deriv''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-smul-deriv--b16d5a778ce9fe3972fceda8.md) | 200 | `result-track:b16d5a778ce9fe3972fceda8d8d01b43572fb612ad98e43483e23982bf325be0` |
| 11 | `theorem` | [integral_comp_smul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-smul-deriv--113637a8b7fa14daa13ec387.md) | 215 | `result-track:113637a8b7fa14daa13ec3873889b5e42845e46dd465e2cb2ba6fc75f6387307` |
| 12 | `theorem` | [integral_comp_smul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-smul-deriv--279065595b641a6f5db5defc.md) | 225 | `result-track:279065595b641a6f5db5defc59674d1bf2937c22e430070f32f54d92cf554e9a` |
| 13 | `theorem` | [integral_deriv_comp_smul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-comp-smul-deriv--03392bd82de8079360012219.md) | 234 | `result-track:03392bd82de807936001221992416add61f13f375320a4bd25e4974a7cf0ca07` |
| 14 | `theorem` | [integral_deriv_comp_smul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-comp-smul-deriv--7c461caebe27bdafd7af9d63.md) | 244 | `result-track:7c461caebe27bdafd7af9d63cd5bee2d2f619d9618f80fff2daf97b5ecbba6b4` |
| 15 | `theorem` | [integral_comp_mul_deriv'''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-mul-deriv--3c68ede978415156e52ae4ac.md) | 261 | `result-track:3c68ede978415156e52ae4ac217c9e1d07543a888b53f314793f14b52234030c` |
| 16 | `theorem` | [integral_comp_mul_deriv''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-mul-deriv--cc3d9645b09982b1c592e757.md) | 274 | `result-track:cc3d9645b09982b1c592e757011cfe56961e1f9f8f897046c954579ba728b3b6` |
| 17 | `theorem` | [integral_comp_mul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-mul-deriv--25337ae10d6b7c7c0c20d1c7.md) | 286 | `result-track:25337ae10d6b7c7c0c20d1c7f5db28afdc7da37b5514ef85cad866cbcc108d31` |
| 18 | `theorem` | [integral_comp_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-comp-mul-deriv--1ceedf7b92128385b40683ba.md) | 295 | `result-track:1ceedf7b92128385b40683ba75fe92c19a31989b58cc744c0171c84936ecc6f7` |
| 19 | `theorem` | [integral_deriv_comp_mul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-comp-mul-deriv--66bcaab91f2b802b9798f843.md) | 300 | `result-track:66bcaab91f2b802b9798f843fa9ef61069249843e36d89cd377e890e86d96999` |
| 20 | `theorem` | [integral_deriv_comp_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/declarations/integral-deriv-comp-mul-deriv--5e1b8ab555f7117cf996c7f0.md) | 308 | `result-track:5e1b8ab555f7117cf996c7f0115dbb04f82037a371e4f6efec2586cc502c1f6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
