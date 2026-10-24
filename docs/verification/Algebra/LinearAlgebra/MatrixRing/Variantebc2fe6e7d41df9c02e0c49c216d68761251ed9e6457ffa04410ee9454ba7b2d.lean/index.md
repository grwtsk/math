# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixRing.Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "881328678aeafc0938e2918ebd20283642c49d8b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `881328678aeafc0938e2918ebd20283642c49d8b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FixedMatrixRingState](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean/declarations/fixedmatrixringstate--6ad7918f82c40c6f8beae81e.md) | 14 | `declaration-track:6ad7918f82c40c6f8beae81eceed2bb76f4d9d349961fb67724ebeeced369872` |
| 2 | `def` | [selectedRowsObservation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean/declarations/selectedrowsobservation--0da8469c5fe1e895cd2569d5.md) | 19 | `declaration-track:0da8469c5fe1e895cd2569d557452cbeb58d673983fb32e9623effd22f686d45` |
| 3 | `def` | [selectedColumnsObservation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean/declarations/selectedcolumnsobservation--a63e05824889a35458f3366e.md) | 26 | `declaration-track:a63e05824889a35458f3366e200cd4e5c7aa93de48ff4a90ae7d0489c34ab070` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
