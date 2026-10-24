# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothToRelativeInterval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9074062354b71faefd2782637089a753dd3d46f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9074062354b71faefd2782637089a753dd3d46f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothIntervalBrackets`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmoothUnitResidueWienerTestLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothunitresiduewienertestlimit--f4111de0b5440f2ad59b9aa0.md) | 60 | `declaration-track:f4111de0b5440f2ad59b9aa07d762a756bc5d95cacfb43da57bcc47978778137` |
| 2 | `theorem` | [smoothWiener_mem_Ico_ceil_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothwiener-mem-ico-ceil-iff--9928c0d675dec2214eba96ff.md) | 73 | `result-track:9928c0d675dec2214eba96ffa2611e6cc1ed6698647239727769420f37e46780` |
| 3 | `theorem` | [smoothWiener_tsum_indicator_eq_interval](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothwiener-tsum-indicator-eq-interval--abb1e5b9ad169521e8db9002.md) | 88 | `result-track:abb1e5b9ad169521e8db900211270021885a6bd2cdf40a4c1fc1c60592cd2947` |
| 4 | `theorem` | [smoothWiener_weight_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothwiener-weight-summable--9bb0ee89c97e253d76e9268e.md) | 112 | `result-track:9bb0ee89c97e253d76e9268ea0789785aac45a386b6dd673b7948aefe684de52` |
| 5 | `theorem` | [smoothWiener_indicator_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothwiener-indicator-summable--010d18934379340d4b6dff96.md) | 130 | `result-track:010d18934379340d4b6dff96e7452e8ca77e78bcba6fe5f6f7f9f4fd8e909eba` |
| 6 | `theorem` | [smoothWiener_weightedTsum_sandwich](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothwiener-weightedtsum-sandwich--784b346cf3e10f4c0bbca57c.md) | 154 | `result-track:784b346cf3e10f4c0bbca57ce98971aeb7929811b96d72714c42804728c98874` |
| 7 | `theorem` | [smoothWiener_testLimit_to_realInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothwiener-testlimit-to-realinterval--94963a12de07372f79b1c302.md) | 191 | `result-track:94963a12de07372f79b1c3025353d7eac2bb8362715ace3a3f4ae2067235a765` |
| 8 | `theorem` | [smoothWiener_testLimit_to_integerWindow](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/smoothwiener-testlimit-to-integerwindow--baa7295202cbb458adc195d1.md) | 276 | `result-track:baa7295202cbb458adc195d1ef256837a4888372c41249baf73bf7569d6cf1da` |
| 9 | `def` | [PinnedVonMangoldtSmoothWienerLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/pinnedvonmangoldtsmoothwienerlimit--4167385db272cccec44fb939.md) | 296 | `declaration-track:4167385db272cccec44fb93970692c88731c32077e8b1068a1fd599291e38770` |
| 10 | `theorem` | [pinnedVonMangoldt_relativeWindows_of_smoothWiener](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/declarations/pinnedvonmangoldt-relativewindows-of-smoothwiener--6a6c8282430bbd3841a3a191.md) | 302 | `result-track:6a6c8282430bbd3841a3a191e7cfe97dd9cda5e352a6277b9571f66674374ec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
