# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Adapters.Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67897ec49ce66040f27550f0da621e15b529ae65",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67897ec49ce66040f27550f0da621e15b529ae65`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Adapters.DAFRefinement` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Adapters.Fabric` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Composition` — import line 8; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Refinement` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [falseMatrix](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/falsematrix--cc9ad05096ee0d2e5253dab6.md) | 26 | `declaration-track:cc9ad05096ee0d2e5253dab61f4b180dc011df23f42bda1f4a65949a48df9548` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/example--0f1d11f5ebb29ef04a5a2a7e.md) | 29 | `declaration-track:0f1d11f5ebb29ef04a5a2a7e181bc4d8159d968e7485656f5e857c1d73d0ffce` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/example--afbb380c46887301bbe8d5a0.md) | 36 | `declaration-track:afbb380c46887301bbe8d5a013fcce1b4ffd0e06ce8f4bfa980ea47aa42c6911` |
| 4 | `def` | [bitMatrixAbstraction](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/bitmatrixabstraction--bbf22aeb6cec90f0b3e27785.md) | 40 | `declaration-track:bbf22aeb6cec90f0b3e27785b548422a5eb5d0edcc077360cf1ac3a9850c7575` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/example--08f732d7b2f87b80663a625f.md) | 44 | `declaration-track:08f732d7b2f87b80663a625f40e5138ff48211b89f0f7cc0faa944229add1237` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/example--cb8e2f0e77b99bbd2928aa11.md) | 50 | `declaration-track:cb8e2f0e77b99bbd2928aa11df8821ee1d768714b6202d3500880c003090bfcf` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/example--6ff7546e403e571f09debb4c.md) | 55 | `declaration-track:6ff7546e403e571f09debb4c51f97d493e84297f015ee3fcb8461a274217a4a6` |
| 8 | `def` | [matrixCellImplementation](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/matrixcellimplementation--f9ff35ca6212e866a9a1c400.md) | 60 | `declaration-track:f9ff35ca6212e866a9a1c4000ea424a39095a381cfc523e6c0d00e6c166172c4` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/declarations/example--56a12940e35077b81bc8008b.md) | 66 | `declaration-track:56a12940e35077b81bc8008baf6167a6eb117f603f7130f7c05cef44a93079a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
