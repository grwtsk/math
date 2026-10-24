# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0526d54259faa94b34af34d57af8262e30a9e610",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0526d54259faa94b34af34d57af8262e30a9e610`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoidalOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/monoidalopposite--4e12eac3a428818c1e83769c.md) | 35 | `declaration-track:4e12eac3a428818c1e83769c02ddeec4bda2e21c4fe0e77545dfabef3ecf5314` |
| 2 | `def` | [mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop--ec50a83da81a6523ac87516b.md) | 45 | `declaration-track:ec50a83da81a6523ac87516bea4d7ddd583aa3d34c861caf3e2716ed54d76aa9` |
| 3 | `def` | [unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unmop--b169e6c7825e404f12074675.md) | 51 | `declaration-track:b169e6c7825e404f120746752d6164842cfc11c2ed05ca1d0c13d7e415ebde3b` |
| 4 | `theorem` | [op_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/op-injective--18d02d3dd656558551bbf7da.md) | 55 | `result-track:18d02d3dd656558551bbf7dae70bcaec0e03562586235db6043f70629e6e93a3` |
| 5 | `theorem` | [unop_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unop-injective--984a3bb9787a716e6e301e26.md) | 59 | `result-track:984a3bb9787a716e6e301e264668b63dfab287f3a1791b8dea2e2bcbba06ef5f` |
| 6 | `theorem` | [op_inj_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/op-inj-iff--eac1a96c413cf69c6ecb49b5.md) | 64 | `result-track:eac1a96c413cf69c6ecb49b5567cbba1c7da096edec0048499b4ee3c19ac8af8` |
| 7 | `theorem` | [unop_inj_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unop-inj-iff--7ff52bf1218c48312974627a.md) | 69 | `result-track:7ff52bf1218c48312974627abdd7a453ced0765fc512e4ac15b98322be4b0dfd` |
| 8 | `theorem` | [mop_unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-unmop--01a41b56802a2243a33ba94c.md) | 74 | `result-track:01a41b56802a2243a33ba94c1de77fddc9b2a20d522cc6a7539715f0aab71e6b` |
| 9 | `theorem` | [unmop_mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unmop-mop--18fe139317586ca6d28615be.md) | 79 | `result-track:18fe139317586ca6d28615be2590e54017e9be81b48c57b4085ad75fc2160039` |
| 10 | `instance` | [monoidalOppositeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/monoidaloppositecategory--dccc3d8528c3e8bb2d09a49e.md) | 83 | `declaration-track:dccc3d8528c3e8bb2d09a49eb7fe0901ce4d3a2113b9d9be1efb122977d82e03` |
| 11 | `def` | [Quiver.Hom.mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/quiver-hom-mop--ed4819eee9bc7c788e176d91.md) | 98 | `declaration-track:ed4819eee9bc7c788e176d916907cba5418232d647a403941771ef15ec44494f` |
| 12 | `def` | [Quiver.Hom.unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/quiver-hom-unmop--cd6f40c6a34651d48ff46770.md) | 103 | `declaration-track:cd6f40c6a34651d48ff46770e9f2f6bc7da70759e383c56fed577626be9b036a` |
| 13 | `theorem` | [mop_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-inj--3a98fff739b3b9a715cd7f39.md) | 109 | `result-track:3a98fff739b3b9a715cd7f394d1222ac5d76e42b93bf68c2151b4e611ff13383` |
| 14 | `theorem` | [unmop_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unmop-inj--ddc31ac3defd8bb10afef036.md) | 113 | `result-track:ddc31ac3defd8bb10afef036433f4e0b90b3e9a447463156cdafe9db3c4a65a1` |
| 15 | `theorem` | [unmop_mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unmop-mop--96505f960d06e76c1d30254d.md) | 119 | `result-track:96505f960d06e76c1d30254ddf0d5a61b6aebc3189b14903a052305904bf0419` |
| 16 | `theorem` | [mop_unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-unmop--11af0f35c496c168b7f5d9ea.md) | 124 | `result-track:11af0f35c496c168b7f5d9ea30d25bdfd572b11847a1eded83b29a5863910cd3` |
| 17 | `theorem` | [mop_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-comp--232c066ad59e9b67011144af.md) | 129 | `result-track:232c066ad59e9b67011144af450d548b18e13e5b8b7cd81286c275c1dcb90329` |
| 18 | `theorem` | [mop_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-id--aeca8b4cb1cc3fcad0a0a28e.md) | 134 | `result-track:aeca8b4cb1cc3fcad0a0a28e010dd645e5a11388cb07347f59239e94297ed218` |
| 19 | `theorem` | [unmop_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unmop-comp--54e1c892f06dc3a9e602ae51.md) | 139 | `result-track:54e1c892f06dc3a9e602ae51c87666ab3e09cd4fe7cdd68423528a9766f0fb43` |
| 20 | `theorem` | [unmop_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unmop-id--2086625c358445fb18d97e2e.md) | 144 | `result-track:2086625c358445fb18d97e2e50967d9a60cfa1686bcb5d88f2db24d83077e33b` |
| 21 | `theorem` | [unmop_id_mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/unmop-id-mop--c84530fdf5e5b18f95ea177a.md) | 149 | `result-track:c84530fdf5e5b18f95ea177a3a1698306c9ed1ad5ced8e56cc50642e98eb1655` |
| 22 | `theorem` | [mop_id_unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-id-unmop--4316267794f8140387920a6f.md) | 154 | `result-track:4316267794f8140387920a6f64aefe8d64f788e07eb1c847686615ae3097329f` |
| 23 | `def` | [mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop--31a7765ec72998b8589aca47.md) | 164 | `declaration-track:31a7765ec72998b8589aca47f137673922980e14f4cfa63ebcfac834993513bc` |
| 24 | `instance` | [monoidalCategoryOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/monoidalcategoryop--10835d7a637cca45f7cdfc7f.md) | 179 | `declaration-track:10835d7a637cca45f7cdfc7ff9a62299db2275929662580d40dba61d88299bd4` |
| 25 | `theorem` | [op_tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/op-tensorobj--4e535f1691b6e4232895daca.md) | 196 | `result-track:4e535f1691b6e4232895dacaa4b298d4681442c4827584b7204cc801f6d2dfc3` |
| 26 | `theorem` | [op_tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/op-tensorunit--ed83b04d8aac7dacff1f654d.md) | 200 | `result-track:ed83b04d8aac7dacff1f654d531d8062c4f1642559082f930594a321db7a87bc` |
| 27 | `instance` | [monoidalCategoryMop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/monoidalcategorymop--fcc3d5bd967e58e65f3f5e71.md) | 204 | `declaration-track:fcc3d5bd967e58e65f3f5e71e82fb7c587df182ee400b7b184178bdf63dbd343` |
| 28 | `theorem` | [mop_tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-tensorobj--3889f5bfe99c6da8cb4bb9e3.md) | 221 | `result-track:3889f5bfe99c6da8cb4bb9e30696d023a0ff4b0aed0cac4404202d9133b58782` |
| 29 | `theorem` | [mop_tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/declarations/mop-tensorunit--95a35414915e60520347c7a8.md) | 225 | `result-track:95a35414915e60520347c7a80b96fd276a209c84637806753380f451992e5622` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
