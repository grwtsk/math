# Verification target: GRWTSK.NumberTheory.Moebius.LaplaceTransform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dcfd7063a2522f7bc1e6fdf34d440aec8e2628a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/LaplaceTransform.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dcfd7063a2522f7bc1e6fdf34d440aec8e2628a`.

Source path: `GRWTSK/NumberTheory/Moebius/LaplaceTransform.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/LaplaceTransform.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.Exponential` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedPickupLaplace](../../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/declarations/signedpickuplaplace--5d29c530f1702703808c6a62.md) | 24 | `declaration-track:5d29c530f1702703808c6a6238b0e908c9e56a6cde4bd41255a18b54d685139d` |
| 2 | `def` | [pickupLaplaceDomain](../../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/declarations/pickuplaplacedomain--e72a0166f81271db5a6ba4ca.md) | 28 | `declaration-track:e72a0166f81271db5a6ba4cabf9d8359d4c2edeb78aa8c50405f2c48bee75552` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
