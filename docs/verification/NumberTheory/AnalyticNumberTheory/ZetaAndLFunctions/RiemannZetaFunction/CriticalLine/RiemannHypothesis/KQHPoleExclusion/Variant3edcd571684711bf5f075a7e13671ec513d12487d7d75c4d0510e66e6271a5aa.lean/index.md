# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusion.Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77b5b4dc85ccef099d6d92413a42bd3a4ab63151",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77b5b4dc85ccef099d6d92413a42bd3a4ab63151`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/finitetransform--775fd15788e93ac00335ba10.md) | 29 | `declaration-track:775fd15788e93ac00335ba100300a3babede44adaf9ab0950de217436949873b` |
| 2 | `def` | [exclusionBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/exclusionbound--de32c731118ec19a6862ff3b.md) | 34 | `declaration-track:de32c731118ec19a6862ff3b9da9027705bd88d73db55d2e5026d8d66db72278` |
| 3 | `theorem` | [exclusionBound_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/exclusionbound-eq--962c3a73c526b3f2de4b04c6.md) | 38 | `result-track:962c3a73c526b3f2de4b04c68cba06414eba8ed8766f35202f447250e8049d7c` |
| 4 | `theorem` | [exclusionBound_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/exclusionbound-pos--b54345392e6d78ca52efdad9.md) | 45 | `result-track:b54345392e6d78ca52efdad9a3609c38f2781a69f07346ad8acaa5df45714803` |
| 5 | `theorem` | [regularPart_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/regularpart-lower-bound--da563e7402fee075b711cc69.md) | 57 | `result-track:da563e7402fee075b711cc6929b4430e6d05d4aaf82ac56019e4fe039aecd0e2` |
| 6 | `theorem` | [finite_regularPart_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/finite-regularpart-bound--edbf42fd81e641b63f394cbc.md) | 72 | `result-track:edbf42fd81e641b63f394cbc8ec416ea298d5481bfc51efa96af327c2f565e16` |
| 7 | `theorem` | [finiteTransform_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/finitetransform-lower-bound--3727f9f0a5d844b826c9d605.md) | 97 | `result-track:3727f9f0a5d844b826c9d605749b447904fa52c61886518f5634045a02fa2985` |
| 8 | `theorem` | [finiteTransform_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/finitetransform-ne-zero--2c9d436a815824461b1a0f90.md) | 110 | `result-track:2c9d436a815824461b1a0f90c538aba7904772f00d3a74ea493d084275e9485f` |
| 9 | `theorem` | [finiteTransform_ne_zero_of_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/finitetransform-ne-zero-of-radius--4e0af766e72769d8c4d1990b.md) | 126 | `result-track:4e0af766e72769d8c4d1990b94b5880247f6c4a99fb5fff51049e5b90b64b595` |
| 10 | `theorem` | [perturbative_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/perturbative-ne-zero--622be1d50d846d892ad09640.md) | 143 | `result-track:622be1d50d846d892ad09640273c0d6d431f77762d01a369a69ba8e6b2b81000` |
| 11 | `theorem` | [finiteTransform_comparison_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/finitetransform-comparison-ne-zero--fb8d85d18b7c8edf1cd922dd.md) | 152 | `result-track:fb8d85d18b7c8edf1cd922dd2a94ff226b39e9a1de34f8904a92279affaaaecc` |
| 12 | `def` | [twoAtomTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/twoatomtransform--51b9fe62c09e6bd800347908.md) | 165 | `declaration-track:51b9fe62c09e6bd8003479086487e335660cfc97b7741a540e293e2589e167c6` |
| 13 | `theorem` | [twoAtomTransform_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/twoatomtransform-eq--eb1b6e71d4294816fae652fb.md) | 169 | `result-track:eb1b6e71d4294816fae652fb02c2620bde6e87137b9eb903132822ade0a4b6b6` |
| 14 | `theorem` | [twoAtomTransform_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/twoatomtransform-zero--7a197c496d5c57c0ef21161f.md) | 177 | `result-track:7a197c496d5c57c0ef21161ffb354d16cc06a5bf468cca0691fabe4beb3ace63` |
| 15 | `theorem` | [no_gap_only_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant3edcd571684711bf5f075a7e13671ec513d12487d7d75c4d0510e66e6271a5aa.lean/declarations/no-gap-only-radius--57ae05dfa603aebe847b7006.md) | 185 | `result-track:57ae05dfa603aebe847b7006ec7a6f5dfa158944333f80d77240741fb9f2a6b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
