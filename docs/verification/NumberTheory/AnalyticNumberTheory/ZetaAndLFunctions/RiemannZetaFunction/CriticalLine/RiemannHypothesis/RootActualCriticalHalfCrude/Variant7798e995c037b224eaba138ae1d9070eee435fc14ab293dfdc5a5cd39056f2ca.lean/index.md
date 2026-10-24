# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualCriticalHalfCrude.Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7949976d9038134598af50614ab0dd9e09060ab",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7949976d9038134598af50614ab0dd9e09060ab`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCenteredHalfZetaReduction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCriticalHalfCrudeConstant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean/declarations/actualcriticalhalfcrudeconstant--d23dff32d1856abc3ffd9b28.md) | 27 | `declaration-track:d23dff32d1856abc3ffd9b288da7d69f889a57699cdd6b30d6a54fa30160df2a` |
| 2 | `theorem` | [actualCriticalMoebiusHalf_abs_le_harmonic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean/declarations/actualcriticalmoebiushalf-abs-le-harmonic--d580553153a4954a6d0114e5.md) | 31 | `result-track:d580553153a4954a6d0114e5b6ae8758a357653888f3c402698b208465fa0779` |
| 3 | `theorem` | [half_harmonic_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean/declarations/half-harmonic-nonneg--752211074b1bf5d7724b912b.md) | 41 | `result-track:752211074b1bf5d7724b912bd71b364781af7c426668bc5b0345bbeec7e4742b` |
| 4 | `theorem` | [finiteHalfHarmonic_le_calibrated_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean/declarations/finitehalfharmonic-le-calibrated-sqrt--2cc5612230bfe5c3bd9fdcb1.md) | 46 | `result-track:2cc5612230bfe5c3bd9fdcb15d768c95c4faca1cbd4eb5d672db809831e0883d` |
| 5 | `theorem` | [actualCenteredHalfZetaMain_abs_le_crude_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalHalfCrude/Variant7798e995c037b224eaba138ae1d9070eee435fc14ab293dfdc5a5cd39056f2ca.lean/declarations/actualcenteredhalfzetamain-abs-le-crude-sqrt--726ca8b57021e296d8141a0b.md) | 59 | `result-track:726ca8b57021e296d8141a0b26b1eb7b30d3b5ccf03e39416acfb9a24dba9547` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
