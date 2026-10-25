# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "320e7304a45a437a1e01a815c4892fceeb055506",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `320e7304a45a437a1e01a815c4892fceeb055506`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Widget.InteractiveCode` — import line 1; external provider; requires a separately pinned dependency.
- `ProofWidgets.Compat` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Component](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/declarations/component--0a8fe214a9426d7d900a95b1.md) | 26 | `declaration-track:0a8fe214a9426d7d900a95b10941bbadf57747abdc416b9fae0446b1843558ed` |
| 2 | `structure` | [InteractiveCodeProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/declarations/interactivecodeprops--f1912cb0d538f3a318e0d187.md) | 32 | `declaration-track:f1912cb0d538f3a318e0d187a09d766fea1ecdeb515a5d3014af5c4de1c45171` |
| 3 | `def` | [InteractiveCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/declarations/interactivecode--4209ccfc200179f686f03dca.md) | 42 | `declaration-track:4209ccfc200179f686f03dcab0268e01c678240ee2276dc62b313d3ebe4a68a8` |
| 4 | `structure` | [InteractiveExprProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/declarations/interactiveexprprops--b1bd98274d8cfc08e142b95c.md) | 50 | `declaration-track:b1bd98274d8cfc08e142b95cd6f0bc9d4237291fddfb2698175da98b76356f7a` |
| 5 | `def` | [ppExprTagged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/declarations/ppexprtagged--1532332c419bbb8befb439c3.md) | 56 | `declaration-track:1532332c419bbb8befb439c3d790168fa7c7db9bbb44853e8ca370db01ed12de` |
| 6 | `def` | [InteractiveExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c.lean/declarations/interactiveexpr--330a7b794cbe2cd46954837e.md) | 67 | `declaration-track:330a7b794cbe2cd46954837e1aa67eb5c89bc3c8be8603717cb8ef40a7dffbc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
