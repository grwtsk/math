# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lookahead.Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a059aa86377ca32f2e8a24f577bdb46ff327c9e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a059aa86377ca32f2e8a24f577bdb46ff327c9e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Split` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchAction` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [maxIterations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/declarations/maxiterations--41cc8834d2c024bba867440e.md) | 19 | `declaration-track:41cc8834d2c024bba867440e3fc336bf4ae27499543a01fc7278365494ca3c3e` |
| 2 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/declarations/solve--a14e7d7af00fc9b03030fe08.md) | 21 | `declaration-track:a14e7d7af00fc9b03030fe0819fd42e455b22acfedad4512d3e4257c50ceee89` |
| 3 | `def` | [tryLookahead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/declarations/trylookahead--28da7b61a7f785de339cb7e5.md) | 31 | `declaration-track:28da7b61a7f785de339cb7e5a7489d4cfe60fd2ae8053f50fa73ed223b44ebc1` |
| 4 | `def` | [lookahead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/declarations/lookahead--da0719a8df07f7dc184878a5.md) | 57 | `declaration-track:da0719a8df07f7dc184878a5418cd8a6cb2366bb1cf5221532cfb0f68fabf91a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
