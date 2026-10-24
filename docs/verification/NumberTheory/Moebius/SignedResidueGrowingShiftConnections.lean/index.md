# Verification target: GRWTSK.NumberTheory.Moebius.SignedResidueGrowingShiftConnections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b77d1c1e94b385aed1d9b231c92890d1ccf6ce8",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b77d1c1e94b385aed1d9b231c92890d1ccf6ce8`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedResidueGrowingShiftChowla`](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToGrowingShiftResidueBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/togrowingshiftresiduebudgetadapter--cd43ffa4aa13613721ffea7c.md) | 35 | `declaration-track:cd43ffa4aa13613721ffea7c3b85e5357c1e994d31801285ed2e7e540773229b` |
| 2 | `theorem` | [signedResidueConvolutionBudget_of_adapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/signedresidueconvolutionbudget-of-adapter--8da06d363c522adbf860a4a2.md) | 42 | `result-track:8da06d363c522adbf860a4a2e8735137e61692021764ab8e90df016c93d8113e` |
| 3 | `theorem` | [naturalScaleCongruenceL1_of_growingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/naturalscalecongruencel1-of-growingshiftadapter--035d7b28e7c57aa801ad5cb3.md) | 52 | `result-track:035d7b28e7c57aa801ad5cb31ca1f7aa6eab1bc1723bda7c357468daaeb89641` |
| 4 | `theorem` | [weightedSignedCrossCollision_of_growingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/weightedsignedcrosscollision-of-growingshiftadapter--565bde8d9d54944bb2e5cd4a.md) | 62 | `result-track:565bde8d9d54944bb2e5cd4ae60ce05bb0f270fce858e3d1e18ceaf1f3511cae` |
| 5 | `structure` | [FixedFormBinaryChowlaData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/fixedformbinarychowladata--f2700e6f61aca51db3e4ec3a.md) | 79 | `declaration-track:f2700e6f61aca51db3e4ec3a14245f80d9d8b307149977c32be031e56daa3901` |
| 6 | `def` | [FixedFormBinaryChowlaSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/fixedformbinarychowlasource--cf54653db4591372e910351a.md) | 90 | `declaration-track:cf54653db4591372e910351a30dd3ac1ceff3470ba25a283bf9817f46c0a6f01` |
| 7 | `abbrev` | [FixedFormBinaryChowlaAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/fixedformbinarychowlaadapter--b09aafc9240ddb1bf20e808e.md) | 102 | `declaration-track:b09aafc9240ddb1bf20e808eb4f54bc196390ec582e9b17d81ce9fe94964ad91` |
| 8 | `structure` | [CorrectedElliottGrowingFamilyData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/correctedelliottgrowingfamilydata--6f022ab6dc27daea2978558f.md) | 109 | `declaration-track:6f022ab6dc27daea2978558f647226caf6cd62d4e3164f821ac36ecbab7d06e5` |
| 9 | `def` | [CorrectedElliottGrowingFamilySource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/correctedelliottgrowingfamilysource--c1d043fe33570121d7112f77.md) | 122 | `declaration-track:c1d043fe33570121d7112f772b71892bd7fd6ac7a7049b4185db768f463a6dc9` |
| 10 | `abbrev` | [CorrectedElliottGrowingFamilyAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/correctedelliottgrowingfamilyadapter--fd5cb41e06a99ad5fc781107.md) | 136 | `declaration-track:fd5cb41e06a99ad5fc78110713723defc71b427064cb29198846d59441decdef` |
| 11 | `structure` | [GrowingShiftBinaryChowlaData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/growingshiftbinarychowladata--adc45f6c7b27653867fa9524.md) | 143 | `declaration-track:adc45f6c7b27653867fa9524c53fbe81e321fb2830959f69206bb2676eae6d1a` |
| 12 | `def` | [GrowingShiftBinaryChowlaSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/growingshiftbinarychowlasource--4e89971d6bfc264a86462480.md) | 155 | `declaration-track:4e89971d6bfc264a864624803742cba411f5cccba2180a20b82d6307136e486a` |
| 13 | `abbrev` | [GrowingShiftBinaryChowlaAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/growingshiftbinarychowlaadapter--78395b4aa5d15ab09cff3522.md) | 168 | `declaration-track:78395b4aa5d15ab09cff3522e7bff18982b09663e64f6a4edd8accae3d8e4d91` |
| 14 | `structure` | [LogAveragedBinaryChowlaData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/logaveragedbinarychowladata--d6e66808f8fd1e72ee01cbff.md) | 175 | `declaration-track:d6e66808f8fd1e72ee01cbffac139811077495a316b670a61fa34f51c74876d6` |
| 15 | `def` | [LogAveragedBinaryChowlaSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/logaveragedbinarychowlasource--54b136a52872e0d5d0c77f13.md) | 185 | `declaration-track:54b136a52872e0d5d0c77f132344468471003f5dba029f6534823dd05d534b58` |
| 16 | `abbrev` | [LogAveragedBinaryChowlaAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/logaveragedbinarychowlaadapter--f6ed890498461662ee01824c.md) | 196 | `declaration-track:f6ed890498461662ee01824c3606d8fc6cc3d1fabb29bd3d4b1ff3febb735b34` |
| 17 | `structure` | [LocalFourierGowersGrowingShiftData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/localfouriergowersgrowingshiftdata--bf9a68b88f4d30c4c1dba2ce.md) | 203 | `declaration-track:bf9a68b88f4d30c4c1dba2ce9556302db7a0007b4267f01a774be75a87621cc3` |
| 18 | `def` | [LocalFourierGowersGrowingShiftSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/localfouriergowersgrowingshiftsource--c38b5c0ede1d160d5ee93bfe.md) | 215 | `declaration-track:c38b5c0ede1d160d5ee93bfed6a9cfc700ce4d3ac1aa1731725c4749418abe38` |
| 19 | `abbrev` | [LocalFourierGowersGrowingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/localfouriergowersgrowingshiftadapter--f7ec93809a3b3bdc0637cc40.md) | 228 | `declaration-track:f7ec93809a3b3bdc0637cc40704a7461b0a855c9d7905e18b7f5c7d98f151aa8` |
| 20 | `structure` | [NilsequenceGrowingShiftData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/nilsequencegrowingshiftdata--0b3b4fcd7860362036a5b0be.md) | 235 | `declaration-track:0b3b4fcd7860362036a5b0be2d6f0f2a9b7f5246744851bed8f7c309e87fa21f` |
| 21 | `def` | [NilsequenceGrowingShiftSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/nilsequencegrowingshiftsource--07d9e64dbe95d1d45c55c57a.md) | 245 | `declaration-track:07d9e64dbe95d1d45c55c57a9022368f09d3b3fb7d7ed04d2e79084f29c8b692` |
| 22 | `abbrev` | [NilsequenceGrowingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/nilsequencegrowingshiftadapter--2d75f5c5ffdec4cd30f70d3a.md) | 256 | `declaration-track:2d75f5c5ffdec4cd30f70d3ac52d56f927263faaff859f1648e8edc02e25e727` |
| 23 | `structure` | [SignedBilinearDispersionData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/signedbilineardispersiondata--e41027a02105a1645154ad50.md) | 265 | `declaration-track:e41027a02105a1645154ad502ba4dbed24895b23276c977d68f6a8e6acd3ef62` |
| 24 | `def` | [SignedBilinearDispersionSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/signedbilineardispersionsource--60ee67054c67a356a774ba8a.md) | 276 | `declaration-track:60ee67054c67a356a774ba8a0a2ad0eebc0b1903a65dd4aa2e2ca1c9abef7b16` |
| 25 | `abbrev` | [SignedBilinearDispersionAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/signedbilineardispersionadapter--c800aeac52b8c5513409d921.md) | 288 | `declaration-track:c800aeac52b8c5513409d921168a646b4c3b0803dc483a90c04084b24e90fac3` |
| 26 | `structure` | [SquareModulusLargeSieveSignedData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/squaremoduluslargesievesigneddata--c962e00dafa31d9abffbfdfc.md) | 295 | `declaration-track:c962e00dafa31d9abffbfdfca9b678b0ce3479a60b93592ec05ccd0331b1602c` |
| 27 | `def` | [SquareModulusLargeSieveSignedSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/squaremoduluslargesievesignedsource--93e5b06e34f9785d3edf7269.md) | 306 | `declaration-track:93e5b06e34f9785d3edf72697656cf80c2411e661f2c14dd82bf935853ad5190` |
| 28 | `abbrev` | [SquareModulusLargeSieveSignedAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/squaremoduluslargesievesignedadapter--c0aa2676ae2c8734eac776a1.md) | 318 | `declaration-track:c0aa2676ae2c8734eac776a1dedf25b06684d21454612552a92b57274e606d71` |
| 29 | `structure` | [SignedBDHOffDiagonalData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/signedbdhoffdiagonaldata--c4b7a0160c2854ee7be24b6f.md) | 325 | `declaration-track:c4b7a0160c2854ee7be24b6f247ff4de66f32cdeff1c1606f4595437e54bd547` |
| 30 | `def` | [SignedBDHOffDiagonalSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/signedbdhoffdiagonalsource--ad4afddc7e461cc26763f9f5.md) | 335 | `declaration-track:ad4afddc7e461cc26763f9f516e4637b6ec14dbdcc40ad5863c789210f401b4d` |
| 31 | `abbrev` | [SignedBDHOffDiagonalAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/signedbdhoffdiagonaladapter--6ff49c12f0ecc8f6a7af614c.md) | 346 | `declaration-track:6ff49c12f0ecc8f6a7af614c245ef0ccbc28a272cc522be2cb2ed7a66f45cc26` |
| 32 | `structure` | [BombieriVinogradovElliottHalberstamData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/bombierivinogradovelliotthalberstamdata--5b277b42bcd9593be1e6af90.md) | 353 | `declaration-track:5b277b42bcd9593be1e6af902bcc23059c24485521d78081d97bdbd603aeb8e2` |
| 33 | `def` | [BombieriVinogradovElliottHalberstamSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/bombierivinogradovelliotthalberstamsource--9e92f6de35b64ce4a41b41ee.md) | 364 | `declaration-track:9e92f6de35b64ce4a41b41eebef96b51ad63a17af5024fead0dc995d4971a9db` |
| 34 | `abbrev` | [BombieriVinogradovElliottHalberstamAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/bombierivinogradovelliotthalberstamadapter--077f561943cb87f2c79fb96c.md) | 376 | `declaration-track:077f561943cb87f2c79fb96c819eb4c00340235e3ea55a62b2335abe1b2fc077` |
| 35 | `structure` | [LFunctionGrowingShiftTransportData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/lfunctiongrowingshifttransportdata--b7a70ca41ad816f844c7bf9e.md) | 383 | `declaration-track:b7a70ca41ad816f844c7bf9e0d56a4b711c1229efd432d3dfd7e6ec97acae42b` |
| 36 | `def` | [LFunctionGrowingShiftTransportSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/lfunctiongrowingshifttransportsource--1561a6565caea88e8917e2cf.md) | 394 | `declaration-track:1561a6565caea88e8917e2cf32950cafdc5f370ac70c9be7dd2139838a9ec2e3` |
| 37 | `abbrev` | [LFunctionGrowingShiftTransportAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/lfunctiongrowingshifttransportadapter--e2fe398ad64865ee9341304b.md) | 406 | `declaration-track:e2fe398ad64865ee9341304b34891a8d695dbd40d1eb7e4e85716761a77dc1ff` |
| 38 | `structure` | [FunctionFieldGrowingShiftData](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/functionfieldgrowingshiftdata--56ed2d6de357df8edd961de4.md) | 413 | `declaration-track:56ed2d6de357df8edd961de4a4e2b54c19181f3657c3e3ec20da943ca3dfc09b` |
| 39 | `def` | [FunctionFieldGrowingShiftSource](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/functionfieldgrowingshiftsource--7274d0ee0dbcf165f510fdd3.md) | 423 | `declaration-track:7274d0ee0dbcf165f510fdd39736396b93fb3d8573bac77e4961a40023a0c95f` |
| 40 | `abbrev` | [FunctionFieldGrowingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/functionfieldgrowingshiftadapter--f3d3b5af5c154fcc3d216c50.md) | 434 | `declaration-track:f3d3b5af5c154fcc3d216c50b678f2b06eaa62c4396c4907ca167574ee8adb8c` |
| 41 | `structure` | [ExactResidueFourierArchitecture](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/exactresiduefourierarchitecture--e5ee8ce877fd1dd5d4e8928f.md) | 444 | `declaration-track:e5ee8ce877fd1dd5d4e8928f7a5a7e1615a0ee2aa505685a221a703a4222e9b3` |
| 42 | `structure` | [ResidueFourierArchitectureToGrowingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/residuefourierarchitecturetogrowingshiftadapter--76744a59c8f3c2cc2cb7dedc.md) | 451 | `declaration-track:76744a59c8f3c2cc2cb7dedca03acf6f2ec5cd74975e52fbd6df8bfb2e69e432` |
| 43 | `structure` | [FixedToGrowingFamilyAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/fixedtogrowingfamilyadapter--275b6299e16f98f3c1af5407.md) | 468 | `declaration-track:275b6299e16f98f3c1af54072148c5f028da0e8890e6bfaf3f60113964f22175` |
| 44 | `structure` | [LogarithmicToOrdinaryAverageAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/logarithmictoordinaryaverageadapter--5f405786b51d49f46ce6434a.md) | 474 | `declaration-track:5f405786b51d49f46ce6434a09f4818d0ebb358daf4e1aaeb68c39fe96879bba` |
| 45 | `structure` | [PositiveNormToSignedGrowingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/positivenormtosignedgrowingshiftadapter--e65d0d88ac4ffbaa7fdfc23e.md) | 480 | `declaration-track:e65d0d88ac4ffbaa7fdfc23e0ada27dbc8a9825179f5ebc9b1956cc21cdb7c3d` |
| 46 | `structure` | [AveragedToRequiredEndpointAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/averagedtorequiredendpointadapter--d19abfa939afda9b97a8d8d3.md) | 486 | `declaration-track:d19abfa939afda9b97a8d8d3c7b08f61f22cc8927d6d6467a2f881536326f528` |
| 47 | `structure` | [FunctionFieldToIntegerAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/functionfieldtointegeradapter--a6a1adc2b7158252c9cb3fea.md) | 492 | `declaration-track:a6a1adc2b7158252c9cb3feab9624411476ac8ce917961a7f5309c987ca499a3` |
| 48 | `structure` | [LFunctionToSignedBilinearAdapter](../../../../mathematics/NumberTheory/Moebius/SignedResidueGrowingShiftConnections.lean/declarations/lfunctiontosignedbilinearadapter--34c39e5df226cc7332dee022.md) | 498 | `declaration-track:34c39e5df226cc7332dee022ffce7bf0ee18e8c396fa32fa538246c5d2ca3e3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
