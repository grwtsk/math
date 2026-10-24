# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDPositiveShift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f7cb3ce884eb7e4f8372cb7c4d8d781aa0774f8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f7cb3ce884eb7e4f8372cb7c4d8d781aa0774f8`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDOrderedCorrelation`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagonalCenteredLowGCDCorrelation](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/diagonalcenteredlowgcdcorrelation--ae8c329e291a070cca701d47.md) | 28 | `declaration-track:ae8c329e291a070cca701d47e8c7e29a0352affc8824b522cc82c4ea18fbe901` |
| 2 | `def` | [positiveOffDiagonalPairs](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positiveoffdiagonalpairs--c38aea1c78261c048ffb7a98.md) | 34 | `declaration-track:c38aea1c78261c048ffb7a985c71cf669ac70cf43168bf266bc75abdd8fbafc1` |
| 3 | `def` | [negativeOffDiagonalPairs](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/negativeoffdiagonalpairs--242ae4453025ec3bc1e37052.md) | 38 | `declaration-track:242ae4453025ec3bc1e37052db43507a456266f801a8086b7641af04340870ac` |
| 4 | `def` | [positiveLagSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positivelagset--da8fc14030317d3c0ffcfe84.md) | 42 | `declaration-track:da8fc14030317d3c0ffcfe842c5cb326b1871bdab5e90ebbce322a6b1ce4312b` |
| 5 | `def` | [positiveLagFiber](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positivelagfiber--c4c3debc8871d26f3ed0aaaf.md) | 46 | `declaration-track:c4c3debc8871d26f3ed0aaaf5d208e76a6602f38fd41e97e9554b3177bdd7036` |
| 6 | `def` | [positiveShiftCenteredLowGCDCorrelation](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positiveshiftcenteredlowgcdcorrelation--f35055288762a6da61866f9d.md) | 51 | `declaration-track:f35055288762a6da61866f9dd965137ae926610fb26cf26d33d4698cec611567` |
| 7 | `theorem` | [mem_positiveOffDiagonalPairs_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/mem-positiveoffdiagonalpairs-iff--6841db6eb2123c51b50b01d0.md) | 60 | `result-track:6841db6eb2123c51b50b01d09053c9628333f3ffdd69ba18eee827b7c6a8d38f` |
| 8 | `theorem` | [mem_negativeOffDiagonalPairs_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/mem-negativeoffdiagonalpairs-iff--2868f6f4b2e9ca20e8c88d02.md) | 78 | `result-track:2868f6f4b2e9ca20e8c88d02f1dc02970601901c170fbf93a4c1cc97181ed2dc` |
| 9 | `def` | [negativePositiveSwapEquiv](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/negativepositiveswapequiv--11f52ee4c8aa137c265528a1.md) | 96 | `declaration-track:11f52ee4c8aa137c265528a19bc8ccde07b61228d987c12627051a514cd01dd2` |
| 10 | `theorem` | [centeredLowGCDPairKernel_comm](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/centeredlowgcdpairkernel-comm--d67f228d5312170e37530bc1.md) | 122 | `result-track:d67f228d5312170e37530bc1d5b27be7a00d3bc4fef6dede3c6309a95a9c853b` |
| 11 | `theorem` | [offDiagonalPairs_eq_positive_union_negative](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/offdiagonalpairs-eq-positive-union-negative--d0934e5de2b58806d822fde1.md) | 157 | `result-track:d0934e5de2b58806d822fde164c9d6c648fcf48651020064617edd96172010cd` |
| 12 | `theorem` | [positiveNegativePairs_disjoint](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positivenegativepairs-disjoint--07dc5b1a9957000a28484d1b.md) | 184 | `result-track:07dc5b1a9957000a28484d1b30518f7777cc36234ae394db067ec0c3ac4a9ef2` |
| 13 | `theorem` | [negativePairSum_eq_positive](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/negativepairsum-eq-positive--51257d4676d49cdd21921161.md) | 196 | `result-track:51257d4676d49cdd2192116157821a340eb4d3fd07c2fddcd120119e3f8388f0` |
| 14 | `theorem` | [orderedCorrelation_eq_diagonal_add_two_mul_positive](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/orderedcorrelation-eq-diagonal-add-two-mul-positive--8a5b287cc9512fc198a26e95.md) | 221 | `result-track:8a5b287cc9512fc198a26e95f401d9a82c55bda3c50c349df78bad7bbfdd7042` |
| 15 | `theorem` | [mem_positiveLagFiber_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/mem-positivelagfiber-iff--caf50e4a76be4017c374d0b8.md) | 254 | `result-track:caf50e4a76be4017c374d0b85626f5cd9a8c796906a8bec10c47d8677b742b84` |
| 16 | `theorem` | [positivePairLag_mapsTo](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positivepairlag-mapsto--8b4a012ea6e51fe322f544cf.md) | 274 | `result-track:8b4a012ea6e51fe322f544cfc1a0fdf95fbfe1d002137e9419d346a5ef4d360e` |
| 17 | `def` | [positiveLagFiberEquivIoc](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positivelagfiberequivioc--7901c408e4de8591b1628912.md) | 287 | `declaration-track:7901c408e4de8591b1628912b13c3c92096061afda69a4b7f3f1c2ba04efb96f` |
| 18 | `theorem` | [positivePairSum_eq_positiveShift](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/positivepairsum-eq-positiveshift--4609f2b9cf348e6ab36e22af.md) | 322 | `result-track:4609f2b9cf348e6ab36e22af2813179c40ab0b9b4c980a3e9be5452cd8125e9f` |
| 19 | `theorem` | [two_mul_positiveShift_add_diagonal_eq_bilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/declarations/two-mul-positiveshift-add-diagonal-eq-bilinear--0cdf6786b16f432d370a0d5d.md) | 361 | `result-track:0cdf6786b16f432d370a0d5d1ddaee78afdab4374584394a834da15ebbc764fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
