# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.EulerTransport.Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33570b3342ce93134ebd7b2a73b30c52fdffe3f0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33570b3342ce93134ebd7b2a73b30c52fdffe3f0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.SectionComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.EulerCharacteristic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SectionComplexTransport](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean/declarations/sectioncomplextransport--82509fbe9114f0fb459612dc.md) | 33 | `declaration-track:82509fbe9114f0fb459612dc53df0de35b63bf296e62c6f663d2698bc1b9f3a4` |
| 2 | `structure` | [EulerPreservingTransport](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean/declarations/eulerpreservingtransport--257752e506e64775fc6374ee.md) | 48 | `declaration-track:257752e506e64775fc6374ee63668c265e906bac9a7f94395ccc9292b64653ae` |
| 3 | `theorem` | [euler_preserving_transport_value_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean/declarations/euler-preserving-transport-value-eq--043b93fd318eae4fbbec078d.md) | 56 | `result-track:043b93fd318eae4fbbec078dc3cbf35204bcd4ffad2f487e56ff5741aab12f19` |
| 4 | `theorem` | [euler_preserving_transport_respects_differential](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean/declarations/euler-preserving-transport-respects-differential--844a29de8d9b90d65010ef52.md) | 62 | `result-track:844a29de8d9b90d65010ef52f845eac9c86b55c9e059d111d4ad99ab3e5c303e` |
| 5 | `theorem` | [euler_preserving_transport_quasi_iso_like](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/EulerTransport/Variant06999473ddd804ff567440d0c27731d0710a11975382fcb3284050732894d37b.lean/declarations/euler-preserving-transport-quasi-iso-like--aa59c1e3932c148ff49b9e52.md) | 68 | `result-track:aa59c1e3932c148ff49b9e52ad56af830e23f8ec2351573e74210a93e37465fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
