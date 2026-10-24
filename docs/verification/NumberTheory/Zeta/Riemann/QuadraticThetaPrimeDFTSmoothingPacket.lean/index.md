# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a48d33635131b7a36ca7df0ef616875209e35e7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a48d33635131b7a36ca7df0ef616875209e35e7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingWindow`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeIntervalSmoothingPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/declarations/primeintervalsmoothingpacket--23dcd2ae18a2cddcf079fed3.md) | 19 | `declaration-track:23dcd2ae18a2cddcf079fed38ef0a7ee4131d4be253ebda67730c43a9326e862` |
| 2 | `structure` | [DyadicPrimeIntervalSmoothingFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/declarations/dyadicprimeintervalsmoothingfamily--65553ce246f25da4b07f0d90.md) | 32 | `declaration-track:65553ce246f25da4b07f0d905a39b48a50025fcbaeeed3d32ea6273907dfe524` |
| 3 | `def` | [PrimeDFTSmoothingPacketReadoutAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/declarations/primedftsmoothingpacketreadoutat--cab057abe9ef8ace6376adfb.md) | 45 | `declaration-track:cab057abe9ef8ace6376adfb86d65783b895509aa730466df6fd1c2675fac2c7` |
| 4 | `def` | [SmoothingFamilyInThreeQuarterWindow](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/declarations/smoothingfamilyinthreequarterwindow--442c67160640edc7472e64aa.md) | 53 | `declaration-track:442c67160640edc7472e64aa6c1b59f4dee6e5bc1080f1b21cc60c001e181432` |
| 5 | `theorem` | [smoothingPacketReadout_to_sevenEighthsPartialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/declarations/smoothingpacketreadout-to-seveneighthspartialdiscrepancy--0f6819a2880db3043a8dead6.md) | 60 | `result-track:0f6819a2880db3043a8dead633d7158a9aefdb095845a7f46809e036f48458c6` |
| 6 | `theorem` | [oneThird_in_smoothing_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/declarations/onethird-in-smoothing-window--b0ae8c2cfa9f8b756dae9a85.md) | 71 | `result-track:b0ae8c2cfa9f8b756dae9a850262c96d634ce42e43496e5ccc30624a0f2a8e1a` |
| 7 | `theorem` | [oneThird_balanced_smoothing_exponents](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/declarations/onethird-balanced-smoothing-exponents--6ef65b77e603ff18111aab7e.md) | 77 | `result-track:6ef65b77e603ff18111aab7e745e1f6946d62fcb5931834cca769c634a73ffb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
