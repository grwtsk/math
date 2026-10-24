# Verification target: GRWTSK.Topology.GeneralTopology.Log.Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9d13f0fff6011a6cb81847fcf67c3014900835",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9d13f0fff6011a6cb81847fcf67c3014900835`.

Source path: `GRWTSK/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean.json)

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
| 1 | `def` | [log](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log--590e838192e576e6dc7a52ed.md) | 30 | `declaration-track:590e838192e576e6dc7a52edae395d122a36daebe40292b0faca24576d0fbadd` |
| 2 | `theorem` | [log_re](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-re--2fe58198ae0375ed41305e2f.md) | 33 | `result-track:2fe58198ae0375ed41305e2fd042dc37e0d7dab3cbcfbe32fe7d16060c6f7acd` |
| 3 | `theorem` | [log_im](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-im--c98d2c61a816643c70651b88.md) | 35 | `result-track:c98d2c61a816643c70651b88a559b5c461be08e88087dc797057047eff7e8244` |
| 4 | `theorem` | [neg_pi_lt_log_im](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/neg-pi-lt-log-im--9f3f8bac6357e7e9fa93da7a.md) | 37 | `result-track:9f3f8bac6357e7e9fa93da7ae39101ea618f86b182383e30f2bd61d797238157` |
| 5 | `theorem` | [log_im_le_pi](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-im-le-pi--26aeb8340dd441dc41190e1d.md) | 39 | `result-track:26aeb8340dd441dc41190e1dec05ae7d5a06f0467f697f5a928c35e22f1301d8` |
| 6 | `theorem` | [exp_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/exp-log--a83309e48eb4d8dc1e9beca0.md) | 41 | `result-track:a83309e48eb4d8dc1e9beca08a2fe789790c717edc9c294c5702b086b3d39d22` |
| 7 | `theorem` | [range_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/range-exp--32b7ad73dc4e8460a4a1310f.md) | 48 | `result-track:32b7ad73dc4e8460a4a1310f153eec973d48216da7793cec47a8b205db4aa634` |
| 8 | `theorem` | [log_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-exp--4eda00f0a271f105fbcb475e.md) | 54 | `result-track:4eda00f0a271f105fbcb475e04a5c2c276a1e75f514a50bec1b92d703da13edb` |
| 9 | `theorem` | [log_exp_eq_re_add_toIocMod](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-exp-eq-re-add-toiocmod--02dbf0975a04c42c66ac0e68.md) | 58 | `result-track:02dbf0975a04c42c66ac0e68943e0816eb879adb4a98b9f5d427e4bd6a099329` |
| 10 | `theorem` | [log_exp_eq_sub_toIocDiv](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-exp-eq-sub-toiocdiv--c88aad6b8877e1bdf4bf70cc.md) | 62 | `result-track:c88aad6b8877e1bdf4bf70cc2e8899d9052d388e396aff8ddabe77e3e0cecc00` |
| 11 | `theorem` | [exp_inj_of_neg_pi_lt_of_le_pi](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/exp-inj-of-neg-pi-lt-of-le-pi--644d1139d35cae6e87725300.md) | 67 | `result-track:644d1139d35cae6e8772530006cc8f79676244e559717bec3aa51ee8da9d4259` |
| 12 | `theorem` | [ofReal_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/ofreal-log--fbb2ab2ba2be08873634163c.md) | 71 | `result-track:fbb2ab2ba2be08873634163c369a9171a17c0681c21cd67d6cd7b8ca2388bbb0` |
| 13 | `lemma` | [natCast_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/natcast-log--ca56ce18b43501af4da20db6.md) | 76 | `result-track:ca56ce18b43501af4da20db6525bbd7969e861f26cfaadaf975b4e198e2a2e27` |
| 14 | `lemma` | [ofNat_log](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/ofnat-log--f9697c79df84df837e2598c0.md) | 79 | `result-track:f9697c79df84df837e2598c0fcdc16b37cbe069275609dbf8eaba6800cda725d` |
| 15 | `theorem` | [log_ofReal_re](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-ofreal-re--5533aefc70713fc4c21b393f.md) | 83 | `result-track:5533aefc70713fc4c21b393fe508ac4108e63e31edc686d1dc08cb4fbb59cc6d` |
| 16 | `theorem` | [log_ofReal_mul](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-ofreal-mul--bccf327f6381c9a1e83ae651.md) | 85 | `result-track:bccf327f6381c9a1e83ae651edc7eec8ba98a4b48424a3b06da893f4caa604d2` |
| 17 | `theorem` | [log_mul_ofReal](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-mul-ofreal--59d3ec0f3305cdfa7727e93f.md) | 91 | `result-track:59d3ec0f3305cdfa7727e93f0b0f61828ef13a40606de98ed797bef61af8212f` |
| 18 | `lemma` | [log_mul_eq_add_log_iff](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-mul-eq-add-log-iff--ffac05caf13169cb306ac3f1.md) | 94 | `result-track:ffac05caf13169cb306ac3f13d8088fa3aebf3659d2754969f9304ae25ca47f3` |
| 19 | `theorem` | [log_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-zero--91196b8b834e02012cd80449.md) | 103 | `result-track:91196b8b834e02012cd80449e69aeaed78f218e12c035ef74a830f03d50f5ec3` |
| 20 | `theorem` | [log_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-one--45ba034d3291582ff0f62364.md) | 106 | `result-track:45ba034d3291582ff0f62364e528f05b569259c9e02009d1cfb2b23c93c6824c` |
| 21 | `lemma` | [log_div_self](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-div-self--45e32198673870e92ee2a517.md) | 109 | `result-track:45e32198673870e92ee2a517c60ef7e7ef1579b6f03827c1698a4c35f99f37dc` |
| 22 | `theorem` | [log_neg_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-neg-one--33e970abeb6ffc2526738151.md) | 111 | `result-track:33e970abeb6ffc2526738151e651384e756b44b1f5b9f96da9660f4ab27ebf00` |
| 23 | `theorem` | [log_I](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-i--b94a3d80b54f8c42f614cb10.md) | 113 | `result-track:b94a3d80b54f8c42f614cb10285a4fbc317b9e54bf42d649e6c3e7950118d40a` |
| 24 | `theorem` | [log_neg_I](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-neg-i--9a57217948116b88c2ae0d46.md) | 115 | `result-track:9a57217948116b88c2ae0d46bf15e4c30f9cc44a4cf017d1eec6c25bef275a7c` |
| 25 | `theorem` | [log_conj_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-conj-eq-ite--b2b1a472c24a5a5c89a06233.md) | 117 | `result-track:b2b1a472c24a5a5c89a06233c0d55f5cb1550856a7de65614663e7d265e1ca26` |
| 26 | `theorem` | [log_conj](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-conj--91e332879ab706e325b002b1.md) | 123 | `result-track:91e332879ab706e325b002b1f99ce185f3bc172a34caf4f6870c57e55b81670c` |
| 27 | `theorem` | [log_inv_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-inv-eq-ite--1472db1f4ddfa5b2a9b4699c.md) | 126 | `result-track:1472db1f4ddfa5b2a9b4699c97085809cc7f50c6132d225f14cf7eb8223ebb1c` |
| 28 | `theorem` | [log_inv](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-inv--7b2ee7e6ca930cdb59a4e42e.md) | 137 | `result-track:7b2ee7e6ca930cdb59a4e42e7e98ac62d4c24c37bb39bce01d98d9949710de54` |
| 29 | `theorem` | [two_pi_I_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/two-pi-i-ne-zero--ddcc92d8390644044c9d86e5.md) | 140 | `result-track:ddcc92d8390644044c9d86e5edf8422df1224e2061cca69b0f53dc1f9d0c41a2` |
| 30 | `theorem` | [exp_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/exp-eq-one-iff--583062d1814872cd2179bcb2.md) | 142 | `result-track:583062d1814872cd2179bcb2dfe704d943c0866bb2da5704ec13a9e31e03da01` |
| 31 | `theorem` | [exp_eq_one_iff_of_im_nonneg](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/exp-eq-one-iff-of-im-nonneg--fb718500a2a47994b706f469.md) | 153 | `result-track:fb718500a2a47994b706f46936809ccdc6a7fd605b951cb266c01e9126ed3dc6` |
| 32 | `theorem` | [exp_two_pi_mul_I_mul_div_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/exp-two-pi-mul-i-mul-div-eq-one-iff--f17bc3295500a255660133df.md) | 161 | `result-track:f17bc3295500a255660133df638a0b58fb0508e511a9813aa731f6be71c28a0a` |
| 33 | `theorem` | [exp_eq_exp_iff_exp_sub_eq_one](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/exp-eq-exp-iff-exp-sub-eq-one--cc84fe2e0d247c0f511bf617.md) | 169 | `result-track:cc84fe2e0d247c0f511bf6177f115b79cf75287cf43cec10d6dfdaa73887cf09` |
| 34 | `theorem` | [exp_eq_exp_iff_exists_int](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/exp-eq-exp-iff-exists-int--3931ffa62fb6b45b0e00fbee.md) | 172 | `result-track:3931ffa62fb6b45b0e00fbee69434b82008f65890525214c9f6d6ad913601097` |
| 35 | `lemma` | [re_eq_re_of_cexp_eq_cexp](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/re-eq-re-of-cexp-eq-cexp--53d01938ba805346bdbb33a4.md) | 175 | `result-track:53d01938ba805346bdbb33a49835e654102fe1e53e89261e1fced019fa58af90` |
| 36 | `theorem` | [log_exp_exists](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/log-exp-exists--bfb14413ec58ca4117224ba7.md) | 180 | `result-track:bfb14413ec58ca4117224ba7ec02a612d7833b00a33d8f9aba31af5ce7225d56` |
| 37 | `theorem` | [countable_preimage_exp](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/countable-preimage-exp--94c5e7c6196c81525afe5ae4.md) | 186 | `result-track:94c5e7c6196c81525afe5ae41a747d1544040c44ba1f107edfcab2d17df7e07e` |
| 38 | `theorem` | [tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/tendsto-log-nhdswithin-im-neg-of-re-neg-of-im-zero--ea124dd9daa7da0a9db4a893.md) | 202 | `result-track:ea124dd9daa7da0a9db4a893eb57a1742c0723c5b6cc3e2c515014a926dedf9a` |
| 39 | `theorem` | [continuousWithinAt_log_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/continuouswithinat-log-of-re-neg-of-im-zero--d7b52e7d6509dd1036c9fd16.md) | 214 | `result-track:d7b52e7d6509dd1036c9fd1600f731b738b3611cfa620b945093483bb4f32b82` |
| 40 | `theorem` | [tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/tendsto-log-nhdswithin-im-nonneg-of-re-neg-of-im-zero--20f0e1dbbd28069968d2d9df.md) | 225 | `result-track:20f0e1dbbd28069968d2d9df6ab838094cf46079961531b068927cc34e5bf076` |
| 41 | `theorem` | [map_exp_comap_re_atBot](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/map-exp-comap-re-atbot--5ccf3eb6afe5cf00f8de97ea.md) | 231 | `result-track:5ccf3eb6afe5cf00f8de97eae0c5b58ecb86a170f8fd472d09510322f6e41059` |
| 42 | `theorem` | [map_exp_comap_re_atTop](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/map-exp-comap-re-attop--fcc1b565d9e6f8b32d0910f0.md) | 235 | `result-track:fcc1b565d9e6f8b32d0910f02189f086bab153ca57c9c68cbb848f1fc989d91b` |
| 43 | `theorem` | [continuousAt_clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/continuousat-clog--d3762455bc15fc57d465b410.md) | 249 | `result-track:d3762455bc15fc57d465b4103c59d01ef0423d3502b9d6fc718ed6721d5b3da3` |
| 44 | `theorem` | [_root_.Filter.Tendsto.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/root-filter-tendsto-clog--6aab32ec145ea3b7095b6770.md) | 258 | `result-track:6aab32ec145ea3b7095b677027b54a9b8abd8702c469c9f92441a738eebb1880` |
| 45 | `theorem` | [_root_.ContinuousAt.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/root-continuousat-clog--ba69281c3c17a8e7007475a2.md) | 265 | `result-track:ba69281c3c17a8e7007475a278f06f87f6a25e327a62a0fb2d7545888010c820` |
| 46 | `theorem` | [_root_.ContinuousWithinAt.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/root-continuouswithinat-clog--6d61735e00112a3473151a54.md) | 270 | `result-track:6d61735e00112a3473151a54065f4627788c29289749a255c3b2c6cec0c5ffd4` |
| 47 | `theorem` | [_root_.ContinuousOn.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/root-continuouson-clog--c51376cacccfb8dcbe4e8956.md) | 276 | `result-track:c51376cacccfb8dcbe4e89560e3e50adba31a619b767e6fe688af9fff0cbd49d` |
| 48 | `theorem` | [_root_.Continuous.clog](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/root-continuous-clog--4562bb75f3a078107b93f1e4.md) | 281 | `result-track:4562bb75f3a078107b93f1e47b1f406377c5e4f5fb79bddc79a40d1126c202f6` |
| 49 | `def` | [expOpenPartialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Log/Variante3e7b5122318c59a7f391c87fecdc23e250f0702af5f6e4199cf530d78155a60.lean/declarations/expopenpartialhomeomorph--95ff288359c2e9479a2e8b73.md) | 297 | `declaration-track:95ff288359c2e9479a2e8b7331abbf449babf4a2a24e3cc4562eb5b9f7f1ef1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
