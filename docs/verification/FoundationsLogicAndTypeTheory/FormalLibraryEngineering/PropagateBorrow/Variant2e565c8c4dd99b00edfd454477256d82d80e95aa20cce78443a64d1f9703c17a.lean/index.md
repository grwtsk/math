# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateBorrow.Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff8f4758b3fb0757c1ff8c045c5fbddab27a1563",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff8f4758b3fb0757c1ff8c045c5fbddab27a1563`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.PhaseExt` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Ownedness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/declarations/ownedness--ce8d1bd75390fe72b0f9ee42.md) | 29 | `declaration-track:ce8d1bd75390fe72b0f9ee42a0097be8ce4722a13fba4541b3630b7499ded641` |
| 2 | `def` | [Ownedness.join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/declarations/ownedness-join--83a2e2ef4d981bec107288fe.md) | 36 | `declaration-track:83a2e2ef4d981bec107288fe89708d011c92c8f56a91de4c9560161ba0b88a50` |
| 3 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/declarations/state--931ac6c75f3c855f14e383bf.md) | 42 | `declaration-track:931ac6c75f3c855f14e383bf63ae4e148ecc5e172782da39bdda9179d574f446` |
| 4 | `abbrev` | [InferM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/declarations/inferm--cb86a1f698019a1ccbd75fee.md) | 47 | `declaration-track:cb86a1f698019a1ccbd75feec4c045e6b0709004a697d7cea0f299d2dbc690f1` |
| 5 | `def` | [Decl.analyzePropagatedBorrows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/declarations/decl-analyzepropagatedborrows--b6423c7d7758e397df2c2bdc.md) | 49 | `declaration-track:b6423c7d7758e397df2c2bdc045f390e4255b3e18d9002410a1530024cfe276c` |
| 6 | `def` | [Ownedness.toBorrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/declarations/ownedness-toborrow--e2cac2d574079f75da570b50.md) | 146 | `declaration-track:e2cac2d574079f75da570b50e8521bc7ce2731c257a4315f93dce1a1c3f7295f` |
| 7 | `def` | [Decl.applyOwnedness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/declarations/decl-applyownedness--c75b103a443db646f256e68c.md) | 151 | `declaration-track:c75b103a443db646f256e68c62b9b75de94d8c70187c50d5299630b281ae3c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
