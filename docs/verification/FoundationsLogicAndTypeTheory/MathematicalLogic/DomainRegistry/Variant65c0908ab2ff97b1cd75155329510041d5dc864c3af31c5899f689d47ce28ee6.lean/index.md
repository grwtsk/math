# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomainRegistry.Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d4d99805ba93fc87f336ef04f303f5c26d8785f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d4d99805ba93fc87f336ef04f303f5c26d8785f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Taxonomy.Status` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Core.IdElements.StableId` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DomainRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/domainrecord--d551e31156de70c9ba86f68c.md) | 12 | `declaration-track:d551e31156de70c9ba86f68c835882814de8acea05d2735206b6129b5a6694fb` |
| 2 | `structure` | [DomainPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/domainpath--386ddc7fd1e58d7391808a02.md) | 20 | `declaration-track:386ddc7fd1e58d7391808a021892ce44ae90bf4023bda83c8bda6f0c84e109c9` |
| 3 | `def` | [terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/terminal--6b682b99e5215191732ffffa.md) | 27 | `declaration-track:6b682b99e5215191732ffffa6e69a83683d187c09cf72b49ad2d053e50b9ff1a` |
| 4 | `def` | [ids](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/ids--e30dfcece9491ea0169e2fab.md) | 30 | `declaration-track:e30dfcece9491ea0169e2fab911bc48ae5d5516cb143499e0aea80434641b73c` |
| 5 | `structure` | [DomainRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/domainregistry--c23f4578ac95486e22bf451d.md) | 35 | `declaration-track:c23f4578ac95486e22bf451dca3ab7cb4679ef4e6a7c46b57e67dda565fb13a8` |
| 6 | `def` | [UniqueIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/uniqueids--45d7dc11d47e398362a1d314.md) | 40 | `declaration-track:45d7dc11d47e398362a1d314f51307a9c9c9a51880083a9b8be3ea85c8a282ed` |
| 7 | `def` | [IsParentOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/isparentof--52ae07bad2a2ed2573871e8e.md) | 43 | `declaration-track:52ae07bad2a2ed2573871e8eb6475248294cac63de807a8f06b9497484b4d477` |
| 8 | `def` | [ParentsResolve](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/parentsresolve--90888336336357007b2cb822.md) | 48 | `declaration-track:90888336336357007b2cb8222c08c96f8bcb09ea21c55e2913e585e6d4ff5dfd` |
| 9 | `def` | [Acyclic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/acyclic--7f0bac485d7f63ff728b5907.md) | 53 | `declaration-track:7f0bac485d7f63ff728b5907dc41f847c331fc844a1bd4f87eb9afc85d0d8438` |
| 10 | `def` | [ReachableFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/reachablefrom--b17884bea1aaa45eced753ef.md) | 57 | `declaration-track:b17884bea1aaa45eced753ef37a22b30f3eb1c15ed1b431ef6e741c72be58a36` |
| 11 | `def` | [RootedAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/rootedat--ca5c424f05792b1f6cee2553.md) | 62 | `declaration-track:ca5c424f05792b1f6cee25531372537723bf1aaf20a1f597209d449971de4b80` |
| 12 | `def` | [RootHasNoParents](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/roothasnoparents--fea8c6ec5793f4189d45bc05.md) | 67 | `declaration-track:fea8c6ec5793f4189d45bc05f0e90e18a386ed64dd6e6935933a71b97a5ce1cf` |
| 13 | `def` | [PathFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/pathfrom--9b934876b9d19ff539c4b61e.md) | 72 | `declaration-track:9b934876b9d19ff539c4b61edf059696ec950f7242a2b1f9e34dd943fe6b50cc` |
| 14 | `def` | [ValidPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/validpath--3c3109133fcfb0c5f1b7ec5c.md) | 78 | `declaration-track:3c3109133fcfb0c5f1b7ec5c93e4db0e6fc76da4a5c58c87c1ab5f341a32b882` |
| 15 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DomainRegistry/Variant65c0908ab2ff97b1cd75155329510041d5dc864c3af31c5899f689d47ce28ee6.lean/declarations/find--ddb71e5a62236f017ded5a97.md) | 82 | `declaration-track:ddb71e5a62236f017ded5a9796b9a25aba584b709085cc7aa3dd28747dba3939` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
