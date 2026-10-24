# Verification target: GRWTSK.Algebra.IntegralRestrict.Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40382404349b2815648537a2bb46a3ce1953b233",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40382404349b2815648537a2bb46a3ce1953b233`.

Source path: `GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [galRestrict'](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestrict--c533a6f960b796b8ca8d9bbc.md) | 63 | `declaration-track:c533a6f960b796b8ca8d9bbc35c1405084f474ed7372336bf8ebda18f016195e` |
| 2 | `lemma` | [algebraMap_galRestrict'_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebramap-galrestrict-apply--761aa2b971ec825608d9a2f7.md) | 70 | `result-track:761aa2b971ec825608d9a2f76731f58991e3fd39767b3a90d2e19c43486f2930` |
| 3 | `theorem` | [galRestrict'_id](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestrict-id--95a3ec5a2dbae107c0ab168e.md) | 75 | `result-track:95a3ec5a2dbae107c0ab168e2924d50d9a086c7ad568180c1e0db11a5f64125c` |
| 4 | `theorem` | [galRestrict'_comp](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestrict-comp--3a375f82232826d3cae615b6.md) | 81 | `result-track:3a375f82232826d3cae615b6096c1ffd9f9951e5d94535afc3809d95c3048de0` |
| 5 | `def` | [galLift](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/gallift--793d2d391da7ab0a611ed14b.md) | 98 | `declaration-track:793d2d391da7ab0a611ed14b4115a4c2166ae4b03edf556315593f765f55ec16` |
| 6 | `theorem` | [galLift_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/gallift-algebramap-apply--83a1baccdab023866ff635c0.md) | 119 | `result-track:83a1baccdab023866ff635c009c8f618d3ced771c523e363f3e927556c576b10` |
| 7 | `theorem` | [galLift_id](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/gallift-id--a1fb56e5ac106bba6468092d.md) | 124 | `result-track:a1fb56e5ac106bba6468092da9fdc6c1c94989e08152ee95e4bec0ae2f87716b` |
| 8 | `theorem` | [galLift_comp](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/gallift-comp--8cc26ca71032576b3dc8856a.md) | 128 | `result-track:8cc26ca71032576b3dc8856a8424447bf279e9bab13f95ae14898435f17d0e0c` |
| 9 | `theorem` | [galLift_galRestrict'](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/gallift-galrestrict--cb1960451cd2de17b53f08a1.md) | 137 | `result-track:cb1960451cd2de17b53f08a1b7a5d398253e2e5d1b177cc3fde54da289fcad6d` |
| 10 | `theorem` | [galRestrict'_galLift](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestrict-gallift--918a0fdd3aa921ba67e1c544.md) | 145 | `result-track:918a0fdd3aa921ba67e1c544c1045c50d5d8c677b03f11d30337f9782b756e9a` |
| 11 | `def` | [galLiftEquiv](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galliftequiv--9683f126b349954ffb6a379f.md) | 157 | `declaration-track:9683f126b349954ffb6a379f0200b4ca9357df2e4d7daa298ba7ad5a0be102e0` |
| 12 | `theorem` | [galLiftEquiv_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galliftequiv-algebramap-apply--2335bf3a85bd57f485e2b06f.md) | 161 | `result-track:2335bf3a85bd57f485e2b06fe2fcba2909938b6e9eadfb84a0d1a02d90ee93b7` |
| 13 | `def` | [galRestrictHom](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestricthom--57cad3aad234c0692c4e9297.md) | 171 | `declaration-track:57cad3aad234c0692c4e9297e732a5092cfc8fe7018c2292a0f7c4d67a27b8ea` |
| 14 | `lemma` | [algebraMap_galRestrictHom_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebramap-galrestricthom-apply--359848512d31ebf72e4b3ddb.md) | 179 | `result-track:359848512d31ebf72e4b3ddbf6a7922637c9f4dea53907819f6341f37e2fb00f` |
| 15 | `lemma` | [galRestrictHom_symm_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestricthom-symm-algebramap-apply--b73ec455dbc5772abb699508.md) | 184 | `result-track:b73ec455dbc5772abb699508db11d91d9bd6f0ca8a908b89c3adcfbfb88e1a17` |
| 16 | `def` | [galRestrict](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestrict--07f6169ce059820cf148a2c5.md) | 190 | `declaration-track:07f6169ce059820cf148a2c57ced9fbd1c7355dde81dfee4d9168a809efb96a6` |
| 17 | `lemma` | [coe_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/coe-galrestrict-apply--569447ec95d6999482ae2d62.md) | 196 | `result-track:569447ec95d6999482ae2d62d13c2cf62a0a752df8c27bd6c1fe9f177655521c` |
| 18 | `lemma` | [galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestrict-apply--fcd0f2153cf8a29d462c6d50.md) | 201 | `result-track:fcd0f2153cf8a29d462c6d50c694e17862f37b732e910892316e9f6959147419` |
| 19 | `lemma` | [algebraMap_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebramap-galrestrict-apply--7304af2a902b85c2588a5ccd.md) | 204 | `result-track:7304af2a902b85c2588a5ccd248537ab6d5784d82088ebcb0e52b5df10b9d969` |
| 20 | `lemma` | [galRestrict_symm_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/galrestrict-symm-algebramap-apply--faf6edbeeaa241d9a896e9a2.md) | 209 | `result-track:faf6edbeeaa241d9a896e9a2467303b6dfc341d996596ffbc63f9eb10b46f70d` |
| 21 | `lemma` | [prod_galRestrict_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/prod-galrestrict-eq-norm--201934ec4dbc5436690cb3ee.md) | 217 | `result-track:201934ec4dbc5436690cb3eed3f550a98dd6ea6ec01b2350fb1dca1bf6a8fa9d` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/instance--4abdf493b22b2621cf9b2d1a.md) | 229 | `declaration-track:4abdf493b22b2621cf9b2d1a2b2a6d73843b8c83fdf46a59cf6d295f4e94336f` |
| 23 | `def` | [Algebra.intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-inttraceaux--1d89d174fdfb2445ba9f6a5d.md) | 251 | `declaration-track:1d89d174fdfb2445ba9f6a5d2c38e723732db997df1bbf06846e3d0ddb50b7be` |
| 24 | `lemma` | [Algebra.map_intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-map-inttraceaux--49ef69edde87b1051548ff66.md) | 261 | `result-track:49ef69edde87b1051548ff66bab9630241a600fbc560fbfb8049d55fa1615f11` |
| 25 | `def` | [Algebra.intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-inttrace--cf6a851ccb15c48666303c97.md) | 272 | `declaration-track:cf6a851ccb15c48666303c9701995d6833f03ceb375a7a6bc8010cafcbcc22ef` |
| 26 | `lemma` | [Algebra.algebraMap_intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-algebramap-inttrace--0cabec4d2d97af66363f2c02.md) | 285 | `result-track:0cabec4d2d97af66363f2c024948e11ceea21b92b0dace365627b09656eae479` |
| 27 | `lemma` | [Algebra.algebraMap_intTrace_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-algebramap-inttrace-fractionring--d9adcd301863fd620c4a401b.md) | 304 | `result-track:d9adcd301863fd620c4a401b44278ad956f70f873fd5525efacdec6c95d7c9d0` |
| 28 | `lemma` | [Algebra.intTrace_eq_trace](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-inttrace-eq-trace--4c0b179f9d2fd741abdcac2f.md) | 319 | `result-track:4c0b179f9d2fd741abdcac2fa6a757f2bf88ff91ccb3e43af2a3d3ee32794a9a` |
| 29 | `lemma` | [Algebra.intTrace_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-inttrace-eq-of-islocalization--3a33c72dfb730006d48a21e3.md) | 338 | `result-track:3a33c72dfb730006d48a21e31024783e8b6a69268c59abfbb9be93a32d3927d0` |
| 30 | `def` | [Algebra.intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnormaux--2f4770acff3b3da9174045f5.md) | 391 | `declaration-track:2f4770acff3b3da9174045f51851282a42cff8cf1797b3412f04c955e102b1e2` |
| 31 | `lemma` | [Algebra.map_intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-map-intnormaux--4c578055337c778c12a2132d.md) | 402 | `result-track:4c578055337c778c12a2132dc5b5d1762fd3986c498555cb9d0d006affa315fe` |
| 32 | `def` | [Algebra.intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm--99c08fa8122db6a9d961ec1a.md) | 414 | `declaration-track:99c08fa8122db6a9d961ec1a2ac88ce424dcdd778afa36bd688999f438e9ab08` |
| 33 | `lemma` | [Algebra.algebraMap_intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-algebramap-intnorm--71f652268e68f147af2a1cc2.md) | 418 | `result-track:71f652268e68f147af2a1cc29c931c04b6741bb607d5556ec58b151549d9340c` |
| 34 | `lemma` | [Algebra.algebraMap_intNorm_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-algebramap-intnorm-fractionring--93261621597ef4c23e190e38.md) | 430 | `result-track:93261621597ef4c23e190e3832c8a444c8677b59de1a8d03be3f03d88bb9cfff` |
| 35 | `theorem` | [Algebra.intNorm_intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm-intnorm--559e73f1f19fb28a1f605b29.md) | 437 | `result-track:559e73f1f19fb28a1f605b29a70b66aecf79e8fe936d3c4caa9c2c23f12ff57d` |
| 36 | `lemma` | [Algebra.intNorm_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm-eq-norm--0da3ce68105216a87a628a4b.md) | 445 | `result-track:0da3ce68105216a87a628a4b092f7b16ffdbc9c9f11a9d6d4c0a42c1488a327f` |
| 37 | `lemma` | [Algebra.intNorm_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm-zero--c53f0200dca0d2cd39c56e82.md) | 454 | `result-track:c53f0200dca0d2cd39c56e8209b300a621380f256160c658ac61c97023e7cf10` |
| 38 | `theorem` | [Algebra.intNorm_map_algEquiv](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm-map-algequiv--6ba9a8db3eee32a35c489f2b.md) | 466 | `result-track:6ba9a8db3eee32a35c489f2bef62e6bd7dea31594439cb3bc89c9662c68a63fc` |
| 39 | `lemma` | [Algebra.intNorm_eq_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm-eq-zero--fb1054438151fc02c9dd4a62.md) | 476 | `result-track:fb1054438151fc02c9dd4a6258d311a47e5c2e536759691f1b40ae58ed4b8fbf` |
| 40 | `lemma` | [Algebra.intNorm_ne_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm-ne-zero--9ffc644043826d9ee5915c36.md) | 482 | `result-track:9ffc644043826d9ee5915c36ff98b9f9e1fbfca8c9e43abf00e4bd35ffced7da` |
| 41 | `lemma` | [Algebra.intNorm_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-intnorm-eq-of-islocalization--7ac946a05183b5e8d51e2bcc.md) | 490 | `result-track:7ac946a05183b5e8d51e2bcc4b3f695611bdd2b76c73c46bca231e0bdbd2b7b0` |
| 42 | `lemma` | [Algebra.algebraMap_intNorm_of_isGalois](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-algebramap-intnorm-of-isgalois--b6897fdd20231fcc060b7051.md) | 531 | `result-track:b6897fdd20231fcc060b705106b01aef6e863ac5099f8d0224bd5cf04b0c1c59` |
| 43 | `theorem` | [Algebra.dvd_algebraMap_intNorm_self](../../../../mathematics/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/declarations/algebra-dvd-algebramap-intnorm-self--99329ee997b01f8f722c2321.md) | 539 | `result-track:99329ee997b01f8f722c23219bd40a8a5856d5717bda1c7bdc8650edea9f0b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
