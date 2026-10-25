# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.AlgebraicCard.Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bbaca297d6da2f8e388d39131dfa4ddc57f1076",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bbaca297d6da2f8e388d39131dfa4ddc57f1076`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Cardinal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_of_charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/infinite-of-charzero--00979d5aa03937e7efd1366f.md) | 30 | `result-track:00979d5aa03937e7efd1366f07bee4709922e6076eb74321feb2a905c72c9566` |
| 2 | `theorem` | [aleph0_le_cardinal_mk_of_charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/aleph0-le-cardinal-mk-of-charzero--bfd6f859d371e3f9b667e90e.md) | 35 | `result-track:bfd6f859d371e3f9b667e90ec9773b1f8799f310b1069661b7fcde9e733d5f74` |
| 3 | `theorem` | [cardinal_mk_lift_le_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/cardinal-mk-lift-le-mul--e3ca634796191ff4e5ca4d60.md) | 45 | `result-track:e3ca634796191ff4e5ca4d60c92acf005193f45dfe94e47c0ba867da754145fd` |
| 4 | `theorem` | [cardinal_mk_lift_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/cardinal-mk-lift-le-max--89167551bd985ee6e98f332f.md) | 57 | `result-track:89167551bd985ee6e98f332feb08522d415a3d78ebdab64b02186163f8459fdc` |
| 5 | `theorem` | [cardinal_mk_lift_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/cardinal-mk-lift-of-infinite--f981760da477b4b2afb2b9c3.md) | 64 | `result-track:f981760da477b4b2afb2b9c3dced4ca657ae519a837e2d8ab1e36f574f45625b` |
| 6 | `theorem` | [countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/countable--900b25312522e55a2e05298c.md) | 74 | `result-track:900b25312522e55a2e05298c330a6ecab55682a567e5ba15bf085b8866441e01` |
| 7 | `theorem` | [cardinal_mk_of_countable_of_charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/cardinal-mk-of-countable-of-charzero--17a12abb4bba3d9df8af5de4.md) | 81 | `result-track:17a12abb4bba3d9df8af5de4b8bde16120fb20c5e4d0e2bf871d38e15c56a897` |
| 8 | `theorem` | [cardinal_mk_le_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/cardinal-mk-le-mul--f983ecce31feda76d92d4fb1.md) | 93 | `result-track:f983ecce31feda76d92d4fb1a74670ec10c708eecba55aee171fee6e97ede3af` |
| 9 | `theorem` | [cardinal_mk_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/cardinal-mk-le-max--ed91210c124083811b8b7fe2.md) | 98 | `result-track:ed91210c124083811b8b7fe2b17039b8d3525061eea99466c61d6668cbd10b45` |
| 10 | `theorem` | [cardinal_mk_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant628f987adf7eb9db5889b9ff6eb319f42e2fd17b5289150a1af3944167d33ad0.lean/declarations/cardinal-mk-of-infinite--6983e644f3fd32b4baf2ae06.md) | 104 | `result-track:6983e644f3fd32b4baf2ae06d6db356966cb198a0d036a0581c020e876450f3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
