# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundedAnalyticCertificate.Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5b9cdcb141a3442bf3651990223de37c09c8591",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5b9cdcb141a3442bf3651990223de37c09c8591`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.FunctionalAnalyticLinearAlgebra` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundedCertificateTerm](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/boundedcertificateterm--761c16458d4ba44d1a297369.md) | 31 | `declaration-track:761c16458d4ba44d1a297369e1f228a4e607a6072245f5e2d48997463f5c3394` |
| 2 | `structure` | [IntrinsicTermSpec](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/intrinsictermspec--e2ac2c19b1116d289a217f19.md) | 45 | `declaration-track:e2ac2c19b1116d289a217f1947f7e4c316844bbfcdfe5fb4f05c171fec6f45a6` |
| 3 | `def` | [allBoundedCertificateTerms](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/allboundedcertificateterms--b26bff0b9053a9842ed91d9e.md) | 54 | `declaration-track:b26bff0b9053a9842ed91d9e04ce5df347b965c4602500d1c6c17bb89c1ab948` |
| 4 | `theorem` | [all_bounded_certificate_terms_length](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/all-bounded-certificate-terms-length--c094744db1c9c6950f347d16.md) | 64 | `result-track:c094744db1c9c6950f347d1684a150ec2ec2a3c1b2a3c6e07b2da6ab3586dd75` |
| 5 | `theorem` | [all_bounded_certificate_terms_complete](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/all-bounded-certificate-terms-complete--5dc053501e9c76b56011464b.md) | 68 | `result-track:5dc053501e9c76b56011464b944c8e25328a01f0948b231b2f96ee45cd5db627` |
| 6 | `def` | [boundedCertificateTermSpec](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/boundedcertificatetermspec--352ac5bd8486f4b1edec8b06.md) | 74 | `declaration-track:352ac5bd8486f4b1edec8b067f7bd3facc9fc816b4a89cdb524d467ad913988e` |
| 7 | `theorem` | [bounded_certificate_term_spec_has_same_term](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/bounded-certificate-term-spec-has-same-term--962f0e05255168059b4dba85.md) | 133 | `result-track:962f0e05255168059b4dba8591101a9c59717bcff9583c1a5c232827a91b2efa` |
| 8 | `def` | [GlobalLocalAnalyticSectionFamily](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/globallocalanalyticsectionfamily--4890da4d7319a65028a2441a.md) | 152 | `declaration-track:4890da4d7319a65028a2441a52abc485c5be5809b4b12697a022ced25431be63` |
| 9 | `def` | [GlobalSectionCertificateFiber](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/globalsectioncertificatefiber--ea36378fa47f81cee8db5dd8.md) | 164 | `declaration-track:ea36378fa47f81cee8db5dd8cf9e6437d7626fe94a5ed3fbef869a340fdb186e` |
| 10 | `theorem` | [section_certificate_requires_local_analytic_family](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/section-certificate-requires-local-analytic-family--36385de1c2eedaf29ebfb8d3.md) | 175 | `result-track:36385de1c2eedaf29ebfb8d392e267e31217785549c882e33c923f27932e4d53` |
| 11 | `theorem` | [section_certificate_requires_equalizer](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/section-certificate-requires-equalizer--caad96310a5388a0ead68b4c.md) | 185 | `result-track:caad96310a5388a0ead68b4c1c4dd473c7d25077038e34948784f8af92622bc8` |
| 12 | `theorem` | [section_certificate_requires_identification](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/section-certificate-requires-identification--cf8897d8983e054769c7d88d.md) | 195 | `result-track:cf8897d8983e054769c7d88d0055c2d223676badf3088807ebc6fa6868f27a34` |
| 13 | `theorem` | [coefficient_fiber_to_section_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/coefficient-fiber-to-section-certificate--a54d24cc39f109b461158f06.md) | 205 | `result-track:a54d24cc39f109b461158f06e4d9c4a29af1b77182257be06fed1e5928efec28` |
| 14 | `structure` | [BoundedSectionCertificateMechanism](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/boundedsectioncertificatemechanism--eb9e3e0cfe318a83fb5343e4.md) | 240 | `declaration-track:eb9e3e0cfe318a83fb5343e4213542086d99dd9b857ffde17649d82084291adc` |
| 15 | `def` | [BoundedSectionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/boundedsectioncertificate--53057caeac1d5e3d39e5f5a2.md) | 258 | `declaration-track:53057caeac1d5e3d39e5f5a2be18dfeca7954dcc5edb73461a1084ab98837c15` |
| 16 | `theorem` | [generator_data_gives_bounded_section_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/generator-data-gives-bounded-section-certificate--b7196327c28a7b04daf868d9.md) | 268 | `result-track:b7196327c28a7b04daf868d974d629d7d27c1e0a9527aa981baa208260dbf15f` |
| 17 | `theorem` | [bounded_section_certificate_implies_global_membership](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/bounded-section-certificate-implies-global-membership--ab181a9dbc22020697cbd9ee.md) | 278 | `result-track:ab181a9dbc22020697cbd9eed65ffb55347437eef28f37c69ca2812f3b673e61` |
| 18 | `theorem` | [bounded_section_certificate_produces_compatible_identifying_sections](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/bounded-section-certificate-produces-compatible-identifying-sections--905800d50b2fbd0b5486955a.md) | 289 | `result-track:905800d50b2fbd0b5486955ab5025f3cc24f44bf8d65513bdd3227a2ef217a16` |
| 19 | `structure` | [BoundedCoefficientCertificateMechanism](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/boundedcoefficientcertificatemechanism--a805b197ec0ca588f7953030.md) | 306 | `declaration-track:a805b197ec0ca588f79530302b49afdb268b72847fe4c6f623f8797e7f27e17c` |
| 20 | `def` | [BoundedCoefficientCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/boundedcoefficientcertificate--7bfa588de26fc47638d02095.md) | 324 | `declaration-track:7bfa588de26fc47638d020952ac0eb41c8ac18208a12eaa8b0b1ea2c385ecb6a` |
| 21 | `theorem` | [generator_data_gives_bounded_coefficient_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/generator-data-gives-bounded-coefficient-certificate--adcf3e7694aa171c2fd53373.md) | 334 | `result-track:adcf3e7694aa171c2fd5337337a06764ad921fd8345657d16c339e9d2372eb8e` |
| 22 | `theorem` | [bounded_coefficient_certificate_produces_section_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/bounded-coefficient-certificate-produces-section-certificate--5f9d12ca2e91da18f4dd8a17.md) | 344 | `result-track:5f9d12ca2e91da18f4dd8a17e5c403f431352be77b63b89364f2e738265901b4` |
| 23 | `theorem` | [bounded_coefficient_certificate_implies_global_membership](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variantcb2bcc4ffe57ac84e063bae2ff22304949b51694f7cc3245b3268d7fc4888d08.lean/declarations/bounded-coefficient-certificate-implies-global-membership--b8e4aa26172a4aa76c93a21d.md) | 358 | `result-track:b8e4aa26172a4aa76c93a21d01d4ee4f2018e076770ea105e8af5323a7fab7c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
