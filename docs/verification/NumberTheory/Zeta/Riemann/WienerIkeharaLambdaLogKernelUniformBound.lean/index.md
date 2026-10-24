# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelUniformBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "331f976ea19dd494d8e7f7dda77b81a4e45f9c42",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `331f976ea19dd494d8e7f7dda77b81a4e45f9c42`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelFiniteBridge`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneFiniteSigmaFubini`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerShiftedCauchy](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienershiftedcauchy--b311737ffb6731a849d90d96.md) | 68 | `declaration-track:b311737ffb6731a849d90d965163ef45ba4b9532654419ebcff61a427aeac747` |
| 2 | `theorem` | [wienerShiftedCauchy_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienershiftedcauchy-integrable--f77fcf7db8ce8de7da05701a.md) | 74 | `result-track:f77fcf7db8ce8de7da05701a36bd1edd5fb019199f3f0743c6ae1577e550aca6` |
| 3 | `theorem` | [wienerShiftedCauchy_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienershiftedcauchy-integral--7801bcfe369cee4dab135eb6.md) | 92 | `result-track:7801bcfe369cee4dab135eb69ba2eccea585c546e2fbbbbce7a8a79bc58f6672` |
| 4 | `theorem` | [wienerShiftedCauchy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienershiftedcauchy-nonnegative--c4cef395aafa837c00614778.md) | 123 | `result-track:c4cef395aafa837c006147787625ed00c06acc6a7d31b123b79648ee88d426ca` |
| 5 | `theorem` | [wienerRealLogWeight_eq_shiftedCauchy](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienerreallogweight-eq-shiftedcauchy--965e67059fdbe154255cbd38.md) | 131 | `result-track:965e67059fdbe154255cbd3898f2cb38ac5b3158713f3eaa3bacdc0f3a93850b` |
| 6 | `theorem` | [wienerRealLogWeight_integrableOn_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienerreallogweight-integrableon-one--d8bbcfbfc511b547b80d3550.md) | 142 | `result-track:d8bbcfbfc511b547b80d3550968b335d5905504d65505e4085e117d4448dd050` |
| 7 | `theorem` | [wienerRealLogWeight_integral_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienerreallogweight-integral-le--ef5e7ef08d9eedf5df6fc88e.md) | 165 | `result-track:ef5e7ef08d9eedf5df6fc88e622fbdcbf8e3d27cb48ee9a4fad3c4e0eff0f1ed` |
| 8 | `theorem` | [wienerRealLogWeight_one_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienerreallogweight-one-le--5f7d1f7583564f8b8eb83b01.md) | 205 | `result-track:5f7d1f7583564f8b8eb83b01b862d1e51b5dc90d4e5694eaa845106acf4d9861` |
| 9 | `theorem` | [wienerRealLogWeight_antitoneOn_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienerreallogweight-antitoneon-one--13f547326cfc31c27d1c7a68.md) | 219 | `result-track:13f547326cfc31c27d1c7a686d07f2003c09a8f07c6134af792eac80832cd186` |
| 10 | `theorem` | [wienerShiftedLogWeight_tsum_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienershiftedlogweight-tsum-le--7bd3498529b24a0669c039f6.md) | 231 | `result-track:7bd3498529b24a0669c039f6f0bb51056acaf831920728985d0221e8a063b14c` |
| 11 | `theorem` | [wienerShiftedLambda_logKernel_tsum_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienershiftedlambda-logkernel-tsum-le--1c641f8727d99637133295a8.md) | 274 | `result-track:1c641f8727d99637133295a8dc12d9be904be636e24344f4deb927f3de9b7c0f` |
| 12 | `theorem` | [wienerLambdaLogKernel_shift_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienerlambdalogkernel-shift-eq--89e19d28e7436825c31f058e.md) | 312 | `result-track:89e19d28e7436825c31f058ed0474c19855fd4920d441aa1dc4822227330f3d1` |
| 13 | `theorem` | [wienerLambdaLogKernel_uniform_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/declarations/wienerlambdalogkernel-uniform-bound--11156bdc3aa1b37c8d5ccd5d.md) | 327 | `result-track:11156bdc3aa1b37c8d5ccd5dd59e84ab74ed760ff05938a1fa9486899c7443c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
