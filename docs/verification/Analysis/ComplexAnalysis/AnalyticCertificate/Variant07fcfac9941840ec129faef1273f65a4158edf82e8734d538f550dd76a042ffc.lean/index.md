# Verification target: GRWTSK.Analysis.ComplexAnalysis.AnalyticCertificate.Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e418f53026b4bd9bbb239099908aadd06bacff8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e418f53026b4bd9bbb239099908aadd06bacff8`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalAnalyticCertificatePredicates](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/localanalyticcertificatepredicates--11c9cb3a84cb99ede79fd155.md) | 35 | `declaration-track:11c9cb3a84cb99ede79fd155be90a546d89147d79079ec5f4c4fc9279e431087` |
| 2 | `def` | [IsLocalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/islocalanalyticcertificate--bc8f67de8fa03e49dc5c6e9f.md) | 43 | `declaration-track:bc8f67de8fa03e49dc5c6e9f229bde3d04d93a70649fe3bb89e05da6d0291a3b` |
| 3 | `def` | [HasLocalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/haslocalanalyticcertificate--d7dde1906531322ed288ff36.md) | 54 | `declaration-track:d7dde1906531322ed288ff36672f871d751599b66d029dafc2e402ddc767203e` |
| 4 | `theorem` | [local_certificate_requires_membership](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/local-certificate-requires-membership--dabfa65fd137c0e8ff2f6ee9.md) | 61 | `result-track:dabfa65fd137c0e8ff2f6ee9f7c651a88a0f555a31e84b60cb03550d1e5701c3` |
| 5 | `theorem` | [local_certificate_requires_locality](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/local-certificate-requires-locality--122d26f07c9f8ca157d64f93.md) | 69 | `result-track:122d26f07c9f8ca157d64f93c963a7ccb5e83c54f901f5f30dd7467cc0f71ec6` |
| 6 | `theorem` | [local_certificate_requires_representation](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/local-certificate-requires-representation--2c33add2b9cadcf35a5f9802.md) | 77 | `result-track:2c33add2b9cadcf35a5f98023db7efa8f90fdf7ea23450f3b8a32ba1a1277e34` |
| 7 | `theorem` | [local_certificate_requires_convergence](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/local-certificate-requires-convergence--6435e06467f4f1dacd30e32e.md) | 85 | `result-track:6435e06467f4f1dacd30e32e72a713ebc065323966489ec086ecb664b141fdb8` |
| 8 | `theorem` | [local_certificate_requires_identification](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/local-certificate-requires-identification--fd019313803e8b023e484d4e.md) | 93 | `result-track:fd019313803e8b023e484d4ee8e455331e9d886174f60349cf07c351bd19ee46` |
| 9 | `structure` | [UniversalLocalAnalyticTheoremSchema](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/universallocalanalytictheoremschema--ca8789022a4d56c07db7adac.md) | 105 | `declaration-track:ca8789022a4d56c07db7adac81d61cffb3936f26ea2b7f8cb7a174a84cc417b0` |
| 10 | `theorem` | [universal_local_analytic_iff_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/universal-local-analytic-iff-certificate--1c6a5655c631d44920c1c7ff.md) | 113 | `result-track:1c6a5655c631d44920c1c7fff2586ef25a869f08244b0e18cd8a5b1c9345cddf` |
| 11 | `theorem` | [positive_local_certificate_implies_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/positive-local-certificate-implies-analytic--e84e1598e3d4bab547cdbf2e.md) | 121 | `result-track:e84e1598e3d4bab547cdbf2e36e07b92f670cdc18afe3bf0701e92cbf3dc3b12` |
| 12 | `theorem` | [analytic_implies_positive_local_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/analytic-implies-positive-local-certificate--d528f3e5247e0fe63273e8f6.md) | 128 | `result-track:d528f3e5247e0fe63273e8f6ab7beab4ca22e01869bb378ffdff608bb30a5957` |
| 13 | `structure` | [GlobalAnalyticCertificatePredicates](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/globalanalyticcertificatepredicates--0e3ecc84d097b96ee85e71f6.md) | 136 | `declaration-track:0e3ecc84d097b96ee85e71f64d6ea6ff953a79e80b37b9938f816c818c1db476` |
| 14 | `structure` | [GlobalAnalyticCertificateData](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/globalanalyticcertificatedata--31c5edab53b11af8726cce47.md) | 146 | `declaration-track:31c5edab53b11af8726cce47bd5d14870a804b707ee21218dcd431a22924cdd4` |
| 15 | `def` | [IsGlobalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/isglobalanalyticcertificate--16c758e8ce61ef45dd870dca.md) | 156 | `declaration-track:16c758e8ce61ef45dd870dcabb8537ae915aa9f5d6b9f55d76d05e34e6addb23` |
| 16 | `def` | [HasGlobalAnalyticCertificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/hasglobalanalyticcertificate--a21faddb03cd00ea2d934ba0.md) | 170 | `declaration-track:a21faddb03cd00ea2d934ba0aa3e7b8ebd3c3928e3de276b846c10986dba02b7` |
| 17 | `theorem` | [global_certificate_requires_cover](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/global-certificate-requires-cover--dff8252efef3e60b0324c35e.md) | 177 | `result-track:dff8252efef3e60b0324c35e2f6cca815f983c8a16eae183419a8f4a4217b2ff` |
| 18 | `theorem` | [global_certificate_requires_all_local_clauses](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/global-certificate-requires-all-local-clauses--bb9e96eaf61993313ffa2a06.md) | 185 | `result-track:bb9e96eaf61993313ffa2a064d70b3a9c91a62b254baec6dec8aefb2c2bd0f42` |
| 19 | `theorem` | [global_certificate_requires_locality](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/global-certificate-requires-locality--3a63dac325e55045277a75f5.md) | 196 | `result-track:3a63dac325e55045277a75f5480c9671b3cb5ecfd77dac08bbe78c04f0b0dbb4` |
| 20 | `theorem` | [global_certificate_requires_representation](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/global-certificate-requires-representation--7d1f21f545081f250c16ea26.md) | 204 | `result-track:7d1f21f545081f250c16ea26045065705df40ece413fbd1a442905efb0043c0e` |
| 21 | `theorem` | [global_certificate_requires_convergence](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/global-certificate-requires-convergence--3a1af2fc07d5720f19eb948e.md) | 212 | `result-track:3a1af2fc07d5720f19eb948ef9c37b8dca1ec8b76ae406e23ad93cc63ff36f19` |
| 22 | `theorem` | [global_certificate_requires_identification](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/global-certificate-requires-identification--fff9665dd4033ceabab50916.md) | 220 | `result-track:fff9665dd4033ceabab50916b73b5c964685453e4ac4326c88d353b9667fd0bd` |
| 23 | `theorem` | [global_certificate_requires_compatibility](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/global-certificate-requires-compatibility--a1f5e2d182fc60fb9d69708f.md) | 228 | `result-track:a1f5e2d182fc60fb9d69708fd9d7d50095cf5ed593ad55384fb8de62a6abd07e` |
| 24 | `structure` | [UniversalGlobalAnalyticTheoremSchema](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/universalglobalanalytictheoremschema--9b5d93c5b1127ebff6c50831.md) | 240 | `declaration-track:9b5d93c5b1127ebff6c508316d5252c554415f1deff88b1407d7699b7cc90fcd` |
| 25 | `theorem` | [universal_global_analytic_iff_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/universal-global-analytic-iff-certificate--9fe9d7c794c16efb1a40c853.md) | 248 | `result-track:9fe9d7c794c16efb1a40c8533c93bbf425f8aa04435ddab7e498939c57468a63` |
| 26 | `theorem` | [positive_global_certificate_implies_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/positive-global-certificate-implies-analytic--50722fc5f240cb0366b044b5.md) | 256 | `result-track:50722fc5f240cb0366b044b5b114273b550d9139c1947e2098d73c4d3244d7c7` |
| 27 | `theorem` | [analytic_implies_positive_global_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean/declarations/analytic-implies-positive-global-certificate--129c6e9f562e8631b3d0f228.md) | 263 | `result-track:129c6e9f562e8631b3d0f22810e3f2e7937fa3bcd1540f3207807326fc761178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
