# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoherenceLemmas.Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10ec676c16b44be599f83cc908b9dcda750aedda",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10ec676c16b44be599f83cc908b9dcda750aedda`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leftUnitor_tensor''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/leftunitor-tensor--a1e6da6d23351dc619cb24d3.md) | 35 | `result-track:a1e6da6d23351dc619cb24d31f27956a18643d423835d27447123c14c9f9601c` |
| 2 | `theorem` | [leftUnitor_tensor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/leftunitor-tensor--fc2976fd550bbd91abbeeb41.md) | 40 | `result-track:fc2976fd550bbd91abbeeb411868ae993379ce2c57410a5fc7736cc00d94b531` |
| 3 | `theorem` | [leftUnitor_tensor_inv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/leftunitor-tensor-inv--08cafd6d36bc1bc12dfafc18.md) | 45 | `result-track:08cafd6d36bc1bc12dfafc1897629534cd5dcffaa54284f3eb443d85d2cd37f2` |
| 4 | `theorem` | [id_tensor_rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/id-tensor-rightunitor-inv--78877b678ce0700998cf6d51.md) | 49 | `result-track:78877b678ce0700998cf6d51a30b605dac96aa60b358f21ad824882d99796b7d` |
| 5 | `theorem` | [leftUnitor_inv_tensor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/leftunitor-inv-tensor-id--8f9ddf4b3351c415de8583bb.md) | 53 | `result-track:8f9ddf4b3351c415de8583bb8c4d6a70851170215c530469f03bd820fcfcc467` |
| 6 | `theorem` | [pentagon_inv_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/pentagon-inv-inv-hom--5ef6d0d6b33aa8681daf508f.md) | 57 | `result-track:5ef6d0d6b33aa8681daf508f96e738b9e2ccb1060114d15e873061bb6044c18b` |
| 7 | `theorem` | [unitors_equal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/unitors-equal--4bdd2f527720657ebf1b266d.md) | 62 | `result-track:4bdd2f527720657ebf1b266db8669fc22335dfc550f4a40bb0d71d887f46bc34` |
| 8 | `theorem` | [unitors_inv_equal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/unitors-inv-equal--06feb25591f626b25f6f5595.md) | 65 | `result-track:06feb25591f626b25f6f55955247947ed803626048c87aca26089f10516726bb` |
| 9 | `theorem` | [pentagon_hom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/pentagon-hom-inv--b20938c9f941960475c30124.md) | 69 | `result-track:b20938c9f941960475c301242992bd3949d46b50663e5749b1344d84bbd03cf8` |
| 10 | `theorem` | [pentagon_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Variant63fc4a0f444db9abde25d0f45b71ae2ae34efc0feab030de94f4eb7f6894d23b.lean/declarations/pentagon-inv-hom--4a8976d5ec7a6188cef795f7.md) | 75 | `result-track:4a8976d5ec7a6188cef795f7fe8d842771947c7bb42df3feaed9d78341bf51bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
