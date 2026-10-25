# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f627b6c6fd60c563ce4e62a9cd3be1b220f51f74",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f627b6c6fd60c563ce4e62a9cd3be1b220f51f74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Match.Rewrite` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Rewrite` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/splitinfo--b9b7ff69e7ab9ce3f5d4edfc.md) | 22 | `declaration-track:b9b7ff69e7ab9ce3f5d4edfc0d54a9a75acb589535579658e771251a9125a923` |
| 2 | `def` | [resTy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/resty--e19910d30effd439fba6147c.md) | 30 | `declaration-track:e19910d30effd439fba6147cba08fe10371e3dcc03abd993564a8467795cec0b` |
| 3 | `def` | [altInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/altinfos--6072c00691ee3448bee409b5.md) | 48 | `declaration-track:6072c00691ee3448bee409b5a4245f945ffc3900cceae230b7a9402539f0b699` |
| 4 | `def` | [expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/expr--6cda22ba4349b4a0857532ec.md) | 55 | `declaration-track:6cda22ba4349b4a0857532ecc06de8e318e2feea8fdedb8b7e9ba16f21410b4b` |
| 5 | `def` | [withAbstract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/withabstract--f71b64dc1cdbd11833436b09.md) | 77 | `declaration-track:f71b64dc1cdbd11833436b093cca05aae839fdf426e2252055b93df19f6bc281` |
| 6 | `def` | [splitWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/splitwith--28f1067777fb34be3af9bba1.md) | 136 | `declaration-track:28f1067777fb34be3af9bba163e2107eb32799df4f12444ba923212e26305355` |
| 7 | `def` | [simpDiscrs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/simpdiscrs--c32777010247cdd1b81e82f0.md) | 171 | `declaration-track:c32777010247cdd1b81e82f0b34eeb8b40e3f1e8fa12b7651f85171d8665f61a` |
| 8 | `def` | [getSplitInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/getsplitinfo--959416f283d8bafcae6db34b.md) | 177 | `declaration-track:959416f283d8bafcae6db34b3676bb9354544ab7c1885cf4ff7528178c3201bd` |
| 9 | `def` | [rwIfOrMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant67b1622b4ad2011014dd11e783874308ee13e7a9f9da5bd8df7f6af12525d531.lean/declarations/rwiformatcher--30d298443c36d2d1dade60ed.md) | 187 | `declaration-track:30d298443c36d2d1dade60edcf4e7b1d32d309159bd1a1aa0e073ad48713e7fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
