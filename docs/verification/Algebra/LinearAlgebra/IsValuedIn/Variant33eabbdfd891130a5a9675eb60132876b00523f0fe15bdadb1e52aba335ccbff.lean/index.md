# Verification target: GRWTSK.Algebra.LinearAlgebra.IsValuedIn.Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac03df63c3db8709e9692394a9250dc8d2fafef",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac03df63c3db8709e9692394a9250dc8d2fafef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsValuedIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/isvaluedin--99837a4a66884997dcc11ff1.md) | 52 | `declaration-track:99837a4a66884997dcc11ff10969bd9cca87568f2ffacf8e8d083f3a252789ab` |
| 2 | `abbrev` | [IsCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/iscrystallographic--bba8c8499b7cc67092b42dc0.md) | 59 | `declaration-track:bba8c8499b7cc67092b42dc031300073989e4ff358e226951784225b2a6f465c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/instance--b5bcbf81466a61774e59ba05.md) | 61 | `declaration-track:b5bcbf81466a61774e59ba058572ab6ddb39a66caaf4c01121e15a19275c16cb` |
| 4 | `lemma` | [isValuedIn_iff_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/isvaluedin-iff-mem-range--2146646a066bd0b429443b19.md) | 67 | `result-track:2146646a066bd0b429443b1959174856be2cb32a02d2303dd30e18ccd8cbf20a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/instance--566eceecffb330035b5d2f99.md) | 71 | `declaration-track:566eceecffb330035b5d2f9993e4ed1d7ea29c8a4f0dc9e311b735d3b513ec06` |
| 6 | `def` | [pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/pairingin--639da09684e0fe7600474ad6.md) | 80 | `declaration-track:639da09684e0fe7600474ad6903c526847e7fecf44a0e45087bcefea435e804d` |
| 7 | `lemma` | [algebraMap_pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/algebramap-pairingin--02d3722a8a93c4462cd0f55c.md) | 84 | `result-track:02d3722a8a93c4462cd0f55c05c0239de5922c9324197069d52052e2fef9376d` |
| 8 | `lemma` | [pairingIn_same](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/pairingin-same--fc1b99f7338e225767e232ce.md) | 89 | `result-track:fc1b99f7338e225767e232cedfb0aa8ce20c40338ba5940a44419edd46e02dbd` |
| 9 | `lemma` | [pairingIn_reflection_perm](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/pairingin-reflection-perm--28055090400e31861e5e8263.md) | 93 | `result-track:28055090400e31861e5e8263d591cf68fc663a0ae3ac4bbeb448a4331bf5b0e5` |
| 10 | `lemma` | [pairingIn_reflection_perm_self_left](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/pairingin-reflection-perm-self-left--5c0f7417e0935ceaf1a77c7c.md) | 99 | `result-track:5c0f7417e0935ceaf1a77c7cdb020ced985c324d59c4a1c55dd8ea4a3db418ba` |
| 11 | `lemma` | [pairingIn_reflection_perm_self_right](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/pairingin-reflection-perm-self-right--7be60558d3b0c293bef7c8aa.md) | 104 | `result-track:7be60558d3b0c293bef7c8aa9bec94f876fbb6ea30f2c7e6edb479254740005f` |
| 12 | `lemma` | [IsValuedIn.trans](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/isvaluedin-trans--c2a45c2c6b5b969f165f0c98.md) | 108 | `result-track:c2a45c2c6b5b969f165f0c985b72dd7535267605a2107cfcdd1f0ceef1c85643` |
| 13 | `lemma` | [coroot'_apply_apply_mem_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/coroot-apply-apply-mem-of-mem-span--ed72f09806752d95c0df1987.md) | 115 | `result-track:ed72f09806752d95c0df19879f2ccba9a638634e0306b82ba1689666f3c7a829` |
| 14 | `lemma` | [root'_apply_apply_mem_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/root-apply-apply-mem-of-mem-span--ed11c724b5a3da5fe297333d.md) | 127 | `result-track:ed11c724b5a3da5fe297333d0c0b5e389c31804d1eaaee42ad315a08f0e7f2a6` |
| 15 | `abbrev` | [rootSpan](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspan--4c24abf670c6a03a45ed5096.md) | 133 | `declaration-track:4c24abf670c6a03a45ed509665ef870e97079c157d4551e9e3229db2a1e32f36` |
| 16 | `abbrev` | [corootSpan](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspan--9843b8b13d0b15ed808dc51f.md) | 136 | `declaration-track:9843b8b13d0b15ed808dc51fb5de3990f3b778f1dfeaa075a7c4ce3c9d93544c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/instance--cb163363d638affef8c6107d.md) | 138 | `declaration-track:cb163363d638affef8c6107d4fdd94fcbea8d23279dbadf52a23a63c340e7b84` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/instance--08b1a9d351bcad5579a284f8.md) | 142 | `declaration-track:08b1a9d351bcad5579a284f87f7e9bc8f84d74e3258f920bfa25ba5533054247` |
| 19 | `abbrev` | [rootSpanMem](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspanmem--7d1d3a99fd43bc663b94a99a.md) | 147 | `declaration-track:7d1d3a99fd43bc663b94a99a358758b614bf28be652156b633ade703fadc4a2a` |
| 20 | `abbrev` | [corootSpanMem](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspanmem--86444d9dc6e206edbc0ee202.md) | 151 | `declaration-track:86444d9dc6e206edbc0ee2021d3ee7ee1d1052ccf6a61a4a922babb471783c9d` |
| 21 | `lemma` | [rootSpanMem_reflection_perm_self](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspanmem-reflection-perm-self--f8aaf0920b72e0351b6dfc20.md) | 155 | `result-track:f8aaf0920b72e0351b6dfc20d65e399d5b7190ba5212a003199d4839b713d4a3` |
| 22 | `lemma` | [corootSpanMem_reflection_perm_self](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspanmem-reflection-perm-self--73b36db3e0bf99e3404a2386.md) | 160 | `result-track:73b36db3e0bf99e3404a2386c761eb7b7dc79eac74cc9a2865d70f7b302c75c0` |
| 23 | `def` | [root'In](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/root-in--1feeda46fb8cdd29194fed3a.md) | 165 | `declaration-track:1feeda46fb8cdd29194fed3a05d75ae4612464c9139f9690ba9dc239a8eb293f` |
| 24 | `lemma` | [algebraMap_root'In_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/algebramap-root-in-apply--09584fff40d46a0ccca643a2.md) | 172 | `result-track:09584fff40d46a0ccca643a241ff3b7a9bff245697b1fb932fba29ff871372d7` |
| 25 | `lemma` | [root'In_corootSpanMem_eq_pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/root-in-corootspanmem-eq-pairingin--6f448537b7063b2238fe7518.md) | 179 | `result-track:6f448537b7063b2238fe7518ca8b825ce914aed3514c9e66ef32348ac75bba07` |
| 26 | `def` | [coroot'In](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/coroot-in--4cb81998366a423657eb54e7.md) | 185 | `declaration-track:4cb81998366a423657eb54e7471484867c034bd1f1ec6d480889face1872d52d` |
| 27 | `lemma` | [algebraMap_coroot'In_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/algebramap-coroot-in-apply--c054db46e7c8ba1665bd3b12.md) | 190 | `result-track:c054db46e7c8ba1665bd3b12732ce3aa78a254750b8b1ba26d16bd40cad55698` |
| 28 | `lemma` | [coroot'In_rootSpanMem_eq_pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/coroot-in-rootspanmem-eq-pairingin--ac537ebc8e46d4c9cd748ec9.md) | 196 | `result-track:ac537ebc8e46d4c9cd748ec9d401a730759580ba3e360bef17923f43f1643bbd` |
| 29 | `lemma` | [rootSpan_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspan-ne-bot--2ec68e8c8fb34e108bc027da.md) | 202 | `result-track:2ec68e8c8fb34e108bc027da4bb918e9237930dddd79678deaafee3e3fe8f3a4` |
| 30 | `lemma` | [corootSpan_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspan-ne-bot--60536c416955e4c453f632db.md) | 206 | `result-track:60536c416955e4c453f632db86ef8dc10fe339a9d6295650b70efac777c27049` |
| 31 | `lemma` | [rootSpan_mem_invtSubmodule_reflection](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspan-mem-invtsubmodule-reflection--b0d3970ed56b2b8fcbbb42d8.md) | 209 | `result-track:b0d3970ed56b2b8fcbbb42d80923680141824d9790477f721496e6e175ed6683` |
| 32 | `lemma` | [corootSpan_mem_invtSubmodule_coreflection](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspan-mem-invtsubmodule-coreflection--8316d96f2f3b1e80f14d28ea.md) | 224 | `result-track:8316d96f2f3b1e80f14d28ea2dd1c52bd38c41eacb91c7314e2a222e9b39ea8f` |
| 33 | `lemma` | [rootSpan_dualAnnihilator_map_eq_iInf_ker_root'](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspan-dualannihilator-map-eq-iinf-ker-root--4ed87f050affd0308bc60c5b.md) | 228 | `result-track:4ed87f050affd0308bc60c5b1e86a65b2c2990dc2e0d0f91777b7b92f7c6b300` |
| 34 | `lemma` | [corootSpan_dualAnnihilator_map_eq_iInf_ker_coroot'](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspan-dualannihilator-map-eq-iinf-ker-coroot--15f5cb5f7253bd1135a615c9.md) | 237 | `result-track:15f5cb5f7253bd1135a615c93dfc6d4ea5ed688f8e10864c63de99d2411d0a7f` |
| 35 | `lemma` | [rootSpan_dualAnnihilator_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspan-dualannihilator-map-eq--53ba75a15e9a000a42ed913e.md) | 241 | `result-track:53ba75a15e9a000a42ed913e4ecd955c218d17398ea400e4097e9490df124856` |
| 36 | `lemma` | [corootSpan_dualAnnihilator_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspan-dualannihilator-map-eq--77cbdc7312b8c668c5df441f.md) | 246 | `result-track:77cbdc7312b8c668c5df441f0070c74a125d3808d9d122b254b0446cd2c1ee41` |
| 37 | `lemma` | [iInf_ker_root'_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/iinf-ker-root-eq--97a7926ea801c37a3b2afff3.md) | 251 | `result-track:97a7926ea801c37a3b2afff32d8bb0bb343569bb6cba4266521c95830eaeacb2` |
| 38 | `lemma` | [iInf_ker_coroot'_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/iinf-ker-coroot-eq--2e571250b809e613571c966e.md) | 255 | `result-track:2e571250b809e613571c966e40d645e98a0bc52cd4183de8c2206936df61a39a` |
| 39 | `lemma` | [rootSpan_map_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/rootspan-map-todualleft--ba8c109ee316ccb3b515c67f.md) | 259 | `result-track:ba8c109ee316ccb3b515c67f1301d8e01eb8199865eec5d1cbac0fbf81180468` |
| 40 | `lemma` | [corootSpan_map_toDualRight](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/corootspan-map-todualright--55f7a55f872b1931eaca9383.md) | 263 | `result-track:55f7a55f872b1931eaca9383fac4e2441e98dc9a7ed703c072f7728d4bee8c32` |
| 41 | `lemma` | [span_root'_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/span-root-eq-top--d0c150fb9e9f3ed992f59727.md) | 267 | `result-track:d0c150fb9e9f3ed992f597270d2f3f65755684bc54ec8e45a0f6d8ec22e189a4` |
| 42 | `lemma` | [span_coroot'_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/span-coroot-eq-top--ba7cb605b8b4c16bfe7cc3f6.md) | 271 | `result-track:ba7cb605b8b4c16bfe7cc3f6009ab82eb499a4b3312b3ade306b9890ed70b3f4` |
| 43 | `lemma` | [pairingIn_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/pairingin-eq-zero-iff--aad5e3f43aca6f803b0d6cfd.md) | 275 | `result-track:aad5e3f43aca6f803b0d6cfd1d047d8297d955cc3f74fb6a44245a9524cdd0a5` |
| 44 | `def` | [coxeterWeightIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/coxeterweightin--533bb3f877dc8cba25274c2c.md) | 286 | `declaration-track:533bb3f877dc8cba25274c2c3aa09a7e04e38ff956b760a013a78370e7a38dbd` |
| 45 | `lemma` | [algebraMap_coxeterWeightIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant33eabbdfd891130a5a9675eb60132876b00523f0fe15bdadb1e52aba335ccbff.lean/declarations/algebramap-coxeterweightin--cac2b112557816fa4a8d21e6.md) | 289 | `result-track:cac2b112557816fa4a8d21e6d21f5f7da6fe428b876f2dc2c19271ed64c825a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
