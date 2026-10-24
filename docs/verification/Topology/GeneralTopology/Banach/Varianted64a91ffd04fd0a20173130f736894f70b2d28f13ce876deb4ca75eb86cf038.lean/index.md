# Verification target: GRWTSK.Topology.GeneralTopology.Banach.Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53e450e01f99cb80b27652433fc3aba66945a8d6",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53e450e01f99cb80b27652433fc3aba66945a8d6`.

Source path: `GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Baire.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.CompleteMetrizable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonlinearRightInverse](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/nonlinearrightinverse--caf027261385e2bbb5907f3c.md) | 33 | `declaration-track:caf027261385e2bbb5907f3c5f0fd5729dcfbdd2a5ba774b502a0cc1ab517f17` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/instance--0c21a8fc2a631f7a3d20933e.md) | 39 | `declaration-track:0c21a8fc2a631f7a3d20933e11f2ab97006c8f91148a888b5581421943aa0025` |
| 3 | `theorem` | [NonlinearRightInverse.right_inv](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/nonlinearrightinverse-right-inv--74c92c530b8221fe9715bdcf.md) | 43 | `result-track:74c92c530b8221fe9715bdcf0301122ba97505cad816c1456649c0a8c0a7a245` |
| 4 | `theorem` | [NonlinearRightInverse.bound](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/nonlinearrightinverse-bound--31296e6c5647596d90f0b3f7.md) | 47 | `result-track:31296e6c5647596d90f0b3f7d0fff5ccbf4ab8336cb58a322412a466bcd2dc16` |
| 5 | `def` | [ContinuousLinearEquiv.toNonlinearRightInverse](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/continuouslinearequiv-tononlinearrightinverse--94baf4ec8d69cd990afc9c49.md) | 57 | `declaration-track:94baf4ec8d69cd990afc9c49f66005f2d76df9a5736420e8fc5581ded44ac913` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/instance--3e34c5ff861929e0fc9aefc0.md) | 65 | `declaration-track:3e34c5ff861929e0fc9aefc085e48f3c1bd064b8c37da7ab580363d7dc9a952d` |
| 7 | `theorem` | [exists_approx_preimage_norm_le](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/exists-approx-preimage-norm-le--ebf33e4eb7a9d30bad552509.md) | 83 | `result-track:ebf33e4eb7a9d30bad55250945728d0c7a66e810c201d81752b697b429ea5723` |
| 8 | `theorem` | [exists_preimage_norm_le](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/exists-preimage-norm-le--807e8cf60ac6827a8a3011f3.md) | 161 | `result-track:807e8cf60ac6827a8a3011f384c5b2a3483fd03100905aec190ff1628cbbff9f` |
| 9 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/isopenmap--21ff731606ea9ac3116d185b.md) | 228 | `result-track:21ff731606ea9ac3116d185b2f66a457977e81a1f6fed72615932db7d695474d` |
| 10 | `theorem` | [isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/isquotientmap--66d26014f6963fe4d925d8a8.md) | 251 | `result-track:66d26014f6963fe4d925d8a8582936ccc796f04a972d568690baa6dc5158bdb8` |
| 11 | `theorem` | [_root_.AffineMap.isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/root-affinemap-isopenmap--f0f3cb90a906dcb425870d49.md) | 259 | `result-track:f0f3cb90a906dcb425870d499dac143f57073b07a98aa2c30063aa027c7ea38a` |
| 12 | `theorem` | [interior_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/interior-preimage--ce2b4f248a306db6c6c23010.md) | 272 | `result-track:ce2b4f248a306db6c6c23010d176aa40ffa07025a8826b77ba2230259cb3331f` |
| 13 | `theorem` | [closure_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/closure-preimage--1971434576e59e397f24d6f7.md) | 276 | `result-track:1971434576e59e397f24d6f7e5d6354307282ded26358f235c15455f019661cd` |
| 14 | `theorem` | [frontier_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/frontier-preimage--5555e36de067a19e52c78f54.md) | 279 | `result-track:5555e36de067a19e52c78f54650919d6135eb495dec21ddb21555d36ad39fcae` |
| 15 | `theorem` | [exists_nonlinearRightInverse_of_surjective](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/exists-nonlinearrightinverse-of-surjective--11739f819d846e080d0e10e0.md) | 283 | `result-track:11739f819d846e080d0e10e08c2ae10c4d8fc310c4ef2c531d6111ea251f08dc` |
| 16 | `theorem` | [nonlinearRightInverseOfSurjective_nnnorm_pos](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/nonlinearrightinverseofsurjective-nnnorm-pos--c54b8d38d6b51e46cee5df28.md) | 305 | `result-track:c54b8d38d6b51e46cee5df28160f3adf6b3f6480026f4c95bcf86ae41399394f` |
| 17 | `theorem` | [continuous_symm](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/continuous-symm--d8b8aaada27249c56b24c9d3.md) | 318 | `result-track:d8b8aaada27249c56b24c9d395e5b5ccfc0132c8929b2a63fe77f888501e568d` |
| 18 | `def` | [toContinuousLinearEquivOfContinuous](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/tocontinuouslinearequivofcontinuous--c3b42a594ffb9ea0cf062872.md) | 328 | `declaration-track:c3b42a594ffb9ea0cf0628728b74ae1291f007002aa8d46d46f7d72dbde6a6d5` |
| 19 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coefn-tocontinuouslinearequivofcontinuous--98b0eba462746abe9cfb85a1.md) | 334 | `result-track:98b0eba462746abe9cfb85a12d5d446d732243b0cfe5555417ade6c8a3582690` |
| 20 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous_symm](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coefn-tocontinuouslinearequivofcontinuous-symm--d92dfba0d281a7ad2427f2ab.md) | 339 | `result-track:d92dfba0d281a7ad2427f2abbecdadadbe5eebb020ca46c690c0bcf658d040c5` |
| 21 | `def` | [equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/equivrange--300deebd81d000bc51e72d8c.md) | 351 | `declaration-track:300deebd81d000bc51e72d8c7949c93f66e80905932a9f217cb235e6c217061e` |
| 22 | `theorem` | [coe_linearMap_equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coe-linearmap-equivrange--6a192070aabfb4c33ebe6c93.md) | 358 | `result-track:6a192070aabfb4c33ebe6c93e3394a0c18646d44320332d1133419b621af7ccd` |
| 23 | `theorem` | [coe_equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coe-equivrange--501e5139ccca885ce5f07011.md) | 363 | `result-track:501e5139ccca885ce5f07011a3681819565d827a39bd68c89b3191806c1284fa` |
| 24 | `lemma` | [equivRange_symm_toLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/equivrange-symm-tolinearequiv--8e1d12e25b2614b229c19822.md) | 368 | `result-track:8e1d12e25b2614b229c198229cf016e34d5b97ee2a4d7a386336ac400e2e4717` |
| 25 | `lemma` | [equivRange_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/equivrange-symm-apply--a27bc4872416db8dc92c685c.md) | 374 | `result-track:a27bc4872416db8dc92c685c95db65c7ee0be2c261746a6d2bf4b06705a6a17b` |
| 26 | `lemma` | [antilipschitz_of_injective_of_isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/antilipschitz-of-injective-of-isclosed-range--3fc466249dd1046e4db7e332.md) | 395 | `result-track:3fc466249dd1046e4db7e33217fdcb8396f32f2111317487798cdb12f10a8756` |
| 27 | `lemma` | [isClosed_range_iff_antilipschitz_of_injective](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/isclosed-range-iff-antilipschitz-of-injective--5493b14ba395658943f9150b.md) | 407 | `result-track:5493b14ba395658943f9150bc3b515653ea2cfbe30040fb1abc2deeab9bc2e77` |
| 28 | `def` | [ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/ofbijective--1c1c6f672c07944f0b21389e.md) | 423 | `declaration-track:1c1c6f672c07944f0b21389eff5d4b6329eb4c4b96b00d3e1d150ff663bc6527` |
| 29 | `theorem` | [coeFn_ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coefn-ofbijective--e48d24e1d2b0645eb97cae43.md) | 432 | `result-track:e48d24e1d2b0645eb97cae4310d57e86c7198b2184d6115383c1d44f93da92fe` |
| 30 | `theorem` | [coe_ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coe-ofbijective--42619810e571d2171920de96.md) | 436 | `result-track:42619810e571d2171920de96a4c3bea9208460934f6383fff9e4806852e45b89` |
| 31 | `theorem` | [ofBijective_symm_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/ofbijective-symm-apply-apply--545038991859217f77cfc11a.md) | 442 | `result-track:545038991859217f77cfc11a4b7c033fd95ab4f35a8161f225caf0c1d830ac53` |
| 32 | `theorem` | [ofBijective_apply_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/ofbijective-apply-symm-apply--4f1d7ad1d67c0edd0c996dc7.md) | 447 | `result-track:4f1d7ad1d67c0edd0c996dc7eee1f433f763696ac976983b8071d5a17390ce5e` |
| 33 | `lemma` | [_root_.ContinuousLinearMap.isUnit_iff_bijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/root-continuouslinearmap-isunit-iff-bijective--ef7392af0112051dd7275e37.md) | 451 | `result-track:ef7392af0112051dd7275e37496a99032c672ed149f6e0ff4370b66d022583c0` |
| 34 | `def` | [coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coprodsubtypelequivofiscompl--c93bba415a0e9fdcf396df8f.md) | 469 | `declaration-track:c93bba415a0e9fdcf396df8fbc0bd7f142a053e20debc56847f50a35c8e148ba` |
| 35 | `theorem` | [range_eq_map_coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/range-eq-map-coprodsubtypelequivofiscompl--aa879a9d404fc98343d696f5.md) | 480 | `result-track:aa879a9d404fc98343d696f5ec1999764261709ca5d569208f35c20a61ce6404` |
| 36 | `theorem` | [closed_complemented_range_of_isCompl_of_ker_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/closed-complemented-range-of-iscompl-of-ker-eq-bot--58fefe43ff306589d5987e6e.md) | 492 | `result-track:58fefe43ff306589d5987e6e91a935308de951009172fd30c641564ad8ec12d8` |
| 37 | `theorem` | [LinearMap.continuous_of_isClosed_graph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/linearmap-continuous-of-isclosed-graph--64c3a4be8e901daeb03e4e5d.md) | 512 | `result-track:64c3a4be8e901daeb03e4e5d7f86ff1c4ad08fe2e72ae92da9d321b4242a1737` |
| 38 | `theorem` | [LinearMap.continuous_of_seq_closed_graph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/linearmap-continuous-of-seq-closed-graph--da25b17e5655a689854aced6.md) | 526 | `result-track:da25b17e5655a689854aced6ecdfe8644029166ef9831cc3860ac8f128a44a45` |
| 39 | `def` | [ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/ofisclosedgraph--fe9bb3a7b2ba67f765d31be3.md) | 543 | `declaration-track:fe9bb3a7b2ba67f765d31be3779b09c28b041a575bc3da52f36a3cadfcc621a0` |
| 40 | `theorem` | [coeFn_ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coefn-ofisclosedgraph--8f8807b6a24c2326c5590684.md) | 548 | `result-track:8f8807b6a24c2326c55906846ff5869eb1391d915e3a97641e0b0220df0a0c56` |
| 41 | `theorem` | [coe_ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coe-ofisclosedgraph--84c57a5ffd3956ea1053346a.md) | 552 | `result-track:84c57a5ffd3956ea1053346a524236dd99f1a6f5f153c573e7b5735928c023fa` |
| 42 | `def` | [ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/ofseqclosedgraph--a82851584169e5991077dfde.md) | 559 | `declaration-track:a82851584169e5991077dfdec3ac5ef091af3ec3c5d6faf6d305f63ae16d6b9b` |
| 43 | `theorem` | [coeFn_ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coefn-ofseqclosedgraph--717d24a1e1b1fcf211678941.md) | 566 | `result-track:717d24a1e1b1fcf211678941bd63db69910ae96e6bbd7a8345a833d8c2fd03ba` |
| 44 | `theorem` | [coe_ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/coe-ofseqclosedgraph--1abb0e99c088fdc2051fea3e.md) | 571 | `result-track:1abb0e99c088fdc2051fea3ef7dca1012171e49e37dc6fc2bec51ae42aad5004` |
| 45 | `lemma` | [closed_range_of_antilipschitz](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/closed-range-of-antilipschitz--c08c6674314dab777db8905f.md) | 589 | `result-track:c08c6674314dab777db8905f0a47a3df06c04b0b1bb9c213bb03c71fbde8c3ef` |
| 46 | `lemma` | [_root_.AntilipschitzWith.completeSpace_range_clm](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/root-antilipschitzwith-completespace-range-clm--da5db46fc8377a24edfc5665.md) | 595 | `result-track:da5db46fc8377a24edfc5665a3cb37334b0264ddb895472bf62e242010064ef1` |
| 47 | `lemma` | [bijective_iff_dense_range_and_antilipschitz](../../../../../mathematics/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/declarations/bijective-iff-dense-range-and-antilipschitz--0bb4e1b3919d4dd7a693a07e.md) | 602 | `result-track:0bb4e1b3919d4dd7a693a07e75bec1feeff7e00485381db20966efcbb782cedd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
