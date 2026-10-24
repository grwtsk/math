# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf91b61dc9731f6cd2afa4c121b75df261572977",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf91b61dc9731f6cd2afa4c121b75df261572977`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Prod.instBornology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/prod-instbornology--b4097b49c489cbb06a9445f9.md) | 26 | `declaration-track:b4097b49c489cbb06a9445f9091ecdd2758dc4e5587beb456a293d7ed5b9e6b6` |
| 2 | `instance` | [Pi.instBornology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/pi-instbornology--571b8b8aa2fc335f90ef40d7.md) | 32 | `declaration-track:571b8b8aa2fc335f90ef40d79989aac3d863b7371bdca0086cd39373a6e82e94` |
| 3 | `def` | [Bornology.induced](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/bornology-induced--1e02e9703f9ffc69a47e8fb0.md) | 39 | `declaration-track:1e02e9703f9ffc69a47e8fb0d14732b4f3ab882c6cb2a3e8ead64d26d24e9750` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--d222914903f57479ef7955f9.md) | 45 | `declaration-track:d222914903f57479ef7955f950ae27bcd0cc97034759959cf6832a293cb10e83` |
| 5 | `theorem` | [cobounded_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/cobounded-prod--c174dd7d2f456292a2c6359f.md) | 55 | `result-track:c174dd7d2f456292a2c6359f6bc88be4485fb316e78d450c2248d3bd1bf19a25` |
| 6 | `theorem` | [isBounded_image_fst_and_snd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-image-fst-and-snd--34c34fdbb9d8c0641f6ab6e0.md) | 59 | `result-track:34c34fdbb9d8c0641f6ab6e05fcc4fed402da30351145c3c720b15c3d0989899` |
| 7 | `theorem` | [IsBounded.fst_of_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-fst-of-prod--26de60c8c2d73fb51bd24696.md) | 66 | `result-track:26de60c8c2d73fb51bd246965b2091aa842b1bc7e3eea155cc7a53cc1cbb33b7` |
| 8 | `theorem` | [IsBounded.snd_of_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-snd-of-prod--df33a50b48d29bcab5ceb2db.md) | 70 | `result-track:df33a50b48d29bcab5ceb2dbe431c514569991e4afe1a66d9630237c2a38cd15` |
| 9 | `theorem` | [IsBounded.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-prod--5466a85597dab575356f3116.md) | 74 | `result-track:5466a85597dab575356f3116d99cb3b1b1373006ad81b91853495f64b8117688` |
| 10 | `theorem` | [isBounded_prod_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-prod-of-nonempty--0b36559ecc669479af019cd4.md) | 79 | `result-track:0b36559ecc669479af019cd464ed0308633867439c6cae5a722a2bb214e979e6` |
| 11 | `theorem` | [isBounded_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-prod--5e2824837d85adc76f61b266.md) | 84 | `result-track:5e2824837d85adc76f61b2660ad4f18a858294d2107dfef97d492e75d3f3f168` |
| 12 | `theorem` | [isBounded_prod_self](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-prod-self--aa8d260c1638bef9dcde1e0e.md) | 90 | `result-track:aa8d260c1638bef9dcde1e0e25ca9adb367f054569db674b33825a202fe39b5b` |
| 13 | `theorem` | [cobounded_pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/cobounded-pi--30787778296bfab6325fc26f.md) | 100 | `result-track:30787778296bfab6325fc26feabddf75d290c249dfd9d113ebfa811a7a9d82dc` |
| 14 | `theorem` | [forall_isBounded_image_eval_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/forall-isbounded-image-eval-iff--a6f080776e139c76ed20aa40.md) | 104 | `result-track:a6f080776e139c76ed20aa4073ffd9863fa6050f11c8ab37e5f348b2d5b2056c` |
| 15 | `theorem` | [IsBounded.pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-pi--9b951feee15491c1f68fc2f2.md) | 109 | `result-track:9b951feee15491c1f68fc2f201f2cbab08ed88a88ac733931785f018e041d0ef` |
| 16 | `theorem` | [isBounded_pi_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-pi-of-nonempty--081d4034119cc5ec9dd09634.md) | 113 | `result-track:081d4034119cc5ec9dd09634162ded83f808e59cfbc2f305acc95307ecea77a6` |
| 17 | `theorem` | [isBounded_pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-pi--a420814992f1aa1f457935b6.md) | 118 | `result-track:a420814992f1aa1f457935b665477d2a8e6d69d91adfc759248d18a78dc3c536` |
| 18 | `theorem` | [isBounded_induced](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-induced--ee9b32ab420d3888a6ccf9bd.md) | 131 | `result-track:ee9b32ab420d3888a6ccf9bd7d8005b9006b5b2cd5a9fc4c8024d11d0b0498b3` |
| 19 | `theorem` | [isBounded_image_subtype_val](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/isbounded-image-subtype-val--53bfb4a8e2179cf1742a2d18.md) | 136 | `result-track:53bfb4a8e2179cf1742a2d186e344eafbf7985c9a8962cd8bb24f43c8484881b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--1480f24709ffb43a22f173a2.md) | 150 | `declaration-track:1480f24709ffb43a22f173a287d7fe7489418cdf9c6e3f4d32c73460c3d82f4c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--10948fb3a21c65ec19c5a2eb.md) | 153 | `declaration-track:10948fb3a21c65ec19c5a2eb6b3a99fba107774508e6b18ca49e9847490b9f4a` |
| 22 | `theorem` | [boundedSpace_induced_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/boundedspace-induced-iff--c5dd306c8711a1fcefdf5f1c.md) | 156 | `result-track:c5dd306c8711a1fcefdf5f1c9372d9a9e997859b441d05f5d7537c60b061dd5c` |
| 23 | `theorem` | [boundedSpace_subtype_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/boundedspace-subtype-iff--b282b929c41cba853ad1ce54.md) | 162 | `result-track:b282b929c41cba853ad1ce54c4ca5a1055b218c4bd4c724481585113847fad34` |
| 24 | `theorem` | [boundedSpace_val_set_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/boundedspace-val-set-iff--50535092e4c2e53d70338fa7.md) | 167 | `result-track:50535092e4c2e53d70338fa754e84a86f8a4bc6fb9bfdf50e803ebc649e308a6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--85348432cc9c40ab0604620a.md) | 177 | `declaration-track:85348432cc9c40ab0604620abca088e4aa3a464538e08314df3c2addd1bd7fc7` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--2669769ba962c1930b3c81d7.md) | 187 | `declaration-track:2669769ba962c1930b3c81d7014d34e62ba225f916a11b46752069e3c1ed3062` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--c11334861562d36a640751b4.md) | 190 | `declaration-track:c11334861562d36a640751b4f1e545239c5221aae4f7acbfb000c6dfe51f20ee` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--db70fec25e816d368fb196b5.md) | 193 | `declaration-track:db70fec25e816d368fb196b5739f67102edb26e808202a060ff95bf3fad19643` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--ccd1812ef58bf9cd530ed3ce.md) | 196 | `declaration-track:ccd1812ef58bf9cd530ed3ce0d377a27c0152f53940f36d7f5d44a94ffb901c9` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--bb4f545ebddbff685bf68f92.md) | 206 | `declaration-track:bb4f545ebddbff685bf68f9248b63a93e773a2f954e092cf0a1e4dbbb88f7934` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/declarations/instance--5c7b7883920615960cad1115.md) | 209 | `declaration-track:5c7b7883920615960cad1115e0aa7cc07a1bfe2b5e339e6d2d8aaef2d3827843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
