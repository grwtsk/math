# Verification target: GRWTSK.Algebra.LinearAlgebra.StructuredProjection.Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc97faeb170400adfe8bf4df2b403e4523fc983f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc97faeb170400adfe8bf4df2b403e4523fc983f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TypeIILocalStructure](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure--7f4279fab1ad4d8cbdf5b520.md) | 45 | `declaration-track:7f4279fab1ad4d8cbdf5b5209f4508df8acfbfde49b56883464bd52e99b0447e` |
| 2 | `def` | [TypeIILocalStructure.leftStructured](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure-leftstructured--4cfaca37a19d6257e74e8be9.md) | 88 | `declaration-track:4cfaca37a19d6257e74e8be9209a5e86c06c112fbbfc1a12c0e33b6d33aebe5d` |
| 3 | `def` | [TypeIILocalStructure.leftDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure-leftdiffuse--cc55fe6531e3b2aad401ed69.md) | 96 | `declaration-track:cc55fe6531e3b2aad401ed6943ad7bc4e92efd4396344f1b93316cf301fb87be` |
| 4 | `def` | [TypeIILocalStructure.rightStructured](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure-rightstructured--ea5236f3aad77279bfe3f1f9.md) | 104 | `declaration-track:ea5236f3aad77279bfe3f1f922f01f3ea214e6b66eb8c0af5c2f0afea4b9fb93` |
| 5 | `def` | [TypeIILocalStructure.rightDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure-rightdiffuse--47f4ceadd9d9f592a6489f54.md) | 112 | `declaration-track:47f4ceadd9d9f592a6489f54e75279c2609e9cb3765bf153bb2625ec5e00b94d` |
| 6 | `theorem` | [TypeIILocalStructure.leftStructured_add_leftDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure-leftstructured-add-leftdiffuse--ebf669b1f5c8a1a4f6985fec.md) | 119 | `result-track:ebf669b1f5c8a1a4f6985fecf099cba3b2280590c6c9d449d193e2c2e04158ec` |
| 7 | `theorem` | [TypeIILocalStructure.rightStructured_add_rightDiffuse](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure-rightstructured-add-rightdiffuse--5b1853ade919c2efee19dad4.md) | 127 | `result-track:5b1853ade919c2efee19dad4aa347555dc42f5c592b3d907dc8d4dc1f26d01c7` |
| 8 | `theorem` | [TypeIILocalStructure.bilinearPairing_four_terms](../../../../../mathematics/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/declarations/typeiilocalstructure-bilinearpairing-four-terms--0e59237a0b7dddfccb0bf0ec.md) | 140 | `result-track:0e59237a0b7dddfccb0bf0ecbb05f9c8c34f6b7952cb173c16b04b95cdb25631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
