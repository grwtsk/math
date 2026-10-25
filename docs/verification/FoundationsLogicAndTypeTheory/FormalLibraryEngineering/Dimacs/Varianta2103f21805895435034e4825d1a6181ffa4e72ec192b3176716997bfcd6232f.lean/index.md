# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dimacs.Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49eed3357bbca0804fab21875bdd5f8ad0fe4baa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49eed3357bbca0804fab21875bdd5f8ad0fe4baa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean.json)

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
| 1 | `structure` | [DimacsState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean/declarations/dimacsstate--f582f5bf916f9a71ce6ce4d9.md) | 26 | `declaration-track:f582f5bf916f9a71ce6ce4d95511d9b602ed69d66221b4ff78df17b3b44f1b8b` |
| 2 | `abbrev` | [DimacsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean/declarations/dimacsm--64ba9c390a920f3d615b2e7c.md) | 30 | `declaration-track:64ba9c390a920f3d615b2e7c6a89222627d9f72f034ab19b425f8cf6b6a64b6c` |
| 3 | `def` | [handleLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean/declarations/handlelit--e6ccd48447d1b83feea15090.md) | 35 | `declaration-track:e6ccd48447d1b83feea150901fc7fc65eeaece0bc18d29bfde62749ccb9d2fd3` |
| 4 | `def` | [incrementClauses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean/declarations/incrementclauses--11ab73f9f8fe93f1cad7b747.md) | 39 | `declaration-track:11ab73f9f8fe93f1cad7b7474873e4d3ca34bf926d389dcf88cc463e2ff077bb` |
| 5 | `def` | [dimacs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f.lean/declarations/dimacs--31b2a74e8489fbddc3c62997.md) | 50 | `declaration-track:31b2a74e8489fbddc3c62997a115a31d3098453e5884e718c40b82b3371b9bdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
