# Verification target: GRWTSK.Topology.GeneralTopology.Log.Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40d9bf67fa360d69a9eab0cc9cea2fbe7418a534",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40d9bf67fa360d69a9eab0cc9cea2fbe7418a534`.

Source path: `GRWTSK/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log--9f155061dbf4325d3e8d0a8e.md) | 34 | `declaration-track:9f155061dbf4325d3e8d0a8ed80efbb76afa37adee9fa51c3309fd7995c4ebd3` |
| 2 | `theorem` | [log_re](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-re--5fb42e00f22b783e097007ac.md) | 37 | `result-track:5fb42e00f22b783e097007ac5fbd95377264154f32549717796da1e92fe10aa5` |
| 3 | `theorem` | [log_im](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-im--bd4fc27ef8548f127be4ed79.md) | 39 | `result-track:bd4fc27ef8548f127be4ed79e100424c5cd6068adf5ae5c43146f97b9616c338` |
| 4 | `theorem` | [neg_pi_lt_log_im](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/neg-pi-lt-log-im--7f8071c310cbc856b1768d02.md) | 41 | `result-track:7f8071c310cbc856b1768d022b77d49299bbbfa6b0c33d5eb1c9b72a1625935e` |
| 5 | `theorem` | [log_im_le_pi](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-im-le-pi--d521674ff879a48cae0a1f78.md) | 43 | `result-track:d521674ff879a48cae0a1f78acb92b75b2460770cd5d7383e59205b0488765fb` |
| 6 | `theorem` | [exp_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/exp-log--027dfa7d41355cc8f48b1ec8.md) | 45 | `result-track:027dfa7d41355cc8f48b1ec805eac3e4be2c3909aaa64b8de356d3884399fc37` |
| 7 | `theorem` | [range_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/range-exp--a762747025c0f527b19a915e.md) | 52 | `result-track:a762747025c0f527b19a915e6404ccdf484e76c10c9367fc8fea49a766aac2e0` |
| 8 | `theorem` | [log_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-exp--b743fee4007e910d967e1885.md) | 58 | `result-track:b743fee4007e910d967e1885371149aa43e1cf3146cf6e0c08f24583d1ae8458` |
| 9 | `theorem` | [exp_inj_of_neg_pi_lt_of_le_pi](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/exp-inj-of-neg-pi-lt-of-le-pi--09531894a70cd09d74cd1cb6.md) | 62 | `result-track:09531894a70cd09d74cd1cb6014a107b1dfb77b60157560a1a922126d0690fbc` |
| 10 | `theorem` | [ofReal_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/ofreal-log--f234b3eb71409962a61eed31.md) | 66 | `result-track:f234b3eb71409962a61eed315b290d98cb4dc35d1fbb7a77dd3552c0bd5840c2` |
| 11 | `lemma` | [natCast_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/natcast-log--12ec19b4f1d9e50d4bfa9baa.md) | 71 | `result-track:12ec19b4f1d9e50d4bfa9baac03fc992b81bdeee5942190cc06ac8a49afe52d8` |
| 12 | `lemma` | [ofNat_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/ofnat-log--a7e76692cf0d4b9c11398148.md) | 74 | `result-track:a7e76692cf0d4b9c11398148fe2190cc8ed6f67af41a4a4c0fabedbcd3a5945f` |
| 13 | `theorem` | [log_ofReal_re](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-ofreal-re--463bb6c2e257a93c5d6e6f4f.md) | 78 | `result-track:463bb6c2e257a93c5d6e6f4faa95cfe9bfd5826667f5364b1b739ae892d077ba` |
| 14 | `theorem` | [log_ofReal_mul](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-ofreal-mul--0147df275741b3b8eea43010.md) | 80 | `result-track:0147df275741b3b8eea430104777f59ba15dcfae15610298053e2000c5fa19a7` |
| 15 | `theorem` | [log_mul_ofReal](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-mul-ofreal--3cb9aaea351166560d4e14ad.md) | 86 | `result-track:3cb9aaea351166560d4e14ad93cdc8c7a90a54ee11aac3783971ece0bd65cc39` |
| 16 | `lemma` | [log_mul_eq_add_log_iff](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-mul-eq-add-log-iff--ac17d6e9f53659d62d36dca3.md) | 89 | `result-track:ac17d6e9f53659d62d36dca353ff2331e184a8cc0bdf8e977073fc9e0cede41a` |
| 17 | `theorem` | [log_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-zero--db60ede9ec8039528211eb93.md) | 98 | `result-track:db60ede9ec8039528211eb93c4f98bc7b09348d7982c2df1b5c53e86ccc440c9` |
| 18 | `theorem` | [log_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-one--369abe54dde6cfe0b1ec0262.md) | 101 | `result-track:369abe54dde6cfe0b1ec02620518c8ad8f0f82f98fdecf3c7e474944248e408b` |
| 19 | `lemma` | [log_div_self](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-div-self--2ec71a2c527a1a3dbef94e83.md) | 104 | `result-track:2ec71a2c527a1a3dbef94e83f846d2b18d9a5ec4cfbed5edaff3488dfa4f6491` |
| 20 | `theorem` | [log_neg_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-neg-one--43eb232a620692b31e88e115.md) | 106 | `result-track:43eb232a620692b31e88e1155d03154ecbd9275b0b6579d463ece93305163e17` |
| 21 | `theorem` | [log_I](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-i--27b2c82a9a2c4c77187ca98c.md) | 108 | `result-track:27b2c82a9a2c4c77187ca98cc0ba2ed50e16ff3d3329dec45b5ac75c8cd70240` |
| 22 | `theorem` | [log_neg_I](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-neg-i--4601c09de4891bedb4e33a15.md) | 110 | `result-track:4601c09de4891bedb4e33a1598fe5d91b45bd99c9e2a6f500fc938b89486a483` |
| 23 | `theorem` | [log_conj_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-conj-eq-ite--433bb89fa777f585bb6605ae.md) | 112 | `result-track:433bb89fa777f585bb6605aeeeabd05a29f031c44af847aeee0e97c259b396a7` |
| 24 | `theorem` | [log_conj](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-conj--163f26912f45b68697b6c3b3.md) | 118 | `result-track:163f26912f45b68697b6c3b3213cf8429be66aa3516d19839d9caaccbde5ce71` |
| 25 | `theorem` | [log_inv_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-inv-eq-ite--d0f0a0bdabfd21aad3b8a8a6.md) | 121 | `result-track:d0f0a0bdabfd21aad3b8a8a6d69e2f1f3a5bd012022a305e6ae85360a8a77338` |
| 26 | `theorem` | [log_inv](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-inv--a3212263f9bbf504c6a41b29.md) | 134 | `result-track:a3212263f9bbf504c6a41b297b6620959048dae0548dee679fade131456dd485` |
| 27 | `theorem` | [two_pi_I_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/two-pi-i-ne-zero--50f809bd7ff41c9a4defa2ab.md) | 136 | `result-track:50f809bd7ff41c9a4defa2ab3c9138762c8dbf2a781d73642dad42639758b5b3` |
| 28 | `theorem` | [exp_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/exp-eq-one-iff--633dcc1c0d54a17d220ef173.md) | 138 | `result-track:633dcc1c0d54a17d220ef1734c5129d4db46e36fd0aab45bbe90caa0c9aa02eb` |
| 29 | `theorem` | [exp_eq_exp_iff_exp_sub_eq_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/exp-eq-exp-iff-exp-sub-eq-one--22c2d596ecb6f1ab1b92324d.md) | 149 | `result-track:22c2d596ecb6f1ab1b92324d72ad6a2000fbe307051ae843cfd13760461002ba` |
| 30 | `theorem` | [exp_eq_exp_iff_exists_int](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/exp-eq-exp-iff-exists-int--8d2de44365519663d361e38a.md) | 152 | `result-track:8d2de44365519663d361e38a35cddbb180f1e233e81c96b90c275e9f0add047b` |
| 31 | `theorem` | [log_exp_exists](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/log-exp-exists--742348df8da8481d09ccc660.md) | 155 | `result-track:742348df8da8481d09ccc660a9707adf4e15835915c170c3609abcb38e437a12` |
| 32 | `theorem` | [countable_preimage_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/countable-preimage-exp--2d0e8bc53e2d79603ddf2167.md) | 161 | `result-track:2d0e8bc53e2d79603ddf2167c091441a23d9e5e5a41d77c6f2c9a03cc764ad63` |
| 33 | `theorem` | [tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/tendsto-log-nhdswithin-im-neg-of-re-neg-of-im-zero--c252082c744ac064dee9c748.md) | 177 | `result-track:c252082c744ac064dee9c74888540ab1843dd3da0db124533c3c97bd8c76b383` |
| 34 | `theorem` | [continuousWithinAt_log_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/continuouswithinat-log-of-re-neg-of-im-zero--ea48599a72ab847b6416708b.md) | 189 | `result-track:ea48599a72ab847b6416708b962b16ad1a209a9a9f706b9251f7d575edd875ba` |
| 35 | `theorem` | [tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/tendsto-log-nhdswithin-im-nonneg-of-re-neg-of-im-zero--8a3872a5cce4b5373ac85791.md) | 200 | `result-track:8a3872a5cce4b5373ac85791f2c9735bb9a0e14d8a725b3fadda919aa9dec44f` |
| 36 | `theorem` | [map_exp_comap_re_atBot](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/map-exp-comap-re-atbot--b0b604339e988910e9e42c36.md) | 206 | `result-track:b0b604339e988910e9e42c36905e9c93b3f447832a41b36d6dc672b6b17c1e92` |
| 37 | `theorem` | [map_exp_comap_re_atTop](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/map-exp-comap-re-attop--275cf0fe3fa0f24eba49ca69.md) | 210 | `result-track:275cf0fe3fa0f24eba49ca6908cac243cd9a4f4c54a2dfe0cd8e65ffee7ccacd` |
| 38 | `theorem` | [continuousAt_clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/continuousat-clog--f3101ffe6fefb4642d8705c8.md) | 224 | `result-track:f3101ffe6fefb4642d8705c866f351443764eaf62f1bbbbc56e0c855a2ec769f` |
| 39 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.Filter.Tendsto.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/root-grwtsk-topology-generaltopology-log-variant9be9a6113a70c4f5267be8d5--021c5233a76da8a63eb16420.md) | 233 | `result-track:021c5233a76da8a63eb16420e5b6cc533075578362ccc5d810aa3a71fd2b6c3b` |
| 40 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.ContinuousAt.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/root-grwtsk-topology-generaltopology-log-variant9be9a6113a70c4f5267be8d5--d42db929781e58c202e809fc.md) | 240 | `result-track:d42db929781e58c202e809fce5dd1933912906176a808216b32e312d8f9168fe` |
| 41 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.ContinuousWithinAt.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/root-grwtsk-topology-generaltopology-log-variant9be9a6113a70c4f5267be8d5--cbcfbbff92e0ee5a38f5c272.md) | 245 | `result-track:cbcfbbff92e0ee5a38f5c272e869a14ef88509b122940c5d1115300ac2d3a1f1` |
| 42 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.ContinuousOn.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/root-grwtsk-topology-generaltopology-log-variant9be9a6113a70c4f5267be8d5--d42cd4ef82cb8f03ba27c64c.md) | 251 | `result-track:d42cd4ef82cb8f03ba27c64cb678a1898e0ce0bf901855a393b33d51c672eb36` |
| 43 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.Continuous.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/declarations/root-grwtsk-topology-generaltopology-log-variant9be9a6113a70c4f5267be8d5--32b6d489fdafb32994285225.md) | 256 | `result-track:32b6d489fdafb32994285225d730f54f6a9eacc814410dffd766371be9ba0142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
