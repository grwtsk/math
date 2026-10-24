# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RHIffSpecReal.Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c05a243afa6df9377ce86a9d0c08261fcc71c0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c05a243afa6df9377ce86a9d0c08261fcc71c0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SpectralProof.Operators.LsymPi` — import line 1; external provider; requires a separately pinned dependency.
- `SpectralProof.Determinants.CanonicalId` — import line 2; external provider; requires a separately pinned dependency.
- `SpectralProof.Determinants.SpectralMap` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GRH](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean/declarations/grh--70a8b5fea4bb3f3b7b8a9ded.md) | 17 | `declaration-track:70a8b5fea4bb3f3b7b8a9dedb426e307a06573c56b1e5ca398bde21cac308895` |
| 2 | `def` | [SpectrumReal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean/declarations/spectrumreal--75a3157e3858aa2d39a580e7.md) | 24 | `declaration-track:75a3157e3858aa2d39a580e74ddb849bbc0ef94fe4d67615792bfdf733d29891` |
| 3 | `theorem` | [GRH_iff_spec_real](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean/declarations/grh-iff-spec-real--3402061a24d92eb95feef5cc.md) | 33 | `result-track:3402061a24d92eb95feef5cc198ec1b6b69f671910d6ea0f8eb6ae71e47a2c1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
