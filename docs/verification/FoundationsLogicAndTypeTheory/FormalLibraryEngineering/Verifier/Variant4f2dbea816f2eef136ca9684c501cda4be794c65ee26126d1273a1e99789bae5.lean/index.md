# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verifier.Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be97ad5e8b79d8e9b21afdaedc7211386f4b5ada",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be97ad5e8b79d8e9b21afdaedc7211386f4b5ada`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findDeclaredEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean/declarations/finddeclarededge--b51c13cfff129275bfba1a4d.md) | 24 | `declaration-track:b51c13cfff129275bfba1a4d5d31e2e928951e67b0c4c5ff07a1adf1fc2fe5e1` |
| 2 | `def` | [verifyProposal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean/declarations/verifyproposal--7bb37a928802b044e954c50a.md) | 30 | `declaration-track:7bb37a928802b044e954c50aca33c1596b6d2b2416367d023db19cc9ca77b561` |
| 3 | `theorem` | [verifyProposal_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean/declarations/verifyproposal-sound--231c3ed3269fd50e42a62357.md) | 189 | `result-track:231c3ed3269fd50e42a6235721aecf1eded672e403b1244091386b8a626ca00f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
