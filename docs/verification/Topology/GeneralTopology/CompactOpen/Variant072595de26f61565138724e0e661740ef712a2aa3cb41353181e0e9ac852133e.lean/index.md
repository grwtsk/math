# Verification target: GRWTSK.Topology.GeneralTopology.CompactOpen.Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bce62bce69ed2a910a53eecd8408e7a2752db2ec",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bce62bce69ed2a910a53eecd8408e7a2752db2ec`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/instance--b21c8cc0096c61d081d68824.md) | 30 | `declaration-track:b21c8cc0096c61d081d68824e016e6d0b19f797e05fa8b3fd3dbb89a73aaf58b` |
| 2 | `theorem` | [isInducing_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/isinducing-tocontinuousmap--7429a1d5cdfa6192a6d9586f.md) | 34 | `result-track:7429a1d5cdfa6192a6d9586ff7e2641928bccb7b654313b84e33785c8b162633` |
| 3 | `theorem` | [isEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/isembedding-tocontinuousmap--2de96b11753396950d799f2c.md) | 38 | `result-track:2de96b11753396950d799f2c0dc7343307c6096268a53ca6e549d928a84b9e77` |
| 4 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/instcontinuousevalconst--7322b4571b6213ccb9d50776.md) | 43 | `declaration-track:7322b4571b6213ccb9d50776cfb9269396fd7fd004656bf2796e1ef0834c8f92` |
| 5 | `instance` | [instContinuousEval](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/instcontinuouseval--865a27ce195df45db4e54b14.md) | 47 | `declaration-track:865a27ce195df45db4e54b14c0fc6fa16cc02c5781d99d2dcb95f989f6f9c586` |
| 6 | `lemma` | [range_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/range-tocontinuousmap--074ce94006b58521806f4aa2.md) | 52 | `result-track:074ce94006b58521806f4aa267fc246cd93080e14058648702ac2b2135d04aa7` |
| 7 | `theorem` | [isClosedEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/isclosedembedding-tocontinuousmap--958499fd4d1dc6a3af22b3f9.md) | 60 | `result-track:958499fd4d1dc6a3af22b3f97b78a3d2e5e97dad4eeec541dcd7dc934f4942bd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/instance--8eee4f3bed10fa810cde56e4.md) | 73 | `declaration-track:8eee4f3bed10fa810cde56e4c7abbfbb5106da100e0a5a98a04d05b486305507` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/instance--a38e56ab84b6f475ada6433e.md) | 77 | `declaration-track:a38e56ab84b6f475ada6433e449f8ce8532f80c6503b4e5b134af15577aa63aa` |
| 10 | `theorem` | [continuous_of_continuous_uncurry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/continuous-of-continuous-uncurry--4447accc039665b4657e7808.md) | 84 | `result-track:4447accc039665b4657e7808711b32412602a31940ce19f3a09558ea7e5a9b29` |
| 11 | `theorem` | [continuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/continuous-comp--98e0cb2cc09d9479627ed15f.md) | 91 | `result-track:98e0cb2cc09d9479627ed15f6488e715790a10dcb358cb12f0ec058fbcf2be0d` |
| 12 | `theorem` | [continuous_comp_left](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/continuous-comp-left--59ac7cd4a5c6c9e129cbab47.md) | 98 | `result-track:59ac7cd4a5c6c9e129cbab47122b5cb00d532d60e3f01561a58f89573ae2104c` |
| 13 | `theorem` | [continuous_comp_right](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/continuous-comp-right--f8d359f0dd79c8a70fbdec15.md) | 104 | `result-track:f8d359f0dd79c8a70fbdec15750bf051da60fe63896bcb6c5a3497a7aea43dc4` |
| 14 | `def` | [compLeft](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/compleft--3f00d79a2dea06d58cc1f22f.md) | 112 | `declaration-track:3f00d79a2dea06d58cc1f22f4612963a54931689d1f8300daeda2d6916b20b77` |
| 15 | `def` | [compRight](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/compright--5817af04503d9c5e174e91be.md) | 122 | `declaration-track:5817af04503d9c5e174e91bea31296a2e3b443d604f785161bf1b5adae268d18` |
| 16 | `lemma` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/isclosedembedding-coe--f2a2daf8ae3df53c719561d9.md) | 134 | `result-track:f2a2daf8ae3df53c719561d92651a3d5ae8b90951d6281460e494c3af06cc166` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/instance--d72629503b64e8512eae0eed.md) | 138 | `declaration-track:d72629503b64e8512eae0eed2092d538ddb22679b45d87b1eb8069e5495056ac` |
| 18 | `theorem` | [locallyCompactSpace_of_equicontinuousAt](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/locallycompactspace-of-equicontinuousat--2a84dd6c14336ee9e25ad3a9.md) | 149 | `result-track:2a84dd6c14336ee9e25ad3a9eed36dbb92b90fb7384add78e120d3d3fb5abfca` |
| 19 | `theorem` | [locallyCompactSpace_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant072595de26f61565138724e0e661740ef712a2aa3cb41353181e0e9ac852133e.lean/declarations/locallycompactspace-of-hasbasis--f145fbd02d6723ed994f2423.md) | 189 | `result-track:f145fbd02d6723ed994f242385881bd2c654721856c621eb05a1550e858edcdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
