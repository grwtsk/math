# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "176d0bb1a8d111dac44e766bc71216feaa125c1b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `176d0bb1a8d111dac44e766bc71216feaa125c1b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/declarations/cast-list-sum--1a9ac9654c6b21433cc1d25d.md) | 33 | `result-track:1a9ac9654c6b21433cc1d25da2d8128c37cd639dce294657086a2418d7aa520f` |
| 2 | `theorem` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/declarations/cast-multiset-sum--5c7cc9f6f32aaf715e51e44c.md) | 38 | `result-track:5c7cc9f6f32aaf715e51e44c5438b51de4969247b5a9afcd1f7f0e5c1af71b68` |
| 3 | `theorem` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/declarations/cast-sum--f2707480f6df535a11eb95df.md) | 43 | `result-track:f2707480f6df535a11eb95dfe52c5ddaf8ab9168038bdf8d0fa188e5380dc286` |
| 4 | `theorem` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/declarations/cast-list-prod--6e8c7a437664e1930518668b.md) | 48 | `result-track:6e8c7a437664e1930518668bf1f717c9ca01d9aff7e980281d3bdc9ec9b7c89d` |
| 5 | `theorem` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/declarations/cast-multiset-prod--85101ed11de50a3d535ae7b5.md) | 59 | `result-track:85101ed11de50a3d535ae7b5b417adf54d5b44549de5966725759702c0bd0541` |
| 6 | `theorem` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variante934e6a386397dce626d0977416782d848e7e7b6297125f696f0a83ecb6ee49d.lean/declarations/cast-prod--982c4affd414a8204b8e181e.md) | 64 | `result-track:982c4affd414a8204b8e181ee9ca649c8f63952afc3cac4d7e493ad8a25ac5ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
