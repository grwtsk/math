# Verification target: GRWTSK.NumberTheory.DiophantineEquations.ContinuedFractions.Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ce8711c04c55f51b6d9235e2d0a4af975af7968",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ce8711c04c55f51b6d9235e2d0a4af975af7968`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.ApproximationCorollaries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.Translations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DiophantineApproximation.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convs_eq_convergent](../../../../../mathematics/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46.lean/declarations/convs-eq-convergent--d24077d20f1beb0221d323f2.md) | 34 | `result-track:d24077d20f1beb0221d323f29a19312f5082f659b640131411a11b8c0e16b146` |
| 2 | `theorem` | [exists_convs_eq_rat](../../../../../mathematics/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46.lean/declarations/exists-convs-eq-rat--e6215e2eb18b8a95ea384830.md) | 52 | `result-track:e6215e2eb18b8a95ea384830c916f782bf4389ed5255bd649c7ff2e5f39934c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
