# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBilinear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9c01da39b373e55afc2c551135031974fc4a6c8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9c01da39b373e55afc2c551135031974fc4a6c8`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedStaircase`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoreGrowingShiftSignedEndpointSourceCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcecell--bf4f6a3dc167788463ab6805.md) | 23 | `declaration-track:bf4f6a3dc167788463ab6805b1fcf4adf4d727fb0e28c6ebbc7002c40444e0eb` |
| 2 | `abbrev` | [CoreGrowingShiftSignedEndpointIndex](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointindex--2ee5eaadbf807955de8081d6.md) | 28 | `declaration-track:2ee5eaadbf807955de8081d6b1da08c812f141deea5b8aab2b24707d7713cd92` |
| 3 | `def` | [coreGrowingShiftSignedEndpointSourceCells](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcecells--7c9c928708639c4b41204f90.md) | 33 | `declaration-track:7c9c928708639c4b41204f90895b3821a454e2e3aa11f9e0702c648d96e0342e` |
| 4 | `def` | [coreGrowingShiftSignedEndpointPairSet](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointpairset--5dd90f97a2bcda480b306e4f.md) | 41 | `declaration-track:5dd90f97a2bcda480b306e4ffcb713de961c502426152022dacc13a126eb9173` |
| 5 | `def` | [coreGrowingShiftSignedEndpointIndices](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointindices--464d020c6b09892ea6727a01.md) | 49 | `declaration-track:464d020c6b09892ea6727a0110f8057c4d3e9dcfb9f2a8899ee57f13c2407702` |
| 6 | `theorem` | [mem_coreGrowingShiftSignedEndpointPairSet_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/mem-coregrowingshiftsignedendpointpairset-iff--3102f2421539b41815be3e8b.md) | 55 | `result-track:3102f2421539b41815be3e8b7d7322cc5a96c4fa5a72d74f234ee67bd143350f` |
| 7 | `theorem` | [coreGrowingShiftSignedEndpointPair_support](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointpair-support--307627d73ca141e937c4aa4f.md) | 66 | `result-track:307627d73ca141e937c4aa4fd83e4e9dd223feb3c118491230c58824108dec08` |
| 8 | `theorem` | [coreGrowingShiftSignedSourceRightEndpoint_lt_rightScale](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedsourcerightendpoint-lt-rightscale--bede9c14262e65665154e8cb.md) | 84 | `result-track:bede9c14262e65665154e8cb604a88e77e29299a9612cede23604a99787b7e5a` |
| 9 | `def` | [coreGrowingShiftSignedEndpointSourceToEndpoint](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcetoendpoint--1c17d35da082d4754760a662.md) | 100 | `declaration-track:1c17d35da082d4754760a6621582ef196088b270ea5ee95c6eece68b93e4680a` |
| 10 | `theorem` | [coreGrowingShiftSignedEndpointSourceToEndpoint_mem](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcetoendpoint-mem--5b17e4a35ecd2f77d6347fef.md) | 106 | `result-track:5b17e4a35ecd2f77d6347fef36844164a54090cd2bca8680f8a861631e905410` |
| 11 | `theorem` | [coreGrowingShiftSignedEndpointSourceToEndpoint_injective](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcetoendpoint-injective--725c42af2f8c0d2884b20ad6.md) | 140 | `result-track:725c42af2f8c0d2884b20ad6bb37f9ae045ac8da3934fadb99a26b72e55ff2b9` |
| 12 | `theorem` | [coreGrowingShiftSignedEndpointSourceToEndpoint_surjective](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcetoendpoint-surjective--0d94a4aab52e2a6b5feeac50.md) | 159 | `result-track:0d94a4aab52e2a6b5feeac50d3577d281c446e05fc1b42937657297d8802c80b` |
| 13 | `def` | [coreGrowingShiftSignedEndpointSourceValue](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcevalue--8da0f104d4b60e874351c1b6.md) | 194 | `declaration-track:8da0f104d4b60e874351c1b65b52c79976484a82f4232ad6ec11338691d8252c` |
| 14 | `def` | [coreGrowingShiftSignedEndpointSourceEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourceenergy--ff2193543abca1b9ef94242e.md) | 201 | `declaration-track:ff2193543abca1b9ef94242e0cc5aae8cdd767c52576d8b8d65be880eb0ec20d` |
| 15 | `def` | [coreGrowingShiftSignedEndpointKernel](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointkernel--39bb6e04023c063646e9582c.md) | 208 | `declaration-track:39bb6e04023c063646e9582c70575804b760af6fe10c92d6839637d0484971cb` |
| 16 | `def` | [coreGrowingShiftSignedEndpointCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointcell--26dedb2c79b09d95844aaca4.md) | 213 | `declaration-track:26dedb2c79b09d95844aaca4809c487fda774d7c7a6feb8b4324e78d498735a0` |
| 17 | `def` | [coreGrowingShiftSignedEndpointBilinearPacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointbilinearpacket--8a8e7feb66fd90be166ffee7.md) | 219 | `declaration-track:8a8e7feb66fd90be166ffee765a7eea111d755997e8ec79e02ae035f2ccb4a06` |
| 18 | `theorem` | [coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedstaircasepacket-eq-endpointsourceenergy--aa4d3ce1e991b1911b6ef9bf.md) | 225 | `result-track:aa4d3ce1e991b1911b6ef9bffbc5a8f3599d1d8378d8b12e56e54acee2fee04b` |
| 19 | `theorem` | [coreGrowingShiftSignedEndpointSourceValue_eq_endpoint](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourcevalue-eq-endpoint--60d91263bbbc5907cf2c8e27.md) | 246 | `result-track:60d91263bbbc5907cf2c8e27356cffd94b47b973bd48e263641ca4c2cbed611a` |
| 20 | `theorem` | [coreGrowingShiftSignedEndpointSourceEnergy_eq_bilinear](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedendpointsourceenergy-eq-bilinear--21d2a1f537eeecf1397d1890.md) | 259 | `result-track:21d2a1f537eeecf1397d1890f5aabd6d8e7f0587ddc7765c7a7d48e17f90187b` |
| 21 | `theorem` | [coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftsignedstaircasepacket-eq-endpointbilinear--f80c678f4273d9b1c955fd4b.md) | 281 | `result-track:f80c678f4273d9b1c955fd4be6ff60dcc4996c6a1c5c1d0b7ca7c117b0c6eae5` |
| 22 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBilinear](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-endpointbilinear--41141ba22b5657b53c9676a8.md) | 289 | `result-track:41141ba22b5657b53c9676a87da7c9cb128fdbe9334bcfca68ce8edb50980ed8` |
| 23 | `def` | [SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/subpolynomialcoregrowingshiftsignedendpointbilinearpacket--3602844d38f451ef03037007.md) | 299 | `declaration-track:3602844d38f451ef030370072ae8581711dd15a1997eeecd52a46c75bbea4d40` |
| 24 | `theorem` | [subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket_iff_staircase](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/subpolynomialcoregrowingshiftsignedendpointbilinearpacket-iff-staircase--fda521cf9c7ae5f0c360b141.md) | 306 | `result-track:fda521cf9c7ae5f0c360b141fc4414ca4307bfe577dc722201fae97362d13357` |
| 25 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedendpointbilinear--cab3d89d4a11d7f21d891497.md) | 324 | `result-track:cab3d89d4a11d7f21d891497d1d56244328c109498b0c48364c47358a295bbf4` |
| 26 | `structure` | [SignedEndpointBilinearSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/signedendpointbilinearsource--f83fe4a813a72fabe8841c24.md) | 333 | `declaration-track:f83fe4a813a72fabe8841c24ca62b6a310d149f4b8dff474711525b0761312b1` |
| 27 | `structure` | [ToCoreGrowingShiftSignedEndpointBilinearPacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/tocoregrowingshiftsignedendpointbilinearpacket--2e94d6d2e8d7ce5d4c69b7b4.md) | 342 | `declaration-track:2e94d6d2e8d7ce5d4c69b7b4e30531a4c844e7020ba993b0cc69b3206ed3e5fa` |
| 28 | `structure` | [SignedEndpointBilinearFourierSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/signedendpointbilinearfouriersource--a5fbfeee6052d2a7da4612bd.md) | 357 | `declaration-track:a5fbfeee6052d2a7da4612bd1d19f8c1917c644bef17477b570e1c99c985c6e1` |
| 29 | `structure` | [ToCoreGrowingShiftSignedEndpointBilinearPacketFromFourier](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/tocoregrowingshiftsignedendpointbilinearpacketfromfourier--29adcad227154275409c9404.md) | 370 | `declaration-track:29adcad227154275409c940495497666812de2f07194ec8f5f16e110151144c2` |
| 30 | `theorem` | [signedEndpointBilinearCancellation_hostileWitness](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/declarations/signedendpointbilinearcancellation-hostilewitness--ad30e9233b575eabb5156ae4.md) | 388 | `result-track:ad30e9233b575eabb5156ae45f15023b17d3dbd233ba5a2f53f28b136a904d1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
