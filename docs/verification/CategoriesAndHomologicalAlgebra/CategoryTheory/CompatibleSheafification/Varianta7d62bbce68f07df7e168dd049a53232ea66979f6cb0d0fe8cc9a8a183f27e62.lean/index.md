# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatibleSheafification.Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc36719b4c47659d73c39ab81b8a42e636861b9e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc36719b4c47659d73c39ab81b8a42e636861b9e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CompatiblePlus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.ConcreteSheafification` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafifyCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafifycompiso--30565e9b04f6a264e4c7ca5d.md) | 55 | `declaration-track:30565e9b04f6a264e4c7ca5d6f62745c2edbdfcf301ed0bda40d048b87151f49` |
| 2 | `def` | [sheafificationWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafificationwhiskerleftiso--a3f63402399e482e641fa557.md) | 60 | `declaration-track:a3f63402399e482e641fa5573d03eb05c076dfd3737c772dc229f7151efc28ce` |
| 3 | `theorem` | [sheafificationWhiskerLeftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafificationwhiskerleftiso-hom-app--e7f1a4034b44fbbe834aada9.md) | 71 | `result-track:e7f1a4034b44fbbe834aada951c6623f9bceba2d41e044b9dc545a8d8f640b52` |
| 4 | `theorem` | [sheafificationWhiskerLeftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafificationwhiskerleftiso-inv-app--1de770c3ca2c7cf76a80ed1a.md) | 80 | `result-track:1de770c3ca2c7cf76a80ed1a40d5202981e205f08c2d822dfc40c38590b51aa4` |
| 5 | `def` | [sheafificationWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafificationwhiskerrightiso--eec49c23ff9da219820f61f2.md) | 90 | `declaration-track:eec49c23ff9da219820f61f2648047219c0273907dcd4e67e3f52ddef0c2b320` |
| 6 | `theorem` | [sheafificationWhiskerRightIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafificationwhiskerrightiso-hom-app--3319895ed51cc3546c289aeb.md) | 100 | `result-track:3319895ed51cc3546c289aebedc82206403b6698aa2dec5d8cac3859df2ab806` |
| 7 | `theorem` | [sheafificationWhiskerRightIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafificationwhiskerrightiso-inv-app--447e8950e04d15853393dd2c.md) | 107 | `result-track:447e8950e04d15853393dd2c59e58f2a20a0b3a981e3139c5f7b1db06f0b0efd` |
| 8 | `theorem` | [whiskerRight_toSheafify_sheafifyCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/whiskerright-tosheafify-sheafifycompiso-hom--fa4f9bf070c37873a068574f.md) | 114 | `result-track:fa4f9bf070c37873a068574f076d1cde3201ef3fa7f9d83506de0b614e71db13` |
| 9 | `theorem` | [toSheafify_comp_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/tosheafify-comp-sheafifycompiso-inv--6f74c718ae10c9ea537efdf5.md) | 124 | `result-track:6f74c718ae10c9ea537efdf54ee0b9787c32811b9ded2714e28aaadf6465302c` |
| 10 | `theorem` | [sheafifyCompIso_inv_eq_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/declarations/sheafifycompiso-inv-eq-sheafifylift--c2bc6e1f451988b8457524b6.md) | 136 | `result-track:c2bc6e1f451988b8457524b6e348b90b7deddc6287dc4303e2c1f6fcc66fdb1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
