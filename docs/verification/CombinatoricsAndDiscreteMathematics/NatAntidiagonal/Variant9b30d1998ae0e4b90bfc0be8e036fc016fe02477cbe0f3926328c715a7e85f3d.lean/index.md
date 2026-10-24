# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6abe8dff9f86b502fa6924525c0f16d793bd449",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6abe8dff9f86b502fa6924525c0f16d793bd449`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/prod-antidiagonal-succ--59c7989cd121f60e9e076cd0.md) | 29 | `result-track:59c7989cd121f60e9e076cd057a0b364b60d484567c9d2ac58a6362c110fc5a0` |
| 2 | `theorem` | [sum_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/sum-antidiagonal-succ--04f7a7a775250b6eb37783f9.md) | 34 | `result-track:04f7a7a775250b6eb37783f9bbf99cdae38d0b8fc56b8b82efc2b27b8f756265` |
| 3 | `theorem` | [prod_antidiagonal_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/prod-antidiagonal-swap--ae0c1a46662cfcfd137faa65.md) | 39 | `result-track:ae0c1a46662cfcfd137faa6530ab3c93760d8ab891503036e7c706625a2f92ad` |
| 4 | `theorem` | [prod_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/prod-antidiagonal-succ--f46706be6a65f7423cba5aff.md) | 44 | `result-track:f46706be6a65f7423cba5aff7202c87e121904ccd8836d8981b405da6e3dcd04` |
| 5 | `theorem` | [sum_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/sum-antidiagonal-succ--8349e6d27fea49cdea457472.md) | 49 | `result-track:8349e6d27fea49cdea4574729da582a066f4bcff75836c65fc7c2831735802cf` |
| 6 | `theorem` | [prod_antidiagonal_subst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/prod-antidiagonal-subst--73786f8d29d59c7d02363f75.md) | 54 | `result-track:73786f8d29d59c7d02363f75c0eb9dbad80bd63e77817b0f1beae26abe23c8bb` |
| 7 | `theorem` | [prod_antidiagonal_eq_prod_range_succ_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/prod-antidiagonal-eq-prod-range-succ-mk--dd639ecaa2232feda145314b.md) | 59 | `result-track:dd639ecaa2232feda145314bbbfea8488dfa66b8e4372547841d35ec18356cce` |
| 8 | `theorem` | [prod_antidiagonal_eq_prod_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant9b30d1998ae0e4b90bfc0be8e036fc016fe02477cbe0f3926328c715a7e85f3d.lean/declarations/prod-antidiagonal-eq-prod-range-succ--f3b9b5fd67f9711df9b4650f.md) | 67 | `result-track:f3b9b5fd67f9711df9b4650f7d4dddf29e04107107c0022b40fc7cd19f6a3c60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
