# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ZeroShellCountFixtures.Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "028dd54af909ffecc2272f7ee1c949e8e3e91096",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `028dd54af909ffecc2272f7ee1c949e8e3e91096`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Field` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [each_synthetic_shell_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/each-synthetic-shell-finite--3c19a86c2e0e5f7350e311e2.md) | 14 | `result-track:3c19a86c2e0e5f7350e311e275ec397aa259e4c43fbf134d56f6ee155729e8d9` |
| 2 | `theorem` | [finite_shells_not_quartic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/finite-shells-not-quartic--0ffc7cc06300e083b81f2130.md) | 17 | `result-track:0ffc7cc06300e083b81f2130fa03fde32c68a47c73f9675b8728d530f9d140a9` |
| 3 | `def` | [SyntheticOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/syntheticoccurrences--3cd6e56c65c35767be7062a4.md) | 33 | `declaration-track:3cd6e56c65c35767be7062a494ef5a41e6fc04347f26b50dae94f7673048c1e8` |
| 4 | `theorem` | [multiplicity_slots_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/multiplicity-slots-three--001fb39b5c75749dadc265f2.md) | 36 | `result-track:001fb39b5c75749dadc265f2ba86331418a1a2c60e980c5d9ee4c3b187d28460` |
| 5 | `theorem` | [point_count_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/point-count-two--d3db9ecdc100f3262bf60ecc.md) | 42 | `result-track:d3db9ecdc100f3262bf60ecc46233722594f56d73c026cfae77eadb4f0972f11` |
| 6 | `theorem` | [forgetting_multiplicity_changes_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/forgetting-multiplicity-changes-count--283c215e04af5d25f9469414.md) | 45 | `result-track:283c215e04af5d25f9469414945b314344259947a22a022df96ac1bda1756065` |
| 7 | `theorem` | [shifted_shell_boundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/shifted-shell-boundary--9725e2d74162b1516ead4517.md) | 51 | `result-track:9725e2d74162b1516ead4517da0fe8428855d81ae91725228fd5d07cb1d8ffd5` |
| 8 | `theorem` | [shifted_boundary_not_previous_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/shifted-boundary-not-previous-shell--5a11379cd9482f406595577b.md) | 55 | `result-track:5a11379cd9482f406595577b1ea4293781f94b4e58548fa7362a3c6aca7803ad` |
| 9 | `theorem` | [omitting_shift_changes_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/declarations/omitting-shift-changes-shell--b5316610b71b3cc1ba9116e1.md) | 61 | `result-track:b5316610b71b3cc1ba9116e10ca2676c524aeba52622adc812bfde65c7f2dddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
