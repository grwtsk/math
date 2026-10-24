# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SymmDiff.Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba1bc4a6725f4be957309aa319acdc1f20133cd4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba1bc4a6725f4be957309aa319acdc1f20133cd4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BooleanAlgebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Delaborators` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_symmDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/mem-symmdiff--6d47caf32a1458ee24267b6e.md) | 35 | `result-track:6d47caf32a1458ee24267b6e09f33f547d5d4582c0b9217fd36cdbdea7f8cc99` |
| 2 | `theorem` | [symmDiff_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/symmdiff-def--df5077cc1441882a52665e66.md) | 38 | `result-track:df5077cc1441882a52665e66dc075b6ae392c50e37ba870b716944cd90d1b37d` |
| 3 | `theorem` | [symmDiff_subset_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/symmdiff-subset-union--a08de9f4b1b8eecf9ea1cf75.md) | 41 | `result-track:a08de9f4b1b8eecf9ea1cf75b294370c98ec56057cce7b1aeda9a0e6b48b3250` |
| 4 | `theorem` | [symmDiff_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/symmdiff-eq-empty--c6cb11b8d020b6bc5fd88847.md) | 45 | `result-track:c6cb11b8d020b6bc5fd88847ccccdb046223d37b9919226dab9dad1b009e555b` |
| 5 | `theorem` | [symmDiff_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/symmdiff-nonempty--5a19843ac44163bd312208a0.md) | 49 | `result-track:5a19843ac44163bd312208a097f470b5a5646b2e93344266acb081ef4e42d94f` |
| 6 | `theorem` | [inter_symmDiff_distrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/inter-symmdiff-distrib-left--b37d34fd3491f35c1fead54d.md) | 52 | `result-track:b37d34fd3491f35c1fead54d38f244488753c42517c83d019fcfb1eb618521d1` |
| 7 | `theorem` | [inter_symmDiff_distrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/inter-symmdiff-distrib-right--97a3e5deb577a081002ffe5b.md) | 55 | `result-track:97a3e5deb577a081002ffe5bece33230996a572d5934316907c0ae6ddaaf34cf` |
| 8 | `theorem` | [subset_symmDiff_union_symmDiff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/subset-symmdiff-union-symmdiff-left--5af72ea003a2973475ebb4f9.md) | 58 | `result-track:5af72ea003a2973475ebb4f99a4fb87de3d341b1dac7579a619e40b1bef8717c` |
| 9 | `theorem` | [subset_symmDiff_union_symmDiff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07.lean/declarations/subset-symmdiff-union-symmdiff-right--dc891bbeef7685d26bcadc0b.md) | 61 | `result-track:dc891bbeef7685d26bcadc0b3fe0906f3071ec9eebffa1b311ca24fbcb03c0a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
