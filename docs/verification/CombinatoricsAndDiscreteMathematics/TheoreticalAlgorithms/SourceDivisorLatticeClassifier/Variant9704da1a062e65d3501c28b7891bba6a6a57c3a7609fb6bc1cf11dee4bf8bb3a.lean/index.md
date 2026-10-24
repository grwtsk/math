# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceDivisorLatticeClassifier.Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61b4320e03fcf04e5991dc0a969fa348f57d364",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61b4320e03fcf04e5991dc0a969fa348f57d364`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/divisorpattern--1a463a27984fc847f8b16437.md) | 20 | `declaration-track:1a463a27984fc847f8b1643772d96eb11701cd81e0e77956991dad4e4ddc65ca` |
| 2 | `def` | [restrictPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/restrictpattern--8acb6c6a946e59ebb19ab0da.md) | 23 | `declaration-track:8acb6c6a946e59ebb19ab0da36339f8702e448e8e5489877dd512df2d0540194` |
| 3 | `theorem` | [divisorPattern_restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/divisorpattern-restrict--7c60517d93c9c9168d874afe.md) | 26 | `result-track:7c60517d93c9c9168d874afe524c8e7317838fdc9779809fd2209756e8f66b90` |
| 4 | `def` | [observation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/observation--3af991c4c21444cce351eb14.md) | 38 | `declaration-track:3af991c4c21444cce351eb14295079fee209b94f0ff3e46a3e08bba943288da1` |
| 5 | `theorem` | [divisorPattern_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/divisorpattern-union--2786bb6912837da4fd33f7d6.md) | 42 | `result-track:2786bb6912837da4fd33f7d6e5b1959f1244bcf12d29fefba71d06fbcb07afd8` |
| 6 | `theorem` | [union_pattern_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/union-pattern-eq-iff--71272d6a79d762747a067784.md) | 49 | `result-track:71272d6a79d762747a067784dfaf70f9471593f2ad309e7ebcec9637abf04b87` |
| 7 | `theorem` | [observation_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/observation-union--3cdc96de2cd792d14e8d812d.md) | 63 | `result-track:3cdc96de2cd792d14e8d812db05eebe39f45aab5c2929ce26839fbe984aa9412` |
| 8 | `theorem` | [observation_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/observation-antitone--54a8ff0849255c525f6b52b6.md) | 70 | `result-track:54a8ff0849255c525f6b52b6e224f97b967785f3444f563b22135895054bafbf` |
| 9 | `theorem` | [observation_sup_le_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/observation-sup-le-inter--df4b61ce7708e9576f6bfd76.md) | 79 | `result-track:df4b61ce7708e9576f6bfd76ea855b720306d380084807afc9e3bc76c0d1f38b` |
| 10 | `theorem` | [observation_two_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/observation-two-bot--4c397e6e51a7f90348d46123.md) | 84 | `result-track:4c397e6e51a7f90348d46123237a326140982ff1b9c1632141901183ac55161c` |
| 11 | `theorem` | [observation_three_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/observation-three-bot--a847df6da371d192e3552fbf.md) | 107 | `result-track:a847df6da371d192e3552fbf8f5913a17e1c604a961046960f80a30b94c5fac1` |
| 12 | `theorem` | [strict_observation_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant9704da1a062e65d3501c28b7891bba6a6a57c3a7609fb6bc1cf11dee4bf8bb3a.lean/declarations/strict-observation-join--151ac91c2275e2e376fa5ecf.md) | 131 | `result-track:151ac91c2275e2e376fa5ecf3ccdf4f8141dcdc9914744a8ca9ee0f10b117ab4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
