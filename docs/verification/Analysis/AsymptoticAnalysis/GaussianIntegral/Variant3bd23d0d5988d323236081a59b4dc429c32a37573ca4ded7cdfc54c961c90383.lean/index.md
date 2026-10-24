# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GaussianIntegral.Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a94d72c9740fed99264b4035e198daae3d55bad2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a94d72c9740fed99264b4035e198daae3d55bad2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_neg_mul_rpow_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/exp-neg-mul-rpow-islittleo-exp-neg--bc9435f7f9b28ceb8046dded.md) | 38 | `result-track:bc9435f7f9b28ceb8046dded5fab539439ea7374a57f0467db27c724603f9783` |
| 2 | `theorem` | [exp_neg_mul_sq_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/exp-neg-mul-sq-islittleo-exp-neg--fb0f29c6c07c79fafa3fcc08.md) | 52 | `result-track:fb0f29c6c07c79fafa3fcc089116ae496a40fed471ead026961b49b48fd7a128` |
| 3 | `theorem` | [rpow_mul_exp_neg_mul_rpow_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/rpow-mul-exp-neg-mul-rpow-islittleo-exp-neg--eaa67bec8f611fca9c670b8f.md) | 57 | `result-track:eaa67bec8f611fca9c670b8f39162bf29f8ef979d9899de2b249f20dc34e9b25` |
| 4 | `theorem` | [rpow_mul_exp_neg_mul_sq_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/rpow-mul-exp-neg-mul-sq-islittleo-exp-neg--d1ce01ee0cb9bd294a57408d.md) | 63 | `result-track:d1ce01ee0cb9bd294a57408d73aa79e6444005ad4437606e1a9408ab8ddb4a13` |
| 5 | `theorem` | [integrableOn_rpow_mul_exp_neg_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrableon-rpow-mul-exp-neg-rpow--7331ce217f9cc664290c5057.md) | 68 | `result-track:7331ce217f9cc664290c5057a0e56a710453e91ce95d1a07f32385fc0f25ba99` |
| 6 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrableon-rpow-mul-exp-neg-mul-rpow--1cd14257d0a9efc1f28b5369.md) | 96 | `result-track:1cd14257d0a9efc1f28b536901b2960ea403b086e604876ca24d0c0ad4cf2f91` |
| 7 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrableon-rpow-mul-exp-neg-mul-sq--13201d2ba326f74b16e9a093.md) | 109 | `result-track:13201d2ba326f74b16e9a0935552783f1a7a45caa49ecd88f7421506cac546a9` |
| 8 | `theorem` | [integrable_rpow_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrable-rpow-mul-exp-neg-mul-sq--39d753d34d802cf7024e1f57.md) | 114 | `result-track:39d753d34d802cf7024e1f579e75f0deb5b9802a85ee1c11300159f315abfbdb` |
| 9 | `theorem` | [integrable_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrable-exp-neg-mul-sq--a7a244ff155a2f46aad32d73.md) | 133 | `result-track:a7a244ff155a2f46aad32d73a4986c075ecf00c538f65babeba792e36db08328` |
| 10 | `theorem` | [integrableOn_Ioi_exp_neg_mul_sq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrableon-ioi-exp-neg-mul-sq-iff--b1b6f4913d6c4a48c8f60ca7.md) | 137 | `result-track:b1b6f4913d6c4a48c8f60ca790633d95d00f72615e7d5db20ac689149ad878d1` |
| 11 | `theorem` | [integrable_exp_neg_mul_sq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrable-exp-neg-mul-sq-iff--1e5d45f71300a78776da78aa.md) | 148 | `result-track:1e5d45f71300a78776da78aa3d58f6be5d48089d85e4f612a65b002609a5c6e6` |
| 12 | `theorem` | [integrable_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrable-mul-exp-neg-mul-sq--7f0978120f09a5dcebb9e0d1.md) | 152 | `result-track:7f0978120f09a5dcebb9e0d1445df4f0740fecc655c3b8919a45e4fe0ee5cf25` |
| 13 | `theorem` | [norm_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/norm-cexp-neg-mul-sq--2386dd5f5d0f7a93284fe2a3.md) | 156 | `result-track:2386dd5f5d0f7a93284fe2a30958b9b898f4f42b10ae80aea38f8d489f4ae792` |
| 14 | `theorem` | [integrable_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrable-cexp-neg-mul-sq--98afa7da2f6e8c159072e286.md) | 160 | `result-track:98afa7da2f6e8c159072e28621f7a2455d61a7b624ed07754469c59ca36e47ac` |
| 15 | `theorem` | [integrable_mul_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integrable-mul-cexp-neg-mul-sq--6e038b0328a038bf394ea6ff.md) | 168 | `result-track:6e038b0328a038bf394ea6ff609d7d509f53568ccdc03936aae02b2821394071` |
| 16 | `theorem` | [integral_mul_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integral-mul-cexp-neg-mul-sq--6a604a3af44de4e3cb3dc1e3.md) | 177 | `result-track:6a604a3af44de4e3cb3dc1e31c19ec4befcf4f3d56a2e42b812ac25baf5d470a` |
| 17 | `theorem` | [integral_gaussian_sq_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integral-gaussian-sq-complex--5f311ce20993364b3bc69a8a.md) | 198 | `result-track:5f311ce20993364b3bc69a8a2f34b4d7bfb29e15dcd48631dc0b52197737b849` |
| 18 | `theorem` | [integral_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integral-gaussian--7868719da9bfcdbef02808e4.md) | 229 | `result-track:7868719da9bfcdbef02808e490e00ed8bb7eb1ad53168f472591c8abf1401a1f` |
| 19 | `theorem` | [continuousAt_gaussian_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/continuousat-gaussian-integral--de39c3ca8b1a4b1024bae491.md) | 242 | `result-track:de39c3ca8b1a4b1024bae4911aec78edcaf88f8cce3de0065aec33d4cceba545` |
| 20 | `theorem` | [integral_gaussian_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integral-gaussian-complex--f733c65472a41f612044e545.md) | 261 | `result-track:f733c65472a41f612044e545f554bd5f5b7b97ae9f844096c0bb7f21d536ee65` |
| 21 | `theorem` | [integral_gaussian_complex_Ioi](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integral-gaussian-complex-ioi--bfcb664b22edc3b8464d301c.md) | 300 | `result-track:bfcb664b22edc3b8464d301c8b55f5b2ab9bb4a0743974f20b1048cf755243e2` |
| 22 | `theorem` | [integral_gaussian_Ioi](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/integral-gaussian-ioi--d6b2f8feefdc56f4e51003e5.md) | 325 | `result-track:d6b2f8feefdc56f4e51003e571e31b10f715c5b29b31968dd92678a044c67318` |
| 23 | `theorem` | [Real.Gamma_one_half_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/real-gamma-one-half-eq--57200c52abd9eee39587016b.md) | 340 | `result-track:57200c52abd9eee39587016bd3593c797ada57a4d49e5fd22358c340c95891c4` |
| 24 | `theorem` | [Complex.Gamma_one_half_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/complex-gamma-one-half-eq--9088095c046b4264290710ed.md) | 356 | `result-track:9088095c046b4264290710ed623d6937cc808f58add8919f078ee6c9f9a40366` |
| 25 | `lemma` | [Real.Gamma_nat_add_one_add_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/real-gamma-nat-add-one-add-half--2a4840db27166393d67ce755.md) | 364 | `result-track:2a4840db27166393d67ce75513e7df638b519387b2ee24289c006c4777e60cbf` |
| 26 | `lemma` | [Real.Gamma_nat_add_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/declarations/real-gamma-nat-add-half--e1edca28d7d8f7222c3ca388.md) | 376 | `result-track:e1edca28d7d8f7222c3ca3883c41c1e10dfb42bd2b79e101f77861e48e446712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
