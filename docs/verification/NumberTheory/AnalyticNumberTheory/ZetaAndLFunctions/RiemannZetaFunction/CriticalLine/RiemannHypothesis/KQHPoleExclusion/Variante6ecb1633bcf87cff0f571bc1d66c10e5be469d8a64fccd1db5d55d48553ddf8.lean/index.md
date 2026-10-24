# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusion.Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20fe8a99da89b6a04bad0ad69cb003285c7c5b42",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20fe8a99da89b6a04bad0ad69cb003285c7c5b42`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/finitetransform--112893e2b18cea4552164789.md) | 37 | `declaration-track:112893e2b18cea4552164789962bce21d4bd3720199f83282f2a53c3da007105` |
| 2 | `def` | [exclusionBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/exclusionbound--9ff87550e807038113f5ba7b.md) | 42 | `declaration-track:9ff87550e807038113f5ba7bf672f88b6043acd4182569a9bb13ceff5b1c4f8f` |
| 3 | `theorem` | [exclusionBound_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/exclusionbound-eq--761f95a887448944b481b53d.md) | 46 | `result-track:761f95a887448944b481b53def37c27ecde5a89181b6af0eb7a4ea77880b4d55` |
| 4 | `theorem` | [exclusionBound_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/exclusionbound-pos--b534f6b6a25b74a859ca1731.md) | 53 | `result-track:b534f6b6a25b74a859ca1731aada52b5978ca731d82f7d6505a098704eba44a9` |
| 5 | `theorem` | [regularPart_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/regularpart-lower-bound--7e4dcee64de301e33d6b9aea.md) | 65 | `result-track:7e4dcee64de301e33d6b9aea87f682dad05613d5714138c959cfc2559c944741` |
| 6 | `theorem` | [finite_regularPart_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/finite-regularpart-bound--b229a3cf904998354caae011.md) | 80 | `result-track:b229a3cf904998354caae01139f156c38ffbb4f6f575ebdc55a19ec861fb49c5` |
| 7 | `theorem` | [finiteTransform_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/finitetransform-lower-bound--9214a8b0ee8c1300cda49677.md) | 105 | `result-track:9214a8b0ee8c1300cda49677eaec18911facca85425ea6e65db3835d19243d1d` |
| 8 | `theorem` | [finiteTransform_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/finitetransform-ne-zero--415ecc5cf0505d033dfb393c.md) | 118 | `result-track:415ecc5cf0505d033dfb393c5fad465b35b41e07735007999a2de10f06014669` |
| 9 | `theorem` | [finiteTransform_ne_zero_of_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/finitetransform-ne-zero-of-radius--7ea144c5572d8fc50284e0d7.md) | 134 | `result-track:7ea144c5572d8fc50284e0d7773df5b6849b1f96c93c27a5257a3e97a208f6f7` |
| 10 | `theorem` | [perturbative_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/perturbative-ne-zero--1a696bc319c7bedd058a4b44.md) | 151 | `result-track:1a696bc319c7bedd058a4b44f305dc6f01a9dd17dbb06673f841d26e7aeae825` |
| 11 | `theorem` | [finiteTransform_comparison_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/finitetransform-comparison-ne-zero--1cfe61e3886b1345ee10ddf1.md) | 160 | `result-track:1cfe61e3886b1345ee10ddf16d320afa1e5633e337eb826a3cc0cfaf9f086ed3` |
| 12 | `def` | [twoAtomTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/twoatomtransform--2139b3ff11792b1b997dd35f.md) | 173 | `declaration-track:2139b3ff11792b1b997dd35f5985d22d0b435cb4ba797d25213540233d6374a4` |
| 13 | `theorem` | [twoAtomTransform_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/twoatomtransform-eq--8dc001bacf71646b04de12f3.md) | 177 | `result-track:8dc001bacf71646b04de12f38aa868369abe06f0dc07e8e5f5c9adf3b5c28ff0` |
| 14 | `theorem` | [twoAtomTransform_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/twoatomtransform-zero--2f6a938d4bcf59cbd8e44df6.md) | 185 | `result-track:2f6a938d4bcf59cbd8e44df66704247da40ed04a76985eedee5f1d9c4b914aa9` |
| 15 | `theorem` | [no_gap_only_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/declarations/no-gap-only-radius--36bb6001ad8e567427ff1906.md) | 193 | `result-track:36bb6001ad8e567427ff19061d950eb77313c717cd765dc4a13d0e8cb5e74974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
