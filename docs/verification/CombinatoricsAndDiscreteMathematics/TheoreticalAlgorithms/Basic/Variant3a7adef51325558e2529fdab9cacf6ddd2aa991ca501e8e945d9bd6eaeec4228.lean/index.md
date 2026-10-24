# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ec666c4346637c52df9687c505f1d60be6812f7",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ec666c4346637c52df9687c505f1d60be6812f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CNF.Clause](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/cnf-clause--2effc8f316d992709a69ddec.md) | 23 | `declaration-track:2effc8f316d992709a69ddecf81d571ed332f04000eb02f92fbf2194fd1c6fdb` |
| 2 | `structure` | [CNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/cnf--743a659ce0d2146152764aec.md) | 30 | `declaration-track:743a659ce0d2146152764aecf69ce34f0a9b685f001f62be7e51c9bc41d4c852` |
| 3 | `def` | [Clause.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/clause-eval--7d28b97bf726b43cb091fa49.md) | 38 | `declaration-track:7d28b97bf726b43cb091fa4953e9f2896739d1f35a3dcea6169709e02ece1ba6` |
| 4 | `theorem` | [Clause.eval_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/clause-eval-nil--414c08b6615ea117b5a1e93b.md) | 40 | `result-track:414c08b6615ea117b5a1e93b05d8c0638dbdfc40d4e3acadbf73fc186226413e` |
| 5 | `theorem` | [Clause.eval_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/clause-eval-cons--6f8e82b691366fafc618ebfe.md) | 41 | `result-track:6f8e82b691366fafc618ebfeb0f71937acacd814c229e7f1442b63743c3bb322` |
| 6 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/eval--2b7134c3f35649bf1ff391de.md) | 47 | `declaration-track:2b7134c3f35649bf1ff391de80c60d8ce3a5fd4e1ac661d03f6f40c576c0261e` |
| 7 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/empty--2765b74856b3461d91a61580.md) | 50 | `declaration-track:2765b74856b3461d91a61580b727fc0a47bb9d8db99b7bfa038f5018895649ed` |
| 8 | `def` | [emptyWithCapacity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/emptywithcapacity--741f70e5c52b7e9662865023.md) | 53 | `declaration-track:741f70e5c52b7e9662865023b9d59484c897244f439a07ca2fc213c4a15df034` |
| 9 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/add--62858856a191f56d6bd7e817.md) | 56 | `declaration-track:62858856a191f56d6bd7e817825376ed8a54de4e55d808641124aa347342cfcf` |
| 10 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/append--d3680f0d8b7e80d57a96b01f.md) | 59 | `declaration-track:d3680f0d8b7e80d57a96b01f9c3431cfca0d7b2f7b2518345a1309754c3c14c8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/instance--827947a1607f7eddb8090da0.md) | 62 | `declaration-track:827947a1607f7eddb8090da0b33e16c81eddee689c6330b17addcc0b3b398729` |
| 12 | `theorem` | [eval_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/eval-empty--9fe7e308b1680157d2070023.md) | 65 | `result-track:9fe7e308b1680157d2070023f832f808f80bcc668f531294ca9d76795427bcc0` |
| 13 | `theorem` | [eval_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/eval-add--1c60660d3d480e67c0d8ce28.md) | 66 | `result-track:1c60660d3d480e67c0d8ce28dbc3ebaeb8a0458c9b71e60d2ab6d09cc93a6fcd` |
| 14 | `theorem` | [eval_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/eval-append--69bed812ab668146d3b2e8ae.md) | 70 | `result-track:69bed812ab668146d3b2e8ae9904ebabb347e9c6a9ce47199708f5460c1f8006` |
| 15 | `def` | [Sat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/sat--264de4087e396a0bc8d0b83b.md) | 73 | `declaration-track:264de4087e396a0bc8d0b83b5e4d62d072f458f3890f14c671bfaef3aadf6e9f` |
| 16 | `def` | [Unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/unsat--e04c2f8f81ffeeef130cc7ae.md) | 74 | `declaration-track:e04c2f8f81ffeeef130cc7ae394aec0f9e7abab7dc923293b09876cdadcde2cc` |
| 17 | `theorem` | [sat_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/sat-def--1aa40adcd99c946a9329d9ca.md) | 76 | `result-track:1aa40adcd99c946a9329d9cac5645e5aa2ee9d2d668eca8b9632b4f76af89885` |
| 18 | `theorem` | [unsat_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/unsat-def--baca4aaf225623928627dda7.md) | 77 | `result-track:baca4aaf225623928627dda7b73ae8325800aa16c5490d7c2302066a6b06ecf7` |
| 19 | `theorem` | [not_unsat_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/not-unsat-empty--5706e1c6501ebbad0ed935f0.md) | 80 | `result-track:5706e1c6501ebbad0ed935f0c6e615512eb311511a6861f6fa9be62370df36b4` |
| 20 | `theorem` | [sat_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/sat-empty--5ec7b898e009501971581ad2.md) | 83 | `result-track:5ec7b898e009501971581ad2e0002450ef709fb6c3213483ce310aef74afc6a9` |
| 21 | `theorem` | [unsat_add_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/unsat-add-nil--cf9dfc9e73e36eca87358195.md) | 86 | `result-track:cf9dfc9e73e36eca87358195d1cf1ce037b8e67c73d24a6a5a25e9f602840056` |
| 22 | `def` | [Mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/mem--61e3e1e30aa44ee35cd74821.md) | 94 | `declaration-track:61e3e1e30aa44ee35cd7482169d2343a622c7fb0d7a205cb90cd6911c1505e73` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/instance--eb47763e106a50abba418fd2.md) | 96 | `declaration-track:eb47763e106a50abba418fd2a2c07a5320de1d40fc891ad590eb7ec220e170fd` |
| 24 | `theorem` | [not_mem_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/not-mem-nil--907ae5cc429fa23c9f1953b1.md) | 99 | `result-track:907ae5cc429fa23c9f1953b1313124060634389209622c5a86c9332e2bddf756` |
| 25 | `theorem` | [mem_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/mem-cons--f86cc74e233ea060fa437d62.md) | 100 | `result-track:f86cc74e233ea060fa437d627a944fcd5d744b93d09bcde73f812e2c363b401d` |
| 26 | `theorem` | [mem_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/mem-of--f9916c29ffd8ab806b8f8328.md) | 106 | `result-track:f9916c29ffd8ab806b8f83285d1ee661df47019330d42adbd7ad8a98ed81e895` |
| 27 | `theorem` | [eval_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/eval-congr--e36d45c93679b1452b2a0314.md) | 111 | `result-track:e36d45c93679b1452b2a03147c98cb39d213960e042546b48be6d8f8f2860ff8` |
| 28 | `def` | [Mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/mem--2b391e7c16dd600ce8692322.md) | 132 | `declaration-track:2b391e7c16dd600ce869232272c8be5b567a470b267f85fcb55eeed9cf62a2f8` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/instance--563fc27494c0d960940232f3.md) | 134 | `declaration-track:563fc27494c0d960940232f3e8202ab0036b435e2da89c5ff229b1c502ff2ae6` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/instance--8fdf3e7de86c53e41ae2a04a.md) | 137 | `declaration-track:8fdf3e7de86c53e41ae2a04a358628ef7be560c0ffc5981485279ba5daa3e158` |
| 31 | `def` | [VarMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/varmem--44062b2ac77e485f16dea412.md) | 143 | `declaration-track:44062b2ac77e485f16dea412e27db52049bfd718108cdce6ab6a960eca938d1c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/instance--e7c53e6bbc9a038da4574c55.md) | 145 | `declaration-track:e7c53e6bbc9a038da4574c5543c7a032f76a21383845bdebf17e133fd6433c04` |
| 33 | `theorem` | [Internal.any_not_isEmpty_iff_exists_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/internal-any-not-isempty-iff-exists-mem--5621cfc91154790152de35ba.md) | 148 | `result-track:5621cfc91154790152de35ba4819ac7c1ecb747b42a4f7a966ff4d951ced6abf` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/instance--c57e80eb89c068cccb1a6833.md) | 175 | `declaration-track:c57e80eb89c068cccb1a6833b68a897bca9f18d9cd78c855aa93b490620205c7` |
| 35 | `theorem` | [not_VarMem_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/not-varmem-empty--2a6df69b1c5448cfff9f9452.md) | 178 | `result-track:2a6df69b1c5448cfff9f94528e1b55c76a063e17ae30dbc2a65e7d9f0a71c1fc` |
| 36 | `theorem` | [VarMem_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/varmem-add--e741b81641ca6a14d50d4558.md) | 180 | `result-track:e741b81641ca6a14d50d45587cee73c2163910f4ee3b3f10f8b73b2c345a3e54` |
| 37 | `theorem` | [VarMem_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/varmem-of--1ee8ebae1500d56a5a44f429.md) | 196 | `result-track:1ee8ebae1500d56a5a44f429e7f008e634a612f213e3fe7beb84f1023ac6af97` |
| 38 | `theorem` | [Internal.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/internal-mem-iff--5ba03c4b7fd21c3e449d9fc2.md) | 200 | `result-track:5ba03c4b7fd21c3e449d9fc205ade44d20e4c8ee4870d27758f058ff0d12edcb` |
| 39 | `theorem` | [Internal.clauses_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/internal-clauses-append--93b09fa3b801cccee2424b32.md) | 203 | `result-track:93b09fa3b801cccee2424b324a996a391fd569f7eda36883eca28384efc9bd8b` |
| 40 | `theorem` | [Internal.ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/internal-ext-iff--6488dd86798ebfebe5f132a7.md) | 205 | `result-track:6488dd86798ebfebe5f132a77abfea552287d564d7c5d4b302eaf09e274a6881` |
| 41 | `theorem` | [emptyWithCapacity_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/emptywithcapacity-eq-empty--d1a4c343f3e90a2e0e2ff298.md) | 209 | `result-track:d1a4c343f3e90a2e0e2ff2980b18a16098fc11baacd52e0c2f9ff45a8a479224` |
| 42 | `theorem` | [VarMem_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/varmem-append--1896cc3659e3e30de2b77018.md) | 213 | `result-track:1896cc3659e3e30de2b7701848e28832087e40b1ebe8b86c8e42c399f7036e03` |
| 43 | `theorem` | [eval_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean/declarations/eval-congr--a4b23a4666fe1d2a686d62b0.md) | 226 | `result-track:a4b23a4666fe1d2a686d62b09d3d60f9470b20f0737a737b35e563570994aada` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
