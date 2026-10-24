# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Schur.Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ebf03f3f1a2671f7da2cc20b8ad18fb5cb92d14",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ebf03f3f1a2671f7da2cc20b8ad18fb5cb92d14`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Ext` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Simple` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Spectrum` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_of_nonzero_from_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/mono-of-nonzero-from-simple--7db82b9d1d5d64cba5a778cf.md) | 41 | `result-track:7db82b9d1d5d64cba5a778cfcff1053654ce5615a56df19f4809fcb9d3ae4e8a` |
| 2 | `theorem` | [isIso_of_hom_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/isiso-of-hom-simple--fda93ea8365cb03e5da26e06.md) | 48 | `result-track:fda93ea8365cb03e5da26e06fc0fef771acb26b35c8813ae1309da6be944b596` |
| 3 | `theorem` | [isIso_iff_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/isiso-iff-nonzero--b33cdc179b385843bf836f6a.md) | 56 | `result-track:b33cdc179b385843bf836f6a296ebbd3e227133cd966365bfb0e21d9810c2c19` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/instance--321c5a7e98871b48a061ea3c.md) | 67 | `declaration-track:321c5a7e98871b48a061ea3cec8fc98ce91d3573cfa66205efc37d5a401c0778` |
| 5 | `theorem` | [finrank_hom_simple_simple_eq_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/finrank-hom-simple-simple-eq-zero-of-not-iso--7a351c743cbffb6f9fbbd8ff.md) | 90 | `result-track:7a351c743cbffb6f9fbbd8ff8800604c2d9ce851bb77d642dc5bed8b9e4cfbfa` |
| 6 | `theorem` | [finrank_endomorphism_eq_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/finrank-endomorphism-eq-one--52519186dc7fbb7700be9964.md) | 118 | `result-track:52519186dc7fbb7700be9964dab7746bcf19a4a9225ec0c207cb380f2e1a0f79` |
| 7 | `theorem` | [finrank_endomorphism_simple_eq_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/finrank-endomorphism-simple-eq-one--4c110ece6d43baaf8c7bced9.md) | 135 | `result-track:4c110ece6d43baaf8c7bced9ff5a5d00c24cad25970a6b615aafa7bf56898e82` |
| 8 | `theorem` | [endomorphism_simple_eq_smul_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/endomorphism-simple-eq-smul-id--cf983f2199075f26729b4290.md) | 139 | `result-track:cf983f2199075f26729b42901f9e48e2788e90f65a831f93033613160a292840` |
| 9 | `def` | [fieldEndOfFiniteDimensional](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/fieldendoffinitedimensional--61ebf73425b6f46cecab4557.md) | 147 | `declaration-track:61ebf73425b6f46cecab4557e3fa79fdbd6e8f093d3269c80e82660703475eb6` |
| 10 | `theorem` | [finrank_hom_simple_simple_le_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/finrank-hom-simple-simple-le-one--4a29b388033e738ee5bc04c5.md) | 164 | `result-track:4a29b388033e738ee5bc04c577a4cbfe7fa26183c5e22b6c7b93c4ef1277dc5b` |
| 11 | `theorem` | [finrank_hom_simple_simple_eq_one_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/finrank-hom-simple-simple-eq-one-iff--7e518210755a5e2591e336b5.md) | 176 | `result-track:7e518210755a5e2591e336b57b28674073a8762a0451e9d68e0adf8b2bb85177` |
| 12 | `theorem` | [finrank_hom_simple_simple_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/finrank-hom-simple-simple-eq-zero-iff--34b7b99ad354f3cbc40240ba.md) | 191 | `result-track:34b7b99ad354f3cbc40240ba7e4fbe406a37324ff8bb7e4b00f16db1aca1e18a` |
| 13 | `theorem` | [finrank_hom_simple_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/declarations/finrank-hom-simple-simple--a70d951b6f28845e10607fd0.md) | 199 | `result-track:a70d951b6f28845e10607fd0b842973d2b2c5f9668ff08a78cf66afa6d52698d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
