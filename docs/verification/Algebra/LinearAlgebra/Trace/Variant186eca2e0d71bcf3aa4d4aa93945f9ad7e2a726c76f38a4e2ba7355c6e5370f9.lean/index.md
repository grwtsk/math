# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13682d753a2bf7a1d3e111eb3ed86c5724fe6260",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13682d753a2bf7a1d3e111eb3ed86c5724fe6260`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.MatrixFiberCrossedProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.SpectralOperator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReducedTraceMode](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/reducedtracemode--b10467c0ffe1bfd26ce26b2b.md) | 27 | `declaration-track:b10467c0ffe1bfd26ce26b2b5b41d33f8f43edce2d8f615c374df4f8a326085f` |
| 2 | `def` | [ReducedTraceMode.requiresCentrality](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/reducedtracemode-requirescentrality--72a733feb2933ba6324402d7.md) | 33 | `declaration-track:72a733feb2933ba6324402d73d35f803fa77b8c78b907c21688c88901939fca8` |
| 3 | `def` | [ReducedTraceMode.requiresNormalization](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/reducedtracemode-requiresnormalization--68e3e24df03407599e357ffd.md) | 39 | `declaration-track:68e3e24df03407599e357ffd6e0d40558a2f408e410ffc646aa60c5d9f25b108` |
| 4 | `structure` | [FiniteMatrixStarAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/finitematrixstaralgebra--3491312f26501c70a9cbf9c7.md) | 45 | `declaration-track:3491312f26501c70a9cbf9c7d537bc1ef7536e6e9f5fad00c20f5344e61aebc3` |
| 5 | `structure` | [InvariantProjectionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/invariantprojectioncertificate--c3936c6536eb2e14fc08dbb1.md) | 69 | `declaration-track:c3936c6536eb2e14fc08dbb1add18cc5e989ea52a1703dc1119bd345871c3038` |
| 6 | `theorem` | [InvariantProjectionCertificate.centralNormalizationNonzero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/invariantprojectioncertificate-centralnormalizationnonzero--47d740d7b1dd359e5619dfe9.md) | 104 | `result-track:47d740d7b1dd359e5619dfe93f70fa2b57065db69865cb7d6ef12e41a03b90a8` |
| 7 | `theorem` | [InvariantProjectionCertificate.complement_mem](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/invariantprojectioncertificate-complement-mem--5f4ef3ccdf08890e3313e522.md) | 112 | `result-track:5f4ef3ccdf08890e3313e52291c1d358557b950f20c31b162ad6ad6f3e21fdd3` |
| 8 | `theorem` | [InvariantProjectionCertificate.corner_mem](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/invariantprojectioncertificate-corner-mem--6f588f7df41f0ba6b1c469d1.md) | 125 | `result-track:6f588f7df41f0ba6b1c469d1d96e13bc67ed2148d5122e860f78cad1a51a4e48` |
| 9 | `abbrev` | [ReducedTraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/reducedtracecertificate--866c198e463fd68ae0765604.md) | 143 | `declaration-track:866c198e463fd68ae076560468edc5fd943b930f949aaf4ffb1881030280eee8` |
| 10 | `inductive` | [SpectralTransformClass](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/spectraltransformclass--8947fa04198ac79fc4cb1413.md) | 146 | `declaration-track:8947fa04198ac79fc4cb1413a80256cc9a673f1f1b37468e9aa54376466edd99` |
| 11 | `structure` | [SpectralTestTransform](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/spectraltesttransform--af95a534259b1920b13a954a.md) | 154 | `declaration-track:af95a534259b1920b13a954ae8730a71b2722eee63e3f87cc64b66b5941c343d` |
| 12 | `theorem` | [SpectralTestTransform.displacement_le](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/spectraltesttransform-displacement-le--85c7e3be203abc9136aa4efa.md) | 188 | `result-track:85c7e3be203abc9136aa4efa12bc76edf973e76c64582b2d41d9b79c63768ef0` |
| 13 | `def` | [normalizedCornerTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/normalizedcornertrace--7e7a87d7ba905ed2dd986ec3.md) | 209 | `declaration-track:7e7a87d7ba905ed2dd986ec3aa57219a711c96d48f771849f12edeeffbb3b8bf` |
| 14 | `def` | [reducedMatrixTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/reducedmatrixtrace--015759ce6e2ff1ed1fdffe4a.md) | 219 | `declaration-track:015759ce6e2ff1ed1fdffe4a837537fde4df9630a2eb019fdc4124a57f85c9cf` |
| 15 | `def` | [InvariantProjectionCertificate.reducedDomain](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/invariantprojectioncertificate-reduceddomain--188a9bf2313f0e5ef3fdc932.md) | 244 | `declaration-track:188a9bf2313f0e5ef3fdc9329cd6c9876d106d475d47eb137769689813ea8b2a` |
| 16 | `structure` | [ReducedTraceLawCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/reducedtracelawcertificate--c49fd0e812045e0f47e62410.md) | 261 | `declaration-track:c49fd0e812045e0f47e624109febc2308c57c56c4321dbbdb78efbc57182f53e` |
| 17 | `def` | [reducedTraceObservable](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/reducedtraceobservable--ffb077acf931f4223a1a4e67.md) | 294 | `declaration-track:ffb077acf931f4223a1a4e67035a5984cedf70f479fa783206c723156ac6511a` |
| 18 | `def` | [normalizedReducedTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/normalizedreducedtrace--e166619ab6544cd6830ffe85.md) | 311 | `declaration-track:e166619ab6544cd6830ffe85550553885da8f240939f3a867e6e174aade208dc` |
| 19 | `structure` | [ArithmeticBitfieldTraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/arithmeticbitfieldtracecertificate--1ea6b9a5b8f10ba2081cf92e.md) | 330 | `declaration-track:1ea6b9a5b8f10ba2081cf92ee3647ad38b42216a5d9a9222a495dd68e670309e` |
| 20 | `abbrev` | [ArithmeticInvariantTraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/arithmeticinvarianttracecertificate--1a5b497ce7d9bbb4f269a682.md) | 372 | `declaration-track:1a5b497ce7d9bbb4f269a68248a777718c4c028dd740763a578963b37ea6905c` |
| 21 | `def` | [ArithmeticBitfieldTraceCertificate.rawTraceTerm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/arithmeticbitfieldtracecertificate-rawtraceterm--2735768e85c3e097b37f73b7.md) | 375 | `declaration-track:2735768e85c3e097b37f73b79d5017e5e661817d85e4bcd4170105a079475888` |
| 22 | `def` | [ArithmeticBitfieldTraceCertificate.traceTerm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant186eca2e0d71bcf3aa4d4aa93945f9ad7e2a726c76f38a4e2ba7355c6e5370f9.lean/declarations/arithmeticbitfieldtracecertificate-traceterm--7319b687311aeba46de96872.md) | 391 | `declaration-track:7319b687311aeba46de96872c6294542c9c55bde118ebc091051872d6292d2e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
