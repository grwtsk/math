# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b246b38d27d941db1626cbedafe5de6451349325",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b246b38d27d941db1626cbedafe5de6451349325`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octaveIndexSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/octaveindexset--ae63e56b2008a9a1174dfefe.md) | 26 | `declaration-track:ae63e56b2008a9a1174dfefe29c577826abbc82e11f0cbd0c356d716f12c3ce5` |
| 2 | `def` | [modulusIndexSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/modulusindexset--2fe26a30e598a7cc0a45ac98.md) | 31 | `declaration-track:2fe26a30e598a7cc0a45ac988dcb953437c4ad6a1a952990ca7ee3d31296188d` |
| 3 | `def` | [mobiusReal](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/mobiusreal--65e3388c39e90a66a11d52ce.md) | 35 | `declaration-track:65e3388c39e90a66a11d52cef1c631dd9fb37d514391b49ccc91f9d2de787f70` |
| 4 | `def` | [mobiusLogTerm](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/mobiuslogterm--d1427e833137ef02d42f220c.md) | 39 | `declaration-track:d1427e833137ef02d42f220cfd22d565c2e0bd6a24cca03d9589bc1a3be6e9f5` |
| 5 | `def` | [genuineModulusCoefficient](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinemoduluscoefficient--9f5b267235f168c3230d1103.md) | 43 | `declaration-track:9f5b267235f168c3230d1103a8f36e20b23cd5d6dd7b21e29d3fb335808a48df` |
| 6 | `def` | [anchorMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/anchormass--6f7df6129cad880d5fcb263b.md) | 49 | `declaration-track:6f7df6129cad880d5fcb263b19ccbceda7e35c394c675c3f9e5b93a25cc13389` |
| 7 | `def` | [centeredModulusCoefficient](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredmoduluscoefficient--1fb1d1db40af8be6b04b6b06.md) | 54 | `declaration-track:1fb1d1db40af8be6b04b6b06d60af13c6c6fc58eb6ff7c0e549c5a119612b367` |
| 8 | `def` | [genuineCoefficientMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinecoefficientmass--e566252352b97994003631d4.md) | 60 | `declaration-track:e566252352b97994003631d468b525ce0ab4d354e01679c0c72919cc375d755a` |
| 9 | `def` | [centeredCoefficientMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredcoefficientmass--02c4755cd9ca0a1bf99e2f5a.md) | 66 | `declaration-track:02c4755cd9ca0a1bf99e2f5aa02301656bad85df02aedf69596d6b9a6fe73637` |
| 10 | `def` | [genuineMobiusLogAtom](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinemobiuslogatom--54e69107ceae3eaab87616a7.md) | 72 | `declaration-track:54e69107ceae3eaab87616a71569d7a6eff837925db24ed2422b1e39b15203c0` |
| 11 | `def` | [centeredMobiusLogAtom](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredmobiuslogatom--2335be22f1d54e099013d41d.md) | 78 | `declaration-track:2335be22f1d54e099013d41d0dcfe2243cafde299f535b92e9945b69fb078876` |
| 12 | `def` | [genuineLowGCDPairKernel](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinelowgcdpairkernel--8ec70da97eb2c371fee5e007.md) | 83 | `declaration-track:8ec70da97eb2c371fee5e007402f3baa3d28ee7da922c27d19995610b84f345e` |
| 13 | `def` | [centeredLowGCDPairKernel](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredlowgcdpairkernel--851695b20273e1599c959a3c.md) | 94 | `declaration-track:851695b20273e1599c959a3cbd71265d76140472c42025afe5aadd2986b1f549` |
| 14 | `theorem` | [centeredLowGCDPairKernel_eq_four_channel](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredlowgcdpairkernel-eq-four-channel--e497a4fa3273103804b9458b.md) | 101 | `result-track:e497a4fa3273103804b9458b03c89e807df64cc98bfbd9fcb3e570e71466ad46` |
| 15 | `def` | [genuineLowGCDBilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinelowgcdbilinear--3df70f2578e81c8b1a8f9b4d.md) | 110 | `declaration-track:3df70f2578e81c8b1a8f9b4da86e77271bb5f2d42f7116a6977a734996d144c4` |
| 16 | `def` | [centeredLowGCDBilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredlowgcdbilinear--ef911b8597b76e8ba3681cc8.md) | 121 | `declaration-track:ef911b8597b76e8ba3681cc85980d637ab2c5507d307e54513427fb8aad8f7b4` |
| 17 | `def` | [centeredLowGCDChannelBilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredlowgcdchannelbilinear--23dc9f1a739ddec22e961404.md) | 132 | `declaration-track:23dc9f1a739ddec22e96140456e04f47d0481bcfab7d5573c82c561fc3277358` |
| 18 | `theorem` | [one_mem_modulusIndexSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/one-mem-modulusindexset--eb3bdd679df9afc694553e97.md) | 141 | `result-track:eb3bdd679df9afc694553e976f1bd979e1118a77be8efc59154d9b9711384a1e` |
| 19 | `theorem` | [octave_mem_bounds](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/octave-mem-bounds--324437e56f3debf8606fbe59.md) | 148 | `result-track:324437e56f3debf8606fbe59029a0cc4d9637d5db113f3e3b2d10c54b8010cb7` |
| 20 | `theorem` | [genuineModulusCoefficient_eq_zero_of_not_squarefree](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinemoduluscoefficient-eq-zero-of-not-squarefree--b14f516361ab04a727f3fe7e.md) | 156 | `result-track:b14f516361ab04a727f3fe7ebd0e51df8d76ca976ed1400dc274441a76caa64a` |
| 21 | `theorem` | [mobiusLogDivisorSum_eq_vonMangoldt](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/mobiuslogdivisorsum-eq-vonmangoldt--4ebb8579b368ef11e097744d.md) | 165 | `result-track:4ebb8579b368ef11e097744d586ec7813a8fcbd3585ae17a443dab9d4203b3e5` |
| 22 | `theorem` | [genuineMobiusLogAtom_eq_divisorSum](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinemobiuslogatom-eq-divisorsum--d48a5cd2ae4e721b851e7e9d.md) | 191 | `result-track:d48a5cd2ae4e721b851e7e9d3c7f1b2e988be22fe9483cc13559ddfe03b59e40` |
| 23 | `theorem` | [genuineMobiusLogAtom_eq_vonMangoldt](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinemobiuslogatom-eq-vonmangoldt--e48e1d932b19e31458f23dd6.md) | 215 | `result-track:e48e1d932b19e31458f23dd6f7f104a80391009a98ecc23d0cfb081e868e4844` |
| 24 | `theorem` | [centeredMobiusLogAtom_eq_vonMangoldt_sub_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredmobiuslogatom-eq-vonmangoldt-sub-one--d6e22e7b3fbe291ecacd5cb6.md) | 224 | `result-track:d6e22e7b3fbe291ecacd5cb604670bd3376571f755eeae8713f2c15edd8f9a8d` |
| 25 | `theorem` | [centeredModulusCoefficient_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredmoduluscoefficient-one--2eecfb850ee4d55d00f5ce05.md) | 233 | `result-track:2eecfb850ee4d55d00f5ce05443ecd0c872adc335ca1f1dc8279c0dda575f39a` |
| 26 | `theorem` | [genuineCoefficientMass_eq_weighted_atom](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/genuinecoefficientmass-eq-weighted-atom--ff056e9f6203efa35898db28.md) | 249 | `result-track:ff056e9f6203efa35898db28673ce2a8d3f49962962febb66182f1d11de00377` |
| 27 | `theorem` | [centeredCoefficientMass_eq_genuine_sub_anchor](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredcoefficientmass-eq-genuine-sub-anchor--07100c3c9117264a2b3191cc.md) | 267 | `result-track:07100c3c9117264a2b3191cc86793d33e69b338e6eefb43ad451cf4bdebe8591` |
| 28 | `theorem` | [centeredCoefficientMass_eq_weighted_vonMangoldt_sub_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredcoefficientmass-eq-weighted-vonmangoldt-sub-one--bdfcea3872f4ea8973ca265d.md) | 287 | `result-track:bdfcea3872f4ea8973ca265d26d1bfd1dd20be60984353fdacb18589dce62223` |
| 29 | `theorem` | [centeredLowGCDBilinear_eq_four_channel](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/declarations/centeredlowgcdbilinear-eq-four-channel--2b36c828fd56a51914476b83.md) | 302 | `result-track:2b36c828fd56a51914476b83260138c0f7797eebd3d02f43fb2c8b80b6e1a92a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
