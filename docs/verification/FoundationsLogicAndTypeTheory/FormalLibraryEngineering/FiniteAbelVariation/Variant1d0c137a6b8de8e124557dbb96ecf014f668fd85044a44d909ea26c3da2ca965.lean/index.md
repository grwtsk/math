# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAbelVariation.Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b156b3f190277b2a82cd27a7cdd10cddb11547a0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b156b3f190277b2a82cd27a7cdd10cddb11547a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_Icc_mul_by_parts_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/declarations/sum-icc-mul-by-parts-ico--7a0f38066524ad8f2b7e4b90.md) | 26 | `result-track:7a0f38066524ad8f2b7e4b90942e84547679c186b291c48f6e3d36ff64c3d297` |
| 2 | `theorem` | [sum_Icc_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/declarations/sum-icc-mul-by-parts--a8a2955063a8b51111503626.md) | 42 | `result-track:a8a2955063a8b51111503626443b372d42854eef7f26884a233cf05739d36da1` |
| 3 | `theorem` | [centered_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/declarations/centered-sum--53e23747d075efd28aa8ee7f.md) | 52 | `result-track:53e23747d075efd28aa8ee7ff332b0697513ed62a133d9045b5efb0b5c2aa062` |
| 4 | `theorem` | [centered_sum_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/declarations/centered-sum-mul-by-parts--cf50b68e4d245aca4741b52d.md) | 57 | `result-track:cf50b68e4d245aca4741b52ddae4edf4b9f931c03d5a33b6495b2debc0c3b5b8` |
| 5 | `theorem` | [weighted_error_abs_le_sqrt_variation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/declarations/weighted-error-abs-le-sqrt-variation--e57511b4ed3525e9a8760b6a.md) | 66 | `result-track:e57511b4ed3525e9a8760b6a36970ae52ed7079218d80f6b0b3996e2453028f7` |
| 6 | `theorem` | [weighted_error_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965.lean/declarations/weighted-error-zero--f716a100f561ad9ebaf0b0e0.md) | 106 | `result-track:f716a100f561ad9ebaf0b0e052c58c09e5f27e3ce2580aa9be8348a57d8ff0f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
