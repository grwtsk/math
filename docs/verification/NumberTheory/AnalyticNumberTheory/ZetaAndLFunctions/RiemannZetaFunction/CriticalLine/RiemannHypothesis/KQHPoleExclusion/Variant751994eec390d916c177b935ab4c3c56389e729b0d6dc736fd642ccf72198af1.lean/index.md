# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusion.Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b285f373d06ae64fdc6f74787f713dbe9e926ac3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b285f373d06ae64fdc6f74787f713dbe9e926ac3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/finitetransform--67ab84b2ce60979584123138.md) | 28 | `declaration-track:67ab84b2ce6097958412313812c7bb8a9718ec980622420b9704e7ea06ea0b41` |
| 2 | `def` | [exclusionBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/exclusionbound--aa20ee2698501265e4d3c617.md) | 33 | `declaration-track:aa20ee2698501265e4d3c617d3d1aa60394a9f723b81ee91c18b81a5ffc71a2d` |
| 3 | `theorem` | [exclusionBound_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/exclusionbound-eq--4453d0e15aa0b057bd426c70.md) | 37 | `result-track:4453d0e15aa0b057bd426c7060d064027b5560cdd82949527b82e43862750949` |
| 4 | `theorem` | [exclusionBound_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/exclusionbound-pos--af0f3b653636fdc05df34b20.md) | 44 | `result-track:af0f3b653636fdc05df34b201cbc786c4457d735a5478dea4eeccc8f4cdcf16f` |
| 5 | `theorem` | [regularPart_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/regularpart-lower-bound--cf314e8c29e8322a34a99ed8.md) | 56 | `result-track:cf314e8c29e8322a34a99ed8e8a94486e721f78947273d18f23822bd0af47b88` |
| 6 | `theorem` | [finite_regularPart_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/finite-regularpart-bound--8b2c16f5d3223a22aaeece01.md) | 71 | `result-track:8b2c16f5d3223a22aaeece01a3af5b2e120936082b09db3670034c09a17ce4be` |
| 7 | `theorem` | [finiteTransform_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/finitetransform-lower-bound--32fb2c053045964878fe49a7.md) | 98 | `result-track:32fb2c053045964878fe49a7ebabaf7e27f0a24c311fed8189d7550d7e6fe90c` |
| 8 | `theorem` | [finiteTransform_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/finitetransform-ne-zero--ec7f876eda97cb9c44d90a55.md) | 111 | `result-track:ec7f876eda97cb9c44d90a55b100355db959606bcde0b2b626ffcbc4968492c7` |
| 9 | `theorem` | [perturbative_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/perturbative-ne-zero--ffead9e61846f496ecdf3874.md) | 126 | `result-track:ffead9e61846f496ecdf3874dd7f90403326cedae60729fe26b633ce1dd56fd9` |
| 10 | `theorem` | [finiteTransform_comparison_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/finitetransform-comparison-ne-zero--548cf95a96d6038f9ba634f5.md) | 135 | `result-track:548cf95a96d6038f9ba634f5193a943c9d7d4737b27dee505cfeb8ab240d7bca` |
| 11 | `def` | [twoAtomTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/twoatomtransform--1acaed20affe16bf5ca08608.md) | 148 | `declaration-track:1acaed20affe16bf5ca08608c697946014c5ce93b85873f10b7d497e00b6f55c` |
| 12 | `theorem` | [twoAtomTransform_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/twoatomtransform-eq--ea04c36ef0ff16aa90c4279a.md) | 152 | `result-track:ea04c36ef0ff16aa90c4279a59cbc5b8fe82467631b12b930b6842a5f9756894` |
| 13 | `theorem` | [twoAtomTransform_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/twoatomtransform-zero--b4536df2f9f19f36d78ae9e0.md) | 160 | `result-track:b4536df2f9f19f36d78ae9e01aefaa27f83d21dcfd42f1e86485fb3c87fda02f` |
| 14 | `theorem` | [no_gap_only_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant751994eec390d916c177b935ab4c3c56389e729b0d6dc736fd642ccf72198af1.lean/declarations/no-gap-only-radius--0b5e1527adf7ac959d463399.md) | 168 | `result-track:0b5e1527adf7ac959d463399ca7162e1685d6d4f4dfb2a4cb272336a8a40071f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
