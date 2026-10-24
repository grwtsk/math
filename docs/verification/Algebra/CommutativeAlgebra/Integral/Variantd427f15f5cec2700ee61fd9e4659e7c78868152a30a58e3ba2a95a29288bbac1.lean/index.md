# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Integral.Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd3fd64f39b0a988cd280af7d1b1e488259cbff5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd3fd64f39b0a988cd280af7d1b1e488259cbff5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_integer_polynomial_multiple_and_support_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/exists-integer-polynomial-multiple-and-support-subset--ae093f37e5fdc9b218dec378.md) | 41 | `result-track:ae093f37e5fdc9b218dec3781bdf07c468840863af944d7c072f9b0d62b22ba3` |
| 2 | `def` | [integerNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/integernormalization--ded260aef9c32ca8899e1b7e.md) | 50 | `declaration-track:ded260aef9c32ca8899e1b7e724be2c0c9a030961829b64f5ce4fc125e37b989` |
| 3 | `theorem` | [integerNormalization_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/integernormalization-spec--7956b06500e8dca741ec43d6.md) | 53 | `result-track:7956b06500e8dca741ec43d693b43112712d563d0441c4429c5606b344a1b884` |
| 4 | `theorem` | [integerNormalization_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/integernormalization-support--97682d391eb56dfa4a2e218e.md) | 58 | `result-track:97682d391eb56dfa4a2e218e49a062209c0fe157a222df2512067986b4ea37c9` |
| 5 | `theorem` | [integerNormalization_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/integernormalization-eq-zero-iff--a3a68010a848ca2e78cefdc5.md) | 63 | `result-track:a3a68010a848ca2e78cefdc586cf5498cc4f7fb218fef992e63c3ba255e2ef3d` |
| 6 | `theorem` | [integerNormalization_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/integernormalization-eval-eq-zero--edd585568094462b548047e3.md) | 76 | `result-track:edd585568094462b548047e3ea72a4a4914febb93470165b9ce4554cb4c503d3` |
| 7 | `theorem` | [integerNormalization_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/integernormalization-aeval-eq-zero--e881b2ffdf8d00dfe91abaf7.md) | 82 | `result-track:e881b2ffdf8d00dfe91abaf75bc47123da92fd8f261ca7531ea887b27d0ec782` |
| 8 | `theorem` | [integerNormalization_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/integernormalization-eq-zero-iff--05c7b7ceaf29cad5250e1079.md) | 97 | `result-track:05c7b7ceaf29cad5250e1079f886c86cfa044393f9c4704fa237f3b28cd76258` |
| 9 | `theorem` | [isAlgebraic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isalgebraic-iff--584d6c28c45c15e30be71f43.md) | 106 | `result-track:584d6c28c45c15e30be71f437f5b8975c7db9f40b93c453ab3a8a306764a1629` |
| 10 | `theorem` | [comap_isAlgebraic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/comap-isalgebraic-iff--e0c939db7500d15b6f2d0c73.md) | 122 | `result-track:e0c939db7500d15b6f2d0c7353ddb9c164a573fbca46a02e4be37fe0c1a3b494` |
| 11 | `theorem` | [RingHom.isIntegralElem_localization_at_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/ringhom-isintegralelem-localization-at-leadingcoeff--4902021d2b5b8d5cf795cd74.md) | 140 | `result-track:4902021d2b5b8d5cf795cd74a8bec13e7a3e99590a3e5cbeb0110733849f57c5` |
| 12 | `theorem` | [is_integral_localization_at_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/is-integral-localization-at-leadingcoeff--7d9359005ae37de5cf59c23a.md) | 161 | `result-track:7d9359005ae37de5cf59c23a34e1bacbeb7235c2fc600763b5e19d4151f54195` |
| 13 | `theorem` | [isIntegral_localization](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isintegral-localization--a899e415d835cf51ea40bf38.md) | 175 | `result-track:a899e415d835cf51ea40bf38f435c9af582b6dad8d3918a7ef12073439b0c084` |
| 14 | `theorem` | [isIntegral_localization'](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isintegral-localization--238fd581327943393bd99ba1.md) | 190 | `result-track:238fd581327943393bd99ba1e637a0306821f0b802e47eb819f92a201a02d255` |
| 15 | `theorem` | [IsLocalization.scaleRoots_commonDenom_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/islocalization-scaleroots-commondenom-mem-lifts--5f96b258c1c605d1b949a377.md) | 203 | `result-track:5f96b258c1c605d1b949a377b5cc6ca88e16a2a9585c80affac891fa19ce9eb1` |
| 16 | `theorem` | [IsIntegral.exists_multiple_integral_of_isLocalization](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isintegral-exists-multiple-integral-of-islocalization--a25c8688e0c96baa3a377027.md) | 225 | `result-track:a25c8688e0c96baa3a3770278edf6a900eb30d66e23118b1bbf825ba17c043fd` |
| 17 | `lemma` | [IsLocalization.exists_isIntegral_smul_of_isIntegral_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/islocalization-exists-isintegral-smul-of-isintegral-map--e1d5789cf248d10f1e4dd573.md) | 245 | `result-track:e1d5789cf248d10f1e4dd573ffc69dd48cf74652c84a854364ff5c0c70428660` |
| 18 | `lemma` | [IsLocalization.Away.exists_isIntegral_mul_of_isIntegral_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/islocalization-away-exists-isintegral-mul-of-isintegral-algebramap--b1c448c3c621e0cb6edc1961.md) | 260 | `result-track:b1c448c3c621e0cb6edc196103621eb4138292eef4b965a5810c01a86dc25c17` |
| 19 | `lemma` | [IsLocalization.Away.exists_isIntegral_mul_of_isIntegral_mk'](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/islocalization-away-exists-isintegral-mul-of-isintegral-mk--4b909607c7e1a6f00626f258.md) | 276 | `result-track:4b909607c7e1a6f00626f25894b1ed5a960edcaa2a9ca2edda0ff5e60cb9db42` |
| 20 | `lemma` | [isIntegral_of_isIntegral_adjoin_of_mul_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isintegral-of-isintegral-adjoin-of-mul-eq-one--02b83eb792b832f181ec18d8.md) | 288 | `result-track:02b83eb792b832f181ec18d84744fa220ac344b2126d34781fa50e05bfc9a819` |
| 21 | `lemma` | [IsLocalization.Away.isIntegral_of_isIntegral_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/islocalization-away-isintegral-of-isintegral-map--f1a5d582fc8a3f0f0d98769d.md) | 328 | `result-track:f1a5d582fc8a3f0f0d98769d5a1bb751591dc42469e3091fe11711be81c14e7c` |
| 22 | `theorem` | [isFractionRing_of_algebraic](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isfractionring-of-algebraic--07af884fd4d112c561f9b153.md) | 353 | `result-track:07af884fd4d112c561f9b153e0c552a85fbce9b3cad5c390685b21fd8daf8a54` |
| 23 | `theorem` | [isFractionRing_of_finite_extension](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isfractionring-of-finite-extension--ff01f5b2dc1c4d5dd019faaa.md) | 371 | `result-track:ff01f5b2dc1c4d5dd019faaa93efbd4bb00191958798b6d2e0c69f48f20c3859` |
| 24 | `theorem` | [isFractionRing_of_algebraic](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isfractionring-of-algebraic--06d5d80685c4a23e47116269.md) | 390 | `result-track:06d5d80685c4a23e47116269565d8aadb138e66015d0659a34cb620f75c3c736` |
| 25 | `theorem` | [isFractionRing_of_finite_extension](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isfractionring-of-finite-extension--aea69d19b31c3029f1cbbdfb.md) | 398 | `result-track:aea69d19b31c3029f1cbbdfb0934e8ead6f48dba101db5e369c31e60e1a09a0a` |
| 26 | `lemma` | [IsLocalization.integralClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/islocalization-integralclosure--28c352a190c3abaad3ef4e87.md) | 412 | `result-track:28c352a190c3abaad3ef4e8740595fffbf661a098a5a4ba3dff24b6d6ef4b1da` |
| 27 | `lemma` | [IsLocalization.Away.integralClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/islocalization-away-integralclosure--fd339a1681f64cffb10a1af6.md) | 448 | `result-track:fd339a1681f64cffb10a1af6176f9d618ab5734dbe5060aab82d99183f3fd402` |
| 28 | `theorem` | [isAlgebraic_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isalgebraic-iff--1be134960a02e9fbc768d83c.md) | 463 | `result-track:1be134960a02e9fbc768d83c3481cfc5ce0319acfb0664f762e1ea1471e24224` |
| 29 | `theorem` | [ideal_span_singleton_map_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/ideal-span-singleton-map-subset--654a1eb34c5353388a47a2b9.md) | 492 | `result-track:654a1eb34c5353388a47a2b994bb21765cd9ea6f251e45e5281c73b4208062fd` |
| 30 | `lemma` | [isAlgebraic_of_isFractionRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/declarations/isalgebraic-of-isfractionring--3b6dd32b1670eb2520788c79.md) | 526 | `result-track:3b6dd32b1670eb2520788c7900cef3462b37a59f2b39da493e5dad4b15483efe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
