# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "141f35905ca55b6fc202a5f955e60ee4a2f47658",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `141f35905ca55b6fc202a5f955e60ee4a2f47658`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasInitial_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean/declarations/hasinitial-of-equivalence--276d77362f4318fc66b8119a.md) | 25 | `result-track:276d77362f4318fc66b8119afa18ebf212f5d8b86d07c094eb15ad3a22c738ae` |
| 2 | `theorem` | [Equivalence.hasInitial_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean/declarations/equivalence-hasinitial-iff--0361a19f8af4efbc287c96d5.md) | 28 | `result-track:0361a19f8af4efbc287c96d58e8777b3e457a269b98af1f20fd1b9af432e795a` |
| 3 | `theorem` | [hasTerminal_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean/declarations/hasterminal-of-equivalence--d324af983df3b29325593f89.md) | 32 | `result-track:d324af983df3b29325593f8996c5fd46b7cbc54db52cd715479a329dfa09cf79` |
| 4 | `theorem` | [Equivalence.hasTerminal_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean/declarations/equivalence-hasterminal-iff--b032189f7925983a1e84f320.md) | 35 | `result-track:b032189f7925983a1e84f32022d49e566a8c240f992eb10daf719126486f7933` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
