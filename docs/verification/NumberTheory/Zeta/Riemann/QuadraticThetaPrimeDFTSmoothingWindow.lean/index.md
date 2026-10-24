# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5caf0c75337d28cd035e9f68b0d6d1ec170a1ba7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5caf0c75337d28cd035e9f68b0d6d1ec170a1ba7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimePartialDiscrepancy`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierMaximalBarrier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncatedFourierLowExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/truncatedfourierlowexponent--8cc13d776c8a843254b85055.md) | 12 | `declaration-track:8cc13d776c8a843254b85055a5d9405bf070cd098b35a6717310be38f70332d8` |
| 2 | `def` | [truncatedFourierBoundaryExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/truncatedfourierboundaryexponent--2b9bfbd268691de5ff5d56fe.md) | 13 | `declaration-track:2b9bfbd268691de5ff5d56fe49c1fdd3968f38ec97598120c62e572c6913ba4f` |
| 3 | `theorem` | [truncatedFourierLow_le_threeQuarters_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/truncatedfourierlow-le-threequarters-iff--5828a80b90e009e629ab3b83.md) | 15 | `result-track:5828a80b90e009e629ab3b83c0a6659ebfa91ada60872f0acade5fc21ed85688` |
| 4 | `theorem` | [truncatedFourierBoundary_le_threeQuarters_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/truncatedfourierboundary-le-threequarters-iff--e79ea60a19202a0a7629f935.md) | 21 | `result-track:e79ea60a19202a0a7629f93576a9c20ff7ab3d16639feefca9c646b07e37c521` |
| 5 | `theorem` | [truncatedFourierBoth_le_threeQuarters_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/truncatedfourierboth-le-threequarters-iff--5b4dbb0b4328f4755a2de6de.md) | 27 | `result-track:5b4dbb0b4328f4755a2de6de1b07813b625cdafb9280c7d0b0d968b2faa1defd` |
| 6 | `theorem` | [truncatedFourierLowExponent_oneThird](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/truncatedfourierlowexponent-onethird--6dce576146fc287906e8c8cb.md) | 39 | `result-track:6dce576146fc287906e8c8cb2ed429a48cdbbd3206a7ef50130ac6d97d51ae7b` |
| 7 | `theorem` | [truncatedFourierBoundaryExponent_oneThird](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/truncatedfourierboundaryexponent-onethird--b4b2d9edf566eca8afbb4c1c.md) | 43 | `result-track:b4b2d9edf566eca8afbb4c1c1541e1ab9bbae797826ac954e45b475e81565e8d` |
| 8 | `def` | [PrimeDFTSmoothingReadoutAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/primedftsmoothingreadoutat--0a5cb1f9d21a8dad268d2d11.md) | 47 | `declaration-track:0a5cb1f9d21a8dad268d2d1177779de64e079917cf0e8399cc07206c703ed60b` |
| 9 | `theorem` | [sevenEighths_DFTSmoothingReadout_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/declarations/seveneighths-dftsmoothingreadout-to-partialdiscrepancy--7c38d4e27294195ec1cc4d9c.md) | 51 | `result-track:7c38d4e27294195ec1cc4d9cf7832551007d17233ec4c25b7ef2f74215b9593c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
