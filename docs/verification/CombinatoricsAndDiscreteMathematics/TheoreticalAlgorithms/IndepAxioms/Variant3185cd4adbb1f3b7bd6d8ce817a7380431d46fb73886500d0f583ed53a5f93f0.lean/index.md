# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndepAxioms.Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "043149e64bdeee6918304be3de3391dc409ae8bb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `043149e64bdeee6918304be3de3391dc409ae8bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matroid.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IndepMatroid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/indepmatroid--6d8328d4f5fdf24ae89cdafc.md) | 130 | `declaration-track:6d8328d4f5fdf24ae89cdafca346a1c9098db948145291b0f81bf4848ffe9523` |
| 2 | `def` | [matroid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/matroid--188923a926bab7867fa2372a.md) | 145 | `declaration-track:188923a926bab7867fa2372a646b725eb2d27276de6cbb0bf195aa4ff2707ab9` |
| 3 | `theorem` | [matroid_indep_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/matroid-indep-iff--fc030e7c83bb0f8eb6b06a8c.md) | 172 | `result-track:fc030e7c83bb0f8eb6b06a8c7ac54736bb65cc33a3048ca9b2097200d5bbc5b5` |
| 4 | `def` | [ofFinitary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinitary--41698bf4c9b3dc3324879550.md) | 179 | `declaration-track:41698bf4c9b3dc33248795500f520ad00fac42761c4a3092120dcd893e770514` |
| 5 | `theorem` | [ofFinitary_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinitary-indep--f90ae1293202f691854f7e6a.md) | 206 | `result-track:f90ae1293202f691854f7e6ab776cea93e5b35ebea7771670307158bb16cabdd` |
| 6 | `instance` | [ofFinitary_finitary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinitary-finitary--9b04747ccad301acc9370d6f.md) | 211 | `declaration-track:9b04747ccad301acc9370d6fa73df4f25106b0f55b1aeaeb315d09ecbc33335a` |
| 7 | `def` | [ofFinitaryCardAugment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinitarycardaugment--9450e0636aca5069e09257a9.md) | 219 | `declaration-track:9450e0636aca5069e09257a9a276311ba020b07cd1a8d1904017ddc61a9a11d3` |
| 8 | `theorem` | [ofFinitaryCardAugment_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinitarycardaugment-indep--e338ec0644e8de98dbde84e0.md) | 300 | `result-track:e338ec0644e8de98dbde84e099ad3537779d7ac879f5856974c3b7e0109c5847` |
| 9 | `instance` | [ofFinitaryCardAugment_finitary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinitarycardaugment-finitary--6c45e2dfd5fcfdd181cb7345.md) | 305 | `declaration-track:6c45e2dfd5fcfdd181cb7345633fd5bc30581302f7f2f353f175f3ecb4ed7be2` |
| 10 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndepMatroid.Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.Matroid.existsMaximalSubsetProperty_of_bdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-in--0a3c3411987b9a336b4a0c53.md) | 313 | `result-track:0a3c3411987b9a336b4a0c538a077f17bd58797eb9b674eb0b8380602e85d3d8` |
| 11 | `def` | [ofBdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbdd--d6ee06318aa99c7458eaab02.md) | 335 | `declaration-track:d6ee06318aa99c7458eaab02b4e7db5665a756ff709f9af1c5ab3ad997322e96` |
| 12 | `theorem` | [ofBdd_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbdd-indep--7c9551484e3d9def43c93567.md) | 350 | `result-track:7c9551484e3d9def43c93567a94bb8e40743250e166abc6a4b8df88b175fa6fb` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/instance--84582752bd31d1d29cf38b75.md) | 355 | `declaration-track:84582752bd31d1d29cf38b751e4988eded70eb9b23d14be758cb996c6e2679db` |
| 14 | `def` | [ofBddAugment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbddaugment--9afb2a67f6b038b004358efe.md) | 366 | `declaration-track:9afb2a67f6b038b004358efe6e86e723e372b6f2c936107eb745dedd24e903ff` |
| 15 | `theorem` | [ofBddAugment_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbddaugment-e--07f96afba07f45e8c7507a56.md) | 392 | `result-track:07f96afba07f45e8c7507a562c1771a6121817021065fd11acbedc4441488d20` |
| 16 | `theorem` | [ofBddAugment_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbddaugment-indep--33038251ed9179e6125c78f4.md) | 396 | `result-track:33038251ed9179e6125c78f4d7652324895f17e253342eca5794f70c7845a5b6` |
| 17 | `instance` | [ofBddAugment_rankFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbddaugment-rankfinite--541fcd5a9477e33593640e44.md) | 400 | `declaration-track:541fcd5a9477e33593640e448fb3b673b2158c47ac9386587ae4264eea3318c7` |
| 18 | `def` | [ofFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinite--02599fb277659a0aa7220b00.md) | 408 | `declaration-track:02599fb277659a0aa7220b0014c5d1861198fb05c1015510f594cda90cc45c81` |
| 19 | `theorem` | [ofFinite_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinite-e--bf79c0dff15a8a5535ebed26.md) | 425 | `result-track:bf79c0dff15a8a5535ebed267a3a597a0d125aee1315119a6938d572d17e6a06` |
| 20 | `theorem` | [ofFinite_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinite-indep--cce002217b643065516993b2.md) | 429 | `result-track:cce002217b643065516993b2a8a5e0538a17968e21e403b6890a553fb09e5dc1` |
| 21 | `instance` | [ofFinite_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinite-finite--ff3225479b9e3fddf0c891af.md) | 433 | `declaration-track:ff3225479b9e3fddf0c891af1b7487bb5153ecf9cb8501d05e29b93b1e466759` |
| 22 | `def` | [ofFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinset--7299b0b2ccd59655dd461ed7.md) | 440 | `declaration-track:7299b0b2ccd59655dd461ed7b2fdd95989c6c74c4d1195dca9294fa1165965b7` |
| 23 | `theorem` | [ofFinset_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinset-e--792011378f19ddd4a871fa68.md) | 460 | `result-track:792011378f19ddd4a871fa68261629345ad05dda0addd675376aac384f647599` |
| 24 | `theorem` | [ofFinset_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinset-indep--75079a7745b464b4ec89e3f8.md) | 464 | `result-track:75079a7745b464b4ec89e3f8ef846333d3d6e9b8064879fd0a507f83158906b5` |
| 25 | `theorem` | [ofFinset_indep'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/offinset-indep--dccaf5046c5f263b1382db2e.md) | 472 | `result-track:dccaf5046c5f263b1382db2e24519b61c6d172b03d24751d4525849cda52bbab` |
| 26 | `def` | [ofExistsMatroid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofexistsmatroid--1ed2ecfa30b4161642f1bdf2.md) | 488 | `declaration-track:1ed2ecfa30b4161642f1bdf24eb683566916fc6c0cc9dc9b24d7dc75c4d4efc2` |
| 27 | `def` | [ofBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbase--51f2bbb5f70a4b894067f488.md) | 501 | `declaration-track:51f2bbb5f70a4b894067f488d81c950204fe0ab8ac626856be945cb1777d4e50` |
| 28 | `def` | [ofExistsFiniteIsBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofexistsfiniteisbase--7f64abb17d3693c97660f72e.md) | 515 | `declaration-track:7f64abb17d3693c97660f72e983ec6b9d0cd35f156a0198c1fbe85118fcc283e` |
| 29 | `theorem` | [ofExistsFiniteIsBase_isBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofexistsfiniteisbase-isbase--b9a0a5bc86edf8d7633083e3.md) | 530 | `result-track:b9a0a5bc86edf8d7633083e391a4f64bc4325411b333445df72653a44d7ee2d4` |
| 30 | `instance` | [ofExistsFiniteIsBase_rankFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofexistsfiniteisbase-rankfinite--f33869ae77791598e44c5f6e.md) | 534 | `declaration-track:f33869ae77791598e44c5f6eb9df0ab8b92315a7be239110f2b52a31ea80f8a2` |
| 31 | `def` | [ofIsBaseOfFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofisbaseoffinite--b1cdcd997c55af6ee891f15a.md) | 542 | `declaration-track:b1cdcd997c55af6ee891f15ae5213f53fe940e5c28562efa82efdd7fdc1bd678` |
| 32 | `theorem` | [ofIsBaseOfFinite_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofisbaseoffinite-e--fa0485149ac127326ed897bb.md) | 552 | `result-track:fa0485149ac127326ed897bb9f25e791d4a75ff59c5df6e6441ae0810d3e8e3f` |
| 33 | `theorem` | [ofIsBaseOfFinite_isBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofisbaseoffinite-isbase--ea2d42ada01f12ce27355595.md) | 556 | `result-track:ea2d42ada01f12ce273555957a66faeaccda0543aedc66ed765466475b470ae1` |
| 34 | `instance` | [ofBaseOfFinite_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/declarations/ofbaseoffinite-finite--99ce24a8bac91511559a9ecd.md) | 560 | `declaration-track:99ce24a8bac91511559a9ecd75e82f7b4d44379c1b806b4d3867a02588988d09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
