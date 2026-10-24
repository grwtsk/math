# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundedAnalyticCertificate.Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fc98d209931a642fcbfcc34234132bbda207010",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fc98d209931a642fcbfcc34234132bbda207010`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.FunctionalAnalyticLinearAlgebra` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundedCertificateTerm](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/boundedcertificateterm--71e884b0c7d68583762ae261.md) | 23 | `declaration-track:71e884b0c7d68583762ae261b80387f769ea9d9f66b294c42bd71101b376168e` |
| 2 | `structure` | [IntrinsicTermSpec](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/intrinsictermspec--00370b539e89f76dad49af06.md) | 37 | `declaration-track:00370b539e89f76dad49af061088f1e8027a5470c2cc60065e5444849f13e795` |
| 3 | `def` | [allBoundedCertificateTerms](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/allboundedcertificateterms--f7477cade2e58c92d37ac1f7.md) | 46 | `declaration-track:f7477cade2e58c92d37ac1f7bdc975b9e36f9a0b208475ada5beffa1d221270e` |
| 4 | `theorem` | [all_bounded_certificate_terms_length](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/all-bounded-certificate-terms-length--07e3c2d1c83faaf7a4142927.md) | 56 | `result-track:07e3c2d1c83faaf7a4142927062ea60077218f94688aabd1eab54c834c3c07cd` |
| 5 | `theorem` | [all_bounded_certificate_terms_complete](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/all-bounded-certificate-terms-complete--247082c34d168577b63711a1.md) | 60 | `result-track:247082c34d168577b63711a18f1b2f9f4f7dfa6f7a4806565253002c3aff3a27` |
| 6 | `def` | [boundedCertificateTermSpec](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/boundedcertificatetermspec--e20275548e3d44b67925b2f3.md) | 66 | `declaration-track:e20275548e3d44b67925b2f30aa5fe054fff0b0affd6b90b7ee63635e026c9b3` |
| 7 | `theorem` | [bounded_certificate_term_spec_has_same_term](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/bounded-certificate-term-spec-has-same-term--b5bbe9fea00ee67d30ca2ee3.md) | 125 | `result-track:b5bbe9fea00ee67d30ca2ee38f9614ccc8d87819e661dd30221ab31a3f34378d` |
| 8 | `def` | [GlobalLocalAnalyticSectionFamily](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/globallocalanalyticsectionfamily--16ea2b41b8c5c7221d253c92.md) | 144 | `declaration-track:16ea2b41b8c5c7221d253c923e2fc5c6277a1511a7ab552e681ff34dd156b5c0` |
| 9 | `def` | [GlobalSectionCertificateFiber](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/globalsectioncertificatefiber--6847d81488b1bc49811f3847.md) | 156 | `declaration-track:6847d81488b1bc49811f38475dc31c59a63e8c4f3b46bc2726aa335b3f7260f1` |
| 10 | `theorem` | [section_certificate_requires_local_analytic_family](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/section-certificate-requires-local-analytic-family--5b74c842cdff3dfe59d22bc2.md) | 167 | `result-track:5b74c842cdff3dfe59d22bc2553f66091a014ea6ff386840c9377ed7a83aa973` |
| 11 | `theorem` | [section_certificate_requires_equalizer](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/section-certificate-requires-equalizer--bdd15f097018b6241c3fb7a7.md) | 177 | `result-track:bdd15f097018b6241c3fb7a743290aa7827f03509e29a1632a55ccd6e918f2b7` |
| 12 | `theorem` | [section_certificate_requires_identification](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/section-certificate-requires-identification--5e770ed3ad35166d8806c1e4.md) | 187 | `result-track:5e770ed3ad35166d8806c1e4804dbed05af56d012a3e362f8571a54ffa6c6f9b` |
| 13 | `theorem` | [coefficient_fiber_to_section_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/coefficient-fiber-to-section-certificate--690f70d84407151c2f205caf.md) | 197 | `result-track:690f70d84407151c2f205caf2ab66416318f0927b47154da7b0ed2b5e3dcb6db` |
| 14 | `structure` | [BoundedSectionCertificateMechanism](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/boundedsectioncertificatemechanism--9e54e5ebb0e71e8c49873cf3.md) | 232 | `declaration-track:9e54e5ebb0e71e8c49873cf34997ff58f6fb51379d2cfb3296aa2746e2720d68` |
| 15 | `def` | [BoundedSectionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/boundedsectioncertificate--2a886b14147bd9d50c1958b2.md) | 250 | `declaration-track:2a886b14147bd9d50c1958b2a24c3e2a144f5d5fee1b226d035f82ee9b23a0c1` |
| 16 | `theorem` | [generator_data_gives_bounded_section_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/generator-data-gives-bounded-section-certificate--efd4a8135fced3e7dc758d66.md) | 260 | `result-track:efd4a8135fced3e7dc758d66961105c60c7e0cfdae3950a864dee644ddb4e53d` |
| 17 | `theorem` | [bounded_section_certificate_implies_global_membership](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/bounded-section-certificate-implies-global-membership--3109b24c937ab209e7b53ce3.md) | 270 | `result-track:3109b24c937ab209e7b53ce33c182528e6728d8f1338733acf9efe716868a833` |
| 18 | `theorem` | [bounded_section_certificate_produces_compatible_identifying_sections](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/bounded-section-certificate-produces-compatible-identifying-sections--ad87eb3e713d90cd430e48f9.md) | 281 | `result-track:ad87eb3e713d90cd430e48f9c76ce57e783176315e6ed9c6c23ebe926ea014aa` |
| 19 | `structure` | [BoundedCoefficientCertificateMechanism](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/boundedcoefficientcertificatemechanism--dd4c7146a7077f23c4fa2898.md) | 298 | `declaration-track:dd4c7146a7077f23c4fa2898076c3947c493a6af86b69a1044aaf19fe87aab05` |
| 20 | `def` | [BoundedCoefficientCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/boundedcoefficientcertificate--d94a310f64141ce6a1d37a01.md) | 316 | `declaration-track:d94a310f64141ce6a1d37a018ee2d4c7f9760307f5c0b18a0869f61494eb6609` |
| 21 | `theorem` | [generator_data_gives_bounded_coefficient_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/generator-data-gives-bounded-coefficient-certificate--29a11a0ae7d3790c065469b5.md) | 326 | `result-track:29a11a0ae7d3790c065469b5b7688bc6898991ea865db02ab9b282239d69e452` |
| 22 | `theorem` | [bounded_coefficient_certificate_produces_section_certificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/bounded-coefficient-certificate-produces-section-certificate--70f48af4e3d5193eb3f32439.md) | 336 | `result-track:70f48af4e3d5193eb3f32439a9fb5cccfdb168af069ed40608c0655b3976cdef` |
| 23 | `theorem` | [bounded_coefficient_certificate_implies_global_membership](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificate/Variante644989a1e67f3f427b2cb4cc2573df5746f3944bd1bb411eeaf696c787218bb.lean/declarations/bounded-coefficient-certificate-implies-global-membership--a459601faefb91671c06264e.md) | 350 | `result-track:a459601faefb91671c06264ee4972b84d2b4f3230b9114917e8831ef298e7f55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
