# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszQuadraticLaplace.Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9309524b22d3537978d29e5034d1b16d391ed41a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9309524b22d3537978d29e5034d1b16d391ed41a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredInitialLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/profile--a140a4384276650ee74a39e3.md) | 21 | `declaration-track:a140a4384276650ee74a39e39ef20a06d2b7d819750197a58469969c33f6d074` |
| 2 | `def` | [actualRieszAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/actualrieszabsolutecumulative--da839dceca3030e8ce35bd33.md) | 26 | `declaration-track:da839dceca3030e8ce35bd33b3a898b636a4ff4931e6166434f5cfab0b5489ed` |
| 3 | `def` | [actualRieszQuadraticLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/actualrieszquadraticlaplacebudget--caecdd0242ece03e408e8adc.md) | 29 | `declaration-track:caecdd0242ece03e408e8adc2f35a37220b04138499c43122861f5c81d2c47f2` |
| 4 | `theorem` | [profile_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/profile-continuouson--bb89b889fe27fd93c968498d.md) | 32 | `result-track:bb89b889fe27fd93c968498d69cdd5f0eec82a321ea476ad38740ca892bc8aba` |
| 5 | `theorem` | [profile_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/profile-intervalintegrable--c5e1024e3e50eb8e4ef682bf.md) | 37 | `result-track:c5e1024e3e50eb8e4ef682bf4ef186391ceabb87546131e4074c4d7469b0e422` |
| 6 | `theorem` | [area_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/area-nonneg--747841d2bef21e71dd4a2d17.md) | 42 | `result-track:747841d2bef21e71dd4a2d17b9544ed3462dd7839af9438a6790917a4592bb02` |
| 7 | `theorem` | [area_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/area-ac--454e24e37afd0cfffee74532.md) | 45 | `result-track:454e24e37afd0cfffee745321d2e1efa465efecc3d06f7fe7b75577718cc0e2f` |
| 8 | `theorem` | [area_ae_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/area-ae-deriv--40a88a79389cc3aa5f53866f.md) | 50 | `result-track:40a88a79389cc3aa5f53866fc0e7d5bc99b3b2a42b85d84821613acb39ced0c9` |
| 9 | `theorem` | [area_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/area-zero--deb571f90677166c7b201a46.md) | 55 | `result-track:deb571f90677166c7b201a46b8881ba1bf43ddcdaaad93498c8fefa49ea7456a` |
| 10 | `theorem` | [area_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/area-weight-intervalintegrable--8b030188a8fc0a2275144199.md) | 58 | `result-track:8b030188a8fc0a227514419924be288f97d9ef63294b60d783d8785f5d7bac69` |
| 11 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/absolute-weight-intervalintegrable--09c63a414001788d1018f476.md) | 63 | `result-track:09c63a414001788d1018f476b40f06347fff0d56c75299b52d981f12f43487db` |
| 12 | `theorem` | [finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/finite-abel--db230a790a8074bb6a9011f9.md) | 67 | `result-track:db230a790a8074bb6a9011f94e7554172bb4ceca8fbe11fdfe24378fa36ecb3b` |
| 13 | `theorem` | [actualRieszAbsoluteCumulative_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/actualrieszabsolutecumulative-future-envelope--b8c68463ecb33a0abfd5eae2.md) | 94 | `result-track:b8c68463ecb33a0abfd5eae2dbabee1d2620995b4e6328b26b0ccb8201cd00f5` |
| 14 | `theorem` | [polynomial_exp_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/polynomial-exp-integral-bound--86fb21f26f8fc825564beb86.md) | 111 | `result-track:86fb21f26f8fc825564beb8655a526a3569b2349dd87a1ddce07cc5112272eef` |
| 15 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/cumulative-weight-norm-bound--904eebfec403466d54a3c1bc.md) | 142 | `result-track:904eebfec403466d54a3c1bcd50c85f13d897be3fe504d3699a355d740de101d` |
| 16 | `theorem` | [cumulative_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/cumulative-weight-integrable--4bc0c19ad9144e0a3014d683.md) | 159 | `result-track:4bc0c19ad9144e0a3014d683ef8d85156d579f829300ffab563c91e56377d3e4` |
| 17 | `theorem` | [cumulative_weight_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/cumulative-weight-tendsto-zero--48c9e66b0cd70deafad22c25.md) | 173 | `result-track:48c9e66b0cd70deafad22c25b6dedcfc9f21891aa614f3f7871139d26eea281f` |
| 18 | `theorem` | [weighted_norm_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/weighted-norm-finite-tendsto--e76513bd3f531ff9e5610d9c.md) | 192 | `result-track:e76513bd3f531ff9e5610d9ca56463b0a1449c16b91e74ff8c1585d0933fa9ba` |
| 19 | `theorem` | [profile_real_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/profile-real-weight-integrable--ebf1962b28c444d21438134e.md) | 206 | `result-track:ebf1962b28c444d21438134ebfb9ccf718835440fdc2c21e1827c78d4c28a744` |
| 20 | `theorem` | [absolute_weight_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/absolute-weight-integral-bound--53aafa07a210f86317de8c39.md) | 220 | `result-track:53aafa07a210f86317de8c394c984ea65d9869bf9fc17a51f719c1b99031801a` |
| 21 | `theorem` | [profile_continuousOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/profile-continuouson-positive--77b62c43543ce627ff87a65b.md) | 253 | `result-track:77b62c43543ce627ff87a65b8c05c2742893c8826b6158c9cedcfa9459908b8e` |
| 22 | `theorem` | [kernel_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/kernel-norm--53cd0aa5fa123d1c19984492.md) | 258 | `result-track:53cd0aa5fa123d1c199844928b0dafc72c68b0c34c948861f6c97ab82fcd03c1` |
| 23 | `theorem` | [actualFixedCenteredRieszLaplace_positive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/actualfixedcenteredrieszlaplace-positive-integrable--a351fc7263978c8a4760baec.md) | 265 | `result-track:a351fc7263978c8a4760baec1571e2cdcea2e24b86e1ecbbadb229a452fa7bb1` |
| 24 | `theorem` | [actualFixedCenteredRieszLaplace_absolute_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/actualfixedcenteredrieszlaplace-absolute-budget--5d19f324f6cac77bd352b344.md) | 286 | `result-track:5d19f324f6cac77bd352b344a012e050620319f854af7c6b45951070bf6046dc` |
| 25 | `theorem` | [actualFixedCenteredRieszLaplace_positive_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/declarations/actualfixedcenteredrieszlaplace-positive-norm-le--74f78ea2252089516b73db89.md) | 298 | `result-track:74f78ea2252089516b73db89088d294eaace426a8bae78322bfdd50358e6f2c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
