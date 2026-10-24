# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundedAnalyticCertificateBitMatrix.Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5fd20b7dd1c3e86b9ab46d27e644c30719c9528",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5fd20b7dd1c3e86b9ab46d27e644c30719c9528`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.BoundedAnalyticCertificate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundedCertificateBitRow](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/boundedcertificatebitrow--da16cbf6c816a2a4b5a6cc15.md) | 19 | `declaration-track:da16cbf6c816a2a4b5a6cc1587caa3748a5852045d187548534ba15693bcd488` |
| 2 | `def` | [allBoundedCertificateBitRows](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/allboundedcertificatebitrows--84285ccd74dc40b493f8de1b.md) | 29 | `declaration-track:84285ccd74dc40b493f8de1bce0feb77e8ee9bd2fb61aa62e220c7698b5f3fe9` |
| 3 | `theorem` | [all_bounded_certificate_bit_rows_length](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/all-bounded-certificate-bit-rows-length--33f2b946451ebee1075d1f2e.md) | 38 | `result-track:33f2b946451ebee1075d1f2e6c04d196838d6494ed911e471e9915b398ec6d72` |
| 4 | `theorem` | [all_bounded_certificate_bit_rows_complete](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/all-bounded-certificate-bit-rows-complete--eb923d76baeeb97f3e80d66b.md) | 42 | `result-track:eb923d76baeeb97f3e80d66b5deea3ba787be137582171bab411a1ba092b1ba8` |
| 5 | `def` | [boundedCertificateBitRowCount](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/boundedcertificatebitrowcount--582c1c06d6ce34299fa154f0.md) | 48 | `declaration-track:582c1c06d6ce34299fa154f09e512deedab65225b60d2d75c4a5019e58aad714` |
| 6 | `structure` | [BoundedCertificateBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/boundedcertificatebitmatrix--5830bf0de1145eb016a9a4e1.md) | 59 | `declaration-track:5830bf0de1145eb016a9a4e1d00bd4930f509fdf8701f123fbb979e0b964cba3` |
| 7 | `def` | [BoundedCertificateBitMatrix.Accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/boundedcertificatebitmatrix-accepts--b1f9cbd0402649c6629e1332.md) | 69 | `declaration-track:b1f9cbd0402649c6629e1332cdbb792280d2c5161b9942fd5b09f1edfc4b60ee` |
| 8 | `def` | [allTrueBoundedCertificateBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/alltrueboundedcertificatebitmatrix--aa252a01d1de239a80559709.md) | 80 | `declaration-track:aa252a01d1de239a805597093a973f9ff691016b3df8ff61db6f636c002ea92d` |
| 9 | `theorem` | [all_true_bounded_certificate_bitmatrix_accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/all-true-bounded-certificate-bitmatrix-accepts--36a510b87e951c2031194d27.md) | 90 | `result-track:36a510b87e951c2031194d2709c34bf72aed06d41d4be351b4d1a11fac1693bb` |
| 10 | `theorem` | [bitmatrix_accepts_requires_generator_data](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-accepts-requires-generator-data--b1169fb32de6e48f5ca97a6b.md) | 97 | `result-track:b1169fb32de6e48f5ca97a6ba17e089e894658366ba75f09c7eeb719a1cbd496` |
| 11 | `theorem` | [bitmatrix_accepts_requires_generator_output](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-accepts-requires-generator-output--96b3781521bbebd181d24ac9.md) | 105 | `result-track:96b3781521bbebd181d24ac95b6243475e69ff6d0dcfab29bc43fb05f9649603` |
| 12 | `theorem` | [bitmatrix_accepts_requires_local_analytic](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-accepts-requires-local-analytic--a1bc147852f198c3993c6342.md) | 113 | `result-track:a1bc147852f198c3993c6342f0468b5326d236c3d4e930e5b5026461f85f0a60` |
| 13 | `theorem` | [bitmatrix_accepts_requires_overlap_equalizer](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-accepts-requires-overlap-equalizer--168d2aea04ab6fa23897bac5.md) | 121 | `result-track:168d2aea04ab6fa23897bac57166782c43b4a8b1b8194ce3f686943218d13b42` |
| 14 | `theorem` | [bitmatrix_accepts_requires_identification](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-accepts-requires-identification--293cbc9f9466d8632e85a7a9.md) | 129 | `result-track:293cbc9f9466d8632e85a7a9bfee8a2bfc8b7c1cca55e445d6aa028ba7a88e2b` |
| 15 | `theorem` | [bitmatrix_accepts_requires_globalization_gate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-accepts-requires-globalization-gate--f22adc95dc0807cae83308bd.md) | 137 | `result-track:f22adc95dc0807cae83308bd03ec639abfdcde0ef8ad06be9c57544b202204b3` |
| 16 | `def` | [bitmatrixOfSectionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrixofsectioncertificate--d67468d117d1c5e608d71a71.md) | 162 | `declaration-track:d67468d117d1c5e608d71a714c0c6ca2b04f2684399d2926888a8116a1530f94` |
| 17 | `theorem` | [bitmatrix_of_section_certificate_accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-of-section-certificate-accepts--c106320001f6fe2b6de86786.md) | 172 | `result-track:c106320001f6fe2b6de867860bdda0ac77901efa4c182ae87f041ef72785896a` |
| 18 | `def` | [bitmatrixOfCoefficientCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrixofcoefficientcertificate--f3b7656fefe4f4d8440d97f8.md) | 187 | `declaration-track:f3b7656fefe4f4d8440d97f884860ac534f2284bf079af01f4f879d80ff19bc8` |
| 19 | `theorem` | [bitmatrix_of_coefficient_certificate_accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bitmatrix-of-coefficient-certificate-accepts--e94e31d5768fb3491091b82e.md) | 197 | `result-track:e94e31d5768fb3491091b82ed56479136e449d25926ec15e946398ab12952ad5` |
| 20 | `theorem` | [bounded_section_certificate_yields_membership_and_accepting_bitmatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bounded-section-certificate-yields-membership-and-accepting-bitmatrix--c8a1ea3ca063841cc8f5f1e2.md) | 209 | `result-track:c8a1ea3ca063841cc8f5f1e26a7da81555f1a893c3babacc4b806a73e611de1b` |
| 21 | `theorem` | [bounded_coefficient_certificate_yields_membership_and_accepting_bitmatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variantae9cf39dc28bc89a62ddb31ef73b99e571e78c3a1f9379348d36f473c0fbec5a.lean/declarations/bounded-coefficient-certificate-yields-membership-and-accepting-bitmatri--74dcea9639aa4a8533059099.md) | 223 | `result-track:74dcea9639aa4a85330590999a95dd5accea28060caf9a854f97e731ce391f40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
