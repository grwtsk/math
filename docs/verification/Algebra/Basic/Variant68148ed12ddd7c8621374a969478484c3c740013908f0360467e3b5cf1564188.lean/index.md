# Verification target: GRWTSK.Algebra.Basic.Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "686ebeb59468902a672244067b680391204f77ec",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `686ebeb59468902a672244067b680391204f77ec`.

Source path: `GRWTSK/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx--4d5a576b23fea7d0abfffab3.md) | 76 | `declaration-track:4d5a576b23fea7d0abfffab38b0b07ff6c06c36c36accf0ffa5536474d1c5e1e` |
| 2 | `theorem` | [ramificationIdx_eq_find](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-eq-find--ddb28dc040122a4c6c38145a.md) | 80 | `result-track:ddb28dc040122a4c6c38145a91e0ea43c85f5f58c28a72ce452fc4fcada333dc` |
| 3 | `theorem` | [ramificationIdx_eq_zero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-eq-zero--3f34e9e7aabf471e98f58045.md) | 85 | `result-track:3f34e9e7aabf471e98f580459ddc05c62ecd77b6ee380d4f5e9b52ad4be9bc2f` |
| 4 | `theorem` | [ramificationIdx_spec](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-spec--1ccd35def4917a494231b4c8.md) | 89 | `result-track:1ccd35def4917a494231b4c8588ed0229426bc0c7aa9eaa0ee9a4ffc9ced2f92` |
| 5 | `theorem` | [ramificationIdx_lt](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-lt--88b500eeb6e5d4dfc7e241a9.md) | 102 | `result-track:88b500eeb6e5d4dfc7e241a984ea94a9170a21d964ba2d9c653b471c00b10cfd` |
| 6 | `theorem` | [ramificationIdx_bot](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-bot--c29735f5d9732b262ca02de6.md) | 114 | `result-track:c29735f5d9732b262ca02de644f9d5786c4bf59c7b5a8fd2d62e126dd1686974` |
| 7 | `theorem` | [ramificationIdx_of_not_le](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-of-not-le--1c7c9146d315112eedd02bd6.md) | 118 | `result-track:1c7c9146d315112eedd02bd680872d5a9b8308845e8ef091a93670a1be335ae5` |
| 8 | `theorem` | [ramificationIdx_ne_zero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-ne-zero--9bc277005565287e9e80b7c0.md) | 121 | `result-track:9bc277005565287e9e80b7c01f332108a6b8817274e87a1288f16335c618a320` |
| 9 | `theorem` | [le_pow_of_le_ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/le-pow-of-le-ramificationidx--df508feeb8885cb0a6ef08e8.md) | 125 | `result-track:df508feeb8885cb0a6ef08e86dd4bfde5a8c5286f03f37a765ff7759b96c1ba5` |
| 10 | `theorem` | [le_pow_ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/le-pow-ramificationidx--17890b8a80aebbd245e798a5.md) | 130 | `result-track:17890b8a80aebbd245e798a51b6f19b731d3762214691fd980893034e7fee003` |
| 11 | `theorem` | [le_comap_pow_ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/le-comap-pow-ramificationidx--df34e3a8d04b40d798a7bb24.md) | 133 | `result-track:df34e3a8d04b40d798a7bb240d33b127d49899096f2dc789a03348d051143636` |
| 12 | `theorem` | [le_comap_of_ramificationIdx_ne_zero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/le-comap-of-ramificationidx-ne-zero--3e24a136bd7c58b9b21afcb8.md) | 136 | `result-track:3e24a136bd7c58b9b21afcb8277b0248bd09ad74bbf6f2913f485b47175a6f88` |
| 13 | `lemma` | [ramificationIdx_comap_eq](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-comap-eq--0fac3fa22f01f1477989b0c1.md) | 142 | `result-track:0fac3fa22f01f1477989b0c197d1aa4c883df8e9abc8e6304bf096c45e3a0838` |
| 14 | `lemma` | [ramificationIdx_map_eq](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-map-eq--133d9aa714807599f763aadd.md) | 154 | `result-track:133d9aa714807599f763aaddbad511b9f1d1afed5c4de36511b9ae00b8a006ef` |
| 15 | `theorem` | [ramificationIdx_eq_normalizedFactors_count](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-eq-normalizedfactors-count--deb53b2c5648a45f62da28f9.md) | 164 | `result-track:deb53b2c5648a45f62da28f997b624a167c19b167094716ccfba8f9c970b8e4d` |
| 16 | `theorem` | [ramificationIdx_eq_factors_count](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-eq-factors-count--28ec0ba0260e0d5f5eff7053.md) | 174 | `result-track:28ec0ba0260e0d5f5eff70538e07e0450ce4e4982a4858c54d9e0d74a3799c7f` |
| 17 | `theorem` | [ramificationIdx_ne_zero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-ne-zero--11c4e7632e3c3c4dbc8cb347.md) | 180 | `result-track:11c4e7632e3c3c4dbc8cb347dc8dfe17de5f9e723d4d7c4b9db2db673e1d0391` |
| 18 | `def` | [inertiaDeg](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/inertiadeg--bacb7437f8344e7a670ba410.md) | 207 | `declaration-track:bacb7437f8344e7a670ba4101c1215d7c10089157a781357631e278d4172fc50` |
| 19 | `theorem` | [inertiaDeg_of_subsingleton](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/inertiadeg-of-subsingleton--1c88bc51e97a85dce13a3517.md) | 215 | `result-track:1c88bc51e97a85dce13a351724ddec500dd6a4441d203409f59e17c6f733c68f` |
| 20 | `theorem` | [inertiaDeg_algebraMap](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/inertiadeg-algebramap--d509de29f996e7f49291fab8.md) | 222 | `result-track:d509de29f996e7f49291fab8ef756e862f87264dc4d61fc7592dc678da053695` |
| 21 | `theorem` | [inertiaDeg_pos](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/inertiadeg-pos--54b4bb63eca331dd8ccc73ac.md) | 227 | `result-track:54b4bb63eca331dd8ccc73ac72c5e0f6a7a470120424e562c625400501899d20` |
| 22 | `lemma` | [inertiaDeg_comap_eq](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/inertiadeg-comap-eq--d250dd10e73bdce4841fb016.md) | 232 | `result-track:d250dd10e73bdce4841fb016c23a10577ae92b33392e4fc9c9076cee24de7883` |
| 23 | `lemma` | [inertiaDeg_map_eq](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/inertiadeg-map-eq--95f6d79733e8cbb2c6d99b93.md) | 242 | `result-track:95f6d79733e8cbb2c6d99b93e701b2cd9d6c5e5c679e3806f2ed0af5cb431b59` |
| 24 | `lemma` | [absNorm_eq_pow_inertiaDeg](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/absnorm-eq-pow-inertiadeg--5ab3bc0c54391344a1d3a5d3.md) | 255 | `result-track:5ab3bc0c54391344a1d3a5d3d3531e69cef854ec464c2df89bc84f1d41e5af03` |
| 25 | `theorem` | [FinrankQuotientMap.span_eq_top](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/finrankquotientmap-span-eq-top--1abc5f505b96ef0e4e17994d.md) | 293 | `result-track:1abc5f505b96ef0e4e17994d75bee00d056081295195c9a32015cf3b4f78b325` |
| 26 | `theorem` | [FinrankQuotientMap.linearIndependent_of_nontrivial](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/finrankquotientmap-linearindependent-of-nontrivial--7e46f9fcb12c9378b6751f05.md) | 392 | `result-track:7e46f9fcb12c9378b6751f057ea27c17437c15ef4ff0d748cd9e4f509adf7be0` |
| 27 | `theorem` | [finrank_quotient_map](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/finrank-quotient-map--19217a5c8ddb9243502cfcf8.md) | 428 | `result-track:19217a5c8ddb9243502cfcf89a59f80e270a886c0b5a5d9809c95e9f49899e0d` |
| 28 | `instance` | [Quotient.algebraQuotientPowRamificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotient-algebraquotientpowramificationidx--b193f2fef03a77e251ef16fd.md) | 484 | `declaration-track:b193f2fef03a77e251ef16fd6643be481215d568482b004f9fd3e81fb14bd821` |
| 29 | `theorem` | [Quotient.algebraMap_quotient_pow_ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotient-algebramap-quotient-pow-ramificationidx--cb1089264522baaab58d4549.md) | 488 | `result-track:cb1089264522baaab58d4549a2adc5307da9d8d65ea9a9c6d1d95742682c9bb5` |
| 30 | `def` | [Quotient.algebraQuotientOfRamificationIdxNeZero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotient-algebraquotientoframificationidxnezero--f026a357e96ce7129964dbaf.md) | 495 | `declaration-track:f026a357e96ce7129964dbafc09eef174abdae2ef39de17e34d782f71d44583c` |
| 31 | `theorem` | [Quotient.algebraMap_quotient_of_ramificationIdx_neZero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotient-algebramap-quotient-of-ramificationidx-nezero--9059fd6009297b6005e81713.md) | 502 | `result-track:9059fd6009297b6005e8171328b149dbe328510119b744d3773298676a04b492` |
| 32 | `def` | [powQuotSuccInclusion](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/powquotsuccinclusion--7a7dd7c629dbc811a007bcf3.md) | 508 | `declaration-track:7a7dd7c629dbc811a007bcf3ae33338610251e90236505b2f8a362f38e773591` |
| 33 | `theorem` | [powQuotSuccInclusion_injective](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/powquotsuccinclusion-injective--7d309f5ce8c4dffca6069c3a.md) | 515 | `result-track:7d309f5ce8c4dffca6069c3acc6fccf658e263a4f8938e6566c1e92accd72a10` |
| 34 | `def` | [quotientToQuotientRangePowQuotSuccAux](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotienttoquotientrangepowquotsuccaux--6c7ba417d3615789977e300e.md) | 526 | `declaration-track:6c7ba417d3615789977e300e4007dd5633285302d2065e2daea4a6ff26ad58ee` |
| 35 | `theorem` | [quotientToQuotientRangePowQuotSuccAux_mk](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotienttoquotientrangepowquotsuccaux-mk--381dbd7d640720812ecc4e3f.md) | 538 | `result-track:381dbd7d640720812ecc4e3f1bce25f198222d30448fcd591aff9dddc611d198` |
| 36 | `def` | [quotientToQuotientRangePowQuotSucc](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotienttoquotientrangepowquotsucc--5993ed930363dc43945991b3.md) | 547 | `declaration-track:5993ed930363dc43945991b34a551523acf2c10426acda85ddd8477c099eeb30` |
| 37 | `theorem` | [quotientToQuotientRangePowQuotSucc_mk](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotienttoquotientrangepowquotsucc-mk--5183e260b5f01dc49451e820.md) | 567 | `result-track:5183e260b5f01dc49451e820439aa5529cba29b78e2fa644d152bedb82a8c11a` |
| 38 | `theorem` | [quotientToQuotientRangePowQuotSucc_injective](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotienttoquotientrangepowquotsucc-injective--ae6cd0c051515dbb04fbdf2d.md) | 572 | `result-track:ae6cd0c051515dbb04fbdf2d165a29285d3a0abb86fa8c8eac408d3b338e111f` |
| 39 | `theorem` | [quotientToQuotientRangePowQuotSucc_surjective](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotienttoquotientrangepowquotsucc-surjective--5f51f203b7001d8079e7fb1b.md) | 591 | `result-track:5f51f203b7001d8079e7fb1b90b82626544e828b0ca89f01c6128690becce261` |
| 40 | `def` | [quotientRangePowQuotSuccInclusionEquiv](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/quotientrangepowquotsuccinclusionequiv--b0ce2e6a5bb7ce0af7f1f1da.md) | 622 | `declaration-track:b0ce2e6a5bb7ce0af7f1f1da59b37dfccc993709de223eedf797b1753400e0cf` |
| 41 | `theorem` | [rank_pow_quot_aux](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/rank-pow-quot-aux--5942958af86142ca76c30a1c.md) | 636 | `result-track:5942958af86142ca76c30a1cde446c1e7edf145b424292ebb98fd84500141f82` |
| 42 | `theorem` | [rank_pow_quot](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/rank-pow-quot--fb5fa9ced9568f55d5daa08a.md) | 645 | `result-track:fb5fa9ced9568f55d5daa08a2e3939704c0c554912cfe8fca1761b76a3b21e14` |
| 43 | `theorem` | [rank_prime_pow_ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/rank-prime-pow-ramificationidx--8ab7f92981d50c537a7fc4f1.md) | 665 | `result-track:8ab7f92981d50c537a7fc4f1a33983a3f7dc17d4e652f2cb0176a172bd323703` |
| 44 | `theorem` | [finrank_prime_pow_ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/finrank-prime-pow-ramificationidx--5f3d8d258e04968ec557a7af.md) | 679 | `result-track:5f3d8d258e04968ec557a7afc8d69c8a93f3be49f3c178a0355a80dedd3fb1d1` |
| 45 | `theorem` | [Factors.ne_bot](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-ne-bot--6d3787a6de782efb45951827.md) | 708 | `result-track:6d3787a6de782efb459518278cac2604b342a2183bb32d36ab6495b6d7c8a4e1` |
| 46 | `instance` | [Factors.isPrime](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-isprime--3c278ca0db84c4b5f076c233.md) | 712 | `declaration-track:3c278ca0db84c4b5f076c233c2d1486d9d5800188e597d68aa885dfa20a4036d` |
| 47 | `theorem` | [Factors.ramificationIdx_ne_zero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-ramificationidx-ne-zero--33c2ba38680e315847e7a78b.md) | 717 | `result-track:33c2ba38680e315847e7a78b6a8d32029fbf946338ccbbc4ff2d18af5813b9ae` |
| 48 | `instance` | [Factors.fact_ramificationIdx_neZero](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-fact-ramificationidx-nezero--87ccc97e6b86a060d2804817.md) | 723 | `declaration-track:87ccc97e6b86a060d2804817940f075b5049b6483f7302bb85bf49f1ffd36473` |
| 49 | `instance` | [Factors.isScalarTower](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-isscalartower--c411c581639a870361eb8806.md) | 730 | `declaration-track:c411c581639a870361eb880608e2c4597c64f9470d5d8713b4e3e46178cbd580` |
| 50 | `instance` | [Factors.liesOver](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-liesover--ebb199098766b2fc8308efc2.md) | 735 | `declaration-track:ebb199098766b2fc8308efc26c589f6b295039cf962c6d037748900c5230e619` |
| 51 | `theorem` | [Factors.finrank_pow_ramificationIdx](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-finrank-pow-ramificationidx--84cfd09ee9f4642f32e8f4fa.md) | 740 | `result-track:84cfd09ee9f4642f32e8f4fa67409d4f0b96c398b916f44727a504f82f7568cd` |
| 52 | `instance` | [Factors.finiteDimensional_quotient_pow](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-finitedimensional-quotient-pow--acc7ae21ddde2c38994ca63c.md) | 748 | `declaration-track:acc7ae21ddde2c38994ca63cc4e6c1c282f9f8a010594c2c15b5d556a24795d3` |
| 53 | `def` | [Factors.piQuotientEquiv](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-piquotientequiv--261f6af18e1575a22f5a1dc7.md) | 760 | `declaration-track:261f6af18e1575a22f5a1dc7b156268c630587925c84c1b2bb6d68b209053b57` |
| 54 | `theorem` | [Factors.piQuotientEquiv_mk](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-piquotientequiv-mk--4db1c5aca55098e270a54597.md) | 774 | `result-track:4db1c5aca55098e270a5459726b5568873280d9c0a624ff73decc7d89d2a07c1` |
| 55 | `theorem` | [Factors.piQuotientEquiv_map](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-piquotientequiv-map--37bde57f96f3d44922077c04.md) | 778 | `result-track:37bde57f96f3d44922077c04db3349ec42c2e44ca082a0d6bf664cd45fba1ffa` |
| 56 | `def` | [Factors.piQuotientLinearEquiv](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/factors-piquotientlinearequiv--bedbc85c8281508ef03a348d.md) | 788 | `declaration-track:bedbc85c8281508ef03a348d93d0907c38dbc5175d8a6a08902438ae1cb84445` |
| 57 | `theorem` | [sum_ramification_inertia](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/sum-ramification-inertia--18686b98a9e11a5b21ff2472.md) | 805 | `result-track:18686b98a9e11a5b21ff2472e1637ac1693613efc09996a90135cef9341d22e8` |
| 58 | `theorem` | [ramificationIdx_tower](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-tower--d614b7778bb55dc507574606.md) | 837 | `result-track:d614b7778bb55dc507574606789e2fd8d43ea421253b1fcb5e64455846f81425` |
| 59 | `theorem` | [ramificationIdx_algebra_tower](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/ramificationidx-algebra-tower--dd6ed621bc7510973b5bf857.md) | 864 | `result-track:dd6ed621bc7510973b5bf8579a905d16b90b5af4946120308cde49fa220e9811` |
| 60 | `theorem` | [inertiaDeg_algebra_tower](../../../../mathematics/Algebra/Basic/Variant68148ed12ddd7c8621374a969478484c3c740013908f0360467e3b5cf1564188.lean/declarations/inertiadeg-algebra-tower--9568437e492e91b876b3e653.md) | 876 | `result-track:9568437e492e91b876b3e65320fb9c0ae529e095fc457dc35775c1f42026dd01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
