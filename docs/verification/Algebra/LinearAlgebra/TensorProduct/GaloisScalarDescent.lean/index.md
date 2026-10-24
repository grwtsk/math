# Verification target: GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0751d298fefe79f8a5fc987922f18ec5b22fb35",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0751d298fefe79f8a5fc987922f18ec5b22fb35`.

Source path: `GRWTSK/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent`](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientInclusion](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/coefficientinclusion--33c599469126fc3d558706f1.md) | 41 | `declaration-track:33c599469126fc3d558706f1f9d502426bb2055735218a82d3e4e8d31152277c` |
| 2 | `theorem` | [coefficientInclusion_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/coefficientinclusion-tmul--16eba9edf69d273751e851e2.md) | 46 | `result-track:16eba9edf69d273751e851e2b8ac4166f6c4325474c66bb6404feb5862fbd7c6` |
| 3 | `theorem` | [coefficientInclusion_mem_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/coefficientinclusion-mem-basechange--939cdd26e02ff310c30e8961.md) | 50 | `result-track:939cdd26e02ff310c30e89611d58612e99eed606da935e0e76684c0b2f0e6d07` |
| 4 | `theorem` | [rationalPart_comap_coefficientInclusion](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/rationalpart-comap-coefficientinclusion--4428b575a589524d00eb9835.md) | 61 | `result-track:4428b575a589524d00eb98358865c9af9bac73a610ccc67afbd04073756fa340` |
| 5 | `theorem` | [tensor_defined_over_finiteGalois](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/tensor-defined-over-finitegalois--92ec59199418c575b46bd761.md) | 79 | `result-track:92ec59199418c575b46bd761717ec3008bb2e7b3b1d924fd764822a7e317a597` |
| 6 | `theorem` | [scalarConjugate_restrict](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/scalarconjugate-restrict--18a4a0293069cd22d6231eb3.md) | 96 | `result-track:18a4a0293069cd22d6231eb380e699ecb0651189468227ade408ff7088a114cd` |
| 7 | `theorem` | [galoisScalarDescent](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/galoisscalardescent--ef874f5070325549087af331.md) | 110 | `result-track:ef874f5070325549087af3318c73728bcb71685d4d6ed039f73a7674d7d3aa78` |
| 8 | `theorem` | [scalarDescentAmbient](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/scalardescentambient--e2791a434182eb5b64b3ab59.md) | 147 | `result-track:e2791a434182eb5b64b3ab592152f324d3cd02a584264c8b5f9e65f74621bf4f` |
| 9 | `abbrev` | [AlgebraicNumbers](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/algebraicnumbers--ab0bc4271a12a83a2fa1e5b1.md) | 164 | `declaration-track:ab0bc4271a12a83a2fa1e5b1c25cb187a09e07e14b0d9041664e4574c8c6fd9e` |
| 10 | `theorem` | [traceDescent](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/declarations/tracedescent--65c2f5bd41e5b4a0266e25c3.md) | 171 | `result-track:65c2f5bd41e5b4a0266e25c394f5d200e3ffeddd44ab106dadf27e0ea281b287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
