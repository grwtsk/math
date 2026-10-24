# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3634079b910cce83aa5b7230232c33130313027d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3634079b910cce83aa5b7230232c33130313027d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/tensordistrib--fc7577763b4418b7ec1808c0.md) | 53 | `declaration-track:fc7577763b4418b7ec1808c078f8ae0c30012f72662ce14ea3d35799ccddefa1` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/tensordistrib-tmul--b6c24d25c7de44a3613d8138.md) | 66 | `result-track:b6c24d25c7de44a3613d8138ad4c030298fcc65229e8c237e7ca8ea271b24d61` |
| 3 | `def` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/tmul--e7e122a88b973977b81bde09.md) | 75 | `declaration-track:e7e122a88b973977b81bde0938e99971c6c2efa2e08bd098b6d22d31a3d99539` |
| 4 | `lemma` | [IsSymm.tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/issymm-tmul--6268ee35c9cf11516d4a726b.md) | 81 | `result-track:6268ee35c9cf11516d4a726b63bd87a4b2e6c8d85d0108d721ca87341611cc33` |
| 5 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/basechange--9f19122b9e3f234a902d64ff.md) | 90 | `declaration-track:9f19122b9e3f234a902d64ff5c935d852a419b246ee1a5067626376583951950` |
| 6 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/basechange-tmul--e932f8f32210cd2c9eedfe08.md) | 94 | `result-track:e932f8f32210cd2c9eedfe085ca52c6e48fc5a13c1d288f6f3803bb8c463c1c8` |
| 7 | `lemma` | [IsSymm.baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/issymm-basechange--09545047b03ea7a602e35ff6.md) | 101 | `result-track:09545047b03ea7a602e35ff6b80478b2db74e4e42ecd08b5bf34bccc266d9833` |
| 8 | `def` | [tensorDistribEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/tensordistribequiv--a54a54e5ae5df60cbf7dad01.md) | 122 | `declaration-track:a54a54e5ae5df60cbf7dad01865609116f182c8bea4fc457bcb5d91c23776cc8` |
| 9 | `theorem` | [tensorDistribEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/tensordistribequiv-tmul--dd41aab49f0ef2e373316c02.md) | 135 | `result-track:dd41aab49f0ef2e373316c029c20e713e50839f4cc8f95a0fd89f37aab39466c` |
| 10 | `theorem` | [tensorDistribEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/tensordistribequiv-tolinearmap--7fe33931a6fa1265e62819f2.md) | 144 | `result-track:7fe33931a6fa1265e62819f29faa2fb39a868a5bbefb1d70fe1e564b632f9513` |
| 11 | `theorem` | [tensorDistribEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/declarations/tensordistribequiv-apply--be5d4e92da91aa983f324385.md) | 152 | `result-track:be5d4e92da91aa983f32438534eef1fcaf7d87d520f033da32eea17f585a67c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
