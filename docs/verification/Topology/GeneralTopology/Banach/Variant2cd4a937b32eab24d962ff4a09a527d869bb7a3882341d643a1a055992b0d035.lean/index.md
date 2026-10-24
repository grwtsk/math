# Verification target: GRWTSK.Topology.GeneralTopology.Banach.Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41c04154ef103edb42079b4c3e5b7a20aa95615",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41c04154ef103edb42079b4c3e5b7a20aa95615`.

Source path: `GRWTSK/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Baire.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.CompleteMetrizable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonlinearRightInverse](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/nonlinearrightinverse--32754c8ab9d18243eea953a4.md) | 41 | `declaration-track:32754c8ab9d18243eea953a44bfce3f0476b1321b5ee09acab77233a059a314e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/instance--0f3175b546062849996d662e.md) | 47 | `declaration-track:0f3175b546062849996d662edf632cf400a76a530f8fef2e7aba252685d3035d` |
| 3 | `theorem` | [NonlinearRightInverse.right_inv](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/nonlinearrightinverse-right-inv--c20374d7b16d248e0ced4fc0.md) | 51 | `result-track:c20374d7b16d248e0ced4fc0aa38f41e5096e65f3015d1a80548ea8539aa7614` |
| 4 | `theorem` | [NonlinearRightInverse.bound](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/nonlinearrightinverse-bound--229630a2d666fe078fdf405c.md) | 55 | `result-track:229630a2d666fe078fdf405c4965a3e92df77e7b48170dfc6a27d91fbcb008e7` |
| 5 | `def` | [ContinuousLinearEquiv.toNonlinearRightInverse](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/continuouslinearequiv-tononlinearrightinverse--21d6fee0ee1b88ea925ad874.md) | 65 | `declaration-track:21d6fee0ee1b88ea925ad874ef87643c8d670a02598bed4d8264dda0d1cc16fc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/instance--c44b228d962012d874e0599a.md) | 73 | `declaration-track:c44b228d962012d874e0599a3a175bd77dbc007a5e070f98c6576c96ac773e90` |
| 7 | `theorem` | [exists_approx_preimage_norm_le](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/exists-approx-preimage-norm-le--ee9aa38e92f570488320ffdf.md) | 91 | `result-track:ee9aa38e92f570488320ffdf7f7372b65801a54f2752c146280a713a311d6a70` |
| 8 | `theorem` | [exists_preimage_norm_le](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/exists-preimage-norm-le--f1b0ee6cbf59a3846928330d.md) | 169 | `result-track:f1b0ee6cbf59a3846928330d1ed21ae70fc4bc9c58f4697d16af224b4392464c` |
| 9 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/isopenmap--b383feecb69abb2fa8cff5b0.md) | 236 | `result-track:b383feecb69abb2fa8cff5b0ec30abd069ebb766bc6bd071b79174fb7e1f269a` |
| 10 | `theorem` | [isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/isquotientmap--23f6ba085a5912b7302fc0d2.md) | 259 | `result-track:23f6ba085a5912b7302fc0d2685b6e9603cbbe57966c1a376ffacaeb6af6f099` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NonlinearRightInverse.Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.AffineMap.isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/root-grwtsk-topology-generaltopology-nonlinearrightinverse-varianted64a9--a6c22bf7061a439ff9c62ae7.md) | 267 | `result-track:a6c22bf7061a439ff9c62ae7ebebe486dca7f55bb133c6513b5cfb1ba0a90386` |
| 12 | `theorem` | [interior_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/interior-preimage--cc3665734e00b7989fbe6900.md) | 280 | `result-track:cc3665734e00b7989fbe6900e378be71d21e60b2223ea374d7a6c7efaa525a97` |
| 13 | `theorem` | [closure_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/closure-preimage--b19a3df5af3e95a1609d8785.md) | 284 | `result-track:b19a3df5af3e95a1609d8785f3440b2d898f36b9f74123a17a68ed9b5a6c975e` |
| 14 | `theorem` | [frontier_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/frontier-preimage--9438903ee05454b225b7b5e7.md) | 287 | `result-track:9438903ee05454b225b7b5e76473893280c8ebd3e8f44ed08d3ca77e77174792` |
| 15 | `theorem` | [exists_nonlinearRightInverse_of_surjective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/exists-nonlinearrightinverse-of-surjective--b64dc1892d4b48ac43860184.md) | 291 | `result-track:b64dc1892d4b48ac438601846e8e0bdb4c501a9abb888b16b0d2995f51032680` |
| 16 | `theorem` | [nonlinearRightInverseOfSurjective_nnnorm_pos](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/nonlinearrightinverseofsurjective-nnnorm-pos--6f33ffee7e4ff7123ab8750c.md) | 313 | `result-track:6f33ffee7e4ff7123ab8750ca90579d47343a7ecd70019bcd05dc576a0f21da6` |
| 17 | `theorem` | [continuous_symm](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/continuous-symm--d98f6b3d8bc5d26257fa2228.md) | 326 | `result-track:d98f6b3d8bc5d26257fa2228bee372a73f5c9b8ed304f47377d3bf4e6266a678` |
| 18 | `def` | [toContinuousLinearEquivOfContinuous](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/tocontinuouslinearequivofcontinuous--7d887396a6de42888588d3a9.md) | 336 | `declaration-track:7d887396a6de42888588d3a91fda9c797b282e0ad6cd47cb16c03a08a07e2cde` |
| 19 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coefn-tocontinuouslinearequivofcontinuous--2abe21883cefaa3365a708f4.md) | 342 | `result-track:2abe21883cefaa3365a708f4d5216f52ebb6ea55a665f63f369b905378c7ff4a` |
| 20 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous_symm](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coefn-tocontinuouslinearequivofcontinuous-symm--57b388aa2ff7f09f63bf64d0.md) | 347 | `result-track:57b388aa2ff7f09f63bf64d0a9bfc8930185f4d184c241525a282d770a7145fa` |
| 21 | `def` | [equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/equivrange--ca5ad9fa76576ee13566538b.md) | 359 | `declaration-track:ca5ad9fa76576ee13566538b123cb1f2c2d0918755c232ec2e4dbd6dc422fe68` |
| 22 | `theorem` | [coe_linearMap_equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coe-linearmap-equivrange--0a35dafc07952fde50048493.md) | 366 | `result-track:0a35dafc07952fde500484939cda35bb89482397639cd08f6f76f4309ce248fd` |
| 23 | `theorem` | [coe_equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coe-equivrange--8a942517fa01d706d06ef737.md) | 371 | `result-track:8a942517fa01d706d06ef7375fe5b45382b31644eca5ef6df85d534439be2de4` |
| 24 | `lemma` | [equivRange_symm_toLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/equivrange-symm-tolinearequiv--0d3d3ee01a709f28d0098654.md) | 376 | `result-track:0d3d3ee01a709f28d009865460b877c7d0dd29527d594120b30cd5c54a750781` |
| 25 | `lemma` | [equivRange_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/equivrange-symm-apply--bc779bf41b7801b68991637b.md) | 382 | `result-track:bc779bf41b7801b68991637b411ce1e4c5783058d7bff8e6205a9d4a2968c706` |
| 26 | `lemma` | [antilipschitz_of_injective_of_isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/antilipschitz-of-injective-of-isclosed-range--e614e3b10e944de3becd8b76.md) | 403 | `result-track:e614e3b10e944de3becd8b760ed4cd2c5b1cc1078dca82ba64d4f935d8068364` |
| 27 | `lemma` | [isClosed_range_iff_antilipschitz_of_injective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/isclosed-range-iff-antilipschitz-of-injective--3a5203f63336c9d55b999041.md) | 415 | `result-track:3a5203f63336c9d55b9990410bc6f209595a3beac65bd1c1ae376522ca3aea13` |
| 28 | `def` | [ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/ofbijective--eb915a97dd5481cf00f19bea.md) | 431 | `declaration-track:eb915a97dd5481cf00f19bea5e51305b956ffb12cf00f40139a9149b600c2345` |
| 29 | `theorem` | [coeFn_ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coefn-ofbijective--b650a768381d6d216829fe77.md) | 440 | `result-track:b650a768381d6d216829fe7769ef5768a812b21c20fc4b365a1d2a397cdc726b` |
| 30 | `theorem` | [coe_ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coe-ofbijective--eb8b453739cae2b253e104cc.md) | 444 | `result-track:eb8b453739cae2b253e104cc2885fa0833422a8af6c67fef9d773758afb3e0fc` |
| 31 | `theorem` | [ofBijective_symm_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/ofbijective-symm-apply-apply--6a37c7390b66897b37f25963.md) | 450 | `result-track:6a37c7390b66897b37f259630c25b2db4bdaa2039030396389eb4cca6127cde2` |
| 32 | `theorem` | [ofBijective_apply_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/ofbijective-apply-symm-apply--5224c847f14e27074a0265bf.md) | 455 | `result-track:5224c847f14e27074a0265bf6969d9c66d380bbf30abaa75ef39beadf4176988` |
| 33 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.NonlinearRightInverse.Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.ContinuousLinearMap.isUnit_iff_bijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/root-grwtsk-topology-generaltopology-nonlinearrightinverse-varianted64a9--d9296bbf0b7b9dfbfa0675f5.md) | 459 | `result-track:d9296bbf0b7b9dfbfa0675f53d768b24c7ff6fe2e741d57197ae83d8c8fd2618` |
| 34 | `def` | [coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coprodsubtypelequivofiscompl--a7a167545235dea01571b9a6.md) | 477 | `declaration-track:a7a167545235dea01571b9a694fd01e60c0b076cae3a1094e46c789922db1c8b` |
| 35 | `theorem` | [range_eq_map_coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/range-eq-map-coprodsubtypelequivofiscompl--df7f2d0b6d052e2a94123166.md) | 488 | `result-track:df7f2d0b6d052e2a94123166f20d652ba038aae4ded22ca99d0033664dbb9e35` |
| 36 | `theorem` | [closed_complemented_range_of_isCompl_of_ker_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/closed-complemented-range-of-iscompl-of-ker-eq-bot--d2bb454ddbc530f31e12eb7a.md) | 500 | `result-track:d2bb454ddbc530f31e12eb7abbf862d90439e7a885bd16dc4556aab61a1f907a` |
| 37 | `theorem` | [LinearMap.continuous_of_isClosed_graph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/linearmap-continuous-of-isclosed-graph--c8b0e406064d1522442d1b3c.md) | 520 | `result-track:c8b0e406064d1522442d1b3cf7a7886eccbad7a196d9d351944607fbd4888d53` |
| 38 | `theorem` | [LinearMap.continuous_of_seq_closed_graph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/linearmap-continuous-of-seq-closed-graph--2602a685fa1f34cbfb28116d.md) | 534 | `result-track:2602a685fa1f34cbfb28116d155fa71e5a0565c6c0dcf86fe104cb4c52c7c959` |
| 39 | `def` | [ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/ofisclosedgraph--d1f2f743195972a0e2192e25.md) | 551 | `declaration-track:d1f2f743195972a0e2192e2517d06262f56ade79b42653874e5243de4b372360` |
| 40 | `theorem` | [coeFn_ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coefn-ofisclosedgraph--67a9f64616d4cd558e08c8da.md) | 556 | `result-track:67a9f64616d4cd558e08c8da3c7c56794341d647a56b74ee69d8d3740203ae35` |
| 41 | `theorem` | [coe_ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coe-ofisclosedgraph--38fd061f0a6fcb53bd465afb.md) | 560 | `result-track:38fd061f0a6fcb53bd465afbaa60695aae9c59540f0c1961eedc2f0c3c5c87cc` |
| 42 | `def` | [ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/ofseqclosedgraph--4513bc0ae0f2e943a689bfc4.md) | 567 | `declaration-track:4513bc0ae0f2e943a689bfc47148d845a3d6c1aab5f9d33df5214724ba87f6c5` |
| 43 | `theorem` | [coeFn_ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coefn-ofseqclosedgraph--13bd9dafe3aa1ef2893697e5.md) | 574 | `result-track:13bd9dafe3aa1ef2893697e580a716d59a0998e7d0c632bc7d1d0369f2139e1b` |
| 44 | `theorem` | [coe_ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/coe-ofseqclosedgraph--4f8e7e0121d38c54ea00c07c.md) | 579 | `result-track:4f8e7e0121d38c54ea00c07c1075c2332be630dc6398dba91284a666f7637363` |
| 45 | `lemma` | [closed_range_of_antilipschitz](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/closed-range-of-antilipschitz--d590d5d98ee1e25a3a8eeb36.md) | 597 | `result-track:d590d5d98ee1e25a3a8eeb3676ef2b2eeaa75a9b0104318823854413db982da9` |
| 46 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.NonlinearRightInverse.Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.AntilipschitzWith.completeSpace_range_clm](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/root-grwtsk-topology-generaltopology-nonlinearrightinverse-varianted64a9--098f9b7024b8cc88f4112aa6.md) | 603 | `result-track:098f9b7024b8cc88f4112aa61d61d021ee6edbfa58eb1616317246ed531f057c` |
| 47 | `lemma` | [bijective_iff_dense_range_and_antilipschitz](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/declarations/bijective-iff-dense-range-and-antilipschitz--0e990505d12c3060c492f45d.md) | 610 | `result-track:0e990505d12c3060c492f45de1dba20e9f91eb7d1ed18b5b530ea3828084ce33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
