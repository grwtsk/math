# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Source.Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4af173305b3fa3c754bc8cb1038b632dddfecb9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4af173305b3fa3c754bc8cb1038b632dddfecb9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean/declarations/dirichletmoment--1e8ff85ae3b1a690648222a6.md) | 23 | `declaration-track:1e8ff85ae3b1a690648222a6daca260d2dabdb14f34b8f918efa8bc78e0fa60a` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean/declarations/dirichletmoment-nonneg--50fd6124673c6593bc08361d.md) | 26 | `result-track:50fd6124673c6593bc08361d2562a2a46c8e3d504914c2744352497dc69a8a28` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean/declarations/mangoldt-abscissa-le-one--70790c17987a4b62be839618.md) | 32 | `result-track:70790c17987a4b62be839618df0dbfae1645f78d175ea592d0ec9b975a514661` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean/declarations/iterate-logmul-eq--c74f34eba84232549924c7fe.md) | 38 | `result-track:c74f34eba84232549924c7fe2496fc08151f4c466997163fb13c8ee2fe215920` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantad9b537646b002d6955069a3f68272cebf6835708cc6aeaec2c3f61afe102c1f.lean/declarations/dirichletmoment-summable--c248cac4a64e71c463223acc.md) | 47 | `result-track:c248cac4a64e71c463223acc48a0ebfa0851f1666356fe93c836ba1d9feafe15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
