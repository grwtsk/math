# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a10109909f4be0897b4e2f88952583c653a148d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a10109909f4be0897b4e2f88952583c653a148d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/declarations/gap--9b873b27a75c84f7f3529ce7.md) | 22 | `declaration-track:9b873b27a75c84f7f3529ce7a88990f23f767d87cc2dcae12860e5341b356645` |
| 2 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/declarations/coefficients--f966808fc9962bacfe2f43f1.md) | 24 | `declaration-track:f966808fc9962bacfe2f43f12c4886c3b46437ece291252a9ae1cb30340cfa0d` |
| 3 | `theorem` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/declarations/tensor-identity--8d52cb1b2a639c17cd7ffe30.md) | 39 | `result-track:8d52cb1b2a639c17cd7ffe30e8016b23c6347f6af4087083513fc90a18f5e19f` |
| 4 | `theorem` | [gap_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/declarations/gap-nonneg--38fb65e4b23686b33e1989b7.md) | 44 | `result-track:38fb65e4b23686b33e1989b7942b31065b1445538cd28e5314da33449cbda5e1` |
| 5 | `theorem` | [squared_ratio_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/declarations/squared-ratio-bound--4fc1a5ca24c35b8290ad0f09.md) | 56 | `result-track:4fc1a5ca24c35b8290ad0f09e390099477ef8a586702be13e0b97f768b1e2b6f` |
| 6 | `theorem` | [height_ten_gap_negative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/declarations/height-ten-gap-negative--dfb1057f4c8764f931806837.md) | 64 | `result-track:dfb1057f4c8764f9318068379e11a6da18bb13d81bf81ecc0941019ada3ad86b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
