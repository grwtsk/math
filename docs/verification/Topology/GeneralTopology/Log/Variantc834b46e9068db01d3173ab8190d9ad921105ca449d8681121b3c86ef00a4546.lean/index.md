# Verification target: GRWTSK.Topology.GeneralTopology.Log.Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16b7dc54e9d21b24579258a729dcca8bf09cddee",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16b7dc54e9d21b24579258a729dcca8bf09cddee`.

Source path: `GRWTSK/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean.json)

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
| 1 | `def` | [log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log--0a4244e59be317e8081d11d5.md) | 37 | `declaration-track:0a4244e59be317e8081d11d558c59a6dc261d5e68decae972c877c323e01dc6c` |
| 2 | `theorem` | [log_re](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-re--a9aaaa2805b6285685491819.md) | 41 | `result-track:a9aaaa2805b6285685491819a5a55a49fb1934bd21d7100637b063dfffd70c5f` |
| 3 | `theorem` | [log_im](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-im--0843ce0dd427f9f1fb03360e.md) | 44 | `result-track:0843ce0dd427f9f1fb03360e5c2eccefce7c2e80c70fd3b3edf3dd3cfbfebdfd` |
| 4 | `theorem` | [neg_pi_lt_log_im](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/neg-pi-lt-log-im--5c9574199a5ffc00e70dfb97.md) | 47 | `result-track:5c9574199a5ffc00e70dfb97827be76946200449cc618b333b1749ae341260f9` |
| 5 | `theorem` | [log_im_le_pi](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-im-le-pi--8565cb5996c89426c6ea8412.md) | 50 | `result-track:8565cb5996c89426c6ea8412781a3f1078103e69cb112e086669302813a6dea6` |
| 6 | `theorem` | [exp_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/exp-log--39e4e9b611f179bb1a781902.md) | 53 | `result-track:39e4e9b611f179bb1a7819021b5cc962c129c4166a9c09f7658679e9df981fe0` |
| 7 | `theorem` | [range_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/range-exp--c9c3851556772b38b21c1291.md) | 61 | `result-track:c9c3851556772b38b21c129179358d8bd3a3966ca19258009f9dd2b98347a822` |
| 8 | `theorem` | [log_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-exp--fddee79942c7ec395191703d.md) | 68 | `result-track:fddee79942c7ec395191703d013b762243f0e6b6cf3b98105a3885f32e448053` |
| 9 | `theorem` | [exp_inj_of_neg_pi_lt_of_le_pi](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/exp-inj-of-neg-pi-lt-of-le-pi--6be8ed361419f1658384f493.md) | 73 | `result-track:6be8ed361419f1658384f493ece2b841d6c461302741b40d03f3eff7b0cc633f` |
| 10 | `theorem` | [ofReal_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/ofreal-log--76f31b35f6c71b4d89ebb717.md) | 78 | `result-track:76f31b35f6c71b4d89ebb71767a075f919ade8421ceb3bca8e4ed09f46e7132e` |
| 11 | `theorem` | [log_ofReal_re](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-ofreal-re--2cae079ef3fa9663b28048c9.md) | 83 | `result-track:2cae079ef3fa9663b28048c989d22002c68b50e82510818a23f03b3449cf550b` |
| 12 | `theorem` | [log_ofReal_mul](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-ofreal-mul--ffd906d228cbaccb70a847c2.md) | 86 | `result-track:ffd906d228cbaccb70a847c2f8d2328068bd148587980753f76d20c5235dfdbd` |
| 13 | `theorem` | [log_mul_ofReal](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-mul-ofreal--cf9bc2a227e9781becbb2ec4.md) | 93 | `result-track:cf9bc2a227e9781becbb2ec421ff7625025396784fe3ba0820891acd8e07d9a8` |
| 14 | `theorem` | [log_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-zero--429ed13239b17b3f1f1bc104.md) | 98 | `result-track:429ed13239b17b3f1f1bc104dd323a667472624278241b6b5092080287ffa9f5` |
| 15 | `theorem` | [log_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-one--2b353dc1c2f9cb2d718abe43.md) | 102 | `result-track:2b353dc1c2f9cb2d718abe43f28af900bb6db4da0ca321b7626bc7d1f4c90a2c` |
| 16 | `theorem` | [log_neg_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-neg-one--6bf04747e080d07454d116ae.md) | 105 | `result-track:6bf04747e080d07454d116aed35fef584b9f75859b9179d8f27357d766a5347c` |
| 17 | `theorem` | [log_I](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-i--a5fbdc3b89f91e6b4c3abf21.md) | 108 | `result-track:a5fbdc3b89f91e6b4c3abf21c2e3933b0cb824d5a6e9b49aa608daa1c3b0486e` |
| 18 | `theorem` | [log_neg_I](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-neg-i--d1c97ea26939e0afa41aa817.md) | 112 | `result-track:d1c97ea26939e0afa41aa817a16c981d3c5b4ce3c044998df65094599aee0640` |
| 19 | `theorem` | [log_conj_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-conj-eq-ite--19649fda88fb755065eac54c.md) | 116 | `result-track:19649fda88fb755065eac54c6115c87c6375a3c2e06eb75aae008257f42906cb` |
| 20 | `theorem` | [log_conj](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-conj--42bbb39f223080bf641f48b8.md) | 123 | `result-track:42bbb39f223080bf641f48b85c7cd82a892edac459f00dce4a5b3cd728683247` |
| 21 | `theorem` | [log_inv_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-inv-eq-ite--2c843cb561ccfc418906dcf2.md) | 127 | `result-track:2c843cb561ccfc418906dcf2e513f42414c44f2fe8219c4309de9292fd7aa9e7` |
| 22 | `theorem` | [log_inv](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/log-inv--d8204a1f1f8d51b5c69bcd8d.md) | 141 | `result-track:d8204a1f1f8d51b5c69bcd8d3e42b7f147b07fe580a1360a8e3b47482a37a408` |
| 23 | `theorem` | [two_pi_I_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/two-pi-i-ne-zero--8d06ff7d51f11ad5bc9ae506.md) | 144 | `result-track:8d06ff7d51f11ad5bc9ae5062c37ab40b3113a474945796cc5b5c4abb137e329` |
| 24 | `theorem` | [exp_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/exp-eq-one-iff--00d254526df6566554503660.md) | 148 | `result-track:00d254526df656655450366047e61782b95ffb530a77c05c8fa01970939e70aa` |
| 25 | `theorem` | [exp_eq_exp_iff_exp_sub_eq_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/exp-eq-exp-iff-exp-sub-eq-one--8aba71bb30f803b27e7a4375.md) | 160 | `result-track:8aba71bb30f803b27e7a437584c20f8dfd58be09bf85b617c0aa22f8ef20ff7a` |
| 26 | `theorem` | [exp_eq_exp_iff_exists_int](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/exp-eq-exp-iff-exists-int--54b53e0e34827234491e444c.md) | 164 | `result-track:54b53e0e34827234491e444c4591a96f11270a83c6b5071b0f968b33be822523` |
| 27 | `theorem` | [countable_preimage_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/countable-preimage-exp--baed331dfe5d0ea8406bc514.md) | 169 | `result-track:baed331dfe5d0ea8406bc514b1a649f76b26024c9b388e21c00721a9872ac3ac` |
| 28 | `theorem` | [tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/tendsto-log-nhdswithin-im-neg-of-re-neg-of-im-zero--5390ba463967506324aad642.md) | 187 | `result-track:5390ba463967506324aad64257ba43204aabd7a5336c37dabb75cc63bfd7da26` |
| 29 | `theorem` | [continuousWithinAt_log_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/continuouswithinat-log-of-re-neg-of-im-zero--8498cd63984487ed177cd612.md) | 200 | `result-track:8498cd63984487ed177cd61271615e12190e6f72bfcccc3c17f76ba35b6a6a8d` |
| 30 | `theorem` | [tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/tendsto-log-nhdswithin-im-nonneg-of-re-neg-of-im-zero--7b613581ca41f207da81bac6.md) | 213 | `result-track:7b613581ca41f207da81bac603ba1b78d3ce65584ccc01446b0ab0ab84150964` |
| 31 | `theorem` | [map_exp_comap_re_atBot](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/map-exp-comap-re-atbot--b4cf193127c03b829512ffbd.md) | 220 | `result-track:b4cf193127c03b829512ffbd4cb633d33059700def8c9cbf473da0c4e79db2ad` |
| 32 | `theorem` | [map_exp_comap_re_atTop](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/map-exp-comap-re-attop--6c4e65a6f7a1d0e7dd9db217.md) | 225 | `result-track:6c4e65a6f7a1d0e7dd9db217532dadb161214ff4ca342d70e856edc84f55b534` |
| 33 | `theorem` | [continuousAt_clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/continuousat-clog--5ef2b9ce7e5682cb5f957770.md) | 240 | `result-track:5ef2b9ce7e5682cb5f95777072e97bf99a78df3f8fa86f032a6eebb7ef131994` |
| 34 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.Filter.Tendsto.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/root-grwtsk-topology-generaltopology-log-variant05ea3bba2e7f3effd44eb27f--76594767cdc576abedd12cc6.md) | 252 | `result-track:76594767cdc576abedd12cc6615b28a648d0b1cfd5d6d568d4d4fbb6fb055913` |
| 35 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.ContinuousAt.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/root-grwtsk-topology-generaltopology-log-variant05ea3bba2e7f3effd44eb27f--b16d02c2eee1e16d378b6f27.md) | 260 | `result-track:b16d02c2eee1e16d378b6f2739ad07ce44a404561f4fb736f5b60d1bd3c16120` |
| 36 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.ContinuousWithinAt.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/root-grwtsk-topology-generaltopology-log-variant05ea3bba2e7f3effd44eb27f--f63ae62fd3c285cbcbc3cac1.md) | 266 | `result-track:f63ae62fd3c285cbcbc3cac1ccde3689426df1a2c1cee1fa23cdfc9a0ae83cf8` |
| 37 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.ContinuousOn.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/root-grwtsk-topology-generaltopology-log-variant05ea3bba2e7f3effd44eb27f--d9c9dfc5eb769d2f295c316d.md) | 273 | `result-track:d9c9dfc5eb769d2f295c316d45ef893a8bd1973df7abf1308ab3ade4b2f5d69b` |
| 38 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Log.Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.Continuous.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/declarations/root-grwtsk-topology-generaltopology-log-variant05ea3bba2e7f3effd44eb27f--97dc29b492788620b4a2a3bb.md) | 279 | `result-track:97dc29b492788620b4a2a3bb5ff4c3fd14fe3b910b2d9897e8313ceb012bf342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
