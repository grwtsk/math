# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.RouteFrontier.Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5364dcd1ddcbd76d1f804abda98801228ad1e1dc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5364dcd1ddcbd76d1f804abda98801228ad1e1dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ProofStrategy.FrontierAntichain` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.WitnessDischarge` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RemainderShape](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/remaindershape--0ce7594b34fd72da1cce10dc.md) | 19 | `declaration-track:0ce7594b34fd72da1cce10dc87d8a058285674f502e430c03764b60ef48e17f3` |
| 2 | `def` | [classifyFrontier](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/classifyfrontier--4b43f8f32ac66e003b11c726.md) | 27 | `declaration-track:4b43f8f32ac66e003b11c7269b20c8cbf751a0c2e2a2d74954211c34a57776d3` |
| 3 | `theorem` | [classifyFrontier_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/classifyfrontier-zero--91dd908c1984be99d12bfc4a.md) | 39 | `result-track:91dd908c1984be99d12bfc4afa0d1acf0d51c3bfc424378378c4a11fc223281e` |
| 4 | `theorem` | [classifyFrontier_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/classifyfrontier-one--ca983e4930b176722c60383c.md) | 45 | `result-track:ca983e4930b176722c60383c402de45613722ad348c752b82570a7ad7c95d50d` |
| 5 | `structure` | [CertifiedRouteFrontier](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/certifiedroutefrontier--074e1fabb90882c4123f3af9.md) | 51 | `declaration-track:074e1fabb90882c4123f3af9536005903a5f8730ec412f71fd1447ffd8f8cf6e` |
| 6 | `theorem` | [completion_proves](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/completion-proves--70fe8840aca8e614f36269f8.md) | 77 | `result-track:70fe8840aca8e614f36269f86ef50648ade0d47a5bd1990aaa42fd9cdbd34221` |
| 7 | `theorem` | [unresolved_not_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/unresolved-not-discharged--743144f2e5cf18a9cf9b003d.md) | 96 | `result-track:743144f2e5cf18a9cf9b003d260fd1f6f14b84e5ba3ac658321dc5545db84547` |
| 8 | `structure` | [LeastFrontierFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82.lean/declarations/leastfrontierfixedpoint--feb503a77a10fbfb6ccd9923.md) | 115 | `declaration-track:feb503a77a10fbfb6ccd9923d5ebc3b4bde3f687fdcdc9198cec273475ad4c84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
