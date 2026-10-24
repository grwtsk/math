# Verification target: GRWTSK.NumberTheory.Padics.RationalPairSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38865bf0f550dff0b1a2b529f704c2f7b3601df",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Padics/RationalPairSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38865bf0f550dff0b1a2b529f704c2f7b3601df`.

Source path: `GRWTSK/NumberTheory/Padics/RationalPairSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Padics/RationalPairSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess`](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coprime_depths](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/coprime-depths--c266778603279a47dbc29a5a.md) | 23 | `result-track:c266778603279a47dbc29a5a10a4b5e94e614fa85cdff05bdb767f6a54ce29a1` |
| 2 | `def` | [support](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/support--2ad60578ddc18e15ffec6679.md) | 36 | `declaration-track:2ad60578ddc18e15ffec66793bae87ad8c4c8b75ac96f8572a4d7d04c02468c0` |
| 3 | `theorem` | [support_prime](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/support-prime--d52e12d413f3f2cc567c695d.md) | 38 | `result-track:d52e12d413f3f2cc567c695d6472b6b00d88ad9cc618f5989226e5ea7c418b4f` |
| 4 | `theorem` | [valuation_factorization](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/valuation-factorization--71fb6a05c6b7064e4bf0686c.md) | 48 | `result-track:71fb6a05c6b7064e4bf0686cdddef3055baa3617a050acdf23a7f9bd02be7cdc` |
| 5 | `theorem` | [mem_support_iff_valuation](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/mem-support-iff-valuation--07e381d920150da8177ab079.md) | 55 | `result-track:07e381d920150da8177ab07901d6322c8607b567d04b3827795b80930277d6a9` |
| 6 | `def` | [IsSUnit](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/issunit--21f5914dc299285ca0c82474.md) | 66 | `declaration-track:21f5914dc299285ca0c82474b352fe54686b07964305773d702a3a452f937db3` |
| 7 | `def` | [pairSupport](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/pairsupport--1b9930914b94621eac7a86d4.md) | 69 | `declaration-track:1b9930914b94621eac7a86d4194671c1941007e36939d0deddefbe9309a7999a` |
| 8 | `theorem` | [pairSupport_prime](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/pairsupport-prime--cc113d92e3a4fd6c32297048.md) | 71 | `result-track:cc113d92e3a4fd6c32297048e84a43eb4d06aa2b73bc5f40ec59b31f63377e01` |
| 9 | `theorem` | [mem_pairSupport_iff](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/mem-pairsupport-iff--1add53362e7ffa7603e87df7.md) | 76 | `result-track:1add53362e7ffa7603e87df7b8e2701019a5331cb358375141a977ceba38e30b` |
| 10 | `theorem` | [pair_SUnit_iff](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/pair-sunit-iff--286f5648df735512ebbd9f91.md) | 82 | `result-track:286f5648df735512ebbd9f9121e5ed503dce04067798076a81a3bf34ba3b6855` |
| 11 | `def` | [boundaryDepth](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/boundarydepth--4d1479249014408a861913ef.md) | 88 | `declaration-track:4d1479249014408a861913ef57990cb50b621af1bf3576bcf94490f758f88987` |
| 12 | `theorem` | [boundaryDepth_ne_zero_iff](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/boundarydepth-ne-zero-iff--40f4d41b4f03ac20d320eb1a.md) | 91 | `result-track:40f4d41b4f03ac20d320eb1a88d4f328fb0d714f339baa28f47b79ec1d46caed` |
| 13 | `theorem` | [supportLog_coprime](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/supportlog-coprime--475fd05d6be3e0d9afa7fe29.md) | 105 | `result-track:475fd05d6be3e0d9afa7fe293da6436fbc47aaa5dc0c57b18776adb379d93741` |
| 14 | `theorem` | [zero_not_SUnit](../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/declarations/zero-not-sunit--333ee5db7a26fbba62aa8d5c.md) | 118 | `result-track:333ee5db7a26fbba62aa8d5c3602c733343acbdb404d798eab579e733bac5954` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
