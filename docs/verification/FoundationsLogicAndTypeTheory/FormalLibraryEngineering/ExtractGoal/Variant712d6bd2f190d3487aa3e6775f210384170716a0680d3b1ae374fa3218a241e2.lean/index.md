# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractGoal.Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90dde267d682ddb36470c6e51c46dd141fa3f1ae",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90dde267d682ddb36470c6e51c46dd141fa3f1ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.ElabTerm` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cleanup` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.PrettyPrinter` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.Inaccessible` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/declarations/syntax--4703f69c5170486c7653279b.md) | 113 | `declaration-track:4703f69c5170486c7653279b916257125a311a336e3451febd8ece928dfd9805` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/declarations/syntax--02794c6944e49c0bc5d01e54.md) | 116 | `declaration-track:02794c6944e49c0bc5d01e545222bf7be0affd074d7a7b85460117036a5d7721` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/declarations/syntax--b54c83eca39dd3a9069c914b.md) | 139 | `declaration-track:b54c83eca39dd3a9069c914b10650de916f6e3436dd8b56f916cbca453331453` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/declarations/elab-rules--fbf4be769da3168374ab2b52.md) | 141 | `declaration-track:fbf4be769da3168374ab2b521ee57f583dfca2ad3345725f19facaa6c38ae8f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
