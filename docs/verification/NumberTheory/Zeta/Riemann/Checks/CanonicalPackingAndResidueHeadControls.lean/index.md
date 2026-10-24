# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalPackingAndResidueHeadControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "953c2134dfb9959fff7aaab164924a18a526b71e",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `953c2134dfb9959fff7aaab164924a18a526b71e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPackingNecessity`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPackingNecessity.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaResidueHead`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comparison_requires_arithmetic_decay](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean/declarations/comparison-requires-arithmetic-decay--486010f7759f53e85959e968.md) | 15 | `result-track:486010f7759f53e85959e968783cfcb9f113771fcebe952ef1b92b1696020382` |
| 2 | `theorem` | [zero_multiplier_has_zero_head](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CanonicalPackingAndResidueHeadControls.lean/declarations/zero-multiplier-has-zero-head--2582ff4eb6c1518c08de5037.md) | 20 | `result-track:2582ff4eb6c1518c08de50376058a52089c80511fc592e7f662d6da7ddae22aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
