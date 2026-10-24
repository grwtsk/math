# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44bbb2d7e28a5d58798d508a8bdd8c7c7cd57b0a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44bbb2d7e28a5d58798d508a8bdd8c7c7cd57b0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offn--014f6e4560e69548747e8934.md) | 34 | `declaration-track:014f6e4560e69548747e8934d68e66795bd567289e3243c666b05ec5a99f0ef4` |
| 2 | `def` | [ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offnm--e1d77f90889e101ca6c864a5.md) | 40 | `declaration-track:e1d77f90889e101ca6c864a567006232737837cdfaa659e97b4264af92941605` |
| 3 | `theorem` | [length_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/length-offn--e9d822fefbdef151b7f37d49.md) | 44 | `result-track:e9d822fefbdef151b7f37d49a3ed334e5a2622b2f638313ecb14f220c585dfc3` |
| 4 | `theorem` | [getElem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/getelem-offn--d65b796a8c8cf2baa8866f11.md) | 51 | `result-track:d65b796a8c8cf2baa8866f1186b4aa869bf382bb7a419498df6e0239cc654c2e` |
| 5 | `theorem` | [getElem?_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/getelem-offn--425b997dd4b95afec33f25ee.md) | 65 | `result-track:425b997dd4b95afec33f25ee578f28c26d045c07d5c81f1b2f9b5ae8a7f7cde9` |
| 6 | `theorem` | [ofFn_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offn-zero--2967351516550d5a0dc9ba1a.md) | 77 | `result-track:2967351516550d5a0dc9ba1a0e8888c7c472cd93f7b50c4db94c97c84d120530` |
| 7 | `theorem` | [ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offn-succ--bcb8aa26bebf1fce342227c5.md) | 81 | `result-track:bcb8aa26bebf1fce342227c5238cf5739ce3ea693622179a8c201874b4b1d0ad` |
| 8 | `theorem` | [ofFn_succ_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offn-succ-last--487cceb5082ca2d42a1144f3.md) | 87 | `result-track:487cceb5082ca2d42a1144f3a3f41f44b25600b090f271efc4c0a44550fc9600` |
| 9 | `theorem` | [ofFn_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offn-add--8c50750ab23c9a1cd654fa6b.md) | 97 | `result-track:8c50750ab23c9a1cd654fa6bfd73e3cf64385c985e1119edb15735e936807db3` |
| 10 | `theorem` | [ofFn_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offn-eq-nil-iff--2cb8bfd9865ada6a94a8fe6e.md) | 105 | `result-track:2cb8bfd9865ada6a94a8fe6e783d83410b36e75c0a1f8d0f64f3a7c04473acb9` |
| 11 | `theorem` | [ofFn_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offn-getelem--abea017d2ad5f49dc987ea5a.md) | 109 | `result-track:abea017d2ad5f49dc987ea5a1ace248d550971968a0f826af8885748baa8c435` |
| 12 | `theorem` | [mem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/mem-offn--efa61dca4410de26c5eae734.md) | 114 | `result-track:efa61dca4410de26c5eae734f34dbce4756ecbcec946f75dc25cae842a57115c` |
| 13 | `theorem` | [map_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/map-offn--1c91350f8bb2c8bc4fe84921.md) | 123 | `result-track:1c91350f8bb2c8bc4fe84921a57f732ce9c585f80fe058a423b2e67801681b45` |
| 14 | `theorem` | [head_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/head-offn--28d6a7b32d8fdb0eab4a6cba.md) | 128 | `result-track:28d6a7b32d8fdb0eab4a6cba4afa4b0badde09c000a5131ce72319fae42b3558` |
| 15 | `theorem` | [getLast_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/getlast-offn--cbd0c38f4ac7e45eb198bab7.md) | 133 | `result-track:cbd0c38f4ac7e45eb198bab77325a5c3b51ca60fe64ffd952f9a0bacf29ec015` |
| 16 | `theorem` | [ofFnM_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offnm-zero--ecb160be96c9bbc6bc53909f.md) | 139 | `result-track:ecb160be96c9bbc6bc53909f08db7e7f4541c0568a3cdff3e90bdfa9bc62366d` |
| 17 | `theorem` | [ofFnM_succ_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offnm-succ-last--f460dd79c00457ca1981c5f5.md) | 144 | `result-track:f460dd79c00457ca1981c5f55664e4e2a4b3373f010f4dedcc96cae38efb59c9` |
| 18 | `theorem` | [ofFnM_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offnm-add--2893fcabc84bdc579d1216f1.md) | 151 | `result-track:2893fcabc84bdc579d1216f15f3a5ee673cf99472d26b4bd892b1d7c9b4c17e0` |
| 19 | `theorem` | [foldl_cons_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/foldl-cons-eq-append--086a7c7d6050dd5e2eb6fd4b.md) | 165 | `result-track:086a7c7d6050dd5e2eb6fd4b1f3f9681315df8d8195527b9bdffc7ce92628852` |
| 20 | `theorem` | [foldr_cons_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/foldr-cons-eq-append--4618f22fb170ec4a8208b878.md) | 171 | `result-track:4618f22fb170ec4a8208b87803a0ef4699ae80bf3b9170bc0191c0f0e29bce0e` |
| 21 | `theorem` | [ofFnM_pure_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offnm-pure-comp--cc3d1c935711ad42743e2125.md) | 182 | `result-track:cc3d1c935711ad42743e2125f9ce897dffb1e8dd230af68fd152c4ed64dbd9c1` |
| 22 | `theorem` | [ofFnM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/offnm-pure--e5e8944dfc84786a685befc9.md) | 188 | `result-track:e5e8944dfc84786a685befc966f23efcb8cd0590e1067687bac72a156818e77b` |
| 23 | `theorem` | [idRun_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2.lean/declarations/idrun-offnm--659fd7da5a396a78fe9969b0.md) | 192 | `result-track:659fd7da5a396a78fe9969b0a57922655848dd3590dc96ad4942480541f7d511` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
