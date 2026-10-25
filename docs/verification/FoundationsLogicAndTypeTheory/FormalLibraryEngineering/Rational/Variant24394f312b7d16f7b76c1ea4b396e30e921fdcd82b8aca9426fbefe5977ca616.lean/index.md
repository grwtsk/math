# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rational.Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd69c02d442bf4532d3b09c3e2275e8fdb8b3e9b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd69c02d442bf4532d3b09c3e2275e8fdb8b3e9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [precParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/precparam--58d01c5ee89e1c02a7556842.md) | 36 | `declaration-track:58d01c5ee89e1c02a7556842fe1352a9ceea821de4ed91dcb598332cf34ea95c` |
| 2 | `def` | [rat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/rat--41268db9117eac44abafd318.md) | 54 | `declaration-track:41268db9117eac44abafd31812c145803ba4c551996c2a0e438154fc11c7ee55` |
| 3 | `theorem` | [ratCast_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/ratcast-mem--46b6b8d968269c3c7af93783.md) | 60 | `result-track:46b6b8d968269c3c7af93783c90a72a0b0e55f4f1f4bec271da8f377f8c2133e` |
| 4 | `def` | [natDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/natdiv--c9614b20002b470c705d000f.md) | 69 | `declaration-track:c9614b20002b470c705d000fdf16624a19066b7cba8094d8d171194aad9125de` |
| 5 | `theorem` | [natDiv_eq_rat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/natdiv-eq-rat--17336c5dd4a8cd468e50d057.md) | 76 | `result-track:17336c5dd4a8cd468e50d057429e2ebf92c6eb5d85211989279c027744abec03` |
| 6 | `theorem` | [natDiv_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/natdiv-mem--3655213af72f91c91fa78b87.md) | 84 | `result-track:3655213af72f91c91fa78b87c8746fde8bc9c4d6f85e7b3aea480b48f751fdb2` |
| 7 | `def` | [scientific](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/scientific--c5ad4d7adf5a74a0a66a2b7b.md) | 90 | `declaration-track:c5ad4d7adf5a74a0a66a2b7ba464f9ad391e10d0b34257f1a8636be20018c262` |
| 8 | `theorem` | [scientific_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant24394f312b7d16f7b76c1ea4b396e30e921fdcd82b8aca9426fbefe5977ca616.lean/declarations/scientific-mem--489b6ae91d03cbd55803043f.md) | 97 | `result-track:489b6ae91d03cbd55803043f66e004ce3a61e2efcab3f11487d14a9bd84dc627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
