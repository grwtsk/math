# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1674fc6e0349f819ca4ce94fea952ec9435f06f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1674fc6e0349f819ca4ce94fea952ec9435f06f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Ordering.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Classes` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.IteSimp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ite_eq_lt_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/declarations/ite-eq-lt-distrib--82434ac6d12a46f099a36d5d.md) | 22 | `result-track:82434ac6d12a46f099a36d5df1c7a5e9afba97baa32997d6c02533eb79415631` |
| 2 | `theorem` | [ite_eq_eq_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/declarations/ite-eq-eq-distrib--8938092fdbc1ae7e4fd9ea3b.md) | 28 | `result-track:8938092fdbc1ae7e4fd9ea3bd5086b661c794ba221b32e612b170bbc961c6c95` |
| 3 | `theorem` | [ite_eq_gt_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/declarations/ite-eq-gt-distrib--1c5751648e1491c20b5e149c.md) | 34 | `result-track:1c5751648e1491c20b5e149ca5f354e07c60437c9e95ba1248fd9a3113535752` |
| 4 | `theorem` | [cmpUsing_eq_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/declarations/cmpusing-eq-lt--7ab4f1c7286bb8f1a8a6fc7a.md) | 48 | `result-track:7ab4f1c7286bb8f1a8a6fc7a30f826380de376679ce3793ec61802dde9ba8452` |
| 5 | `theorem` | [cmpUsing_eq_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/declarations/cmpusing-eq-gt--5a48612adcd80e0782f5cec0.md) | 52 | `result-track:5a48612adcd80e0782f5cec0d9dd235299fcf877a38bd5dcd069100035377fa7` |
| 6 | `theorem` | [cmpUsing_eq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48bd7640ee71e20038c7782a2ad4b1a01907b31bc1f4b0eecaf58c7a5c67efdf.lean/declarations/cmpusing-eq-eq--160e03ba61620e5eac45d663.md) | 67 | `result-track:160e03ba61620e5eac45d663c3b461988bc17b0fde6787a6a08f5e6cea83f67a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
