# Verification target: GRWTSK.Algebra.LinearAlgebra.KNullBridge.Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "934eba5696d1e1679e0a66050d973b4cd2ce4c98",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `934eba5696d1e1679e0a66050d973b4cd2ce4c98`.

Source path: `GRWTSK/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.ForceDensity.Matrix` — import line 1; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KEqual128](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/declarations/kequal128--433c336de3f3e15a10afb8a9.md) | 6 | `declaration-track:433c336de3f3e15a10afb8a963a2a4dfec7057c89eca3ff3d52a2b4a60f0d851` |
| 2 | `def` | [KResidueHeat128](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/declarations/kresidueheat128--3727ba735bb82ce88a744dd9.md) | 9 | `declaration-track:3727ba735bb82ce88a744dd9b86d040f8503e0ebc8d618820719a80d35d779f9` |
| 3 | `def` | [KNull](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/declarations/knull--a15286f11c68e741396b4198.md) | 12 | `declaration-track:a15286f11c68e741396b4198cb9054185a8a756de920ace8531f9e6cc4a1c365` |
| 4 | `theorem` | [k_null_iff_zero_residue](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/declarations/k-null-iff-zero-residue--ce170f770ff69c4e0c24fc7a.md) | 15 | `result-track:ce170f770ff69c4e0c24fc7addfc1eb7d8d99bf0002d7fbdf4c26758478fbe59` |
| 5 | `theorem` | [exact_null_transports_to_k_null](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/declarations/exact-null-transports-to-k-null--cf5ed8b0b63aa87cc7c0fc34.md) | 25 | `result-track:cf5ed8b0b63aa87cc7c0fc34d52968e7f1db345a373863a17b4a79c58d99bb7f` |
| 6 | `theorem` | [force_density_bridge_null](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf.lean/declarations/force-density-bridge-null--7061a3bd9b203749fc803479.md) | 35 | `result-track:7061a3bd9b203749fc803479407f3fb78aee7f28f50d1b31b018177f8488538e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
