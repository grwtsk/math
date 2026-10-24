# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Conj.Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "319864498645a4d3cfc01ca6c04fac26f521ac0d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `319864498645a4d3cfc01ca6c04fac26f521ac0d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/homcongr--6e8de5f7cb6fb8d1bcf18bd5.md) | 44 | `declaration-track:6e8de5f7cb6fb8d1bcf18bd5f51218514c80f1adc5ff80818e04094a6cff84b5` |
| 2 | `theorem` | [homCongr_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/homcongr-apply--76a8eb56d8017e9065ad8572.md) | 57 | `result-track:76a8eb56d8017e9065ad8572237aa48125f233820d6cc3394427e6e31ff6a1ce` |
| 3 | `theorem` | [homCongr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/homcongr-comp--06a8ec58793233e7f128aa74.md) | 62 | `result-track:06a8ec58793233e7f128aa7427ceb64a80ab6529b31b0308d726a78f1d205f1a` |
| 4 | `theorem` | [homCongr_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/homcongr-refl--c8856a8fca992a1760d86150.md) | 67 | `result-track:c8856a8fca992a1760d86150b80fe4f6d3fb870da580c4441e684e70cea55e2b` |
| 5 | `theorem` | [homCongr_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/homcongr-trans--ffad3e5830e760ad2bc72e0d.md) | 71 | `result-track:ffad3e5830e760ad2bc72e0d9636af42c0b96627f3b36bb66b091bad8a9f1660` |
| 6 | `theorem` | [homCongr_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/homcongr-symm--ad093aa4f0b5bde1eea6ed88.md) | 77 | `result-track:ad093aa4f0b5bde1eea6ed88de83263d89d008c4e0ca85521c8d23526ef7f3da` |
| 7 | `def` | [conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conj--bd5ae4330dd24c38c84dec6f.md) | 86 | `declaration-track:bd5ae4330dd24c38c84dec6fffda1e8f17c62c4fa3949b7e851b3d320c636e78` |
| 8 | `theorem` | [conj_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conj-apply--4ce04427dee09b9626924dc7.md) | 90 | `result-track:4ce04427dee09b9626924dc7e61189505e770dd848e98db46064d6545e25dc11` |
| 9 | `theorem` | [conj_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conj-comp--463c0dfbd981abadadd2cb96.md) | 95 | `result-track:463c0dfbd981abadadd2cb96fe004c4548c7ecbc48b7299a3cc37f72424a9459` |
| 10 | `theorem` | [conj_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conj-id--f1b7f489f42543a6103a7132.md) | 100 | `result-track:f1b7f489f42543a6103a713211b37d7274d93fc1575e54a657ab15a99a07c775` |
| 11 | `theorem` | [refl_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/refl-conj--88a186ae50f1723c32e57c68.md) | 105 | `result-track:88a186ae50f1723c32e57c68b9c48d1d4ecb1536e31dc611d3a08c31085a0f11` |
| 12 | `theorem` | [trans_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/trans-conj--2b14db528450700b9fec8e82.md) | 110 | `result-track:2b14db528450700b9fec8e82cc0b532d091d3cd37823abc70f7c20de9466a76f` |
| 13 | `theorem` | [symm_self_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/symm-self-conj--40ab1188ab9d6bc91b18b976.md) | 115 | `result-track:40ab1188ab9d6bc91b18b97620b39a493851d07fcaa2fcfb79e4e6309c340e98` |
| 14 | `theorem` | [self_symm_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/self-symm-conj--6d895187dbaec58c6e45b88e.md) | 120 | `result-track:6d895187dbaec58c6e45b88eb5d498888d8db7223a908ca4276a895be9f7585a` |
| 15 | `theorem` | [conj_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conj-pow--4006e4c5dd2f1572acca87f2.md) | 125 | `result-track:4006e4c5dd2f1572acca87f2c391791e47bd6599500ee1b12052b8035d912d60` |
| 16 | `def` | [conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conjaut--2a3689f06fb305e26866ef87.md) | 131 | `declaration-track:2a3689f06fb305e26866ef871f5fc36ab4252d18372d11b2abf4fbdb9166dba3` |
| 17 | `theorem` | [conjAut_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conjaut-apply--ed87fa84c4ea91f0a062241e.md) | 136 | `result-track:ed87fa84c4ea91f0a062241e003caf8596cc98c6efd8333553711194c62a801c` |
| 18 | `theorem` | [conjAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conjaut-hom--07474ed334e15e04bb76ea32.md) | 141 | `result-track:07474ed334e15e04bb76ea3293384c8ca5a732d848f022c6a2af4461febf7c17` |
| 19 | `theorem` | [trans_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/trans-conjaut--29edb62ffc5648d9160a04b0.md) | 147 | `result-track:29edb62ffc5648d9160a04b0ca2aa4dd1e22766071970fe304a85aebc6d8d4cb` |
| 20 | `theorem` | [conjAut_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conjaut-mul--69c36a29942456fbdbd10121.md) | 154 | `result-track:69c36a29942456fbdbd101219e72021d8b511ae9e8fd2d6c0ee3b72fc9d5cc28` |
| 21 | `theorem` | [conjAut_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conjaut-trans--04df95e1893c9c6262c16253.md) | 160 | `result-track:04df95e1893c9c6262c162536ec2fdaf90933bb524c362bf2ee4896f581316ff` |
| 22 | `theorem` | [conjAut_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conjaut-pow--594da1ff4fcf5a21ccb0a1fe.md) | 166 | `result-track:594da1ff4fcf5a21ccb0a1fe4da73a3ecfc05b49f5c48e3abe328142e3dda497` |
| 23 | `theorem` | [conjAut_zpow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/conjaut-zpow--c7a4d4c24ac904f327583ee7.md) | 172 | `result-track:c7a4d4c24ac904f327583ee723135317f5041b6bc4f7b3535eababc5e35b3390` |
| 24 | `theorem` | [map_homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/map-homcongr--4f727c22d7a6a9c3e03ce0b8.md) | 185 | `result-track:4f727c22d7a6a9c3e03ce0b8acfa1fd886c8e0d4870363b14991da3507b3a298` |
| 25 | `theorem` | [map_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/map-conj--1513384246117eddbae4f20d.md) | 189 | `result-track:1513384246117eddbae4f20dbfa61aad0f906891ee2c99196ae0292b6122c211` |
| 26 | `theorem` | [map_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantafc64688881e7fc11236883f1ef8deecf45f6df01e1d9a671a9a3d9f7930e06e.lean/declarations/map-conjaut--356fb026ba7e0d9dff3f0fd5.md) | 194 | `result-track:356fb026ba7e0d9dff3f0fd58803bcd23c2cbc23c553bb453bedaf808857a736` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
