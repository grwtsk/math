# Verification target: GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e87816ad684c28029ec675c7a048556801d873",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Matrix/FiniteAdjointDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e87816ad684c28029ec675c7a048556801d873`.

Source path: `GRWTSK/LinearAlgebra/Matrix/FiniteAdjointDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Matrix/FiniteAdjointDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [energy](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/energy--c2be3cc3f2c3f0d699b5c40a.md) | 19 | `declaration-track:c2be3cc3f2c3f0d699b5c40a19bb745300b72e05f69c9279be320a99540c184d` |
| 2 | `def` | [applyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/applymatrix--deb616e743f2dc89ba7155a7.md) | 20 | `declaration-track:deb616e743f2dc89ba7155a754690654e6ab88d43ffa56bf9a8fc13b5ffb89a0` |
| 3 | `def` | [adjoint](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/adjoint--1ff95f6b58825045ffa9f2fc.md) | 22 | `declaration-track:1ff95f6b58825045ffa9f2fce96efa1b91b1e457feaa0037979bdc36c2ef4dc8` |
| 4 | `def` | [frobenius](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/frobenius--9387dc62f3d61bc683b79c93.md) | 24 | `declaration-track:9387dc62f3d61bc683b79c9395e2cb7a1d77d5348253bd56510ec054e150fdc0` |
| 5 | `def` | [damping](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/damping--b782372d00550424c8c3598e.md) | 26 | `declaration-track:b782372d00550424c8c3598efd095b8c8292c89808403c3f3a00ec21b8f5baaa` |
| 6 | `def` | [reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/reconstruction--eb6cd3409af8fcb59dc4162a.md) | 28 | `declaration-track:eb6cd3409af8fcb59dc4162a0c84f0ef3eb5baa27b24277d5badb2506dcd2f6d` |
| 7 | `theorem` | [energy_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/energy-nonneg--0f926e0e31de83e1cef3cf52.md) | 31 | `result-track:0f926e0e31de83e1cef3cf52ee47ccda523b0feb6714bf17a09277ffe7611b4c` |
| 8 | `theorem` | [adjoint_energy_le](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/adjoint-energy-le--dfbe7aa809a60e1ba1482786.md) | 34 | `result-track:dfbe7aa809a60e1ba1482786bcb65221ce479b2a2d449e78de0c20588e9288f3` |
| 9 | `theorem` | [duality](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/duality--72c06542f75650aa5c693412.md) | 42 | `result-track:72c06542f75650aa5c6934128caca14bd34689194080a50a7cd2d95ed16ad72c` |
| 10 | `theorem` | [damping_bounds](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/damping-bounds--1606adb3d660e06858369ef2.md) | 58 | `result-track:1606adb3d660e06858369ef249f0c5842dc8bfec6c6861770bd7038204345fc8` |
| 11 | `theorem` | [reconstruction_energy](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/reconstruction-energy--f03cb67fa71adadb313b6754.md) | 72 | `result-track:f03cb67fa71adadb313b675478749dda80325b148d0c975c40c7f9c62a753ec3` |
| 12 | `theorem` | [reconstruction_bound](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/reconstruction-bound--9097427e108ec65200df4f90.md) | 76 | `result-track:9097427e108ec65200df4f909755280cd0ae1d77ab7431b0b2f1811acfa6bd54` |
| 13 | `theorem` | [residual_identity](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/residual-identity--484a4b13e4785e63309f6215.md) | 85 | `result-track:484a4b13e4785e63309f62159958c1a11a840e199f25e30c1c5810f13430db5e` |
| 14 | `theorem` | [residual_descent](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/declarations/residual-descent--f066fed60972d8dea965d63f.md) | 99 | `result-track:f066fed60972d8dea965d63fc1b973cb84458b749b58adcb3a43852636af0cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
