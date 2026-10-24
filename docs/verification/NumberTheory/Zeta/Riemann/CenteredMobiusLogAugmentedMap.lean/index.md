# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogAugmentedMap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21f2a41a1bd0a76bb9f3da6c90b231341e9d676e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21f2a41a1bd0a76bb9f3da6c90b231341e9d676e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogFinitePacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogReconstruction`](../../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AugmentedMobiusLogData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/augmentedmobiuslogdata--d2f7e32ee63d045e8b45ec6d.md) | 18 | `declaration-track:d2f7e32ee63d045e8b45ec6d93883f6f64d9cb3efba567808780989c51d7c8ab` |
| 2 | `def` | [augmentedMobiusLogAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/augmentedmobiuslogatom--e1c5f6f091569a5635033a41.md) | 23 | `declaration-track:e1c5f6f091569a5635033a412f46fc10ade27cec1aa80044e487ac65377f723d` |
| 3 | `def` | [augmentedMobiusLogPairMap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/augmentedmobiuslogpairmap--75b8c182cde58223717f729d.md) | 27 | `declaration-track:75b8c182cde58223717f729d8e1176949c36208c6085c3452aabfa89cecb700c` |
| 4 | `theorem` | [augmentedMobiusLogPairMap_eq_atom_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/augmentedmobiuslogpairmap-eq-atom-mul--489f21e759cf6313e1b85d0e.md) | 34 | `result-track:489f21e759cf6313e1b85d0ea13eda12a3cb420e5b9d7595208049223dc836ff` |
| 5 | `def` | [actualCenteredMobiusLogData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/actualcenteredmobiuslogdata--5030dc8995bf131daf5c2f8a.md) | 42 | `declaration-track:5030dc8995bf131daf5c2f8a013bb93082ba9edd467d50de988adb7415f9a854` |
| 6 | `theorem` | [actual_augmentedMobiusLogAtom_eq_centeredIndexSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/actual-augmentedmobiuslogatom-eq-centeredindexsum--d26c85c71a76b8c50b4253fb.md) | 48 | `result-track:d26c85c71a76b8c50b4253fb1a991f1641a4a97f190feb7531a71f6ddd78ebd6` |
| 7 | `theorem` | [actual_augmentedMobiusLogPairMap_eq_centeredPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/actual-augmentedmobiuslogpairmap-eq-centeredpairblock--3ea2123cea172febcaa8ebaf.md) | 65 | `result-track:3ea2123cea172febcaa8ebaf5ad6d3e56155745f946bad6cd40e67f0070720bc` |
| 8 | `def` | [augmentedMobiusLogDifference](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/augmentedmobiuslogdifference--5acbb845aae97f9cabe9ab63.md) | 80 | `declaration-track:5acbb845aae97f9cabe9ab63f427151bdc67cac5084e0bc075f4e4e7313a2603` |
| 9 | `theorem` | [augmentedMobiusLogAtom_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/augmentedmobiuslogatom-one--f235fcddd48171562ad307cb.md) | 87 | `result-track:f235fcddd48171562ad307cb1305cc1fd48925b0f78600f09611713960cc2102` |
| 10 | `theorem` | [augmentedMobiusLogAtom_twoN_reconstruct](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/declarations/augmentedmobiuslogatom-twon-reconstruct--ba68474da636d7eb1a0ddcb3.md) | 94 | `result-track:ba68474da636d7eb1a0ddcb30af2772388d99a6b50a6d20ada63e327a887932b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
