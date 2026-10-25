# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Support.Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863107da5a765923264bc9ee9a5416ba1c296cba",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863107da5a765923264bc9ee9a5416ba1c296cba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExprSupportedCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean/declarations/exprsupportedcore--e130613230c391f6f77ed4db.md) | 55 | `declaration-track:e130613230c391f6f77ed4dbec3566de6d2cc5a2e4a87312d402c5196007c187` |
| 2 | `inductive` | [ExprSupported](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean/declarations/exprsupported--03a9786d4347c0e5738082bc.md) | 83 | `declaration-track:03a9786d4347c0e5738082bc425244af6e19ceaeb45d2bb0d8e66bcde303c8bb` |
| 3 | `theorem` | [ExprSupported.toCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean/declarations/exprsupported-tocore--6c028a75f136999f2086bffb.md) | 94 | `result-track:6c028a75f136999f2086bffbb862d27e24eae5b17db3cb37226c035fcaa6df4f` |
| 4 | `inductive` | [ExprSupportedWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean/declarations/exprsupportedwithinv--baefde08f7f6893c47444b8c.md) | 110 | `declaration-track:baefde08f7f6893c47444b8c3292c787f64bbdf079448e75f438069e5d66f83e` |
| 5 | `theorem` | [ExprSupported.toWithInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d.lean/declarations/exprsupported-towithinv--9d7a7b72ef7c98338f500dd0.md) | 132 | `result-track:9d7a7b72ef7c98338f500dd0399a12609a8ddc3c8e47e59fa0813183b71b2a63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
