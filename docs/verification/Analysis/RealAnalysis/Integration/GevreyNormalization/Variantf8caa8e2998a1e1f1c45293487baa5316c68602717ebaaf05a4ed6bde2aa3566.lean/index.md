# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GevreyNormalization.Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d85db46ce1fc9ce39a301794fe9bd70ed8e4d6f6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d85db46ce1fc9ce39a301794fe9bd70ed8e4d6f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyProfile` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaledProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/scaledprofile--67578c6756c2f13f5222b7a6.md) | 32 | `declaration-track:67578c6756c2f13f5222b7a6fb0457699beaa31f12a6a33828ea1be5ecb6843e` |
| 2 | `def` | [dilationOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/dilationoperator--3abd876434f416089216ac7e.md) | 36 | `declaration-track:3abd876434f416089216ac7e0c4af255204960ce41f5738aecaa0ab72fd2c596` |
| 3 | `def` | [normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalization--3804d33ba79283aff27d847a.md) | 40 | `declaration-track:3804d33ba79283aff27d847a33653b1ec9bc359ad44f109fc694633c6c5b8df9` |
| 4 | `theorem` | [integrable_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/integrable-square--c0154b431c3259a4e82f3ce4.md) | 43 | `result-track:c0154b431c3259a4e82f3ce49f181423ccdd82fd3971c927eef78b21924989f3` |
| 5 | `theorem` | [continuous_second](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/continuous-second--ed3feee091e50c44260a327d.md) | 48 | `result-track:ed3feee091e50c44260a327d220f21507ea42db2642789a925c4e926820544da` |
| 6 | `theorem` | [integral_second_mul_profile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/integral-second-mul-profile--3f04bbb1c97871a85912a57d.md) | 54 | `result-track:3f04bbb1c97871a85912a57da42d1cad524fe055c31d234e7e462fdfe54b0e92` |
| 7 | `theorem` | [deriv_scaledProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/deriv-scaledprofile--d364a2aca4fb163333785ea7.md) | 73 | `result-track:d364a2aca4fb163333785ea767a7a15506417e030b8c022da1e6a5e9f597c5f1` |
| 8 | `theorem` | [second_scaledProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/second-scaledprofile--ff4cd4cf6f4da4568b61f10e.md) | 84 | `result-track:ff4cd4cf6f4da4568b61f10e3c5b42370b1f6d7b1866f20fc547772b1024bff4` |
| 9 | `theorem` | [dilationOperator_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/dilationoperator-eq--b105b75523ba46d8797e5f4e.md) | 101 | `result-track:b105b75523ba46d8797e5f4e1fe54cb5d274dd2a2e94419ff20ee84dddf24757` |
| 10 | `theorem` | [scaledProfile_eq_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/scaledprofile-eq-rpow--346fdf79b0acafb79f02c435.md) | 109 | `result-track:346fdf79b0acafb79f02c435579f2f93d92080430e14cc113305c5e45b3d4904` |
| 11 | `theorem` | [deriv_scaledProfile_eq_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/deriv-scaledprofile-eq-rpow--c7b1acc6b72412463e41e6ab.md) | 115 | `result-track:c7b1acc6b72412463e41e6ab24c1d05b6fc873419d7166aecf8384c7d6e1257b` |
| 12 | `theorem` | [second_scaledProfile_eq_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/second-scaledprofile-eq-rpow--009ea9d294898d4a5c62614c.md) | 125 | `result-track:009ea9d294898d4a5c62614cd69bc39adf2e82070753c3a96ada5be491bbe9da` |
| 13 | `theorem` | [dilationOperator_eq_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/dilationoperator-eq-rpow--0a4b5b182143e4a79e4001f6.md) | 136 | `result-track:0a4b5b182143e4a79e4001f6f7f78bc512766c48a7368f8a5ef48e1889b7d122` |
| 14 | `theorem` | [profile_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/profile-square-integrable--4d26ce015dbf9eeeee6f4b7c.md) | 146 | `result-track:4d26ce015dbf9eeeee6f4b7cb08a56aed85904441085159206195727523f4010` |
| 15 | `theorem` | [base_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/base-square-integrable--0860078fa9410eed00284cee.md) | 155 | `result-track:0860078fa9410eed00284cee45d175d37d26f1863663f04e7df0395ee8a70082` |
| 16 | `theorem` | [dilationOperator_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/dilationoperator-square-integrable--63f66ae859cf334459c4ba1d.md) | 167 | `result-track:63f66ae859cf334459c4ba1d5e36912c9490b99ca417066eab0b2ae02c33ce57` |
| 17 | `theorem` | [dilationOperator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/dilationoperator-integrable--c71147037f7008256cf4dccf.md) | 179 | `result-track:c71147037f7008256cf4dccf5889a4d8871fdfbfcef151bdedf6a883b58be2d1` |
| 18 | `theorem` | [normalization_expanded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalization-expanded--b88f58ed4c114424bb8fa3e1.md) | 192 | `result-track:b88f58ed4c114424bb8fa3e183bcd255da017e0bfccedb4051eb15b82397dc7e` |
| 19 | `theorem` | [normalization_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalization-eq--897701948e2d75fa681fd623.md) | 228 | `result-track:897701948e2d75fa681fd623f7a181113da7f4f3a38296c5e739eeece0e49c17` |
| 20 | `theorem` | [tendsto_normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/tendsto-normalization--51b96a167576cace7e1bcbc8.md) | 238 | `result-track:51b96a167576cace7e1bcbc86e5f8a5844e8bf08239c7a145047a1d5d71b6fc4` |
| 21 | `theorem` | [normalization_uniform_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalization-uniform-lower-bound--dded4e5e5efc55e955b5dc2c.md) | 260 | `result-track:dded4e5e5efc55e955b5dc2c59a62c95a48660a9ff512046c83753fc68247437` |
| 22 | `theorem` | [normalization_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalization-pos--22d8b68023c4b6d96254c2c4.md) | 271 | `result-track:22d8b68023c4b6d96254c2c4be9f32031c36a1718b8dc115e510012e1bc3b8b1` |
| 23 | `theorem` | [normalization_uniform_positive_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalization-uniform-positive-lower-bound--1c04ceaf111a36c14475f389.md) | 285 | `result-track:1c04ceaf111a36c14475f3896327f5153f8f2e8b3705eaea9325c8e6e382e82f` |
| 24 | `def` | [normalizedOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalizedoperator--e86ca248a13d83adcd8bb5fc.md) | 298 | `declaration-track:e86ca248a13d83adcd8bb5fc65b01d47aecffffe2a4944f2fb001cb75c2bc283` |
| 25 | `theorem` | [normalizedOperator_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalizedoperator-square-integral--cf829c444b412f34257af50a.md) | 302 | `result-track:cf829c444b412f34257af50af25cacfe18d3bd30667503d14d42c6e22c6a7a0a` |
| 26 | `theorem` | [normalizedOperator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/normalizedoperator-integrable--8d04e294408c9cd183f0231f.md) | 311 | `result-track:8d04e294408c9cd183f0231f77d10c6dfaa720ed013694e2036ab79720508a8b` |
| 27 | `theorem` | [profile_normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/profile-normalization--07855d15bde2315bebc79da8.md) | 320 | `result-track:07855d15bde2315bebc79da8e93f975b956cb2b476590e301a616b42979be782` |
| 28 | `theorem` | [profile_normalization_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/profile-normalization-lower-bound--98ea004adf34b04a462ac1d2.md) | 328 | `result-track:98ea004adf34b04a462ac1d27bf1e38d7638de9467bb38d30a6337173ba091bd` |
| 29 | `theorem` | [profile_normalization_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/profile-normalization-pos--888b48c90a3e920905ec529b.md) | 335 | `result-track:888b48c90a3e920905ec529bfaa24246331036431fd5a0c14f5a896df1c36d55` |
| 30 | `theorem` | [profile_normalization_uniform_positive_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/profile-normalization-uniform-positive-lower-bound--1740f5fc582f386cd5abbbf2.md) | 341 | `result-track:1740f5fc582f386cd5abbbf21664790026f031b659d0f2d2399f279cb90ca79e` |
| 31 | `theorem` | [profile_normalizedOperator_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/profile-normalizedoperator-square-integral--5fe7ef72c6c5fe23081f050b.md) | 347 | `result-track:5fe7ef72c6c5fe23081f050b44bcfbf2c225a858eb0c653a1effd823a60213ff` |
| 32 | `theorem` | [profile_normalization_expanded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/profile-normalization-expanded--135b72a133875dd4900b1e0b.md) | 353 | `result-track:135b72a133875dd4900b1e0b1209e84b9b383c0dc58bcbd8e33ee8c5b825130a` |
| 33 | `theorem` | [tendsto_profile_normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/declarations/tendsto-profile-normalization--60295fc8c0759c1cd6102d09.md) | 363 | `result-track:60295fc8c0759c1cd6102d093c76eb16b6f02debbbfa9efca70f3b6e48be2bbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
