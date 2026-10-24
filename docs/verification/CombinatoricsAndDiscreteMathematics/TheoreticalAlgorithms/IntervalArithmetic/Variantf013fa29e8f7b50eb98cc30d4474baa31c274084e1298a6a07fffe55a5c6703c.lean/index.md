# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArithmetic.Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd44b805011405b56671af04e4b219546d05c70a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd44b805011405b56671af04e4b219546d05c70a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.VerifiedNumericalEstimate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalIntervalCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/rationalintervalcertificate--925d8a13f8e31c1c4b6b7a78.md) | 27 | `declaration-track:925d8a13f8e31c1c4b6b7a782aed682d7eb35ad2e787b6c04f45ec137f179a49` |
| 2 | `def` | [RationalIntervalCertificate.contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/rationalintervalcertificate-contains--544827eaa1ddc82b18ad0bff.md) | 36 | `declaration-track:544827eaa1ddc82b18ad0bffe3493256d4366536c2597cf2d88a6dc3a6c1955e` |
| 3 | `theorem` | [rational_interval_certificate_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/rational-interval-certificate-sound--ed6d12aeb08e13dc8080a599.md) | 40 | `result-track:ed6d12aeb08e13dc8080a5993cfb8641844fe32f99b11830782f55b5b21fba58` |
| 4 | `theorem` | [sqrt_two_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrt-two-lower-bound--3a4a492e7169765c16135d0f.md) | 47 | `result-track:3a4a492e7169765c16135d0fcee2868c47ba98634d7820fe6e3493f2d0e07c4a` |
| 5 | `theorem` | [sqrt_two_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrt-two-upper-bound--64bd583f1c23a7aa3dc0d85e.md) | 53 | `result-track:64bd583f1c23a7aa3dc0d85e8417fd1e308a7ce466c1de3191816fac86308ffe` |
| 6 | `theorem` | [sqrt_two_interval_enclosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrt-two-interval-enclosure--1afb8c3e04b4ef28bd67e7d9.md) | 58 | `result-track:1afb8c3e04b4ef28bd67e7d9d6874544fd90bde287897b883a844e1447c801a3` |
| 7 | `def` | [sqrtTwoRationalIntervalCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttworationalintervalcertificate--21f4bbbd44c2a52e5afd1a74.md) | 65 | `declaration-track:21f4bbbd44c2a52e5afd1a74397a37f09a4e0a9d62ceec440f01b5b8ae3fd1b9` |
| 8 | `def` | [sqrtTwoEndpointLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoendpointlower--24a678dd476faf1c13898fdd.md) | 82 | `declaration-track:24a678dd476faf1c13898fdd3eb1bf748e36f93be40e720a20223f2c5413ddf6` |
| 9 | `def` | [sqrtTwoEndpointUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoendpointupper--4278c137e5996e00b46b0fe5.md) | 88 | `declaration-track:4278c137e5996e00b46b0fe5e9fa52305771c5b0fd32ed22b2554229445a96e8` |
| 10 | `def` | [sqrtTwoFiniteInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwofiniteinterval--2df6c15635bc3c75ca2da0b7.md) | 94 | `declaration-track:2df6c15635bc3c75ca2da0b7a6bf520452226ac6e3dddceddfb79f271dbd2f0a` |
| 11 | `def` | [sqrtTwoFiniteDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwofinitedomain--f3d27323d8e93d40d6444cb2.md) | 102 | `declaration-track:f3d27323d8e93d40d6444cb20f0f78ec7878bffca7c791c7310969e370c4b2c1` |
| 12 | `def` | [sqrtTwoPrecision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoprecision--45aa6ef5489ee29c3d1a87d4.md) | 110 | `declaration-track:45aa6ef5489ee29c3d1a87d40b6677c410f19a6636d481b2f40fe5bd07a1530a` |
| 13 | `def` | [sqrtTwoAlgorithm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoalgorithm--66ff2a869ee880c6de139443.md) | 120 | `declaration-track:66ff2a869ee880c6de139443bf4443920333a13840eb539f0cd18ad38236de61` |
| 14 | `def` | [sqrtTwoErrorModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoerrormodel--f3a33da45ab67079a1e0bb88.md) | 129 | `declaration-track:f3a33da45ab67079a1e0bb88fed3ffc7d69109cfcb991fcb7566c962300b7306` |
| 15 | `def` | [sqrtTwoFinitePayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwofinitepayload--d5a998f8c15c3d3bd04acf0c.md) | 141 | `declaration-track:d5a998f8c15c3d3bd04acf0c95aa1f24bd7a7e564ce6f103a6c17aa3170c8359` |
| 16 | `def` | [sqrtTwoEstimateSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoestimatesymbol--a89df793ca135c59e28bbc0b.md) | 168 | `declaration-track:a89df793ca135c59e28bbc0b2cd337bdbc5e21d7bc087ba99f66408d944a0373` |
| 17 | `def` | [sqrtTwoDomainSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwodomainsymbol--96d75d2ca35786a858a4c067.md) | 174 | `declaration-track:96d75d2ca35786a858a4c067a0aa0d86181a500e9901de026fea439a2b7b9b9e` |
| 18 | `def` | [sqrtTwoPrecisionSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoprecisionsymbol--63a1ccc85eef764f329b7e52.md) | 179 | `declaration-track:63a1ccc85eef764f329b7e522a136ae11424c31e7fd6b5fd308b76dc54ce4e2e` |
| 19 | `def` | [sqrtTwoAlgorithmSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoalgorithmsymbol--56fc72072c67531a8be1b62a.md) | 184 | `declaration-track:56fc72072c67531a8be1b62a90b3ca848e20bfecad9411bcd25b151536b6a293` |
| 20 | `def` | [sqrtTwoErrorModelSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwoerrormodelsymbol--dea73511ffe4971c9f74c97f.md) | 189 | `declaration-track:dea73511ffe4971c9f74c97fef4eb8f87d74bad226f2668362035540584a8d37` |
| 21 | `def` | [sqrtTwoNumericalSchema](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwonumericalschema--2343dba43f91c70d3523a235.md) | 195 | `declaration-track:2343dba43f91c70d3523a235f3cc94fec379d38a920efd9b0a991bfc6b4f9578` |
| 22 | `def` | [sqrtTwoIntervalArithmeticAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwointervalarithmeticauthority--ba6bb54e63be637f93b839ee.md) | 213 | `declaration-track:ba6bb54e63be637f93b839ee5581e653f1866e4c5b59193dfe25f222b45f8862` |
| 23 | `def` | [sqrtTwoIntervalCertificateAsAnalyticCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwointervalcertificateasanalyticcertificate--6c2425651ce6130c44cb416e.md) | 223 | `declaration-track:6c2425651ce6130c44cb416e96fa7322b05a6b69c3b563797b2c7e98e7f872ab` |
| 24 | `def` | [sqrtTwoIntervalContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwointervalcontext--137ced9b7f84574f8ac68565.md) | 230 | `declaration-track:137ced9b7f84574f8ac685658a14636cf42dd6061500db650a542d7187ce5a63` |
| 25 | `def` | [sqrtTwoIntervalClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwointervalclaim--5b95988a8758db3257d4db46.md) | 235 | `declaration-track:5b95988a8758db3257d4db464ec7ddbdae7ec079f438b5a3d85c04e9b50479f5` |
| 26 | `def` | [sqrtTwoMathlibProofCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrttwomathlibproofcertificate--3f49931c1d1ca4cc6dcd650e.md) | 244 | `declaration-track:3f49931c1d1ca4cc6dcd650e5c140340914b32d4bbca09a1cea389b10489ff6e` |
| 27 | `theorem` | [sqrt_two_interval_through_boundary_calculus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variantf013fa29e8f7b50eb98cc30d4474baa31c274084e1298a6a07fffe55a5c6703c.lean/declarations/sqrt-two-interval-through-boundary-calculus--5f16ce51146b24ec0091ab24.md) | 255 | `result-track:5f16ce51146b24ec0091ab2448cc8f9e11ddce49bf5fd1f4d9c97ab6a464683b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
