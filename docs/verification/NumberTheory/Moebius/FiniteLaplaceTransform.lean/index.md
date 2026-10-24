# Verification target: GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99ec3cd35e67734ba05ca5b4a04a012e8950660f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99ec3cd35e67734ba05ca5b4a04a012e8950660f`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteLaplaceTransform.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace`](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pickupDirichletPrefix](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/pickupdirichletprefix--61decf116489f36fa54a46c5.md) | 15 | `declaration-track:61decf116489f36fa54a46c5ebe77d2eac82c9460c0aebc61dfd5ef980c399b5` |
| 2 | `def` | [pickupWeightedPrefix](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/pickupweightedprefix--d4112a199dc1c7aae56fe77e.md) | 18 | `declaration-track:d4112a199dc1c7aae56fe77ecb84cd698fca4646f39a54af33b0621245690164` |
| 3 | `def` | [pickupMertensPrefix](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/pickupmertensprefix--9b76e366052ef6f28b9b582c.md) | 21 | `declaration-track:9b76e366052ef6f28b9b582ccdba310a7b0a8ae6d9a008e5ada1f0f176ba5fee` |
| 4 | `theorem` | [pickupMertensPrefix_at_cutoff](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/pickupmertensprefix-at-cutoff--92c5fb094164ff389cc93f50.md) | 24 | `result-track:92c5fb094164ff389cc93f506a48be5eedb04705eb07478c45e495469f29f185` |
| 5 | `theorem` | [finiteLaplace_exponential](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/finitelaplace-exponential--732b8a1d4b2cdc9d7d313ad7.md) | 27 | `result-track:732b8a1d4b2cdc9d7d313ad71d038a0ae36ce9c16a5e3cd25c3be8f5fb1076f3` |
| 6 | `theorem` | [pickupResponseWindow_at_birth](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/pickupresponsewindow-at-birth--05d0f6e75cdff9026bc7eb95.md) | 33 | `result-track:05d0f6e75cdff9026bc7eb9503273afcec6a5e8fb567ae9b3fe4ea45b1c5bc4b` |
| 7 | `theorem` | [pickupResponseWindowLaplace](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/pickupresponsewindowlaplace--7507b61c097684ae14b593d2.md) | 50 | `result-track:7507b61c097684ae14b593d205a2efa23a7e76909becbacde6c9306598015e9b` |
| 8 | `theorem` | [noteWindowLaplace_fixed_inventory](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/notewindowlaplace-fixed-inventory--6311631736c3b6d999df8a6d.md) | 110 | `result-track:6311631736c3b6d999df8a6d65a4b4477afff8586c34b9ee348fef1c9342938d` |
| 9 | `theorem` | [wholePickup_cutoff_laplace](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/wholepickup-cutoff-laplace--1f21d2c684435d4514d25059.md) | 143 | `result-track:1f21d2c684435d4514d25059b2662be39ea689564a948d791987a22e136e6dd8` |
| 10 | `theorem` | [noteWindowLaplace_zero](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/notewindowlaplace-zero--22a91426afe5b1a039a43011.md) | 166 | `result-track:22a91426afe5b1a039a430112b8653c98cf2d1ef0ef3f7a152efdae067e637bf` |
| 11 | `theorem` | [cutoff_zero_not_without_weighted_endpoint](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/cutoff-zero-not-without-weighted-endpoint--a49bd1ece47eb7164e33036a.md) | 170 | `result-track:a49bd1ece47eb7164e33036a234165bcaef06ea94875c11348cdb721437aefbc` |
| 12 | `theorem` | [cutoff_zero_not_without_mertens_endpoint](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/cutoff-zero-not-without-mertens-endpoint--35bb2f4a73f03bd89f94d1e0.md) | 175 | `result-track:35bb2f4a73f03bd89f94d1e0d3129b55ecb3d17bb11e7bff3d29eeefb733d02d` |
| 13 | `theorem` | [cutoff_three_product_debt](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/cutoff-three-product-debt--7550080f445f92b0419f5fd4.md) | 181 | `result-track:7550080f445f92b0419f5fd42cca838b78d6e50802ebd4b16523812dbf448946` |
| 14 | `theorem` | [cutoff_three_not_raw_product](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/declarations/cutoff-three-not-raw-product--610c559b84d7f5424d942ccb.md) | 205 | `result-track:610c559b84d7f5424d942ccbbe6e79978097f1fbde520335830d1676f0e5f4d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
