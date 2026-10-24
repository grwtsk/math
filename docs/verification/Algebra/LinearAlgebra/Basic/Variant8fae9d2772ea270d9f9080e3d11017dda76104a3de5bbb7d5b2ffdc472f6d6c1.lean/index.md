# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03af5cd3d9d27c9f473f7507dc45c78a17363838",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03af5cd3d9d27c9f473f7507dc45c78a17363838`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean.json)

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
| 1 | `class` | [IsPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair--d9fcea8a7fe31cfe2e68cc62.md) | 47 | `declaration-track:d9fcea8a7fe31cfe2e68cc62b1f1286775358be0ed5ef81af04f1211e3c1f4a5` |
| 2 | `lemma` | [IsPerfPair.flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-flip--0a10c4cca6eb93c8c45d8135.md) | 52 | `result-track:0a10c4cca6eb93c8c45d813548dfaa1e5e0b24a9b2b927c2ca953dfa63a9f844` |
| 3 | `instance` | [flip.instIsPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/flip-instisperfpair--1498dc5c42c49c8fb088191f.md) | 59 | `declaration-track:1498dc5c42c49c8fb088191f1ec98aa77feefa2cbe892b6e986766a57051f4d5` |
| 4 | `def` | [toPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/toperfpair--e838207464920f45af490c62.md) | 65 | `declaration-track:e838207464920f45af490c626f50fa4b13af72a79288d9247650b0165bb4a452` |
| 5 | `lemma` | [toLinearMap_toPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/tolinearmap-toperfpair--bce4b3d059b5ddbfbd8556c3.md) | 69 | `result-track:bce4b3d059b5ddbfbd8556c31075cae57bef944a358f75e11dc1e9e65f4982ca` |
| 6 | `lemma` | [toPerfPair_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/toperfpair-apply--f6a98eba6ff7a0b73d41022d.md) | 70 | `result-track:f6a98eba6ff7a0b73d41022d593c7453baa7af56ee7f7a50a14396cb3981ac1c` |
| 7 | `lemma` | [apply_symm_toPerfPair_self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/apply-symm-toperfpair-self--1eeb4e92b35baa8ad959b520.md) | 72 | `result-track:1eeb4e92b35baa8ad959b520a00978cd91f0cbbc5fd6b6c0573e6981d2577f4b` |
| 8 | `lemma` | [apply_toPerfPair_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/apply-toperfpair-flip--24c25d6dd307190f4cab751a.md) | 75 | `result-track:24c25d6dd307190f4cab751a5d0760543385ac2f070eff446c22e1a15f557871` |
| 9 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsPerfPair.Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.Module.IsReflexive.of_isPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/root-grwtsk-algebra-linearalgebra-isperfpair-variantfbfc7e22258fba51c693--a1861aa60797e51c5338c84a.md) | 79 | `result-track:a1861aa60797e51c5338c84a3fa80ca232394640845efe4e5edb9832447c7894` |
| 10 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsPerfPair.Variantfbfc7e22258fba51c6934a16c0cf5f61becce8060840005fd3fab855d7c7b3e0.Module.finrank_of_isPerfPair](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/root-grwtsk-algebra-linearalgebra-isperfpair-variantfbfc7e22258fba51c693--b1aa5f30bb73af5e2e7299f4.md) | 86 | `result-track:b1aa5f30bb73af5e2e7299f4bddcfc2d8b094347728dd835dc0d5dacf805fda5` |
| 11 | `instance` | [IsPerfPair.id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-id--b6bb3fd272da3ddf185e41c6.md) | 91 | `declaration-track:b6bb3fd272da3ddf185e41c66cf1e1693e1eab7545274753c2e7d6aa0ba84704` |
| 12 | `instance` | [IsPerfPair.dualEval](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-dualeval--fdefe122fb1ab157172dcaf0.md) | 96 | `declaration-track:fdefe122fb1ab157172dcaf01955bc9cf5aed01333c8a5782fedcde3b18de012` |
| 13 | `instance` | [IsPerfPair.compl₁₂](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-compl--c0acd3a467299dd19099d605.md) | 98 | `declaration-track:c0acd3a467299dd19099d605b2d9a98daa7afcfd36e15629acd57c5671c86b29` |
| 14 | `lemma` | [IsPerfPair.congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-congr--4b6268d8d4b352a8de99a904.md) | 105 | `result-track:4b6268d8d4b352a8de99a904150d619e0660ceb02c67b4d5fdf51c2352908447` |
| 15 | `lemma` | [IsPerfPair.of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-of-bijective--148f5b51fd81cb4646c6817e.md) | 110 | `result-track:148f5b51fd81cb4646c6817e07aafae0a9b110ccb1e76a4938190a1552cb4658` |
| 16 | `lemma` | [IsPerfPair.separatingLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-separatingleft--c7c196095f110ea2ffc89369.md) | 116 | `result-track:c7c196095f110ea2ffc893692ab051b339c11734ff3303eb95209b84286ceed9` |
| 17 | `lemma` | [IsPerfPair.separatingRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-separatingright--500907449809b58cce1acc82.md) | 120 | `result-track:500907449809b58cce1acc82fc04c40b8081de08b5b60b274e3f88b39e9e003c` |
| 18 | `lemma` | [IsPerfPair.nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-nondegenerate--6dc7e4d97e95a1a193279b8b.md) | 123 | `result-track:6dc7e4d97e95a1a193279b8b06e12dc8104aae89e89f3484c239fd7880705a44` |
| 19 | `lemma` | [IsPerfPair.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-of-injective--4a74ce38b6aacf06314930ea.md) | 134 | `result-track:4a74ce38b6aacf06314930ea36ead4f4c13b2ef0bbea3c0c8d7e59f0ac21af10` |
| 20 | `lemma` | [IsPerfPair.of_injective'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfpair-of-injective--e5de0d56a3b63f6c15c4edaf.md) | 143 | `result-track:e5de0d56a3b63f6c15c4edafa18a5e2db4a3a5cb59bc15c3b0c710156be776b6` |
| 21 | `structure` | [IsPerfectCompl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isperfectcompl--ddc249444f12245b831509f7.md) | 161 | `declaration-track:ddc249444f12245b831509f7b8a7b569b626bbba3d93ad19a12da47070ee3116` |
| 22 | `lemma` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/flip--266dcdb3c7593b3905584cc0.md) | 168 | `result-track:266dcdb3c7593b3905584cc0870f72632ca746ce643e1c554ee9cc88190b978e` |
| 23 | `lemma` | [flip_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/flip-iff--7b24e2ea573984364297b480.md) | 174 | `result-track:7b24e2ea573984364297b4806bad9f34ec5ce55dca1d3cab2ebd2d5092ab047b` |
| 24 | `lemma` | [left_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/left-top-iff--eef84888a3cf8ca82b08f433.md) | 179 | `result-track:eef84888a3cf8ca82b08f4336a259bb515741ee74057a5817f0dec791bcde639` |
| 25 | `lemma` | [right_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/right-top-iff--df4f113e97cbd10be0818eab.md) | 189 | `result-track:df4f113e97cbd10be0818eabe0bdbf66796e387b0a7bb29eebeea2d0735d9dd9` |
| 26 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/flip--d9a8bfbfa2f4fbbfaac7f922.md) | 206 | `declaration-track:d9a8bfbfa2f4fbbfaac7f922bd0f00658a9e5fcabb1a5184c0338c493f97a976` |
| 27 | `lemma` | [coe_toLinearMap_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/coe-tolinearmap-flip--2df5f98c0cdb553cde93e1f6.md) | 209 | `result-track:2df5f98c0cdb553cde93e1f603e10da02594398f9996e943ec37aabb0e042894` |
| 28 | `lemma` | [flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/flip-apply--06943525ae529baa5ad7bc09.md) | 211 | `result-track:06943525ae529baa5ad7bc0940a2bb0a65d98bb1e125ab8f32b78faa90c0252a` |
| 29 | `lemma` | [symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/symm-flip--8134b71ddc7eefbd73aa519d.md) | 213 | `result-track:8134b71ddc7eefbd73aa519d528e8008cd9b07c041b9c23305416df6489c0e5a` |
| 30 | `lemma` | [trans_dualMap_symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/trans-dualmap-symm-flip--677da96739e8c3e667ed7d68.md) | 215 | `result-track:677da96739e8c3e667ed7d681f0e8a70f6071d8ee781f4c52869ae12a7d22d48` |
| 31 | `lemma` | [isReflexive_of_equiv_dual_of_isReflexive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/isreflexive-of-equiv-dual-of-isreflexive--7ff6f88005f344b2aa59db4a.md) | 220 | `result-track:7ff6f88005f344b2aa59db4acb76034251d8984f202d13de8b3e858e39ed45af` |
| 32 | `lemma` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/flip-flip--cbfb796ae2902baa1e4631da.md) | 225 | `result-track:cbfb796ae2902baa1e4631daec07f09c417203a98415badf6cc0e584177d47d5` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/instance--5cb0934f0fe1fe28570b3c42.md) | 229 | `declaration-track:5cb0934f0fe1fe28570b3c42dd8d5d039f8dc5b4cc5aa4c7dc11d7ddaddee024` |
| 34 | `lemma` | [dualCoannihilator_map_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/dualcoannihilator-map-linearequiv-flip--18d8714a99c60a9e94074708.md) | 241 | `result-track:18d8714a99c60a9e940747086a309767ab5d701f0df78a4f60afc569da759af5` |
| 35 | `lemma` | [map_dualAnnihilator_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/map-dualannihilator-linearequiv-flip-symm--ae71d7cf3c5596864d9f42a1.md) | 247 | `result-track:ae71d7cf3c5596864d9f42a136b0304fb5a07b225fd372edac4d615aeaa93990` |
| 36 | `lemma` | [map_dualCoannihilator_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/map-dualcoannihilator-linearequiv-flip--d19342de8f268375293eb8b8.md) | 255 | `result-track:d19342de8f268375293eb8b89b498ad35788dc5e0f4d1d848f6a752fca816d6c` |
| 37 | `lemma` | [dualAnnihilator_map_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/declarations/dualannihilator-map-linearequiv-flip-symm--9dec532fa1fe9678a82edbf0.md) | 268 | `result-track:9dec532fa1fe9678a82edbf08fa8580624b6b533dfa46fd6bae5b1f25a249e67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
