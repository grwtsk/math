# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d2998ff5be5089ebaee65cf34e1a7e797bdd068",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d2998ff5be5089ebaee65cf34e1a7e797bdd068`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Concrete.to_product_injective_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-to-product-injective-of-islimit--678a6f1d9bdd2fc302210370.md) | 42 | `result-track:678a6f1d9bdd2fc302210370d1cba05c1da017860a6189a38a3f68fbac103a6f` |
| 2 | `theorem` | [Concrete.isLimit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-islimit-ext--7202f31e01025391f2fad1af.md) | 58 | `result-track:7202f31e01025391f2fad1af7ffad62699050b5eef1dd5b83f0ed55851741896` |
| 3 | `theorem` | [Concrete.limit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-limit-ext--66213e9b10dae46ba2798212.md) | 63 | `result-track:66213e9b10dae46ba2798212a893a7eb8570c1d591bdb043508749e05f9d2bab` |
| 4 | `theorem` | [Concrete.widePullback_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-widepullback-ext--ab1396e942ada7581cbed3e6.md) | 74 | `result-track:ab1396e942ada7581cbed3e6b41bade330485a8cfc4fb96696fe540919c85238` |
| 5 | `theorem` | [Concrete.widePullback_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-widepullback-ext--f437b4a70f69b8373a896444.md) | 84 | `result-track:f437b4a70f69b8373a8964443d2bbc90d9a3295d7dbcf2c21bc18e760403c9b3` |
| 6 | `theorem` | [Concrete.multiequalizer_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-multiequalizer-ext--9da98333bd41db6d9b3084fe.md) | 97 | `result-track:9da98333bd41db6d9b3084fe65118aeda045be685ef5cccbfacef6b9f594f735` |
| 7 | `def` | [Concrete.multiequalizerEquivAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-multiequalizerequivaux--769c3467005f002ee58901d9.md) | 108 | `declaration-track:769c3467005f002ee58901d9284026fc417c4b943e265572c8507b8cd0c86931` |
| 8 | `def` | [Concrete.multiequalizerEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-multiequalizerequiv--2ae26085151d0bba5fd5bc79.md) | 142 | `declaration-track:2ae26085151d0bba5fd5bc799f82307d039162185c76acc6df3302304fe605ed` |
| 9 | `theorem` | [Concrete.multiequalizerEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-multiequalizerequiv-apply--33427ac8568080897ff9a5e9.md) | 153 | `result-track:33427ac8568080897ff9a5e972360fe8173be637fbb698ad4d0b25babc7cae15` |
| 10 | `theorem` | [cokernel_funext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/cokernel-funext--775cd87ec8bdf286301e3d9b.md) | 167 | `result-track:775cd87ec8bdf286301e3d9b42a4c15b73d7743e32f02d69a62ef65fb17a3d46` |
| 11 | `theorem` | [Concrete.from_union_surjective_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-from-union-surjective-of-iscolimit--d41f6a71dda68037b044e3bd.md) | 177 | `result-track:d41f6a71dda68037b044e3bdf1cdabe6e699486e1ee2df674b6f00c8080f43f6` |
| 12 | `theorem` | [Concrete.isColimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-iscolimit-exists-rep--c7b3bcc150751901fdbf4d14.md) | 203 | `result-track:c7b3bcc150751901fdbf4d149798033c807793793ac1f77e57e1874d91524ce7` |
| 13 | `theorem` | [Concrete.colimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-colimit-exists-rep--9650d8fc4d8832581798d7f9.md) | 209 | `result-track:9650d8fc4d8832581798d7f9474bbf9f8445294efffd2acec84421fea97c2f96` |
| 14 | `theorem` | [Concrete.isColimit_rep_eq_of_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-iscolimit-rep-eq-of-exists--33adf0f5d962dcd81270d7bd.md) | 214 | `result-track:33adf0f5d962dcd81270d7bd7014295898bbaaad6ecb90299b89f407418c4eb3` |
| 15 | `theorem` | [Concrete.colimit_rep_eq_of_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-colimit-rep-eq-of-exists--151d3c7f8af141fb0a8dab5b.md) | 233 | `result-track:151d3c7f8af141fb0a8dab5b53b4e8e090dfb8ac7a21bae1302c55ba1521170d` |
| 16 | `theorem` | [Concrete.isColimit_exists_of_rep_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-iscolimit-exists-of-rep-eq--43781ad4daea0d3f344c0c4a.md) | 243 | `result-track:43781ad4daea0d3f344c0c4a2fd753dbf3aa0888b5df35a9fedd062d9915f555` |
| 17 | `theorem` | [Concrete.isColimit_rep_eq_iff_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-iscolimit-rep-eq-iff-exists--159dc3c61786a77c4bb8365a.md) | 285 | `result-track:159dc3c61786a77c4bb8365ac10f70de153235fb2f777891738b5ed3b95fe0cf` |
| 18 | `theorem` | [Concrete.colimit_exists_of_rep_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-colimit-exists-of-rep-eq--40e5458758572091416dbcbb.md) | 291 | `result-track:40e5458758572091416dbcbbb9e09ac02738590d3653e75983569cdc75390e5c` |
| 19 | `theorem` | [Concrete.colimit_rep_eq_iff_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-colimit-rep-eq-iff-exists--f8f76bea7a783a4845a09e79.md) | 297 | `result-track:f8f76bea7a783a4845a09e7901e50567fb1aa2d872601bf7cbe33e5000168146` |
| 20 | `theorem` | [Concrete.widePushout_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-widepushout-exists-rep--397540a44beff620c4242a98.md) | 310 | `result-track:397540a44beff620c4242a9886aa5999613b1b637794615784f5e4592a800ace` |
| 21 | `theorem` | [Concrete.widePushout_exists_rep'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/declarations/concrete-widepushout-exists-rep--97ca160e5afa7fe47545fefc.md) | 322 | `result-track:97ca160e5afa7fe47545fefccae5d8f4d2b10d1146407324d9dfc5075c755b9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
