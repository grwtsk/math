# Verification target: GRWTSK.Algebra.LinearAlgebra.Invariant.Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25edfd4d76accc7f50b794088bd65e30100c1e31",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25edfd4d76accc7f50b794088bd65e30100c1e31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean.json)

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
| 1 | `def` | [invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/invtsubmodule--24ecff43f3f34446f1159ed9.md) | 34 | `declaration-track:24ecff43f3f34446f1159ed993d0daa99448675a092da79cc371277d6ceb8794` |
| 2 | `lemma` | [mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/mem-invtsubmodule--5bd2bed7da775ed64553d672.md) | 43 | `result-track:5bd2bed7da775ed64553d6723b2713f5f60f6deb3423c92a3eebab408bb9d8ee` |
| 3 | `theorem` | [mem_invtSubmodule_iff_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/mem-invtsubmodule-iff-map-le--24e93c51f614313d0ed90ec4.md) | 48 | `result-track:24e93c51f614313d0ed90ec4db14dc998c504b2434be160d8d428a94bf91844f` |
| 4 | `theorem` | [mem_invtSubmodule_iff_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/mem-invtsubmodule-iff-mapsto--3b3f97de2aca785088cc9b86.md) | 52 | `result-track:3b3f97de2aca785088cc9b8619685efcf380f26a8b1d9fb7bc235c4d8dd05627` |
| 5 | `theorem` | [mem_invtSubmodule_iff_forall_mem_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/mem-invtsubmodule-iff-forall-mem-of-mem--fd545bb3cbc079eb858db55a.md) | 57 | `result-track:fd545bb3cbc079eb858db55a909607f5d5c27c078e6785801f1e20fc598b398c` |
| 6 | `lemma` | [mem_invtSubmodule_symm_iff_le_map](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/mem-invtsubmodule-symm-iff-le-map--20f305375ea56bbf77cd29a5.md) | 62 | `result-track:20f305375ea56bbf77cd29a5af3fa3b8b20e26d28fb47f57083bdf018bf14eda` |
| 7 | `lemma` | [invtSubmodule_inf_invtSubmodule_le_invtSubmodule_add](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/invtsubmodule-inf-invtsubmodule-le-invtsubmodule-add--91dd5a94411c9a784e0a5f9a.md) | 66 | `result-track:91dd5a94411c9a784e0a5f9ab35397941fc0503aaf6d6767929e3ed54eac3b17` |
| 8 | `lemma` | [invtSubmodule_le_invtSubmodule_smul](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/invtsubmodule-le-invtsubmodule-smul--c7913bee6e322cd3b612b947.md) | 75 | `result-track:c7913bee6e322cd3b612b9477e939a7e6abca34dc1782b9064c5da7e19606e02` |
| 9 | `lemma` | [invtSubmodule_smul](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/invtsubmodule-smul--151632be8a505af419eebf99.md) | 79 | `result-track:151632be8a505af419eebf99729a7a5df03e36ac28d35974cb34cff6d6864767` |
| 10 | `lemma` | [inf_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/inf-mem--43e2d209316a60c314253b99.md) | 90 | `result-track:43e2d209316a60c314253b9962e6f569dc57a1556237e4c55b4402d1bfbf1112` |
| 11 | `lemma` | [sup_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/sup-mem--4c79db959b410139934ccdcc.md) | 94 | `result-track:4c79db959b410139934ccdccef10e48490d87b34e651f7dd1dd20a77e4fdeeca` |
| 12 | `lemma` | [top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/top-mem--dff462dde926bd75e74b1aaf.md) | 102 | `result-track:dff462dde926bd75e74b1aafaffe51c06f76d568c577424c224a70be9e22beb9` |
| 13 | `lemma` | [bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/bot-mem--311974cf79c941c77c2a6d2b.md) | 106 | `result-track:311974cf79c941c77c2a6d2bd2a9f3b0ab36c22fefe982e329469e873e3eee8c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/instance--187e51881429fc463cf6078b.md) | 108 | `declaration-track:187e51881429fc463cf6078be27bcd95a3ac4ca4a939fccbe8bfe0fed64dad5e` |
| 15 | `lemma` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/zero--c17e8efb3598743a2dffba9e.md) | 115 | `result-track:c17e8efb3598743a2dffba9eaed6ce81dac4ba89f745050538e92d6fa5ae29df` |
| 16 | `lemma` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/id--c064c5364b4275e87b10704b.md) | 120 | `result-track:c064c5364b4275e87b10704b812d3e76ec3728f298de790aa9e8692930a98a56` |
| 17 | `lemma` | [one](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/one--68806700d60735692f1a76bb.md) | 125 | `result-track:68806700d60735692f1a76bbadae54bb0ce33a0f6cfd3b3d81363b0d66c51d89` |
| 18 | `lemma` | [mk_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/mk-eq-bot-iff--9d59ff146bbef6eee52931a6.md) | 130 | `result-track:9d59ff146bbef6eee52931a6a15592317176ef96eec1de824e666cf15906ee70` |
| 19 | `lemma` | [mk_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/mk-eq-top-iff--1e3d072d3e1cb7df688757c4.md) | 135 | `result-track:1e3d072d3e1cb7df688757c48a5aa858b9eb774fec80a2acc196872e44148d46` |
| 20 | `lemma` | [disjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/disjoint-mk-iff--0882d3133a0d679508493a86.md) | 140 | `result-track:0882d3133a0d679508493a867d036ed3a901e90bc3b7804c0302ca828865df97` |
| 21 | `lemma` | [disjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/disjoint-iff--f7a5e246a6e2e306d7722522.md) | 146 | `result-track:f7a5e246a6e2e306d77225229dbadbc9403b72abb47db9f1ec3bb4fed5f1adc9` |
| 22 | `lemma` | [codisjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/codisjoint-mk-iff--6144d6a7c68a470c17ad81d5.md) | 153 | `result-track:6144d6a7c68a470c17ad81d57741e39180914d1a7ada6a627c62c40b4f52b20f` |
| 23 | `lemma` | [codisjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/codisjoint-iff--eea5c29126f250f7154710a7.md) | 159 | `result-track:eea5c29126f250f7154710a7b6434929565cd834deecac58f9b767b7828f2d2c` |
| 24 | `lemma` | [isCompl_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/iscompl-mk-iff--97c999a5f41b02c92ee6ced9.md) | 166 | `result-track:97c999a5f41b02c92ee6ced96d1b161e4cc8938d636cbb44dd13a77e8363ddc7` |
| 25 | `lemma` | [isCompl_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/iscompl-iff--395c2bf26c36e0d545ab40fa.md) | 171 | `result-track:395c2bf26c36e0d545ab40fa554c5eda8be97eba3c1a6fcdbccdb7492ce4cfc2` |
| 26 | `lemma` | [map_subtype_mem_of_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/map-subtype-mem-of-mem-invtsubmodule--8f30a3d38ec553d0889305cc.md) | 178 | `result-track:8f30a3d38ec553d0889305cc7311eb6378f8f8a34d4d5355d66055f465a0be9a` |
| 27 | `lemma` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/comp--a559444f6959ce3c7971f843.md) | 186 | `result-track:a559444f6959ce3c7971f843962d9dac377cb75c970e77fe51f46ea1ea71c398` |
| 28 | `lemma` | [_root_.LinearEquiv.map_mem_invtSubmodule_conj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/root-linearequiv-map-mem-invtsubmodule-conj-iff--6a6a043236ea334c5d836745.md) | 191 | `result-track:6a6a043236ea334c5d83674598bc17f78fe84cd6920d0c6e1048b905b5605dbc` |
| 29 | `lemma` | [_root_.LinearEquiv.map_mem_invtSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/root-linearequiv-map-mem-invtsubmodule-iff--bb4b3a24d1f6537b963a0984.md) | 199 | `result-track:bb4b3a24d1f6537b963a0984f7472a3a15cca55e194ff7f673a31ffce3344d5b` |
| 30 | `lemma` | [span_orbit_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.lean/declarations/span-orbit-mem-invtsubmodule--c3dbd6ee24cc5c4f227a7b53.md) | 208 | `result-track:c3dbd6ee24cc5c4f227a7b530f26feaadcf2343a8e3a607ed1a1a456ed6e2150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
