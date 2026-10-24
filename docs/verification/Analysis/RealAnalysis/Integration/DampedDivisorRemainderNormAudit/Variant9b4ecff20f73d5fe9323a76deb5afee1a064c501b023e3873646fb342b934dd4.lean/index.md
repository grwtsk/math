# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNormAudit.Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a533865da79a6d85881d42b41f6da7b91d661fb1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a533865da79a6d85881d42b41f6da7b91d661fb1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/divisorremaindercore--a4716b3c4ace375ba3e44a85.md) | 22 | `declaration-track:a4716b3c4ace375ba3e44a851aa1294d5622bf85078b6543d9c9e454c009c4ac` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/divisorremaindercore-measurable--2eebefeddedcde7887badb51.md) | 28 | `result-track:2eebefeddedcde7887badb516b8e98d46fa34ff638e7b26191d37c03e859dc61` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/divisorremaindercore-sq-le--a921df15a0104a6aaa29ccc3.md) | 40 | `result-track:a921df15a0104a6aaa29ccc38e06002e8c5460d526c5fa5c9a2ccc619e83608e` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/remaindermajorant-integrable--f70b7a949b20006b0b0aa354.md) | 69 | `result-track:f70b7a949b20006b0b0aa354b11ea85ca9b99bb9abc95b5b30320efe65cd1a19` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/divisorremaindercore-memlp--28f3452abffb4010414fcd57.md) | 76 | `result-track:28f3452abffb4010414fcd57403a5709ca108023c37840740f5845759752e702` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/divisorremaindervector--8ebba0176459f1b69c381c3f.md) | 87 | `declaration-track:8ebba0176459f1b69c381c3fd35cfcd20309dce053478b22c8e8d67d0145ecea` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/divisorremaindervector-norm-le--4ca1c70a0ddfa6685804f18f.md) | 91 | `result-track:4ca1c70a0ddfa6685804f18f81fe31f53e69dc54cca47fca8e0d65216b31e0e4` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/declarations/sourcemultiplier-divisorremainder-norm-le--071547d9f581de0deb8063da.md) | 114 | `result-track:071547d9f581de0deb8063da62ba6410e6369dff65190b551494b74c53df87cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
