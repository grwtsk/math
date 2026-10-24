# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SevenEighthsMechanismQuarticBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticScaleBijectiveWitness`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticScaleBijectiveWitness.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/OpenAISevenEighthsPort.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OneWayRawHalfPlaneTransport](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/onewayrawhalfplanetransport--8537721d4590780ff4436bff.md) | 51 | `declaration-track:8537721d4590780ff4436bff284ba1c7513d0d92bd9b737096ecee9fc6544f15` |
| 2 | `theorem` | [localTheorem](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/localtheorem--d8b49999fae048f41bbb282c.md) | 59 | `result-track:d8b49999fae048f41bbb282c1f98f4c1050c14c4f3cc8c8cefb127808bf9e246` |
| 3 | `def` | [toAcceptedPort](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/toacceptedport--cc6023478319cc67225f6d97.md) | 66 | `declaration-track:cc6023478319cc67225f6d97406edadba98a52f3bec4d0f1523ce6708cb1d593` |
| 4 | `theorem` | [openAISevenEighthsClaim_toLocal](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsclaim-tolocal--51ea2a6030b748c35f0cdb0e.md) | 80 | `result-track:51ea2a6030b748c35f0cdb0e6e6ce3bdf4afcdb740254b87478615b07af9ead9` |
| 5 | `def` | [openAISevenEighthsOneWayTransport](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsonewaytransport--c1e6183939319f67d32de3c4.md) | 88 | `declaration-track:c1e6183939319f67d32de3c45dfe8ac512ce754e9372c8b163ebcf6196ea5b1c` |
| 6 | `structure` | [PortAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/portaccepted--de2daa71f759bec4c927d06d.md) | 97 | `declaration-track:de2daa71f759bec4c927d06da8c3adc770b577316b6e1e5f0bee984b5197d327` |
| 7 | `structure` | [SevenEighthsMechanismSourceRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/seveneighthsmechanismsourcerecord--9aec7f2c410f8fb5dacafef4.md) | 104 | `declaration-track:9aec7f2c410f8fb5dacafef41afcd06c65d5db652478aa98c4c8bb06d933afa1` |
| 8 | `def` | [openAISevenEighthsMechanismSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsmechanismsource--b350c880ef00f9e6aaa11649.md) | 127 | `declaration-track:b350c880ef00f9e6aaa1164981dca370f9efac6efbfbc2da13e185d0c61c45fd` |
| 9 | `inductive` | [MechanismFormalCheck](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/mechanismformalcheck--4c227515be574f2928dffcfe.md) | 161 | `declaration-track:4c227515be574f2928dffcfe99f9ce7dafe174af4c817d624e335edb8ad3db8e` |
| 10 | `structure` | [ExternalMechanismReview](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/externalmechanismreview--e743a1764bf96704e513d1f1.md) | 174 | `declaration-track:e743a1764bf96704e513d1f133963af98d45d448e6e033a63633ad7d47bbf610` |
| 11 | `def` | [Has](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/has--3c1a4c59764281b5c7ee11b9.md) | 181 | `declaration-track:3c1a4c59764281b5c7ee11b97a4731d33830b80fad90df64e355cff04d374b08` |
| 12 | `def` | [requiredChecks](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/requiredchecks--2177de3efd3c7821f7879a8e.md) | 185 | `declaration-track:2177de3efd3c7821f7879a8e866c1b8b3516ab851425de6fe66ef4512b9e5d36` |
| 13 | `def` | [AdmissionReady](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/admissionready--2c4e6bc607660585b021fb8e.md) | 196 | `declaration-track:2c4e6bc607660585b021fb8efe028d959dd960646f3e44ce2020407ca8e1a9a0` |
| 14 | `def` | [openAISevenEighthsMechanismReview](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsmechanismreview--8523cd8ade05dfc3761623ae.md) | 203 | `declaration-track:8523cd8ade05dfc3761623ae4a3a1fe5315c47d84df75e9f4e90159dee24aa59` |
| 15 | `theorem` | [openAISevenEighthsMechanismReview_not_admissionReady](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsmechanismreview-not-admissionready--a6480dfb9a739254ba738a36.md) | 207 | `result-track:a6480dfb9a739254ba738a365d89699e56647d060d44792adcfb435a220eeddb` |
| 16 | `structure` | [SevenEighthsMechanismChain](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/seveneighthsmechanismchain--4b51c7ac05e772c4f90d4cbd.md) | 220 | `declaration-track:4b51c7ac05e772c4f90d4cbd383b351d3e3725a856ca6c0239ed5546a13be0a2` |
| 17 | `theorem` | [SevenEighthsMechanismChain.toZeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/seveneighthsmechanismchain-tozeta--86d982e6d97427dad281de75.md) | 238 | `result-track:86d982e6d97427dad281de75d591809eac70c7fa0e7ee713e3701420f7fb90a4` |
| 18 | `structure` | [AcceptedSevenEighthsMechanismPort](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/acceptedseveneighthsmechanismport--430dbe675600ba6d622a081d.md) | 250 | `declaration-track:430dbe675600ba6d622a081db08ab9029e8beba6bf25951931c0e6ad3c54e019` |
| 19 | `structure` | [ContinuousLinearEquivalence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/continuouslinearequivalence--009feb5c387cef31932a4348.md) | 260 | `declaration-track:009feb5c387cef31932a43481d5f62d80ea194a1efe1658c53437a3994b6b7d1` |
| 20 | `structure` | [FaithfulContinuousLinearEmbedding](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/faithfulcontinuouslinearembedding--0b8e5a294b78f49e0bc52b8c.md) | 270 | `declaration-track:0b8e5a294b78f49e0bc52b8c3af7ea16f299405f3342e0d8cf255439248bbc4b` |
| 21 | `structure` | [ContinuousLinearQuotient](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/continuouslinearquotient--cbcfcd940ba0ae32e1ea5dcc.md) | 280 | `declaration-track:cbcfcd940ba0ae32e1ea5dcc1101bec7a21fb051c96564264e6d272c4c3b0c81` |
| 22 | `inductive` | [WitnessCarrierBridge](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/witnesscarrierbridge--c0cb06118caad85312192606.md) | 290 | `declaration-track:c0cb06118caad85312192606feb9c0c647d71a227572f661aef0ea7a45764bc9` |
| 23 | `def` | [WitnessCarrierBridge.toFun](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/witnesscarrierbridge-tofun--a639fdd87bd34ff2b152fb5b.md) | 300 | `declaration-track:a639fdd87bd34ff2b152fb5be8decfcce86972c56209b2fdc5fa83a080efdd5d` |
| 24 | `structure` | [CommutingInvolutionPair](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/commutinginvolutionpair--b4706280e02a0f324df5d9f2.md) | 311 | `declaration-track:b4706280e02a0f324df5d9f24ea547076e08a989181dad7466b167e0fe5dee1e` |
| 25 | `structure` | [RealBilinearMechanismBridge](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/realbilinearmechanismbridge--3de5092d1a2315e72f4c4be6.md) | 323 | `declaration-track:3de5092d1a2315e72f4c4be6acc2d7a3c132161227c154e967b7fb14f81c8cc0` |
| 26 | `structure` | [PNTIndependentDependencyAudit](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/pntindependentdependencyaudit--7dd760535abbc5f59b269fcd.md) | 360 | `declaration-track:7dd760535abbc5f59b269fcd6fb6ea9597422c36f36d92f248f3b8eb56dda689` |
| 27 | `inductive` | [PrimeQuarticResidualKey](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticresidualkey--0c7b89ae99795015230c0d9c.md) | 377 | `declaration-track:0c7b89ae99795015230c0d9ce4aca7d44a56247164e2e2df9a5d329cd1c521af` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/instance--63b79191fa7a20bb9e63cd46.md) | 392 | `declaration-track:63b79191fa7a20bb9e63cd46b5d4e43f058c5d0a6cf1cbd98186b037d1941350` |
| 29 | `structure` | [PrimeQuarticResidualLedger](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticresidualledger--3eace97ece15e3e6c8f9ab91.md) | 401 | `declaration-track:3eace97ece15e3e6c8f9ab91277f5ab40c96b03a420025fd26fdd1f573da0eb0` |
| 30 | `structure` | [QuarticExtractionAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/quarticextractionatzero--dd31ce40f0fad3532077619b.md) | 408 | `declaration-track:dd31ce40f0fad3532077619bece3e865eb0238ff6369a574e7f8f2f1b0a5841f` |
| 31 | `def` | [PrimeQuarticClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticclaim--80cd9c3b8ec551a1b553d44f.md) | 422 | `declaration-track:80cd9c3b8ec551a1b553d44f7fa90b305f2d081663df288ca55e178dd18e3394` |
| 32 | `structure` | [PrimeQuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticextraction--678604a0d9e45f48d5f6cda6.md) | 427 | `declaration-track:678604a0d9e45f48d5f6cda60e3165a3096d2c5de6d81f0deab924c4b7d6a0c5` |
| 33 | `theorem` | [riemannHypothesis_of_primeQuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/riemannhypothesis-of-primequarticextraction--7f30d70d77c41b2b689bea8f.md) | 434 | `result-track:7f30d70d77c41b2b689bea8f2298d210c2ec955239b2c1ba7440954fc58150aa` |
| 34 | `structure` | [DetectorToLocalWitnessBridge](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/detectortolocalwitnessbridge--18f55663c6f35f0bd43403b0.md) | 448 | `declaration-track:18f55663c6f35f0bd43403b0da4eb7d931bc445a1a455e676dea4a19a17d3464` |
| 35 | `def` | [DetectorToLocalWitnessBridge.localWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/detectortolocalwitnessbridge-localwitness--e605c2495981c3a4d24dc146.md) | 459 | `declaration-track:e605c2495981c3a4d24dc14600bbe9309bbfc6d88119f688a9df50b1bd1e237c` |
| 36 | `structure` | [LocalPrimeQuarticExtractor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/localprimequarticextractor--2920c97c88515ab09419bc8e.md) | 470 | `declaration-track:2920c97c88515ab09419bc8e8ad89bfd390c33c4f45c16b96cf3bb9f5798b416` |
| 37 | `structure` | [MechanismBridgeAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/mechanismbridgeaccepted--7f928ff579beeca2d9e31a52.md) | 475 | `declaration-track:7f928ff579beeca2d9e31a520ded185371cb3a0ab80d811b9e2b7722ffa39a0b` |
| 38 | `structure` | [QuadraticExtractionAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/quadraticextractionaccepted--efef5f51f37eb306637a8ac5.md) | 485 | `declaration-track:efef5f51f37eb306637a8ac548db255537a261435d6a77d05c8c4a92a151c99c` |
| 39 | `def` | [MechanismBridgeAccepted.toQuadraticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/mechanismbridgeaccepted-toquadraticextraction--91a104604403dec3cfcd81f4.md) | 490 | `declaration-track:91a104604403dec3cfcd81f4897b9d60ffb144a0fd49a5d2b041f5ff8609f070` |
| 40 | `structure` | [ReflectedRegionalZeroBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/reflectedregionalzerobound--fa2cf47c33b2852d08e39510.md) | 506 | `declaration-track:fa2cf47c33b2852d08e3951010b4a5ff65ee5d299162f66485a32d9edac77006` |
| 41 | `theorem` | [ReflectedRegionalZeroBound.centered_abs_le_threeEighths](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/reflectedregionalzerobound-centered-abs-le-threeeighths--a62a1b8053e9efec4d156d0b.md) | 513 | `result-track:a62a1b8053e9efec4d156d0b7fc792d84424cee1ca3ad977149b86c0e2a42531` |
| 42 | `def` | [RawDescentClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/rawdescentclaim--177de5cc84c52e8dd3927fc4.md) | 526 | `declaration-track:177de5cc84c52e8dd3927fc49a09aa7b4aa982673194cc49ada91352d896344f` |
| 43 | `structure` | [PrimeQuarticStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticstep--cb115fbe5a8b1571ac52954f.md) | 532 | `declaration-track:cb115fbe5a8b1571ac52954fdf74ab829e757878f61c8b3032a4d25d961a3124` |
| 44 | `theorem` | [PrimeQuarticStep.descend](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticstep-descend--b4ffbd5ec941e7916305013b.md) | 538 | `result-track:b4ffbd5ec941e7916305013b2ce9cb73ae99d940708f9600ca0fbf7a71a1064e` |
| 45 | `structure` | [CofinalPrimeQuarticDescent](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/cofinalprimequarticdescent--8abfcc63e307e38916b16600.md) | 545 | `declaration-track:8abfcc63e307e38916b16600f1295274367c2e5e9d0b8d94fa84e66dd41e5d57` |
| 46 | `theorem` | [CofinalPrimeQuarticDescent.zeroFreeAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/cofinalprimequarticdescent-zerofreeat--5f2906440ace215323d6802a.md) | 555 | `result-track:5f2906440ace215323d6802ac18ef26c3da5eba527991ee07500cb7aeb0b8cbc` |
| 47 | `theorem` | [CofinalPrimeQuarticDescent.toCriticalRaw](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/cofinalprimequarticdescent-tocriticalraw--fe6704d62db61f9502cff7f7.md) | 564 | `result-track:fe6704d62db61f9502cff7f72e7eb83900d9fbb32bb722cf23f0cd47fe3c062f` |
| 48 | `inductive` | [ThresholdClosureAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/thresholdclosureaccepted--f22af50bd31b2de86424a11e.md) | 573 | `declaration-track:f22af50bd31b2de86424a11e58738d61df4196b8a62c707651f772efcde4e183` |
| 49 | `theorem` | [ThresholdClosureAccepted.toRiemannHypothesis](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/declarations/thresholdclosureaccepted-toriemannhypothesis--4984d5443a2db001d3652c4c.md) | 578 | `result-track:4984d5443a2db001d3652c4c651f376992ec5cc46d02fca76dc6a9c4b3bda31c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
