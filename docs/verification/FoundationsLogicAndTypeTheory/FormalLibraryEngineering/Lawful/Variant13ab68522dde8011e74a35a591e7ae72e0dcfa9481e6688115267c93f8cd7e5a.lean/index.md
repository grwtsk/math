# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lawful.Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ca9013050b88616ebd733cbb7b8dea714bef705",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ca9013050b88616ebd733cbb7b8dea714bef705`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/declarations/mk--0ec3c0b64a95f1090125c62e.md) | 37 | `declaration-track:0ec3c0b64a95f1090125c62e28de4f9d9b96af7096123e4daa682890c7f399b3` |
| 2 | `theorem` | [run_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/declarations/run-mk--66dab0b1b9e2d8f79192e14c.md) | 40 | `result-track:66dab0b1b9e2d8f79192e14ca2b90805c7ca32f2a48bfb556a47cf6815188059` |
| 3 | `theorem` | [run_monadLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/declarations/run-monadlift--a95e788b0d5aa513f1cec8dd.md) | 56 | `result-track:a95e788b0d5aa513f1cec8ddd7fec25b5d217a4ad1c5bef023ad15b5d4701a82` |
| 4 | `theorem` | [run_monadMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/declarations/run-monadmap--4d5e8642430c7b00f8f85404.md) | 61 | `result-track:4d5e8642430c7b00f8f85404a72faa59cbcaeb57ea293e5f078deeec21cbf6cb` |
| 5 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/declarations/mk--de9514fb9d2b82813d885c5b.md) | 88 | `declaration-track:de9514fb9d2b82813d885c5bd77f7ee85c9818edf4ac85f22626ec27c7ccd978` |
| 6 | `theorem` | [run_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant13ab68522dde8011e74a35a591e7ae72e0dcfa9481e6688115267c93f8cd7e5a.lean/declarations/run-mk--41e955666a475c56af03187b.md) | 91 | `result-track:41e955666a475c56af03187b29882c6c7c992b635d24650fcd7632b1e9904892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
