# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorExpression.Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84e5f3d95c24cea8b6a7fd553c162f8adb0c2b77",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84e5f3d95c24cea8b6a7fd553c162f8adb0c2b77`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.PascalTree.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.EMLCircuit` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TensorFactorRole](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/tensorfactorrole--1631c4c8555c38d93985c3ce.md) | 16 | `declaration-track:1631c4c8555c38d93985c3ce40c5d486b39a991a094f60610d5347fc592c92fb` |
| 2 | `structure` | [BinaryLogicMatrixTensorFactor](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/binarylogicmatrixtensorfactor--82264fbe1563e085cee2a851.md) | 27 | `declaration-track:82264fbe1563e085cee2a851423f6a133d4e3f7cb74e19aa856de6f922c51e6b` |
| 3 | `inductive` | [BinaryLogicMatrixTensorExpression](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/binarylogicmatrixtensorexpression--c048bce77fca2f710b0cc930.md) | 34 | `declaration-track:c048bce77fca2f710b0cc930be841d46ff2ae059aa7d5159a4153b0ccadd4764` |
| 4 | `structure` | [TensorContractionDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/tensorcontractiondescriptor--65327ef24ecb158e3908a868.md) | 47 | `declaration-track:65327ef24ecb158e3908a86892fe8fb14a1c21fcae1b9af433ba7059b538722f` |
| 5 | `inductive` | [DeterminantDescriptorKind](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/determinantdescriptorkind--781b29a57432726cab3facae.md) | 53 | `declaration-track:781b29a57432726cab3facae3a28e2155eedb34e4bf80849c80d07ba86284735` |
| 6 | `structure` | [DeterminantDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/determinantdescriptor--95717494ff1d88538b85dd49.md) | 59 | `declaration-track:95717494ff1d88538b85dd493729000121f1beecfc44cb6e97775c6c66c67629` |
| 7 | `def` | [DeterminantDescriptor.admissible](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/determinantdescriptor-admissible--ba1087318cd3540e5be0006f.md) | 69 | `declaration-track:ba1087318cd3540e5be0006f02b5bd3d72021eb2e659258f006593941b242fc5` |
| 8 | `theorem` | [tensorExpression_factor_boundary_visible](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/tensorexpression-factor-boundary-visible--4e3572b05d3fb36087282980.md) | 74 | `result-track:4e3572b05d3fb36087282980c9e133a71441ff6490f0d5fdc0862248b3f502d7` |
| 9 | `theorem` | [determinantDescriptor_actualSquare_is_square](../../../../../mathematics/Algebra/LinearAlgebra/TensorExpression/Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4.lean/declarations/determinantdescriptor-actualsquare-is-square--31f1fb88bac26707b0996985.md) | 79 | `result-track:31f1fb88bac26707b099698557df18e8f4b7b23d7c53aa3224cee6f705bf7660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
