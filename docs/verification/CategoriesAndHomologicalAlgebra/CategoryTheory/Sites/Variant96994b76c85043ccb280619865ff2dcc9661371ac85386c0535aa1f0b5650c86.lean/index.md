# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sites.Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c828e30220865331353d70f0807777dde8de9565",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c828e30220865331353d70f0807777dde8de9565`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Spaces` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coveringOfPresieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/coveringofpresieve--81dbb523d0def7f573ee7946.md) | 38 | `declaration-track:81dbb523d0def7f573ee79464b3b5d35a121acb834cb7e3fa112dba081ea0b0e` |
| 2 | `theorem` | [coveringOfPresieve_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/coveringofpresieve-apply--4c913a8f8f9f9a4616775cb3.md) | 42 | `result-track:4c913a8f8f9f9a4616775cb38c0f6d500038b4067155b51d6d8ae28b19d81c86` |
| 3 | `theorem` | [iSup_eq_of_mem_grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/isup-eq-of-mem-grothendieck--6bb6a147a9ba852acb30313d.md) | 52 | `result-track:6bb6a147a9ba852acb30313ddbb3d963366a24ce1eef4e7a4602629d0353671a` |
| 4 | `def` | [presieveOfCoveringAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/presieveofcoveringaux--5266f2aab52007c414792db0.md) | 69 | `declaration-track:5266f2aab52007c414792db04fddcb2214d92f926f09ab0fc5d84200b86a5c34` |
| 5 | `def` | [presieveOfCovering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/presieveofcovering--55ae3e93e940cf71f904a954.md) | 73 | `declaration-track:55ae3e93e940cf71f904a9545345a4bef9732e26f34af1e8e95d57126755320c` |
| 6 | `theorem` | [covering_presieve_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/covering-presieve-eq-self--158021ade0012fc2640c8f42.md) | 81 | `result-track:158021ade0012fc2640c8f42d7e4f7af14c3af36b4a5203f7ad0822e675b3b5c` |
| 7 | `theorem` | [mem_grothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/mem-grothendiecktopology--aebfd2f1d0bf0f2378a6f7ee.md) | 93 | `result-track:aebfd2f1d0bf0f2378a6f7eeb7e03a81749e6b9c2c7387c2bacd761abe4cc328` |
| 8 | `def` | [homOfIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/homofindex--cea9642af5f1ba6b7ec5aa98.md) | 102 | `declaration-track:cea9642af5f1ba6b7ec5aa98cc3dc1f5406d8ea1fa120d4b03c8df750baad5e0` |
| 9 | `def` | [indexOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/indexofhom--ed7287f06307a50311c2a94f.md) | 108 | `declaration-track:ed7287f06307a50311c2a94f7ba8a6eb9e04235f1f5bd056996c640fc8f70ede` |
| 10 | `theorem` | [indexOfHom_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/indexofhom-spec--9b572c5dd9d4964a959c9597.md) | 111 | `result-track:9b572c5dd9d4964a959c95975f2fecdfb9d820303ba48f2d19a64a4f9b102a11` |
| 11 | `theorem` | [coverDense_iff_isBasis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/coverdense-iff-isbasis--69217e61de90f814f42df935.md) | 123 | `result-track:69217e61de90f814f42df935fb1febc7087db4920744def59c5acceecca4ff93` |
| 12 | `theorem` | [coverDense_inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/coverdense-inducedfunctor--cb3bcd94f5b5ad259312f2b8.md) | 132 | `result-track:cb3bcd94f5b5ad259312f2b8084794e93f6786f0432a5e7e01855ffa445a234a` |
| 13 | `theorem` | [Topology.IsOpenEmbedding.compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/topology-isopenembedding-compatiblepreserving--78987fc10c902bd3ff2afe57.md) | 145 | `result-track:78987fc10c902bd3ff2afe5709d26d7a9ddf7f021e950a5cf96c8959db906c94` |
| 14 | `theorem` | [IsOpenMap.coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/isopenmap-coverpreserving--e7147e31bfa4d70a8ffa2890.md) | 154 | `result-track:e7147e31bfa4d70a8ffa2890560e27bb264400db2c0b77163c6c2c59f78c9b45` |
| 15 | `lemma` | [Topology.IsOpenEmbedding.functor_isContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/topology-isopenembedding-functor-iscontinuous--39fe026f9f802ea23e01808f.md) | 162 | `result-track:39fe026f9f802ea23e01808f284ffc702a92aea16e8460fd72fc0d6a576a1b49` |
| 16 | `theorem` | [TopCat.Presheaf.isSheaf_of_isOpenEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/topcat-presheaf-issheaf-of-isopenembedding--6e8b289d9defb0a6454a6497.md) | 169 | `result-track:6e8b289d9defb0a6454a6497a9abb6851b15d200a315b58f61413c799294cf42` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/instance--97a378e6e548eacb9da2c05b.md) | 176 | `declaration-track:97a378e6e548eacb9da2c05b6958122227cd1c0c4e3d1b70ac68b6665fb52dfb` |
| 18 | `theorem` | [compatiblePreserving_opens_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/compatiblepreserving-opens-map--4e6896bed545bd44cff62258.md) | 188 | `result-track:4e6896bed545bd44cff622588d053419cef170cdd22f183d9f529967775c950d` |
| 19 | `theorem` | [coverPreserving_opens_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/coverpreserving-opens-map--489ffe8adfcb2fe33405c6c2.md) | 192 | `result-track:489ffe8adfcb2fe33405c6c2ebdbc7bdc7ef158f71ca476b67a57f7f8498cc13` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/instance--15d6d641004b67e416db38ee.md) | 199 | `declaration-track:15d6d641004b67e416db38ee24e854d51cacb30afea2706eec046ec8db0d8cd1` |
| 21 | `def` | [isTerminalOfEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/isterminalofempty--4bf7083e5307fad6b465ac25.md) | 216 | `declaration-track:4bf7083e5307fad6b465ac2576b84052c8b8bbf376e7a24feb4cd86e295828f4` |
| 22 | `def` | [isTerminalOfEqEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/isterminalofeqempty--01707a4f52ef62d5217ed3b5.md) | 220 | `declaration-track:01707a4f52ef62d5217ed3b5b3c68a3a2e3d2ef6408588f9977f35a65e3224bc` |
| 23 | `def` | [restrictHomEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/restricthomequivhom--f0a801e6a735215de6c222d5.md) | 228 | `declaration-track:f0a801e6a735215de6c222d5357659acf4b6f07844c13d4d3d4300d00afef571` |
| 24 | `theorem` | [extend_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/extend-hom-app--7a6f475cbac87ee6dc7cbaaf.md) | 234 | `result-track:7a6f475cbac87ee6dc7cbaafbcc010d8777afed5bc36d2edd8130e9c2ee847b0` |
| 25 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant96994b76c85043ccb280619865ff2dcc9661371ac85386c0535aa1f0b5650c86.lean/declarations/hom-ext--aa00a1b8e6ef54b8b045e4c3.md) | 240 | `result-track:aa00a1b8e6ef54b8b045e4c3959d8fbe66d74df56e3e3e867300b17a57e4aaea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
