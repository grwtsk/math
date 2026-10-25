# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grid.Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f0f950b700c3ef4bff14dc0650913f58330ff1c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f0f950b700c3ef4bff14dc0650913f58330ff1c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GridShape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean/declarations/gridshape--00b50e59c5bb726e1e4ef3e7.md) | 27 | `declaration-track:00b50e59c5bb726e1e4ef3e75f23d72f2986042899b196c9cd9c59edf17216f3` |
| 2 | `abbrev` | [Cell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean/declarations/cell--d0060fcc848c5a9f725a5ac1.md) | 32 | `declaration-track:d0060fcc848c5a9f725a5ac14ccf1cb2ade4bf0a8811a251c2f98a322bc7654d` |
| 3 | `def` | [EdgeAdjacent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean/declarations/edgeadjacent--55473dd72f44c46bd2ffe22f.md) | 34 | `declaration-track:55473dd72f44c46bd2ffe22f6b4009be214c953b4c45d5c153e443bbd2091d66` |
| 4 | `theorem` | [edgeAdjacent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean/declarations/edgeadjacent-symm--8af18f63c837ac322e1f6071.md) | 40 | `result-track:8af18f63c837ac322e1f6071181a07a5890c7a4c8127bffd49be6d4a1f6acf03` |
| 5 | `theorem` | [edgeAdjacent_irrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grid/Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d.lean/declarations/edgeadjacent-irrefl--8c802b605254edf2ded27fd2.md) | 51 | `result-track:8c802b605254edf2ded27fd2fdfef27aaa4a17293a4a7b2e3939bb42aa04498c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
