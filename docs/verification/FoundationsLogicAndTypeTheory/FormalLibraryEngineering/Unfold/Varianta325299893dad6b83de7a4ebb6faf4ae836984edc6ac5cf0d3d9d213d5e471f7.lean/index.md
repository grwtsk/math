# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d511d825a7fd35db4bf68ca217743cd8f70c11f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d511d825a7fd35db4bf68ca217743cd8f70c11f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.EqnsUtils` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Simproc` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rwFixEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/rwfixeq--76e81fbf5a935ec5fae087c5.md) | 32 | `declaration-track:76e81fbf5a935ec5fae087c500e79849c718ca39b0dc89f9f1097850f993db0c` |
| 2 | `def` | [isForallMotive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/isforallmotive--42beae36c3e038655f58422e.md) | 63 | `declaration-track:42beae36c3e038655f58422e501f4a7ca7797bfc70b3fe67af9239959457907d` |
| 3 | `def` | [splitMatchOrCasesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/splitmatchorcaseson--dba958af28cc7cb6779f06a8.md) | 72 | `declaration-track:dba958af28cc7cb6779f06a82cb7e289186306e7ba04ca22fcb987db3047a4d8` |
| 4 | `def` | [mkMatchArgPusher](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/mkmatchargpusher--c4c21beb3c89ffff2585ca4c.md) | 98 | `declaration-track:c4c21beb3c89ffff2585ca4c26ce1d6da517d56732a74ed1d00cca83574f4b18` |
| 5 | `def` | [mkUnfoldProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/mkunfoldproof--010c62c95c58ef4173f69538.md) | 201 | `declaration-track:010c62c95c58ef4173f695389d5e0aa67e108b4ce983850cf55703c6333473ef` |
| 6 | `def` | [mkUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/mkunfoldeq--ab746bdf15704e23d8c383df.md) | 211 | `declaration-track:ab746bdf15704e23d8c383df84330322682025d403dca46bf573cb0bada85a69` |
| 7 | `def` | [mkBinaryUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/mkbinaryunfoldeq--f7654885e1ea4a6137c2190a.md) | 246 | `declaration-track:f7654885e1ea4a6137c2190af8919b53f0fb86f884c9065f3b63e9e45eccc934` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/declarations/builtin-initialize--0a0cb1a91332c07a574e56b6.md) | 273 | `declaration-track:0a0cb1a91332c07a574e56b6c09304f58557f04d96b5bcce537bc52db26ccf5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
