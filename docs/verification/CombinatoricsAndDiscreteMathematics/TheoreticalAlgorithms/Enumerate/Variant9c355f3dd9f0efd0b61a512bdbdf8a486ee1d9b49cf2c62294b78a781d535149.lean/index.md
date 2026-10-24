# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumerate.Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77ca6dc23277351d47a08922fc713374509efc06",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77ca6dc23277351d47a08922fc713374509efc06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enumerate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean/declarations/enumerate--8c3c60edeeab5ae229f9abad.md) | 33 | `declaration-track:8c3c60edeeab5ae229f9abadb23d2e8b9deecc7c34666192d7126e75b761c754` |
| 2 | `theorem` | [enumerate_eq_none_of_sel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean/declarations/enumerate-eq-none-of-sel--d7468e54e60fad90733f4b4f.md) | 40 | `result-track:d7468e54e60fad90733f4b4f43bda6eafd72a76956f1153c3b4c54c1b61f551f` |
| 3 | `theorem` | [enumerate_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean/declarations/enumerate-eq-none--80a8cbd6d41166e9d3ff4bf8.md) | 45 | `result-track:80a8cbd6d41166e9d3ff4bf80e222e859e97e1c48970b2db7f159b5b7ebbcd86` |
| 4 | `theorem` | [enumerate_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean/declarations/enumerate-mem--a0c82b5914e106663dec7286.md) | 60 | `result-track:a0c82b5914e106663dec7286eb1bdb53e15b74e8802d16f926a34d0dd1590e73` |
| 5 | `theorem` | [enumerate_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant9c355f3dd9f0efd0b61a512bdbdf8a486ee1d9b49cf2c62294b78a781d535149.lean/declarations/enumerate-inj--95307069f08e4427097f76a4.md) | 73 | `result-track:95307069f08e4427097f76a4cdf900f58318bb803315d0cd63f6a38973751f98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
