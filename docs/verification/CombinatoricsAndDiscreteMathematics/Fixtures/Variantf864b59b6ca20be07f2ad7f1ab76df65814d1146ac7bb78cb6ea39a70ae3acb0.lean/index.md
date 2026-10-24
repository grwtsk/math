# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fixtures.Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9be99e6df56c3c8d9749eaa2247e12cc461ca7f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9be99e6df56c3c8d9749eaa2247e12cc461ca7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean.json)

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
| 1 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/example--507d2b73a2dffa09278555ed.md) | 13 | `declaration-track:507d2b73a2dffa09278555eda27e34ac459d565e3ceaec618a46f0bd42e7a7c3` |
| 2 | `theorem` | [finite_shells_not_quartic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/finite-shells-not-quartic--95c78fba334a3b0d53a72d6a.md) | 16 | `result-track:95c78fba334a3b0d53a72d6a9dbada9092cfbe600afe84d509bcd46eaaf9ebff` |
| 3 | `def` | [SyntheticOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/syntheticoccurrences--3dd8440543c3b15418fd97aa.md) | 32 | `declaration-track:3dd8440543c3b15418fd97aacc805c8fff4b323dc89674cdbdce18e30cae4301` |
| 4 | `theorem` | [multiplicity_slots_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/multiplicity-slots-three--5c567d5b4c7f7bfd09a17588.md) | 35 | `result-track:5c567d5b4c7f7bfd09a175886d97750ccecd0afb4d98f84d554766112b7ae8c0` |
| 5 | `theorem` | [point_count_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/point-count-two--dd59b80e2e86bd391ce55a39.md) | 41 | `result-track:dd59b80e2e86bd391ce55a39359dd8971aeda68abac0d2fb2e8baab7a273683c` |
| 6 | `theorem` | [forgetting_multiplicity_changes_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/forgetting-multiplicity-changes-count--ec34ef79c571b722055ef7f9.md) | 44 | `result-track:ec34ef79c571b722055ef7f9d037e0e0158028bafb78ab2fcc2804a283ac3576` |
| 7 | `theorem` | [shifted_shell_boundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/shifted-shell-boundary--8a8197a0cd0a5c7632b0fcc6.md) | 50 | `result-track:8a8197a0cd0a5c7632b0fcc6f1ec93517ef2d7d9e5817e25cff4405e04a16c52` |
| 8 | `theorem` | [shifted_boundary_not_previous_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/shifted-boundary-not-previous-shell--0b88e0af8c1a9962452ea7af.md) | 54 | `result-track:0b88e0af8c1a9962452ea7afa69f78c52d30b95d3d5dbcfcc6ce1c27e1180a92` |
| 9 | `theorem` | [omitting_shift_changes_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fixtures/Variantf864b59b6ca20be07f2ad7f1ab76df65814d1146ac7bb78cb6ea39a70ae3acb0.lean/declarations/omitting-shift-changes-shell--3e8f7fe292eef72b24b4eac6.md) | 60 | `result-track:3e8f7fe292eef72b24b4eac6b2ad0394ed093a17bab0edbd050da8b053ee63b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
