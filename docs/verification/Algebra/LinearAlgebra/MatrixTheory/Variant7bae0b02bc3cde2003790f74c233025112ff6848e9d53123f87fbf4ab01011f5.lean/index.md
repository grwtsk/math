# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81111231682eabd223c877f0daa54320eef56639",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81111231682eabd223c877f0daa54320eef56639`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Kronecker` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TensorProduct.toMatrix_map](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean/declarations/tensorproduct-tomatrix-map--7201e16858322ebc945fb329.md) | 37 | `result-track:7201e16858322ebc945fb3298a55e8ab31ddaf947eceda38c3d9cf9944cb92ff` |
| 2 | `theorem` | [Matrix.toLin_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean/declarations/matrix-tolin-kronecker--a779378fac0689fa1e023c15.md) | 47 | `result-track:a779378fac0689fa1e023c15979b3cca28fce0e664d70007d223c4e8ec65b8a8` |
| 3 | `theorem` | [TensorProduct.toMatrix_comm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean/declarations/tensorproduct-tomatrix-comm--3a11b324111008598bea8073.md) | 54 | `result-track:3a11b324111008598bea80738e3ff489ae1e2a674483e03478cd002c10614dbd` |
| 4 | `theorem` | [TensorProduct.toMatrix_assoc](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant7bae0b02bc3cde2003790f74c233025112ff6848e9d53123f87fbf4ab01011f5.lean/declarations/tensorproduct-tomatrix-assoc--7f6c29be2d4ddca9129a0296.md) | 64 | `result-track:7f6c29be2d4ddca9129a02969b9af8593e44dc866456d889f6fa889407f97076` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
