# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuation.Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f8a7e49908f634911dfb8d34c0589e27ff4f494",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f8a7e49908f634911dfb8d34c0589e27ff4f494`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Result` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuationBinding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/declarations/continuationbinding--bfcb9ea18075c715c40f3ecf.md) | 23 | `declaration-track:bfcb9ea18075c715c40f3ecf2e0e44e345733c892b262a6b7fbaf60d15a6aae6` |
| 2 | `structure` | [ContinuationAuthenticator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/declarations/continuationauthenticator--ce650355a86eba5336e4948a.md) | 33 | `declaration-track:ce650355a86eba5336e4948a546b8721dc37ead6cee06fd2dfd41dbcea4d455a` |
| 3 | `structure` | [AuthenticatedContinuation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/declarations/authenticatedcontinuation--f20b857324c15e30692cd7bc.md) | 44 | `declaration-track:f20b857324c15e30692cd7bc5891c3562c7b052428df17725df0b377dbafabdb` |
| 4 | `abbrev` | [AuthenticatedToken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/declarations/authenticatedtoken--516583cd25508d2857d4f67b.md) | 51 | `declaration-track:516583cd25508d2857d4f67b7b396b97e931f5855129c9cb8938ec9bc9621214` |
| 5 | `def` | [ContinuationAuthenticator.issue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/declarations/continuationauthenticator-issue--53c3aa20ff610f3c0d9c0db5.md) | 55 | `declaration-track:53c3aa20ff610f3c0d9c0db528ecf464f4b55452a82526eca1ce2c1387eab2f9` |
| 6 | `theorem` | [authenticated_binding_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9.lean/declarations/authenticated-binding-unique--47a020d257e235fd076d2069.md) | 64 | `result-track:47a020d257e235fd076d206927053b2c6083f934d7d9d345eb383a99737b124c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
