# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoherentTopology.Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f95e807e31ec388347aeb31cc5112d206a2d9d9f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f95e807e31ec388347aeb31cc5112d206a2d9d9f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coherentTopology.mem_sieves_of_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean/declarations/coherenttopology-mem-sieves-of-haseffectiveepifamily--373e255731371ecada549bf7.md) | 37 | `result-track:373e255731371ecada549bf7a7f565366978eca910c2b96f01a07cd54d86ccfb` |
| 2 | `theorem` | [EffectiveEpiFamily.transitive_of_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean/declarations/effectiveepifamily-transitive-of-finite--aabb99ad6ae521b8b43f0f0a.md) | 52 | `result-track:aabb99ad6ae521b8b43f0f0a42ff10131f0c1069e4f7e6027471d48dd77967ef` |
| 3 | `instance` | [precoherentEffectiveEpiFamilyCompEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean/declarations/precoherenteffectiveepifamilycompeffectiveepis--b6660be1171aaabf9f65dcec.md) | 78 | `declaration-track:b6660be1171aaabf9f65dceca18dd99cae5b6c42a950a78bd87e6c07e856ed5f` |
| 4 | `theorem` | [coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantacd70e5a3bd353f80d50dbb8e58830f3b8e0c76cff9211891dae68f4b21a0aba.lean/declarations/coherenttopology-mem-sieves-iff-haseffectiveepifamily--ed9d5864c6b98b9db7cad3c8.md) | 90 | `result-track:ed9d5864c6b98b9db7cad3c860a8cfb01eb6f3ff25fe63a4fdfac7dff4c00418` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
