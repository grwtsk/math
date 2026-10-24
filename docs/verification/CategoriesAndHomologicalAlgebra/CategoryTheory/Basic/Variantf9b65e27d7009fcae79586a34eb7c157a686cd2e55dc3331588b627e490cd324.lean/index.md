# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ed00a7ebd2d5e749ebf937cc9e2a2ea73fd267",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ed00a7ebd2d5e749ebf937cc9e2a2ea73fd267`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.W.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/pfunctor--29d915c9b2daf21eb7f357ef.md) | 28 | `declaration-track:29d915c9b2daf21eb7f357efd06db5e85f50f3320ad02b33c6979cd034144a83` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/instance--46765cb4bf8bd28d4b97234a.md) | 36 | `declaration-track:46765cb4bf8bd28d4b97234a4c104c75ab1704026a84d3204cffef8606a327ed` |
| 3 | `def` | [Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/obj--c6a20c30136ec8dda36eb042.md) | 43 | `declaration-track:c6a20c30136ec8dda36eb042dfffb8538e056a806a0dd879c7bb9621103d3f17` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/instance--e9dd73f10499fb5239ce6da7.md) | 46 | `declaration-track:e9dd73f10499fb5239ce6da72a15db4f712e2786faf72d9be00ce12b9d7e4509` |
| 5 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/map--2682a34719ebdeea72916a87.md) | 50 | `declaration-track:2682a34719ebdeea72916a875499cb61fadf0cf8dd3aa40ab831cdcb04f3330d` |
| 6 | `instance` | [Obj.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/obj-inhabited--b54b4631adc12af0770f35d8.md) | 53 | `declaration-track:b54b4631adc12af0770f35d8c87d6c8ade399bfef6628462fb5338f9c1e28762` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/instance--0349b2a830a9659ad9a4a1be.md) | 56 | `declaration-track:0349b2a830a9659ad9a4a1bec2a65abae6796498967ab069cf86da0ac919bbf3` |
| 8 | `theorem` | [map_eq_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/map-eq-map--447862d519e6c5d67a98887b.md) | 60 | `result-track:447862d519e6c5d67a98887b9cedbe121b2620cc930a324af2293e957175724a` |
| 9 | `theorem` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/map-eq--c074fe236b1a67f7a1921d32.md) | 64 | `result-track:c074fe236b1a67f7a1921d32161abe06dcb53848d5c81638f8f3ea01a3af86c2` |
| 10 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/id-map--371c25f3591706b47e8d5f9c.md) | 69 | `result-track:371c25f3591706b47e8d5f9ce29fa551de6ca8f58e9401f3a4b5bf328a0107ed` |
| 11 | `theorem` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/map-map--0152b3d930c1a0c7ae4c1fef.md) | 72 | `result-track:0152b3d930c1a0c7ae4c1fef6a2bff3944c1ec9b7a0f5bc2404af2173ffa2f83` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/instance--8c84f9537bb1a273de689f6d.md) | 75 | `declaration-track:8c84f9537bb1a273de689f6d839ae4a7dab63358a0fc12b24b3efd58f994549c` |
| 13 | `def` | [W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/w--7478ba84fa0b34d66a3af64c.md) | 82 | `declaration-track:7478ba84fa0b34d66a3af64c55cdfa98af18f0e072c8c96e0e300c8e258476da` |
| 14 | `def` | [W.head](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/w-head--4755bfd0d26e1d02eebbff27.md) | 92 | `declaration-track:4755bfd0d26e1d02eebbff274755c1e80bec65ed5d1e852863f4ea4e8412b6ef` |
| 15 | `def` | [W.children](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/w-children--ebe84d979352c6e1b55e34ae.md) | 96 | `declaration-track:ebe84d979352c6e1b55e34ae4031ad31cab7ef246737e3ae332ac96bcd22857d` |
| 16 | `def` | [W.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/w-dest--311471ae7dcb79dfbc90d796.md) | 100 | `declaration-track:311471ae7dcb79dfbc90d79639caa55ca91f8a5d38576ab24d76c746f3648a53` |
| 17 | `def` | [W.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/w-mk--15b0f12529dced5685f455bc.md) | 104 | `declaration-track:15b0f12529dced5685f455bcf708c146102431325f065c3a0934fcbc3bc78fe1` |
| 18 | `theorem` | [W.dest_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/w-dest-mk--fd932170f3ed6ff26082b877.md) | 108 | `result-track:fd932170f3ed6ff26082b8779d43be5cc8165e8382a4b22520f6ed1f35d82200` |
| 19 | `theorem` | [W.mk_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/w-mk-dest--de976c307ef1c700d32f638c.md) | 111 | `result-track:de976c307ef1c700d32f638cc46ae8c071e11eb54135e46a1a7405696c44a07b` |
| 20 | `def` | [Idx](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/idx--48e3c1b6c0d534495fb2e9c6.md) | 118 | `declaration-track:48e3c1b6c0d534495fb2e9c634c2663d28d2e5f238e33e513395d92ee4c8b029` |
| 21 | `instance` | [Idx.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/idx-inhabited--7bb8ab703cb292718c068146.md) | 121 | `declaration-track:7bb8ab703cb292718c0681463b41c0c5341bda8c7b6cdf50891724f9bf45e3ba` |
| 22 | `def` | [Obj.iget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/obj-iget--b59600e631d82524cb46a468.md) | 128 | `declaration-track:b59600e631d82524cb46a46873e88488694e0c3a349f825205e5333682ad7dcb` |
| 23 | `theorem` | [fst_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/fst-map--b84c1d17064a5d38b0f9d87d.md) | 132 | `result-track:b84c1d17064a5d38b0f9d87d0ff86aa7285565af13fdd1f52828022c9bff49d7` |
| 24 | `theorem` | [iget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/iget-map--8e30d00a772f859f5d147f6f.md) | 135 | `result-track:8e30d00a772f859f5d147f6f295909d2c5fc0f4ea0de305569a16e32e6794e10` |
| 25 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/comp--0d473d276542917c8f1e5a96.md) | 149 | `declaration-track:0d473d276542917c8f1e5a96d9c2d40998cfb1ec26ee24a7d3ff03a99b5a1598` |
| 26 | `def` | [comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/comp-mk--33e4927b85eda98019673ec4.md) | 153 | `declaration-track:33e4927b85eda98019673ec4a5c1a2e7d04562ee63a2f2810533658aade482f6` |
| 27 | `def` | [comp.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/comp-get--6fd3dc55d456c98029b80653.md) | 157 | `declaration-track:6fd3dc55d456c98029b80653f6c8e2aae3cbcb83abf3827a12ecdc7ca63fb154` |
| 28 | `theorem` | [liftp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/liftp-iff--21695e3f61f00f13553e559a.md) | 171 | `result-track:21695e3f61f00f13553e559a674e749690985e0c0c57d87e299b4172017db309` |
| 29 | `theorem` | [liftp_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/liftp-iff--662fa54b94ac345aefe63547.md) | 183 | `result-track:662fa54b94ac345aefe635477cbf971760b62c92acf00ae64d4c318675092f06` |
| 30 | `theorem` | [liftr_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/liftr-iff--9e916a15be385ffa5a05cd81.md) | 191 | `result-track:9e916a15be385ffa5a05cd813b6891138f794ec11ebad618d1f39ee06528f36e` |
| 31 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf9b65e27d7009fcae79586a34eb7c157a686cd2e55dc3331588b627e490cd324.lean/declarations/supp-eq--ed95fd09932be01c737fdada.md) | 214 | `result-track:ed95fd09932be01c737fdada246b8f76d53c9f1c7c49e1114114ce5dc2df2f90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
