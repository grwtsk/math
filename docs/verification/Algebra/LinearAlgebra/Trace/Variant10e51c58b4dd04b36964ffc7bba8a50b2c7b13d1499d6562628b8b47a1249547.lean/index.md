# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f27cc03d0eeb629db303aa8cac18480a3ba3781e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f27cc03d0eeb629db303aa8cac18480a3ba3781e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.MatrixFiberCrossedProduct` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.SpectralOperator` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReducedTraceMode](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/reducedtracemode--ecad219bdb5b679b7296b31b.md) | 19 | `declaration-track:ecad219bdb5b679b7296b31bc01b42e7905f6487aefb347a2a272ee9d620fb1e` |
| 2 | `def` | [ReducedTraceMode.requiresCentrality](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/reducedtracemode-requirescentrality--6e4c0e3cbc3247ec4a2270e7.md) | 25 | `declaration-track:6e4c0e3cbc3247ec4a2270e7f01d9c015521eb8b7f57015eb9e9669390939607` |
| 3 | `def` | [ReducedTraceMode.requiresNormalization](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/reducedtracemode-requiresnormalization--5abd82b9e45aec69800ed1c0.md) | 31 | `declaration-track:5abd82b9e45aec69800ed1c0d3f30bf6a39285141fac6020c21521a77a176105` |
| 4 | `structure` | [FiniteMatrixStarAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/finitematrixstaralgebra--f2f6047e25c1319f8e4c37ff.md) | 37 | `declaration-track:f2f6047e25c1319f8e4c37ffcaea43f0c4110f6d0d350abcd4dcb9a156eb8bd0` |
| 5 | `structure` | [InvariantProjectionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/invariantprojectioncertificate--ff6840bbed9e76f5de93f908.md) | 61 | `declaration-track:ff6840bbed9e76f5de93f9087515bc197a255575c9cea78ff9f20578f6ba70cb` |
| 6 | `theorem` | [InvariantProjectionCertificate.centralNormalizationNonzero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/invariantprojectioncertificate-centralnormalizationnonzero--d9a9aa8c781627790c706fcf.md) | 96 | `result-track:d9a9aa8c781627790c706fcf8fa5b0d3477b5499a1d955f3ed670c34800dc9a0` |
| 7 | `theorem` | [InvariantProjectionCertificate.complement_mem](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/invariantprojectioncertificate-complement-mem--f15e2fa3a6aa31f0c9ac60a7.md) | 104 | `result-track:f15e2fa3a6aa31f0c9ac60a7de16f365c452f73ac5ac55b0fde923c6ebacdf41` |
| 8 | `theorem` | [InvariantProjectionCertificate.corner_mem](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/invariantprojectioncertificate-corner-mem--cea45587960cf92d455c8a5e.md) | 117 | `result-track:cea45587960cf92d455c8a5e840e58cf6b54e60f089b0d2dc4d7108c2ff9c077` |
| 9 | `abbrev` | [ReducedTraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/reducedtracecertificate--9b7c78c93d0d97963130c4f3.md) | 135 | `declaration-track:9b7c78c93d0d97963130c4f35d43d5e8dc8edc182ab65706f5bb3e3c237761ef` |
| 10 | `inductive` | [SpectralTransformClass](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/spectraltransformclass--af26c365954f4540cbd579c5.md) | 138 | `declaration-track:af26c365954f4540cbd579c5ee47d43dabfde2624404d1d09649a98bfccdb023` |
| 11 | `structure` | [SpectralTestTransform](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/spectraltesttransform--9aab9eccfc38ed8a5c76fc54.md) | 146 | `declaration-track:9aab9eccfc38ed8a5c76fc54f33d791b5c677f95f79e160e31610ceee05252a7` |
| 12 | `theorem` | [SpectralTestTransform.displacement_le](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/spectraltesttransform-displacement-le--d8815a34ea24557011eaeeaf.md) | 180 | `result-track:d8815a34ea24557011eaeeafac25ae2e6a68d1b9edb3fd88c7bb2dbbaca3f731` |
| 13 | `def` | [normalizedCornerTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/normalizedcornertrace--e07723816468e589117494a4.md) | 201 | `declaration-track:e07723816468e589117494a4c2f0222633b76acf21fafd9366aa0b23c08eb672` |
| 14 | `def` | [reducedMatrixTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/reducedmatrixtrace--8798eb5e95ee6539cd3dc27a.md) | 211 | `declaration-track:8798eb5e95ee6539cd3dc27a597f631bb3742ea2211d9613ba8ba7804406dbbb` |
| 15 | `def` | [InvariantProjectionCertificate.reducedDomain](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/invariantprojectioncertificate-reduceddomain--ee08382bd57c85072727ed2c.md) | 236 | `declaration-track:ee08382bd57c85072727ed2cd2673550356e4ea15b5e92a47f5f8f8830893afd` |
| 16 | `structure` | [ReducedTraceLawCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/reducedtracelawcertificate--13793485df9cad6686bbc8b7.md) | 253 | `declaration-track:13793485df9cad6686bbc8b773f8442d364f8cb415eb0f43094a12365d7343e1` |
| 17 | `def` | [reducedTraceObservable](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/reducedtraceobservable--6a0a8daeb8dede061776d7e4.md) | 286 | `declaration-track:6a0a8daeb8dede061776d7e46417f8deb4923d4c3149792001954b39712757c4` |
| 18 | `def` | [normalizedReducedTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/normalizedreducedtrace--d097447257818622ae1c1ff4.md) | 303 | `declaration-track:d097447257818622ae1c1ff4350d08357c25904b7617fbd071548eaec56fd47d` |
| 19 | `structure` | [ArithmeticBitfieldTraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/arithmeticbitfieldtracecertificate--10171f90802092589620929b.md) | 322 | `declaration-track:10171f90802092589620929b7ff7f60f2c7673350d3c9599e1c0c6e4ec3921fa` |
| 20 | `abbrev` | [ArithmeticInvariantTraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/arithmeticinvarianttracecertificate--09164a126ffee97e94dde4b0.md) | 364 | `declaration-track:09164a126ffee97e94dde4b0673aa1af9eb8c39b74069726ee2b7592a9c8ab3c` |
| 21 | `def` | [ArithmeticBitfieldTraceCertificate.rawTraceTerm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/arithmeticbitfieldtracecertificate-rawtraceterm--9f93bad8dac0b95150788583.md) | 367 | `declaration-track:9f93bad8dac0b95150788583f1f685f7ddf72ecb45190de1fe172f61a61a7e42` |
| 22 | `def` | [ArithmeticBitfieldTraceCertificate.traceTerm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant10e51c58b4dd04b36964ffc7bba8a50b2c7b13d1499d6562628b8b47a1249547.lean/declarations/arithmeticbitfieldtracecertificate-traceterm--e3a7e312dfe9a3247fc3c478.md) | 383 | `declaration-track:e3a7e312dfe9a3247fc3c478cd1eba897c48d05117d6a0eebc5069cd2587158b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
