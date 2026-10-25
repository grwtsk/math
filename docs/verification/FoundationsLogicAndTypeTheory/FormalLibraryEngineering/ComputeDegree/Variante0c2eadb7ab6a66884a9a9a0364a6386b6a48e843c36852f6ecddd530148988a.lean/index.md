# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComputeDegree.Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b89e8fdb1f600d62cf158dc9828b64a53a466b11",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b89e8fdb1f600d62cf158dc9828b64a53a466b11`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean/declarations/natdegree-c-le--7425522678560d0535670736.md) | 28 | `result-track:7425522678560d053567073626062917c94986ac64f435fe047dab0607c04c21` |
| 2 | `theorem` | [natDegree_nat_cast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean/declarations/natdegree-nat-cast-le--a9b1e6cf9254ab3a4311f9bb.md) | 29 | `result-track:a9b1e6cf9254ab3a4311f9bbbb13a381248fc64c3ef2f9933f898092540fa31a` |
| 3 | `theorem` | [natDegree_zero_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean/declarations/natdegree-zero-le--e44c5a968a3750154a372db9.md) | 30 | `result-track:e44c5a968a3750154a372db9e641f0dad984af66f821e71eb38aa3d075c74b52` |
| 4 | `theorem` | [natDegree_one_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean/declarations/natdegree-one-le--f34fec3723792961ff6c35c6.md) | 31 | `result-track:f34fec3723792961ff6c35c6bedc21a723dee1a08c7691e34e14c25db96026b6` |
| 5 | `theorem` | [natDegree_int_cast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a.lean/declarations/natdegree-int-cast-le--ef2c10144a61964e9c8398be.md) | 36 | `result-track:ef2c10144a61964e9c8398be35ef2387f0bff64dfd6a43a140653b3fbd87c201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
