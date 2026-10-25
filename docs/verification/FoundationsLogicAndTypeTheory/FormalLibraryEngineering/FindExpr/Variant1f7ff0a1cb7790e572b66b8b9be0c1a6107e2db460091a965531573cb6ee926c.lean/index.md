# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindExpr.Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "161c0e2ff7f6c233e44a72aaa664d2513eaf01ac",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `161c0e2ff7f6c233e44a72aaa664d2513eaf01ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [findImpl?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/declarations/findimpl--e102340e67b3beb510e38466.md) | 17 | `declaration-track:e102340e67b3beb510e384661debe31eea4abdd70f2239dee5b6e9c5993f7f21` |
| 2 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/declarations/find--e172b95f8d03344dad4523e4.md) | 19 | `declaration-track:e172b95f8d03344dad4523e4f86371f81ddc8f8ad22a17d9043537079c9a2d79` |
| 3 | `def` | [occurs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/declarations/occurs--ae65a811a8fa1d5963763b5a.md) | 22 | `declaration-track:ae65a811a8fa1d5963763b5a3fc33ba4b1381ee77d5e77cac10534ee4a5cfbed` |
| 4 | `inductive` | [FindStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/declarations/findstep--c5b3261419988c5846887643.md) | 28 | `declaration-track:c5b3261419988c5846887643da44f9ffd262eefcf606f2e43c5f44d5239479e3` |
| 5 | `opaque` | [findExtImpl?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/declarations/findextimpl--2289209383b2b9c6b53db238.md) | 34 | `declaration-track:2289209383b2b9c6b53db23858dc5c3778847f3137ab2f53af24492b247aac6c` |
| 6 | `def` | [findExt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean/declarations/findext--49a8a36dab49869050fff09b.md) | 39 | `declaration-track:49a8a36dab49869050fff09bb19896ba0ab3e3bba863149bcb2e798a5edeaa08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
