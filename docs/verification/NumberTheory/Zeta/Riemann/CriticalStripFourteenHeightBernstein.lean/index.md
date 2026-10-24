# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f7d728a85d519000512f007851eddef03b1339b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f7d728a85d519000512f007851eddef03b1339b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffFourSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/declarations/coefficients--a1cbf441b84fa3e64345e96e.md) | 21 | `declaration-track:a1cbf441b84fa3e64345e96ed16c69840decb7cead6fa3128dff69a24ca54839` |
| 2 | `def` | [gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/declarations/gap--e064cf797eab21312e06363e.md) | 40 | `declaration-track:e064cf797eab21312e06363e88e2e971039f8c920ce84d336c64ab5a067dbeda` |
| 3 | `theorem` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/declarations/tensor-identity--d1cad9eb534a033823aef131.md) | 44 | `result-track:d1cad9eb534a033823aef131dd1427d1f52ed7f093b723ccfa5e93cd96f3369d` |
| 4 | `theorem` | [model_projection_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/declarations/model-projection-lower--6e2661099e84830bbee48159.md) | 52 | `result-track:6e2661099e84830bbee481598e1b79ea37533ca0ef070c9908c04cff28a29e4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
