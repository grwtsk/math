# Verification target: GRWTSK.LinearAlgebra.Matrix.QuantumReadiness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6edbe8cf1a0bd0b26c91374fb9510c090ac7750d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Matrix/QuantumReadiness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6edbe8cf1a0bd0b26c91374fb9510c090ac7750d`.

Source path: `GRWTSK/LinearAlgebra/Matrix/QuantumReadiness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Matrix/QuantumReadiness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Spectral.Sheaf.SynchronizedSchurJet`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SteeringSystem](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/steeringsystem--789d9a317cdac0f81a4e2252.md) | 36 | `declaration-track:789d9a317cdac0f81a4e2252bfe0a538e250480316ee1e224536f28597ffff86` |
| 2 | `def` | [markedReflection](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/markedreflection--66cc0a419af147195de8884d.md) | 58 | `declaration-track:66cc0a419af147195de8884d7ef39dfae71c382b8210317034fe450b01a5e40d` |
| 3 | `def` | [referenceReflection](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/referencereflection--6d79ad74c7dbb65d58b5e761.md) | 62 | `declaration-track:6d79ad74c7dbb65d58b5e761316f04d7dc4998b6c4bf51576f008965c10d8743` |
| 4 | `def` | [grover](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/grover--bdbd55e99d71df4c9231bb9f.md) | 66 | `declaration-track:bdbd55e99d71df4c9231bb9f8bec1c302301886a8cc65881c28735aa7dbad20a` |
| 5 | `theorem` | [markedReflection_sigma](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/markedreflection-sigma--2af4d1387973798d26c5bfa8.md) | 69 | `result-track:2af4d1387973798d26c5bfa8df7a30aacf90844d506b4689b4081366973cd123` |
| 6 | `theorem` | [markedReflection_tau](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/markedreflection-tau--1642113da14ee73c06ca7057.md) | 88 | `result-track:1642113da14ee73c06ca70579c12b1408e6b78e8679a894d33dbb42d52568b30` |
| 7 | `theorem` | [referenceReflection_sigma](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/referencereflection-sigma--71ce0262632178edb31e2ea6.md) | 107 | `result-track:71ce0262632178edb31e2ea6184357abb07849a0349eb9499da212618c92f8d1` |
| 8 | `theorem` | [referenceReflection_tau](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/referencereflection-tau--e89c7fc28b71cbcf137a475b.md) | 126 | `result-track:e89c7fc28b71cbcf137a475bdfae875cbc53f5d6984c2e077daf1dff8956ccd8` |
| 9 | `theorem` | [grover_sigma](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/grover-sigma--184958b62957014a5cbb7950.md) | 146 | `result-track:184958b62957014a5cbb79507e722e3f174225808c670e8da0862ba4ea9663e5` |
| 10 | `theorem` | [grover_tau](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/grover-tau--fca00f1bafd65c286787301f.md) | 177 | `result-track:fca00f1bafd65c286787301fb25681b2cb17b0c823a01a8e05ae44bd071ec66d` |
| 11 | `structure` | [TensorEmbeddingCertificate](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/tensorembeddingcertificate--45fed3a67770638a31f6e9b3.md) | 210 | `declaration-track:45fed3a67770638a31f6e9b30976790534c0760d1dccb444f60ed5c2972f9216` |
| 12 | `structure` | [BlockEncodingCertificate](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/blockencodingcertificate--2922ddeb6a51dca9909dd810.md) | 217 | `declaration-track:2922ddeb6a51dca9909dd8107d7ff8f903b3bf1b55d576be6e9e58f04a4db47e` |
| 13 | `def` | [optionScore](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/optionscore--aff76403734fbb56ad01f012.md) | 234 | `declaration-track:aff76403734fbb56ad01f012ce7e13c5145c6a23937309db6abcd4bd05bcf002` |
| 14 | `structure` | [ReadinessProfile](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/readinessprofile--021e96203490778e32ccd83b.md) | 242 | `declaration-track:021e96203490778e32ccd83b58cdfbe1a9af000da174342e3243b2ae915fa66f` |
| 15 | `def` | [score](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/score--bd9dd859d9517e83af0c26bd.md) | 258 | `declaration-track:bd9dd859d9517e83af0c26bdaa46f76e4e9b9354c8226bda3db53ca55fd3979e` |
| 16 | `def` | [Better](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/QuantumReadiness.lean/declarations/better--17c6c6d32999381c6450c3d9.md) | 268 | `declaration-track:17c6c6d32999381c6450c3d973584fa8669f0ac03fdbbc91d1198272f9ce7e4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
