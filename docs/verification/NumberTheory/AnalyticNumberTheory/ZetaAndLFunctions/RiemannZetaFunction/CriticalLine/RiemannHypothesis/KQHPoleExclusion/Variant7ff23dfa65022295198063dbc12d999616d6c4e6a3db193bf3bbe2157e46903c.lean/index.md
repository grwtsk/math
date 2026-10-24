# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusion.Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "635c56f684a79385e4f786aa330c5ce2e21b54be",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `635c56f684a79385e4f786aa330c5ce2e21b54be`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean.json)

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
| 1 | `def` | [finiteTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/finitetransform--338cde28f1da93a376f5b49e.md) | 29 | `declaration-track:338cde28f1da93a376f5b49e2584a19d02ae34a11a7fa7a4c6c7dae8b752b620` |
| 2 | `def` | [exclusionBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/exclusionbound--6b3f1bc07bc88906cb55960d.md) | 34 | `declaration-track:6b3f1bc07bc88906cb55960da06c696404efca9074468432a67e41c3397c7a47` |
| 3 | `theorem` | [exclusionBound_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/exclusionbound-eq--5a21456a9c9158a76ae22a78.md) | 38 | `result-track:5a21456a9c9158a76ae22a783d06a08174b9534a5c45b327a71a376293e86a98` |
| 4 | `theorem` | [exclusionBound_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/exclusionbound-pos--83ebe9635ea9acbdce558952.md) | 45 | `result-track:83ebe9635ea9acbdce5589529397d6eb562cb619819b14866421a434c0ee8a90` |
| 5 | `theorem` | [regularPart_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/regularpart-lower-bound--cc5ed155052f5c90968aa3fc.md) | 57 | `result-track:cc5ed155052f5c90968aa3fc16ece51ff1a721de65084707daad565f89a246f2` |
| 6 | `theorem` | [finite_regularPart_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/finite-regularpart-bound--23bf549507fdc53c7b963b50.md) | 72 | `result-track:23bf549507fdc53c7b963b507fb3c9f7b5948a5aafdd60f77da48fee8da51de7` |
| 7 | `theorem` | [finiteTransform_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/finitetransform-lower-bound--b503317060102e1776a4eac9.md) | 97 | `result-track:b503317060102e1776a4eac982694e5cffc5befab404765340d0c3505338989f` |
| 8 | `theorem` | [finiteTransform_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/finitetransform-ne-zero--a6c3be1b18024027fde214eb.md) | 110 | `result-track:a6c3be1b18024027fde214eb15fb94983fed040edc67fe32a94fdd0ca0f07f1c` |
| 9 | `theorem` | [finiteTransform_ne_zero_of_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/finitetransform-ne-zero-of-radius--600ca976bda8726865d7bc00.md) | 126 | `result-track:600ca976bda8726865d7bc008be88edc082dfd433eb74b3098b67d73f15bd5d4` |
| 10 | `theorem` | [perturbative_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/perturbative-ne-zero--e745ba55e65a0ea7e5d67f1d.md) | 143 | `result-track:e745ba55e65a0ea7e5d67f1d578e37baa2666319e6f7dac5c7e13ecd4c62e58c` |
| 11 | `theorem` | [finiteTransform_comparison_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/finitetransform-comparison-ne-zero--90ab6e46b8f9d27d879e3678.md) | 152 | `result-track:90ab6e46b8f9d27d879e3678839e3854246f08bea7cde40c1aba780fa7ddb011` |
| 12 | `def` | [twoAtomTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/twoatomtransform--f5a7c48a881ded234b026346.md) | 165 | `declaration-track:f5a7c48a881ded234b0263467cb89bdea0e632fb068be6fcdd6e84042b9bcb25` |
| 13 | `theorem` | [twoAtomTransform_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/twoatomtransform-eq--14f03b650a84d4eb44a2b017.md) | 169 | `result-track:14f03b650a84d4eb44a2b0170583206ce99b4ff47185ed5c78386f0c8c193df0` |
| 14 | `theorem` | [twoAtomTransform_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/twoatomtransform-zero--46d7de04ec9e9ae119927657.md) | 177 | `result-track:46d7de04ec9e9ae119927657eb4bb034b73408e0b5996522155c91c2b867e327` |
| 15 | `theorem` | [no_gap_only_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean/declarations/no-gap-only-radius--5c06ec822c8dca5ee752727c.md) | 185 | `result-track:5c06ec822c8dca5ee752727cc68eb1f774878fd1104d31c4de26dc199a753ecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
