# Verification target: GRWTSK.NumberTheory.Moebius.EndpointInformationLossConnections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "294e4f9eb548a3ed10e176bf3937ecf460626430",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointInformationLossConnections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `294e4f9eb548a3ed10e176bf3937ecf460626430`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointInformationLossConnections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointInformationLossConnections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicPrefixMaximalComparison`](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Order.PartialSups` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finitePrefix](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/finiteprefix--05a6f7608d13070ccddb8dc9.md) | 42 | `declaration-track:05a6f7608d13070ccddb8dc9d5e8547fd8c0c2188698c805acf7d90b1dfc4a1b` |
| 2 | `def` | [finitePrefixMax](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/finiteprefixmax--8d8c63cf376d25ef9c34b7cc.md) | 46 | `declaration-track:8d8c63cf376d25ef9c34b7cc96af7abfd696d258d674b517db2727bcd3ec9e76` |
| 3 | `theorem` | [finitePrefix_zero](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/finiteprefix-zero--a906ae41a9834fd3aa6bf754.md) | 49 | `result-track:a906ae41a9834fd3aa6bf754a941c1ed782a8e7da3a232788dcf6daf1da2efa3` |
| 4 | `theorem` | [abs_finitePrefix_le_max](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/abs-finiteprefix-le-max--39ec388d2189db670ffeb74a.md) | 54 | `result-track:39ec388d2189db670ffeb74a82692053186ca22f546183894268ba9fb2705f69` |
| 5 | `theorem` | [finitePrefixMax_nonneg](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/finiteprefixmax-nonneg--2a85364bab68fa2bf2eef29f.md) | 61 | `result-track:2a85364bab68fa2bf2eef29f0052ae8e999febcc42158a3236434b909597356b` |
| 6 | `def` | [TerminalRecoveryAt](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/terminalrecoveryat--3ccdef25f64b96e7dd18077a.md) | 70 | `declaration-track:3ccdef25f64b96e7dd18077a8a86284c2758b598888be3f7fea28d46227b4b0b` |
| 7 | `theorem` | [not_terminalRecoveryAt_of_terminal_eq_zero](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/not-terminalrecoveryat-of-terminal-eq-zero--8c56a076218059b59ef92f48.md) | 77 | `result-track:8c56a076218059b59ef92f483977e15ec3ba724805a85fea55b60d894915b015` |
| 8 | `def` | [twoPointMobiusSequence](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/twopointmobiussequence--91bd261b13f26a48491bddd6.md) | 91 | `declaration-track:91bd261b13f26a48491bddd6d24289d0fdfdce61df20707e704892f26d8accfb` |
| 9 | `theorem` | [finitePrefix_twoPointMobiusSequence_eq](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/finiteprefix-twopointmobiussequence-eq--c49fcc39dbd9cb38264bc5c5.md) | 95 | `result-track:c49fcc39dbd9cb38264bc5c5e343cac6dda4cedc01895fd22084ea018b51883e` |
| 10 | `def` | [EndpointInformationLossWitness](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointinformationlosswitness--fd750a1b6f1b2f8e1b2ace6f.md) | 101 | `declaration-track:fd750a1b6f1b2f8e1b2ace6f93c7a484fae27a50af57cd71598f072c7974fb01` |
| 11 | `theorem` | [endpointInformationLossWitness](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointinformationlosswitness--ba08384038c3ae013f05cddd.md) | 105 | `result-track:ba08384038c3ae013f05cddd25c84a0b355373fbab466cf613aa2b41e646fe0e` |
| 12 | `def` | [UniversalOneHorizonTerminalRecovery](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/universalonehorizonterminalrecovery--99b597159eba0f5ceb268e68.md) | 118 | `declaration-track:99b597159eba0f5ceb268e688f9b4084ff371c6af74839145730b6f5d8d290d0` |
| 13 | `theorem` | [not_universalOneHorizonTerminalRecovery](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/not-universalonehorizonterminalrecovery--9d10c61a18187f33458ebf16.md) | 121 | `result-track:9d10c61a18187f33458ebf16246430ed1ecd93e05f3cb27c0d23290ce6701b9e` |
| 14 | `def` | [AllHorizonBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/allhorizonbound--4afe520f08c2d83af42c5b5e.md) | 128 | `declaration-track:4afe520f08c2d83af42c5b5ebf13356325601b8949275d7453ada5dc5860c296` |
| 15 | `def` | [PrefixMaxBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/prefixmaxbound--26839e1d5029fa25001cae29.md) | 132 | `declaration-track:26839e1d5029fa25001cae29692b4ad77b0aeb385f3fe4030170478264a81dff` |
| 16 | `theorem` | [prefixMaxBound_of_allHorizonBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/prefixmaxbound-of-allhorizonbound--84b08b6a850b93415750d8fd.md) | 138 | `result-track:84b08b6a850b93415750d8fd3c4dfb4a84c10e21e954742fb0649e8eb1605f5a` |
| 17 | `theorem` | [allHorizonBound_of_prefixMaxBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/allhorizonbound-of-prefixmaxbound--d914ba1b32b4147513e5f7b9.md) | 149 | `result-track:d914ba1b32b4147513e5f7b9a26321c60361cf3b05bbc1e05ae2f33fe5276d73` |
| 18 | `theorem` | [prefixMaxBound_iff_allHorizonBound_of_monotone](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/prefixmaxbound-iff-allhorizonbound-of-monotone--8af43edb4fedd5401297a1f6.md) | 161 | `result-track:8af43edb4fedd5401297a1f64a96ce6991b8ca2a96cfc40034394e0181097018` |
| 19 | `def` | [translatedPrefix](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/translatedprefix--3c4afb12c447e6c9f89a3b7a.md) | 169 | `declaration-track:3c4afb12c447e6c9f89a3b7a8a859290180be45cefc36b762034a12c92420688` |
| 20 | `def` | [translatedPrefixMax](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/translatedprefixmax--6e3b7e60d77ded24d4424312.md) | 173 | `declaration-track:6e3b7e60d77ded24d4424312d1084d59c8db675a5b1eb34f614ad5c24d17bee9` |
| 21 | `def` | [TerminalIntervalRecoveryAt](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/terminalintervalrecoveryat--3dbe3e02fbb693d240a5d084.md) | 177 | `declaration-track:3dbe3e02fbb693d240a5d084b6a32ba98de735a995702ea9827bd5d8645aa635` |
| 22 | `def` | [EveryTerminalIntervalBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/everyterminalintervalbound--2d995e4dfdf49c3c8484e352.md) | 182 | `declaration-track:2d995e4dfdf49c3c8484e352493454d9f2c0fa5dbb78212e1267f65ff450a0ef` |
| 23 | `def` | [EverySubprefixIntervalBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/everysubprefixintervalbound--f37f63649cdee95924b10475.md) | 187 | `declaration-track:f37f63649cdee95924b10475967bb49f60e6e44de9d727dc1e11dc872b9a2201` |
| 24 | `theorem` | [everyTerminalIntervalBound_of_everySubprefix](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/everyterminalintervalbound-of-everysubprefix--63a174c48f8e6ff878292381.md) | 193 | `result-track:63a174c48f8e6ff87829238104a1579b3992932132432f728b09aec4a9883db1` |
| 25 | `def` | [EndpointIntervalInformationLossWitness](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointintervalinformationlosswitness--ba43a8885849481340a0db81.md) | 203 | `declaration-track:ba43a8885849481340a0db818efb2b538162c279f1dd7c8542a80c6486970add` |
| 26 | `theorem` | [endpointIntervalInformationLossWitness](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointintervalinformationlosswitness--fa779619771f126bd97c4867.md) | 206 | `result-track:fa779619771f126bd97c48673fd6e4ce7d1dd79d8d43524d9e67048072101a26` |
| 27 | `inductive` | [TypedConnection](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/typedconnection--65430f7684c3e159e2651a65.md) | 214 | `declaration-track:65430f7684c3e159e2651a65c54e200132eb563254d27c8ef024de72f35e4f44` |
| 28 | `def` | [toImplication?](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/toimplication--cb05e0dd0c16a986640aae7e.md) | 227 | `declaration-track:cb05e0dd0c16a986640aae7ec575148a98bb10020bd7c6b5a23bde98b3a3a322` |
| 29 | `theorem` | [relevantOnly_has_no_implication](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/relevantonly-has-no-implication--f10898ec4f4306531c94a715.md) | 238 | `result-track:f10898ec4f4306531c94a7158a6c1c00ed7e8e01cb4190c0366218297b4765f1` |
| 30 | `theorem` | [requires_has_no_implication](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/requires-has-no-implication--ab21eb50e97688165740feee.md) | 244 | `result-track:ab21eb50e97688165740feee9d0049b3c8e6846c262729d397fdad133eaf3460` |
| 31 | `theorem` | [refutation_has_no_positive_implication](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/refutation-has-no-positive-implication--af9210ae25ec91fddf81d910.md) | 252 | `result-track:af9210ae25ec91fddf81d91091a76e4aa60e79845cdc69952e6a5f9a5d2a0244` |
| 32 | `def` | [fixedDataAllHorizonImpliesMaximal](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/fixeddataallhorizonimpliesmaximal--dfb55f29c8cd1b0523ea0f71.md) | 262 | `declaration-track:dfb55f29c8cd1b0523ea0f719eb9448191aeff0a36e1a1e7f7f3db7b513e5ff2` |
| 33 | `def` | [endpointWitnessRefutesTerminalRecovery](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointwitnessrefutesterminalrecovery--93b6b442e7088dcbca779a09.md) | 268 | `declaration-track:93b6b442e7088dcbca779a09dfaecac6bd70960910c29e7e744c4e7a1e459e17` |
| 34 | `def` | [higherOrderMobiusTerm](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/higherordermobiusterm--c85460026d812adaca2889f8.md) | 275 | `declaration-track:c85460026d812adaca2889f8f7292aa729cce4a51ae54e33dd2a1f03a6550ee6` |
| 35 | `def` | [HigherOrderChowlaBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/higherorderchowlabound--10b38a7ff5c41e0073ef62cb.md) | 281 | `declaration-track:10b38a7ff5c41e0073ef62cbecf7e2136756d1d38747060684a681e7138b860a` |
| 36 | `def` | [GrowingShiftTwoPointTerminalBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/growingshifttwopointterminalbound--bc5c32a8e63327cec6fef766.md) | 287 | `declaration-track:bc5c32a8e63327cec6fef7667713d39c2057e63d4322a77beabde6a27969d6c0` |
| 37 | `def` | [GrowingShiftTwoPointMaximalBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/growingshifttwopointmaximalbound--aea5b794c7fcfec6994d6a83.md) | 293 | `declaration-track:aea5b794c7fcfec6994d6a8352775f593d54e11720eda6defe0bcbc886031e2c` |
| 38 | `def` | [GrowingShiftUniformityBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/growingshiftuniformitybridge--e7b6dfd54ee1693ab532c7d6.md) | 299 | `declaration-track:e7b6dfd54ee1693ab532c7d6683184891fa4bb65c82cdc9b3dbdbf9dd4d8039f` |
| 39 | `def` | [SummedShiftMaximalEnergyBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/summedshiftmaximalenergybound--69f6d77db9f3ff43249dddcc.md) | 305 | `declaration-track:69f6d77db9f3ff43249dddccce4164cf2acfe4711e1f3bb77dee99ecc692c8d1` |
| 40 | `structure` | [ChowlaConnectionProfile](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/chowlaconnectionprofile--a1b83c0e207b3dfba18e04d0.md) | 313 | `declaration-track:a1b83c0e207b3dfba18e04d07eb46923ae424af7dbe511af672011d60bb4359e` |
| 41 | `def` | [ChowlaFixedToGrowingBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/chowlafixedtogrowingbridge--b0c8e253c37dcce2f3d14d57.md) | 320 | `declaration-track:b0c8e253c37dcce2f3d14d57c345701b13798b1ac42cb2cb5423ac1ecf4f6f77` |
| 42 | `def` | [ChowlaGrowingToSummedBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/chowlagrowingtosummedbridge--cb1fe5bce9254a9a9b22409b.md) | 324 | `declaration-track:cb1fe5bce9254a9a9b22409b10f8b8d5ec435fa159199d00ce64bc31d1f8e77e` |
| 43 | `def` | [ChowlaHigherOrderBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/chowlahigherorderbridge--75e5a09159edff29bb38b6e8.md) | 329 | `declaration-track:75e5a09159edff29bb38b6e8a06c69f24266e4c311ede4ab3dffa73b359025f0` |
| 44 | `def` | [chowlaFixedToGrowingRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/chowlafixedtogrowingrequiresbridge--9931b4a5b614ccd8661865fd.md) | 332 | `declaration-track:9931b4a5b614ccd8661865fd137bf290946b85f6c0f5e1927088015158162735` |
| 45 | `def` | [chowlaGrowingToSummedRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/chowlagrowingtosummedrequiresbridge--469d6a061f3cdbde743d98cb.md) | 336 | `declaration-track:469d6a061f3cdbde743d98cb51488d2707fb9123571f817a8a0aa092619bb079` |
| 46 | `def` | [chowlaBinaryToHigherOrderRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/chowlabinarytohigherorderrequiresbridge--4551761725409d10861635b4.md) | 340 | `declaration-track:4551761725409d10861635b4f25f87d639979d09084917ee9841cf8b2dffe3d0` |
| 47 | `def` | [endpointWitnessRelevantToHigherOrderChowla](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointwitnessrelevanttohigherorderchowla--4481e0eeeb9f44f3f18af3fe.md) | 346 | `declaration-track:4481e0eeeb9f44f3f18af3fee68ce304ba2988439da28afaa6e19f35991c8208` |
| 48 | `structure` | [CorrectedElliottData](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/correctedelliottdata--23d6fb04237f630c90d742d4.md) | 353 | `declaration-track:23d6fb04237f630c90d742d4853d8bf74db1b2dc175cb1ea1ad4fc73580deefc` |
| 49 | `def` | [correctedElliottSequence](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/correctedelliottsequence--6e6011550823c0b7ed571fc2.md) | 359 | `declaration-track:6e6011550823c0b7ed571fc2a5557a6ab199e0753fca54054b5b298832986144` |
| 50 | `def` | [CorrectedElliottFixedDataBound](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/correctedelliottfixeddatabound--74cf72547eb0ad27e1ceac35.md) | 363 | `declaration-track:74cf72547eb0ad27e1ceac35bcaf3ca5509ce84285f73ddd7d6f42f075d5e965` |
| 51 | `structure` | [ElliottConnectionProfile](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/elliottconnectionprofile--f75a3b5d7bf80ccf18694169.md) | 369 | `declaration-track:f75a3b5d7bf80ccf18694169b54328910b89dfca25984a46f4173f1d9fdad625` |
| 52 | `def` | [ElliottFamilyUniformityBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/elliottfamilyuniformitybridge--326066fa19956eee382c32f0.md) | 376 | `declaration-track:326066fa19956eee382c32f0c165880d5247177c69b10b13b894885d38de2235` |
| 53 | `def` | [ElliottFamilyMaximalBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/elliottfamilymaximalbridge--25cddf3eabf25b6baf9560bf.md) | 380 | `declaration-track:25cddf3eabf25b6baf9560bf891a336cf4fd4b4f5981a838cbaf6e3a32f67db4` |
| 54 | `def` | [ElliottHigherOrderBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/elliotthigherorderbridge--27fb5bc4852ecbbc59e3ade7.md) | 384 | `declaration-track:27fb5bc4852ecbbc59e3ade74f3f7af54b10a09b38eabd359f28cebc2069b107` |
| 55 | `def` | [elliottFixedToUniformRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/elliottfixedtouniformrequiresbridge--8dec23588f6d05ced2379e8d.md) | 387 | `declaration-track:8dec23588f6d05ced2379e8d99da329e0f6f2539485ec8df08d9f7108d347ffa` |
| 56 | `def` | [elliottUniformToMaximalRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/elliottuniformtomaximalrequiresbridge--de5b12b38eeb4417fc9fc65f.md) | 391 | `declaration-track:de5b12b38eeb4417fc9fc65f2a8c21fd9f682da56df346c327f5d933c2fc88e6` |
| 57 | `def` | [elliottBinaryToHigherOrderRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/elliottbinarytohigherorderrequiresbridge--fa45b54ceab0eccb77b3678d.md) | 395 | `declaration-track:fa45b54ceab0eccb77b3678deffc686f159f4be61d90ad29e754342d2f03c2b8` |
| 58 | `def` | [endpointWitnessRelevantToElliott](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointwitnessrelevanttoelliott--8f1405271d33a25b3c0882c3.md) | 399 | `declaration-track:8f1405271d33a25b3c0882c3c012b73429d33256227f4bb185cfc9a6d4d1e3f5` |
| 59 | `structure` | [ShortIntervalConnectionProfile](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/shortintervalconnectionprofile--abb833b3db1f49ed9602d9aa.md) | 405 | `declaration-track:abb833b3db1f49ed9602d9aa8876381777429b27da339266dc75eb04d41a5cc2` |
| 60 | `def` | [AverageToEveryIntervalBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/averagetoeveryintervalbridge--69a0d9ef05cca1397ce7f087.md) | 413 | `declaration-track:69a0d9ef05cca1397ce7f08772c8c129c632ab81f576f703c3e295dc142c5a6c` |
| 61 | `def` | [AlmostAllToEveryIntervalBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/almostalltoeveryintervalbridge--096c45fe14dda066813c493d.md) | 418 | `declaration-track:096c45fe14dda066813c493d25be5843fc2b864fc6fe1a627f15d57c98805d35` |
| 62 | `def` | [GlobalToTranslatedIntervalBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/globaltotranslatedintervalbridge--6002e10f1b5effaf5415b8af.md) | 424 | `declaration-track:6002e10f1b5effaf5415b8af8a5a0e4f61c72dc3976c19fdae2fddd74f373c3e` |
| 63 | `def` | [averageToEveryIntervalRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/averagetoeveryintervalrequiresbridge--1f1aabc842ed702d41e89e06.md) | 428 | `declaration-track:1f1aabc842ed702d41e89e06b32442662af6556725e157d521d3f52601afa32f` |
| 64 | `def` | [almostAllToEveryIntervalRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/almostalltoeveryintervalrequiresbridge--484d23a8bd2fb9166938826a.md) | 433 | `declaration-track:484d23a8bd2fb9166938826ac76be9fddec92fd5552fd652f23127d1de197d06` |
| 65 | `def` | [globalToTranslatedIntervalRequiresBridge](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/globaltotranslatedintervalrequiresbridge--4ac146265a928b542fdbe43a.md) | 438 | `declaration-track:4ac146265a928b542fdbe43ac77984ba60250f80d292d9c557dfbedf2055f2a9` |
| 66 | `def` | [endpointWitnessRelevantToShortIntervals](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointwitnessrelevanttoshortintervals--c6035f4d6060a2b9325d5b7b.md) | 443 | `declaration-track:c6035f4d6060a2b9325d5b7b333864995618930dce971ffb46aba41c4bb8324f` |
| 67 | `def` | [endpointIntervalWitnessRefutesTerminalRecovery](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointintervalwitnessrefutesterminalrecovery--2366f26cf1f37b8fe57b2bf4.md) | 451 | `declaration-track:2366f26cf1f37b8fe57b2bf4a3cb7de7923f3fe06456adb873d4da6d43937e53` |
| 68 | `structure` | [DynamicalDisjointnessConsumer](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/dynamicaldisjointnessconsumer--e9146e33713853d38999448f.md) | 459 | `declaration-track:e9146e33713853d38999448f04bd3123fc105d01fc1b35cb832f87189f3500cb` |
| 69 | `structure` | [SarnakConnectionProfile](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/sarnakconnectionprofile--26666b56fa2b4ec1efee2b70.md) | 468 | `declaration-track:26666b56fa2b4ec1efee2b70ff93ad87c504d19707bef12ecd05a59e8be3d3c7` |
| 70 | `def` | [ArithmeticToDynamicalAdapter](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/arithmetictodynamicaladapter--813dcc96b7a25981d7c49d3f.md) | 473 | `declaration-track:813dcc96b7a25981d7c49d3f2dcbf340bf160612440b1a68f2a44be37bd50860` |
| 71 | `def` | [sarnakRequiresArithmeticToDynamicalAdapter](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/sarnakrequiresarithmetictodynamicaladapter--9f8f16b98dfe8737ab4a4dc0.md) | 479 | `declaration-track:9f8f16b98dfe8737ab4a4dc07d12c0843fc1e1c7d5eed21b68431ff38fdce000` |
| 72 | `theorem` | [sarnakConclusion_of_arithmetic_and_adapter](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/sarnakconclusion-of-arithmetic-and-adapter--cf58a1221c9320fe329dec2e.md) | 489 | `result-track:cf58a1221c9320fe329dec2eb88ee436b6cf774b7e3c9546a07026be10318a2f` |
| 73 | `def` | [endpointWitnessRelevantToSarnak](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointwitnessrelevanttosarnak--139abc19d65ec3920ad977f5.md) | 500 | `declaration-track:139abc19d65ec3920ad977f57ce91f665934f95c49f3abfc8f9a4ec0c27f5683` |
| 74 | `structure` | [EndpointConnectionAtlas](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/declarations/endpointconnectionatlas--f19c255b34eba5d9137b6c72.md) | 506 | `declaration-track:f19c255b34eba5d9137b6c7288a6a655d0d9c82443e693a740c3ce989f3a074b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
