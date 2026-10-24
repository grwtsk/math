# Verification target: GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientPiecewise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec304e3791139f6bdfc9fe385ab886e5502f90b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec304e3791139f6bdfc9fe385ab886e5502f90b`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientRightTelescope`](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [harmonicShiftCount_le_leftScale](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/harmonicshiftcount-le-leftscale--fb189bdb39b903211ede7ecf.md) | 20 | `result-track:fb189bdb39b903211ede7ecf69fc431e6ce3e3b04cb6c83352951f358f679552` |
| 2 | `theorem` | [coreTerminalLengthCoefficient_eq_zero_of_leftScale_lt](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/coreterminallengthcoefficient-eq-zero-of-leftscale-lt--b88e9dcff2113a7b7c7b09c6.md) | 30 | `result-track:b88e9dcff2113a7b7c7b09c608577eb5318e0e2d2ce572f0a0bd70405b8cbb03` |
| 3 | `theorem` | [coreInteriorLengthCoefficient_eq_zero_of_leftScale_lt](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/coreinteriorlengthcoefficient-eq-zero-of-leftscale-lt--c5bd59373620e3480b284909.md) | 42 | `result-track:c5bd59373620e3480b28490913aba4a218fa053ac6fff7d4f1a3b6d5e68690cc` |
| 4 | `theorem` | [coreLengthCoefficientMass_eq_zero_of_leftScale_lt](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/corelengthcoefficientmass-eq-zero-of-leftscale-lt--7fb0dde0a919870bf11c9886.md) | 56 | `result-track:7fb0dde0a919870bf11c988688f1c7c60f018a4f57fb068df4892ef35340c470` |
| 5 | `theorem` | [fullLengthCoefficientMass_eq_zero_of_leftScale_lt](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/fulllengthcoefficientmass-eq-zero-of-leftscale-lt--27ced5c63947eba6c0f869a1.md) | 68 | `result-track:27ced5c63947eba6c0f869a140bb7281a93be27f4366189f17f05426b635284f` |
| 6 | `theorem` | [rightLengthCoefficientMass_at_leftScale_eq_zero](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/rightlengthcoefficientmass-at-leftscale-eq-zero--d2f80b8e2a7470e4970b2559.md) | 80 | `result-track:d2f80b8e2a7470e4970b2559013c87e1475eb1741c1cd04a6406eccbffec6a00` |
| 7 | `theorem` | [fullLengthCoefficientMass_at_leftScale](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/fulllengthcoefficientmass-at-leftscale--99947a005079fbc2f371de7d.md) | 97 | `result-track:99947a005079fbc2f371de7dd3289e967a013be10c7ac409630e2b3304784769` |
| 8 | `theorem` | [fullLengthCoefficientMass_at_leftScale_le_three_inv](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/fulllengthcoefficientmass-at-leftscale-le-three-inv--554cd5e16f042992ca4e7b16.md) | 105 | `result-track:554cd5e16f042992ca4e7b16ab2a9f9ec3bf7f87fa38c3539162b5c0817be9cc` |
| 9 | `theorem` | [piecewiseReciprocalLengthCoefficientMassBound](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/piecewisereciprocallengthcoefficientmassbound--33b784dd653dda1da4f5f57e.md) | 120 | `result-track:33b784dd653dda1da4f5f57e5582fa6011f11da03fd90e6bbccc85b7f2a52697` |
| 10 | `theorem` | [logarithmicShiftThreshold_le_leftScale_add_one](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/logarithmicshiftthreshold-le-leftscale-add-one--719438c71fd5e48e0a4ffcb8.md) | 133 | `result-track:719438c71fd5e48e0a4ffcb8d8dcb5e6f57187c3b69146df3c738ae238295160` |
| 11 | `theorem` | [transposedIncompatibleDyadicL1Packet_eq_truncated](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/transposedincompatibledyadicl1packet-eq-truncated--e1d7f47d03f11a214ed719b7.md) | 144 | `result-track:e1d7f47d03f11a214ed719b794ddcd27b18378c0e97e33cef4b5b9ff6acfdf3d` |
| 12 | `theorem` | [transposedIncompatibleDyadicL1Packet_eq_nonboundary_add_boundary](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/transposedincompatibledyadicl1packet-eq-nonboundary-add-boundary--0c4aa6a48c2911d50e84d9a4.md) | 170 | `result-track:0c4aa6a48c2911d50e84d9a44d9b2696301363230a20bd91c376a6cff7e5791f` |
| 13 | `def` | [PiecewiseWeightedIncompatibleL1Supplier](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/piecewiseweightedincompatiblel1supplier--501a083c16333720166f46cb.md) | 185 | `declaration-track:501a083c16333720166f46cba1ccdd95d0148f1d84935d57cbd1ab10957654fc` |
| 14 | `theorem` | [piecewiseWeightedIncompatibleL1Supplier_iff_transposed](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/declarations/piecewiseweightedincompatiblel1supplier-iff-transposed--27c780d5b5aa11f9d2f8d317.md) | 194 | `result-track:27c780d5b5aa11f9d2f8d3176f13010753445dfb656a0876840219275a839453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
