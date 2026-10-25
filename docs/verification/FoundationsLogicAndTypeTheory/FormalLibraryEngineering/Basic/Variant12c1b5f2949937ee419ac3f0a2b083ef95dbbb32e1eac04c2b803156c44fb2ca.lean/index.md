# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b393a61bc050fe7b0ce4a278443d9fa60e524a7b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b393a61bc050fe7b0ce4a278443d9fa60e524a7b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Normalize` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalNf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean/declarations/monoidalnf--a266c4626f93197a2b8d31d4.md) | 39 | `declaration-track:a266c4626f93197a2b8d31d46b875283ace92f1c255cc58b8fafe1b0440b1172` |
| 2 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean/declarations/elab--5c92011f7f4e90857b5f49f8.md) | 43 | `declaration-track:5c92011f7f4e90857b5f49f84940c03fbfae6dfac034ea4197e3bb1a785905cd` |
| 3 | `def` | [monoidal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean/declarations/monoidal--1dce219b8200accbf47e68c7.md) | 56 | `declaration-track:1dce219b8200accbf47e68c735400337569c189d3201426b3b94602ffe289866` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca.lean/declarations/elab--9fee0f0e3de10ce33b0c3c27.md) | 60 | `declaration-track:9fee0f0e3de10ce33b0c3c2769e3b46836c39b5bafad54a4b3e6f02101d5bb50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
