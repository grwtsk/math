# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomainRegistry.Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b8654190816d09f08cef0efbc28605daf1a07f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b8654190816d09f08cef0efbc28605daf1a07f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Taxonomy.Status` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Core.IdElements.StableId` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DomainRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/domainrecord--1d16132da38aa89ba44c0438.md) | 20 | `declaration-track:1d16132da38aa89ba44c0438de45b584998e23d1cacb148d23d6e7cfaae41322` |
| 2 | `structure` | [DomainPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/domainpath--a9768975b406d1cced07ecbe.md) | 28 | `declaration-track:a9768975b406d1cced07ecbefa8d8207cb67ab97385060bd5f1f7fd0ca6d2ae5` |
| 3 | `def` | [terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/terminal--2931cb2688724ffc5e957040.md) | 35 | `declaration-track:2931cb2688724ffc5e95704046bca6bb0b1e9bb5e7cdc6dd5af53fcb0c090cd8` |
| 4 | `def` | [ids](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/ids--951c5a2b6aa08e593cff7c1b.md) | 38 | `declaration-track:951c5a2b6aa08e593cff7c1b255b1d51194ba2fa5d87124a9695b12fd245311f` |
| 5 | `structure` | [DomainRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/domainregistry--30a899744a364a61c2a3ea1f.md) | 43 | `declaration-track:30a899744a364a61c2a3ea1faaedea3a7f593920c92ae3623d80bd7de30b7189` |
| 6 | `def` | [UniqueIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/uniqueids--822fab20faffcaa21602b53b.md) | 48 | `declaration-track:822fab20faffcaa21602b53b4a7e98233d45b407b150c6d7463b5dc84a9cc81b` |
| 7 | `def` | [IsParentOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/isparentof--272b91f7020d16ef7fddecf7.md) | 51 | `declaration-track:272b91f7020d16ef7fddecf786ca4c30587b227dced8c0ead727efff8d62cb26` |
| 8 | `def` | [ParentsResolve](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/parentsresolve--3a3d6d4e453ee3d5564518b4.md) | 56 | `declaration-track:3a3d6d4e453ee3d5564518b4788520b9a64b781e56161050f0763aab988a6ebc` |
| 9 | `def` | [Acyclic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/acyclic--42674a9ba2eb04c79e9d7f6e.md) | 61 | `declaration-track:42674a9ba2eb04c79e9d7f6e90fbaeaa1cbfea8e34fc5770790add1543be7bb6` |
| 10 | `def` | [ReachableFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/reachablefrom--b6682f4d80a2168b33a08a7e.md) | 65 | `declaration-track:b6682f4d80a2168b33a08a7eee7b6506a782deca0329cbc30d7fde7d5c8b4000` |
| 11 | `def` | [RootedAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/rootedat--720bce90ccd31c39688eba8b.md) | 70 | `declaration-track:720bce90ccd31c39688eba8b2d5e31cd7b1d2fcbce3fe01761e579c9a148f128` |
| 12 | `def` | [RootHasNoParents](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/roothasnoparents--4c89ca583916c0cb5f97d2a1.md) | 75 | `declaration-track:4c89ca583916c0cb5f97d2a170e79580ad6529cc70d3deb22444bf581004d551` |
| 13 | `def` | [PathFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/pathfrom--5ae2d25de59ceb770ccb49d8.md) | 80 | `declaration-track:5ae2d25de59ceb770ccb49d8db5acdac77de5cff1678dfcc3279010373e0a78f` |
| 14 | `def` | [ValidPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/validpath--d46070a8025200d28420fdcc.md) | 86 | `declaration-track:d46070a8025200d28420fdccdc35c886d958b2f45160261e1d611a402b76ecd5` |
| 15 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variantf4d948b02a899483c596d43ed2d201852a669e6a487953dbde898bf3c203cd87.lean/declarations/find--d50729ea6d24a126e1ce9989.md) | 90 | `declaration-track:d50729ea6d24a126e1ce9989cf52a28b28dcabdccf0ec244782f88277fb6a53a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
