# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftedHom.Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f182e8d965ba7eaedf30f02e3e19ab71f46de7c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f182e8d965ba7eaedf30f02e3e19ab71f46de7c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ShiftedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/shiftedhom--ee4f3c55c39a50c39ba7172c.md) | 32 | `declaration-track:ee4f3c55c39a50c39ba7172c7ffcb156c5ddb120ee9b7c9f9ff2e2d9488f0580` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/instance--75a49cdffe8c41f3acbd1759.md) | 34 | `declaration-track:75a49cdffe8c41f3acbd1759cc421b4cb23a88e5df78d33185e2367db736e2e1` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp--20952fc25178ec8482ad37bc.md) | 44 | `declaration-track:20952fc25178ec8482ad37bcd6a6d50f17bb395d2f0d5982137939d18cbe65b0` |
| 4 | `lemma` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp-assoc--409679dd9ad69706fcbee8a4.md) | 48 | `result-track:409679dd9ad69706fcbee8a4c8cce691564b765de21722dc5cc0172f403933c2` |
| 5 | `def` | [mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/mk--f76bc8499453522ce5af2363.md) | 62 | `declaration-track:f76bc8499453522ce5af23631764c1444ee28e742e8cf93fe3eb2f9871889fc0` |
| 6 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/homequiv--ea3a514312cc26ab1086379e.md) | 67 | `declaration-track:ea3a514312cc26ab1086379e9a33b253dc2e990b92d16baa13c56cc9692e42bd` |
| 7 | `lemma` | [mk₀_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/mk-comp--5208923278fc132e548c4935.md) | 73 | `result-track:5208923278fc132e548c49359c07b8a45cbf6fb9c3e23a4de2dba12ea4f231bb` |
| 8 | `lemma` | [mk₀_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/mk-id-comp--cd79dc052ad21e601bda3938.md) | 79 | `result-track:cd79dc052ad21e601bda3938604de5baa6c3d105284278505d200a08dc11965b` |
| 9 | `lemma` | [comp_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp-mk--7268953703d19d7a66d76c23.md) | 83 | `result-track:7268953703d19d7a66d76c234b79f8fc3fa07a1f871e98fbad73beb270bd36ca` |
| 10 | `lemma` | [comp_mk₀_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp-mk-id--0c20419832ed081bcbcd558f.md) | 91 | `result-track:0c20419832ed081bcbcd558fc91ec16d03ed3625a033310e0a64ce15285415ef` |
| 11 | `lemma` | [mk₀_comp_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/mk-comp-mk--8531b866bb5ca427da107343.md) | 96 | `result-track:8531b866bb5ca427da1073431d3a2338e10fdad201f5ad6eaad37fe020ca4289` |
| 12 | `lemma` | [mk₀_comp_mk₀_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/mk-comp-mk-assoc--53537f3a955cdd4991b7b322.md) | 104 | `result-track:53537f3a955cdd4991b7b32250829b011f7ad8e12c9c8c005a3ec0f554dd76fb` |
| 13 | `lemma` | [mk₀_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/mk-zero--8da0a756fa51b5b385a85c58.md) | 119 | `result-track:8da0a756fa51b5b385a85c58afb17767efa9892a29b48284a135757f7773223d` |
| 14 | `lemma` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp-add--128a3997cb0eb82133de7949.md) | 122 | `result-track:128a3997cb0eb82133de7949a529882d6ae9cbfb4956dcd3958a9e0ec8bfc223` |
| 15 | `lemma` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/add-comp--20dc2443983f5b3b6468b513.md) | 128 | `result-track:20dc2443983f5b3b6468b513c8ac349e1f2f17295d45f6f02e1807bf1d1e448c` |
| 16 | `lemma` | [comp_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp-neg--317da1cfdba095f71fc6dad8.md) | 134 | `result-track:317da1cfdba095f71fc6dad81505e7f3da9ddfdc0e6ab7c613e06cacdc13722a` |
| 17 | `lemma` | [neg_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/neg-comp--914123cb8740e39aee50116d.md) | 140 | `result-track:914123cb8740e39aee50116d65e73bba3e5b000c09cf995da8703823bd10a0ae` |
| 18 | `lemma` | [comp_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp-zero--b8bd7ef0f446848a3f4dedcc.md) | 147 | `result-track:b8bd7ef0f446848a3f4dedccd24c15ab3e1dfe6eff3a1840a54ce7d551f05a63` |
| 19 | `lemma` | [zero_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/zero-comp--c9c34874e60c97830bfdac16.md) | 154 | `result-track:c9c34874e60c97830bfdac16e10feb2961dc21a04ff22edf0c9dd64a341d522e` |
| 20 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/map--23c1cdb7614b9def46f5fa2a.md) | 161 | `declaration-track:23c1cdb7614b9def46f5fa2a56a2657e7570f176e83f813c24110f8d2b23325d` |
| 21 | `lemma` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/id-map--3a16d381eb77597faa825606.md) | 166 | `result-track:3a16d381eb77597faa8256060635e2d23a3aae4163aecddfddb9162b0e994c48` |
| 22 | `lemma` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/comp-map--44194911841d38213884297f.md) | 169 | `result-track:44194911841d38213884297fdc35eee630dbd92ab81896e96ef92831d4da11b2` |
| 23 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant6f40502cb9edfb05fa65572e796756066ef290264cacbcdbd953fbcaf9f3aa94.lean/declarations/map-comp--de70279f74e5248726b406be.md) | 173 | `result-track:de70279f74e5248726b406be44ccaa20bd1798637ee079cb507a9ea9906b1ef7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
