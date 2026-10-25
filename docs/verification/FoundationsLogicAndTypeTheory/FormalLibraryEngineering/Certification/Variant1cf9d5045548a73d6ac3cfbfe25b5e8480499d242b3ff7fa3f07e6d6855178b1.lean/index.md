# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certification.Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fd8c9f5719a01baf375b7e2b05c580dcfc7a644",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fd8c9f5719a01baf375b7e2b05c580dcfc7a644`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertificateFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/certificatefamily--6f05f2c5f73e438a8c3772a9.md) | 31 | `declaration-track:6f05f2c5f73e438a8c3772a93e4aefe992ba99b8b1ae1d4c9ef697e8b621602c` |
| 2 | `def` | [Equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/equivalent--5ff40615ae4f11d4f13a212e.md) | 42 | `declaration-track:5ff40615ae4f11d4f13a212e3793a074ae7f8545a8edcb8d3454a31850caaeba` |
| 3 | `theorem` | [equivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/equivalent-refl--974a9fb4280b8254e87d7b5f.md) | 45 | `result-track:974a9fb4280b8254e87d7b5f0c481d182793b7084031daee59bb940bd9fc0250` |
| 4 | `theorem` | [equivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/equivalent-symm--0a96d4047e7018a6895dd49a.md) | 49 | `result-track:0a96d4047e7018a6895dd49ae89bbc91c5a148eab50d1f2828ee7f95bd7f0b96` |
| 5 | `theorem` | [equivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/equivalent-trans--f0237f9ab0a7e990dab253ed.md) | 54 | `result-track:f0237f9ab0a7e990dab253ed3bfb94ea63eb53f828c3202537ec1cd3475d1945` |
| 6 | `structure` | [SufficientRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/sufficientrepresentation--f1cf91468fc8459ecaf2c82f.md) | 64 | `declaration-track:f1cf91468fc8459ecaf2c82f1a24effd79ca3fb55787ea70e6f4eed5e3c39d32` |
| 7 | `def` | [FactorsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/factorsthrough--5a010ff2703c2d6c0449fff7.md) | 76 | `declaration-track:5a010ff2703c2d6c0449fff77dcddcbc06392e33b35c8a789351a361368e17d8` |
| 8 | `def` | [IsMinimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/isminimal--e40a218edee43fd72cb54f11.md) | 81 | `declaration-track:e40a218edee43fd72cb54f11b1dd4083989e15813353dfdd0bdb60e9e1819d7f` |
| 9 | `theorem` | [equivalent_of_compress_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/equivalent-of-compress-eq--88b2add392bf01ff49f15436.md) | 84 | `result-track:88b2add392bf01ff49f15436ca5d4137cf174b5e9ca67bb0a389dcc501c66adc` |
| 10 | `theorem` | [factor_of_minimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/factor-of-minimal--dadeb5e0e9ab62331f401e3c.md) | 92 | `result-track:dadeb5e0e9ab62331f401e3c827ba8ce20295d09e0904162f6981db25ad086ab` |
| 11 | `structure` | [StructuralQuine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/structuralquine--8de8946e573b407802586e50.md) | 102 | `declaration-track:8de8946e573b407802586e50e98de00e5411e809fed720ef135c3a916b625c11` |
| 12 | `def` | [project](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/project--d0973a243c626d7d460a656d.md) | 115 | `declaration-track:d0973a243c626d7d460a656d0864a09c17d84573d6c89b8976ead575ba9793d4` |
| 13 | `theorem` | [project_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/project-idempotent--09a175bc792b3a0aed271426.md) | 118 | `result-track:09a175bc792b3a0aed27142637aeb9dad4a9fe1d066aca136a8de85d42a31d64` |
| 14 | `theorem` | [project_certificate_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/project-certificate-equivalent--5a30368ca76d067f0703f9c3.md) | 123 | `result-track:5a30368ca76d067f0703f9c3d12053f7fd9332c32082242a63bc3df57cd554d8` |
| 15 | `theorem` | [quotient_factors_through](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1.lean/declarations/quotient-factors-through--c116069e35030673b8100fa7.md) | 127 | `result-track:c116069e35030673b8100fa79e03c890e360619da21d7fcb6340866dd2de9058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
