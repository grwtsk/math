# Verification target: GRWTSK.NumberTheory.Moebius.AdditiveTwistConnectionAtlas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5bee151ef041d240d01ce198fdf264ec02d8955",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5bee151ef041d240d01ce198fdf264ec02d8955`.

Source path: `GRWTSK/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AdditiveTwistParityFourierFactorization`](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToParityFourierQuadraticBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/toparityfourierquadraticbudgetadapter--290142bcf198cceaf809e4b2.md) | 51 | `declaration-track:290142bcf198cceaf809e4b22bde61b544b62da4dd4634eec831c60dacc595a8` |
| 2 | `theorem` | [naturalScaleL1_of_parityFourierAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/naturalscalel1-of-parityfourieradapter--eaab9ee328b4b5d2cc3f7af4.md) | 57 | `result-track:eaab9ee328b4b5d2cc3f7af43a721aa761d25532f1c93469d0847b1d09235421` |
| 3 | `theorem` | [weightedCongruenceL1_of_parityFourierAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/weightedcongruencel1-of-parityfourieradapter--e9b9cf8042f103201fc11d03.md) | 66 | `result-track:e9b9cf8042f103201fc11d036c96d945265e79152b5989e1fd43ebe5ecf303b8` |
| 4 | `theorem` | [signedCrossCollision_of_parityFourierAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/signedcrosscollision-of-parityfourieradapter--60860fd1aefbbd9d519aea7c.md) | 75 | `result-track:60860fd1aefbbd9d519aea7c774246e0aadc6bc9920b84d6059767c346290fd8` |
| 5 | `structure` | [OnePointMobiusFourierData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/onepointmobiusfourierdata--12c955991641dae724d344e6.md) | 87 | `declaration-track:12c955991641dae724d344e61ddaf95f566706f7bff8c5efda0655c125a9ca7c` |
| 6 | `def` | [OnePointMobiusFourierSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/onepointmobiusfouriersource--04eaa511f4ad48b6d63d9055.md) | 97 | `declaration-track:04eaa511f4ad48b6d63d905560438cf110a7486eda251bf000cde3fa651a7167` |
| 7 | `abbrev` | [OnePointMobiusFourierAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/onepointmobiusfourieradapter--6cd5242fc42d91f71fcb1c26.md) | 108 | `declaration-track:6cd5242fc42d91f71fcb1c26fddf5b6e6dc5d3f7d2c36e8da3f970c2d3fd7c89` |
| 8 | `structure` | [LocalFourierGowersData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/localfouriergowersdata--28addf723a6f69dcf7b5fc79.md) | 116 | `declaration-track:28addf723a6f69dcf7b5fc795b9180c7b01854301923513f9cf570014e2901bd` |
| 9 | `def` | [LocalFourierGowersSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/localfouriergowerssource--0bb0af9d0a2210bc5756260f.md) | 126 | `declaration-track:0bb0af9d0a2210bc5756260f812dad9f422436709766edbbb6253e77e183123e` |
| 10 | `abbrev` | [LocalFourierGowersAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/localfouriergowersadapter--6100e0c092cb76a385553c3c.md) | 137 | `declaration-track:6100e0c092cb76a385553c3cc75dbdb65d5c26e590cc86913325e5ca04230fb5` |
| 11 | `structure` | [MobiusNilsequenceData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/mobiusnilsequencedata--198ad25c7e7f108116bfb7a0.md) | 146 | `declaration-track:198ad25c7e7f108116bfb7a0ed481bd805d80f9d4f5c247e5d0363ca19bf46f6` |
| 12 | `def` | [MobiusNilsequenceSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/mobiusnilsequencesource--029e45cd8ef84cab760bd1e3.md) | 155 | `declaration-track:029e45cd8ef84cab760bd1e38d52283dc788d7f5924c6c349f73d3db6908d35c` |
| 13 | `abbrev` | [MobiusNilsequenceAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/mobiusnilsequenceadapter--086a18279d622689ac686989.md) | 165 | `declaration-track:086a18279d622689ac686989f57e6b525735427cdd5ca7f8483054f5a5839dbe` |
| 14 | `structure` | [FixedFormChowlaParityFourierData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/fixedformchowlaparityfourierdata--e65464030a0f527ad0f84d59.md) | 174 | `declaration-track:e65464030a0f527ad0f84d59586aaa9c3d81b676f882ea00f1b93b6044ef76fa` |
| 15 | `def` | [FixedFormChowlaParityFourierSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/fixedformchowlaparityfouriersource--14a179206a3e2fc0d58a2513.md) | 182 | `declaration-track:14a179206a3e2fc0d58a25130677e33699c45de0dfd2871a51c9fc519076eec2` |
| 16 | `abbrev` | [FixedFormChowlaParityFourierAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/fixedformchowlaparityfourieradapter--731aaa59879f3aec34e77a90.md) | 191 | `declaration-track:731aaa59879f3aec34e77a90a5c0e6ed710a36fb2818dcb65a175e1c92708f1b` |
| 17 | `structure` | [CorrectedElliottParityFourierData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/correctedelliottparityfourierdata--d8f5e5b9a0c278ccc262b557.md) | 198 | `declaration-track:d8f5e5b9a0c278ccc262b557c074a57548fbaa739cad7bda1f06862effeb95b0` |
| 18 | `def` | [CorrectedElliottParityFourierSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/correctedelliottparityfouriersource--8773dd0bd8d67baa4546f61f.md) | 207 | `declaration-track:8773dd0bd8d67baa4546f61f70244d303d0c39479c3b941e8f206fd06384bc0b` |
| 19 | `abbrev` | [CorrectedElliottParityFourierAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/correctedelliottparityfourieradapter--2e8250d97efdd6ec6f561724.md) | 217 | `declaration-track:2e8250d97efdd6ec6f5617240363d645fa465d5de621de9a425ad0ed5aef414c` |
| 20 | `structure` | [LogAveragedBinaryChowlaData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/logaveragedbinarychowladata--c88387dfe1d656b5ff7ed179.md) | 226 | `declaration-track:c88387dfe1d656b5ff7ed179b76457f13a9dbafd2515456d5a898da90ca33f56` |
| 21 | `def` | [LogAveragedBinaryChowlaSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/logaveragedbinarychowlasource--df572868693e69665de96c24.md) | 235 | `declaration-track:df572868693e69665de96c247f63751adcc8d5223ef6979cc8181ee6433076a2` |
| 22 | `abbrev` | [LogAveragedBinaryChowlaAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/logaveragedbinarychowlaadapter--6b2e0a4b30443e3b30c049a5.md) | 245 | `declaration-track:6b2e0a4b30443e3b30c049a57e8b77e6291decc8c25dcb11e5dcacc6dc961300` |
| 23 | `structure` | [BombieriVinogradovMultiplicativeData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/bombierivinogradovmultiplicativedata--043b8c81fa43266635fd9f34.md) | 253 | `declaration-track:043b8c81fa43266635fd9f34437671488be38b8a610b92afd830c34b160b3fb2` |
| 24 | `def` | [BombieriVinogradovMultiplicativeSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/bombierivinogradovmultiplicativesource--5e5c3afc6f556538a3bb2ff7.md) | 263 | `declaration-track:5e5c3afc6f556538a3bb2ff7f1ffd17cc2fd0a233f7fe6c491bd85d1a37ffbc2` |
| 25 | `abbrev` | [BombieriVinogradovMultiplicativeAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/bombierivinogradovmultiplicativeadapter--d7a472ba3fb2b8c893ba1329.md) | 274 | `declaration-track:d7a472ba3fb2b8c893ba13296f3a8f49b879158bb7ac04998e97cc1cde23570c` |
| 26 | `structure` | [FunctionFieldChowlaAPData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/functionfieldchowlaapdata--1426ae6f25ca4c86b5419b47.md) | 283 | `declaration-track:1426ae6f25ca4c86b5419b47fbaa866548778337473f033c76e644a014201359` |
| 27 | `def` | [FunctionFieldChowlaAPSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/functionfieldchowlaapsource--940cb6fc580428fbe7d0aeab.md) | 292 | `declaration-track:940cb6fc580428fbe7d0aeab84de8b8f0e3ba8d3ed8dc9cd997a508f16a91e06` |
| 28 | `abbrev` | [FunctionFieldChowlaAPAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/functionfieldchowlaapadapter--3b6282632b4cb5b9c98d803b.md) | 302 | `declaration-track:3b6282632b4cb5b9c98d803b5fa818c26038a4bb215ec86c5b141cf63ee91e9c` |
| 29 | `structure` | [LFunctionRestrictionParityFourierData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/lfunctionrestrictionparityfourierdata--eb6d8d1d01ddfd91dcc1f4e5.md) | 311 | `declaration-track:eb6d8d1d01ddfd91dcc1f4e59c2658a524cb2a16c9b5cb3dda37bb49ddc3a07c` |
| 30 | `def` | [LFunctionRestrictionParityFourierSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/lfunctionrestrictionparityfouriersource--1cd44a4eefaf2fc40ca26c5e.md) | 321 | `declaration-track:1cd44a4eefaf2fc40ca26c5ec8964e53804cf3e1609c954fb8b5df54e0b5c65a` |
| 31 | `abbrev` | [LFunctionRestrictionParityFourierAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/lfunctionrestrictionparityfourieradapter--66fce719b0951da78113d099.md) | 332 | `declaration-track:66fce719b0951da78113d0990cacc37b838998492f3a7a94f51060aadbb34c41` |
| 32 | `structure` | [SquarefreeDiagonalFourierData](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/squarefreediagonalfourierdata--522f1d4040c8ac4b4f32260b.md) | 341 | `declaration-track:522f1d4040c8ac4b4f32260b5eaea13eb40142f20b57dd25b7f11d2cd20be4b6` |
| 33 | `def` | [SquarefreeDiagonalFourierSource](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/squarefreediagonalfouriersource--3842552442877c714c6cecdd.md) | 348 | `declaration-track:3842552442877c714c6cecddd351fac3123dfaae1c5fb8d55dfd21cb8694089d` |
| 34 | `structure` | [OnePointAndDiagonalToParityBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/onepointanddiagonaltoparitybudgetadapter--86c72cbb6e2b8033325e6762.md) | 358 | `declaration-track:86c72cbb6e2b8033325e6762d8bc4f18402e8352ab61c4181a5f1b2689d1d244` |
| 35 | `structure` | [ExactResidueFourierArchitecture](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/exactresiduefourierarchitecture--912f55a003511b8744aef51b.md) | 368 | `declaration-track:912f55a003511b8744aef51b6ab8f5cd6946f7c5bb20699ad838c286c097a3b5` |
| 36 | `structure` | [ResidueFourierArchitectureAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/residuefourierarchitectureadapter--e74accd84c0dd807d132027c.md) | 376 | `declaration-track:e74accd84c0dd807d132027c3102330abff52105a2899ae5b92a477836751994` |
| 37 | `structure` | [FixedVsGrowingFourierBoundary](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/fixedvsgrowingfourierboundary--471193bf16a828ed85c56615.md) | 391 | `declaration-track:471193bf16a828ed85c5661594b4dd63170d2c3c9a6b8e73653ce4494c2a1394` |
| 38 | `structure` | [AverageToEveryEndpointAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/averagetoeveryendpointadapter--6e360b11f52f779dd14cf86e.md) | 396 | `declaration-track:6e360b11f52f779dd14cf86e1ddd4142eb427f514241590772b699ec10960993` |
| 39 | `structure` | [OnePointToQuadraticParityAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/onepointtoquadraticparityadapter--356556faa8e1b20d047cc889.md) | 402 | `declaration-track:356556faa8e1b20d047cc8895110cf692da47192077f51b629cd7fc6439b47cc` |
| 40 | `structure` | [FunctionFieldToIntegerAdapter](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistConnectionAtlas.lean/declarations/functionfieldtointegeradapter--52d969743f5ea3aa9b4a5c36.md) | 408 | `declaration-track:52d969743f5ea3aa9b4a5c369fbfcb47f41bbf291f183fddec3da728cb9a9c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
