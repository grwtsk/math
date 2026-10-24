# Verification target: GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c485b8369274c85e67038702f0542fcaff6be3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c485b8369274c85e67038702f0542fcaff6be3`.

Source path: `GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteTraceFourierSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFourierSupportCertificate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/finitefouriersupportcertificate--a0b6b8e93793a97d615dfb13.md) | 47 | `declaration-track:a0b6b8e93793a97d615dfb13e6a3b118c878c33f875e63e722f57ff7f8f6a39b` |
| 2 | `def` | [AdmissibleCutoff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/admissiblecutoff--1090e5300b6bbf0ed212526c.md) | 59 | `declaration-track:1090e5300b6bbf0ed212526c8b6586177153030b62d9e3fc4ddb72c53305e118` |
| 3 | `theorem` | [admissibleCutoff_mono](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/admissiblecutoff-mono--e137fbc2c51026aefc4705ae.md) | 64 | `result-track:e137fbc2c51026aefc4705aecfedb2ddf6534e53dd10f0a900b9b37e54071a43` |
| 4 | `theorem` | [iterate_above_support_radius](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/iterate-above-support-radius--9a169003443cda443002e7af.md) | 81 | `result-track:9a169003443cda443002e7afe5779f0685faaadc2feaaaae02a144206e21cef2` |
| 5 | `theorem` | [fourierTest_zero_after_cutoff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/fouriertest-zero-after-cutoff--217b2f4852fb43bc748f5577.md) | 100 | `result-track:217b2f4852fb43bc748f5577b46af258401413137a1712ca332c0b49ddbac5a9` |
| 6 | `theorem` | [traceShapeWeight_zero_after_cutoff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/traceshapeweight-zero-after-cutoff--3d96ae6e89166703e8fff820.md) | 111 | `result-track:3d96ae6e89166703e8fff820d04606d4353aebc4c0ba48a23faff729aafe4cdc` |
| 7 | `theorem` | [omittedSource_has_high_iterate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/omittedsource-has-high-iterate--12424e68a84846db8fa9f405.md) | 123 | `result-track:12424e68a84846db8fa9f405aee0f3961e8738d0fbdbc76d2a1a82c361e8f022` |
| 8 | `theorem` | [fourierTest_zero_on_omitted](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/fouriertest-zero-on-omitted--7aa20f289dea046463a729fa.md) | 142 | `result-track:7aa20f289dea046463a729faf2f3abab3435cfacd7e012908d9f779aa4045adc` |
| 9 | `theorem` | [omittedMass_zero_of_support](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/omittedmass-zero-of-support--0d0b6f55d5858e765a2bc8cc.md) | 154 | `result-track:0d0b6f55d5858e765a2bc8cc62d860a81e6b38873595488029dc77aa906546b8` |
| 10 | `theorem` | [finite_trace_cutoff_error_le_alias_of_support](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/finite-trace-cutoff-error-le-alias-of-support--5650dbc42890b09e29f8845d.md) | 166 | `result-track:5650dbc42890b09e29f8845d464e906dbd8a04156a7cf4f9cda7d695e8cbe587` |
| 11 | `def` | [toyTraceInput](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/toytraceinput--d81e6fce331e6df06c78f1d9.md) | 189 | `declaration-track:d81e6fce331e6df06c78f1d9bf4c3d00e07ab554bb773e1d0c8b14d32ef56e69` |
| 12 | `def` | [toySupportCertificate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/toysupportcertificate--3d3f8bc4024c6a96cd1145be.md) | 200 | `declaration-track:3d3f8bc4024c6a96cd1145bee3c6df4731ad58ced0841fa2a78ec6936b7d51c0` |
| 13 | `theorem` | [toy_cutoff_two_admissible](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/toy-cutoff-two-admissible--4ea5af575a6db1bfc2d1a144.md) | 213 | `result-track:4ea5af575a6db1bfc2d1a1449821648b58466bf20caed085dd604a7ade8aca97` |
| 14 | `theorem` | [toy_cutoff_one_not_admissible](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/toy-cutoff-one-not-admissible--4fc753a2c4a8e6b6e7a40c35.md) | 219 | `result-track:4fc753a2c4a8e6b6e7a40c3530ecd7a6fa9960b8c4619f93b78f477f2a793bcf` |
| 15 | `theorem` | [toy_second_iterate_fourier_nonzero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/declarations/toy-second-iterate-fourier-nonzero--1317703f84c6d52ebab07de1.md) | 225 | `result-track:1317703f84c6d52ebab07de1c2a3177b334c4e609adb0c939f0d173c0eba20d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
