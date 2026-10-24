# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftedHom.Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2592d2306746bc4c52a5f35d746d2ddf392eb257",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2592d2306746bc4c52a5f35d746d2ddf392eb257`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ShiftedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/shiftedhom--7da5ccb5a66f65d51ae7fb96.md) | 40 | `declaration-track:7da5ccb5a66f65d51ae7fb962ab05f08cecaf7bcd548e89567ad9d7df0d677dd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/instance--ff8fc0d07cf1cf6d598040d1.md) | 42 | `declaration-track:ff8fc0d07cf1cf6d598040d1382085aa1542a79e0749005ec0e4089be46b07a8` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp--62943026a2a7a67e8b9af257.md) | 52 | `declaration-track:62943026a2a7a67e8b9af257d6c16c87896749c23b1700043d833fe7562acbf2` |
| 4 | `lemma` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp-assoc--013e87cabbb4e9158f2cd8cf.md) | 56 | `result-track:013e87cabbb4e9158f2cd8cf43ba857bbc2fe886cdb476f43aeb50d9441c9e50` |
| 5 | `def` | [mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/mk--4a036e9c028389106c68f814.md) | 70 | `declaration-track:4a036e9c028389106c68f814c3df91f52b5021a7e892e8d5c554290acc85c4ad` |
| 6 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/homequiv--18ebca1575cd10ea312f9f3e.md) | 75 | `declaration-track:18ebca1575cd10ea312f9f3e257cd0f77ffdcfd6a998b36e55adf09669ed31fb` |
| 7 | `lemma` | [mk₀_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/mk-comp--217460db24d6641ffab3b11d.md) | 81 | `result-track:217460db24d6641ffab3b11d8d81520850f443a4a56084aded16689d03430911` |
| 8 | `lemma` | [mk₀_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/mk-id-comp--b204d75cdd49539935d8df03.md) | 87 | `result-track:b204d75cdd49539935d8df03a24336163f2bfde1642038fbfc95d53cdfd83209` |
| 9 | `lemma` | [comp_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp-mk--40e9c1a55392938f83ac2592.md) | 91 | `result-track:40e9c1a55392938f83ac25922e791a4181c39a2f13911dc81a98dd24e2e6f608` |
| 10 | `lemma` | [comp_mk₀_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp-mk-id--3facfb2274164029fd1fca8e.md) | 99 | `result-track:3facfb2274164029fd1fca8ea7b630c24c539053e137eff9461b6934dca9818e` |
| 11 | `lemma` | [mk₀_comp_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/mk-comp-mk--48a7e62fcc3839993c074ec0.md) | 104 | `result-track:48a7e62fcc3839993c074ec0da84829c454f067c11a9e42fb9c2bef72d6f7f63` |
| 12 | `lemma` | [mk₀_comp_mk₀_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/mk-comp-mk-assoc--a175e7d286a54542dd733f63.md) | 112 | `result-track:a175e7d286a54542dd733f63b4716ea95b936053863411900bc9396d59558066` |
| 13 | `lemma` | [mk₀_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/mk-zero--30dfd7e88d87b7c03af8a6ca.md) | 127 | `result-track:30dfd7e88d87b7c03af8a6cad4c8ad457fc05dcb2978a686bd24e89051ebc136` |
| 14 | `lemma` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp-add--4e1fd5f846b605fccebdb205.md) | 130 | `result-track:4e1fd5f846b605fccebdb2053b2f83b54c76df8304430eba3dc405d2bde6bd34` |
| 15 | `lemma` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/add-comp--716f237df90363fc7a8ab4f5.md) | 136 | `result-track:716f237df90363fc7a8ab4f5d006a1c830ebae9beca96a089f70028574498104` |
| 16 | `lemma` | [comp_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp-neg--e8ef1ce87240b2e9be728315.md) | 142 | `result-track:e8ef1ce87240b2e9be728315079602bc702550d7c85758f7d781518240ebbed4` |
| 17 | `lemma` | [neg_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/neg-comp--3f0f7aa7ac07224511ff1005.md) | 148 | `result-track:3f0f7aa7ac07224511ff1005a5e8234397a79562521d23fa188614cfa60d545c` |
| 18 | `lemma` | [comp_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp-zero--5c75cea5320be58b28beb182.md) | 155 | `result-track:5c75cea5320be58b28beb182d5118e819b7c74aa7712e29b791a3535ff11a1fd` |
| 19 | `lemma` | [zero_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/zero-comp--886500c3f25074f0d7e7a486.md) | 162 | `result-track:886500c3f25074f0d7e7a48614c1e4ff44d97b9725bf78045bfb5b04d383fe9f` |
| 20 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/map--77ec4fbf53a2e4066ba6fc67.md) | 169 | `declaration-track:77ec4fbf53a2e4066ba6fc67539285e35011714e180ff83d446b8ab9bb2ca4bb` |
| 21 | `lemma` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/id-map--6f111a9e2cd216ddd46c567d.md) | 174 | `result-track:6f111a9e2cd216ddd46c567daf2ef2b3099b050177026028d28f1e6fcc9deecb` |
| 22 | `lemma` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/comp-map--c31edfc0f99beb398971c087.md) | 177 | `result-track:c31edfc0f99beb398971c087a08db041936eab2bd8a319b5dd76da06157f4213` |
| 23 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/declarations/map-comp--b80aba9b941ecea9f2a79e51.md) | 181 | `result-track:b80aba9b941ecea9f2a79e5175896b4a7654b077d54c203e4eea067dc80b3e8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
