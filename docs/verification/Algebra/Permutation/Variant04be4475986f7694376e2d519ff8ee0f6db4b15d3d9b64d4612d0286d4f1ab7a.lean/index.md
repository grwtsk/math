# Verification target: GRWTSK.Algebra.Permutation.Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d20ecf6200d03f9be15c7c0a43f771daa44c252",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d20ecf6200d03f9be15c7c0a43f771daa44c252`.

Source path: `GRWTSK/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xorTranslation](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/xortranslation--5dd76ce7dc479918f8993ba5.md) | 42 | `declaration-track:5dd76ce7dc479918f8993ba59e654240ab27d658d1533f387741e64760b9dfe5` |
| 2 | `theorem` | [xorTranslation_apply](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/xortranslation-apply--106c676c961e81b9e49e5418.md) | 49 | `result-track:106c676c961e81b9e49e54186b34ba2bfc943d97069ff4e95354d33a74a9aeea` |
| 3 | `theorem` | [xorTranslation_symm_apply](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/xortranslation-symm-apply--cb3df6520c807c63447f4c88.md) | 54 | `result-track:cb3df6520c807c63447f4c888acd2d8f0b30fb1c9eda8edbf49e9d7641726be1` |
| 4 | `structure` | [Round](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round--87aa1fcf756c098238f7355c.md) | 59 | `declaration-track:87aa1fcf756c098238f7355c720fdd39fcf2fa9b5a65d2facf048e20b5aed722` |
| 5 | `def` | [Round.toEquiv](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round-toequiv--9bb787ccd2e60a1b2c2817c1.md) | 66 | `declaration-track:9bb787ccd2e60a1b2c2817c1940aff2079d9731844283b4c3aaf3e79425dd325` |
| 6 | `def` | [Round.run](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round-run--7fdf5d5d9f977faf38ef9d5c.md) | 71 | `declaration-track:7fdf5d5d9f977faf38ef9d5cd3a6621af1a638c0b9fa841f6f5c066ccd05d2bc` |
| 7 | `theorem` | [Round.run_apply](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round-run-apply--f494a12f2d3249c907284510.md) | 75 | `result-track:f494a12f2d3249c90728451011097e32524c06c9a0867d5e2f30bb986f1be2f9` |
| 8 | `theorem` | [Round.run_bijective](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round-run-bijective--b4759eba51b9d19993785055.md) | 81 | `result-track:b4759eba51b9d1999378505537de1188c1d1a5e19d7be475a2fb18220ebc9a76` |
| 9 | `def` | [Round.inverse](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round-inverse--7ff78abc632255eac7ed1643.md) | 86 | `declaration-track:7ff78abc632255eac7ed16432f0952534c055de0e5d35349998986de32d2181f` |
| 10 | `theorem` | [Round.inverse_run](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round-inverse-run--777434bfe185c96a6f1fe168.md) | 90 | `result-track:777434bfe185c96a6f1fe1683f3a5d48933bbc9bfa51ff6517ca2fcea8d8ab8e` |
| 11 | `theorem` | [Round.run_inverse](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/round-run-inverse--149cff0d6b78577ff4b01f90.md) | 95 | `result-track:149cff0d6b78577ff4b01f9014f729d84663c99540207bf11e761bbecc9eb5dc` |
| 12 | `def` | [composeRounds](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/composerounds--e4284eac28532af991f91c16.md) | 102 | `declaration-track:e4284eac28532af991f91c16f2f3717766dd30178fde5cdba56dd3f04636576a` |
| 13 | `def` | [runRounds](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/runrounds--6065b3c5633f8123edbe8dcb.md) | 107 | `declaration-track:6065b3c5633f8123edbe8dcb9fe22618a92d7518184d85d112f2a99e3c79a1f2` |
| 14 | `theorem` | [composeRounds_nil](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/composerounds-nil--89df8d433845f185ca5f1314.md) | 111 | `result-track:89df8d433845f185ca5f13144fc6b3285c2c3212bb29c10bd201d4cdad7f3782` |
| 15 | `theorem` | [composeRounds_cons](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/composerounds-cons--4840b4f342cf19294382b49c.md) | 116 | `result-track:4840b4f342cf19294382b49c0cac58de617723edbb0c01de0604a9ff522bfae8` |
| 16 | `theorem` | [runRounds_nil](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/runrounds-nil--0088da3ad0f2ccc1dc06e818.md) | 121 | `result-track:0088da3ad0f2ccc1dc06e8189954df074899fe112fc53650338011306cbd509b` |
| 17 | `theorem` | [runRounds_cons](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/runrounds-cons--587e1173aba44a5ec040996b.md) | 126 | `result-track:587e1173aba44a5ec040996b2b49c2386d3af8823d975db5df2814dbb5a536ff` |
| 18 | `theorem` | [runRounds_bijective](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/runrounds-bijective--3b055484db7cf67c0417c70d.md) | 132 | `result-track:3b055484db7cf67c0417c70d2a5ab786dcef6e0b104d3ac83f46f53af81e9b81` |
| 19 | `def` | [identityRound](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identityround--aa307cbec20553d124ae600f.md) | 139 | `declaration-track:aa307cbec20553d124ae600f524fab5c581069d00b1c0870194d274dffec7944` |
| 20 | `theorem` | [identityRound_run](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identityround-run--4e5281a33ba782889d11c216.md) | 146 | `result-track:4e5281a33ba782889d11c216ebf170873352e37dba12443192d3d8c50d1564c2` |
| 21 | `theorem` | [identityRound_sacScore](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identityround-sacscore--0041618d19ec7ae29eaf917a.md) | 150 | `result-track:0041618d19ec7ae29eaf917a5e8cb18130caa33a33190dc42aed68d22cff75fe` |
| 22 | `theorem` | [identityRound_varianceScore](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identityround-variancescore--fbbb7b04d0501e5beda95b80.md) | 158 | `result-track:fbbb7b04d0501e5beda95b80c811f96b25efde33516ac7881605df5c1555ee2a` |
| 23 | `theorem` | [exists_bijective_round_with_zero_avalanche](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/exists-bijective-round-with-zero-avalanche--838ad981912c2502c8fd4411.md) | 170 | `result-track:838ad981912c2502c8fd4411da64047807b648d38c04bc2cca291be259c4122e` |
| 24 | `def` | [coordinatePermutation](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation--fcfcaf7ef59df4fc01e20608.md) | 184 | `declaration-track:fcfcaf7ef59df4fc01e2060839bbae366910051766fb065d20929a128c9e9ec5` |
| 25 | `theorem` | [coordinatePermutation_apply](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-apply--69b0d989ebb262ea2e5fa87b.md) | 196 | `result-track:69b0d989ebb262ea2e5fa87bca101dce93d75998dafd669c351584148140684e` |
| 26 | `theorem` | [coordinatePermutation_xor](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-xor--a934c778d99f03e4ad8e6c94.md) | 202 | `result-track:a934c778d99f03e4ad8e6c949d980db934f15ff8dabd1747fca545d7669f94e2` |
| 27 | `theorem` | [hammingWeight_coordinatePermutation](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/hammingweight-coordinatepermutation--0beccd65c6fdd1a4dac18888.md) | 209 | `result-track:0beccd65c6fdd1a4dac1888874b73ff0ed660a18c8a17368cfabcae8978f935b` |
| 28 | `theorem` | [coordinatePermutation_derivative](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-derivative--7d52c024a010b8e083d2570c.md) | 219 | `result-track:7d52c024a010b8e083d2570ca7f2d48d1edb9dae80cf8b9fe1257432ac232e0c` |
| 29 | `theorem` | [coordinatePermutation_basisBit](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-basisbit--0e9ae3218702197ed680fe75.md) | 226 | `result-track:0e9ae3218702197ed680fe75eee2e2c68259d9b12fe053305cf2c2a6c981b008` |
| 30 | `theorem` | [coordinatePermutation_bitDerivative](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-bitderivative--f22d911d444c30545a5d82b6.md) | 235 | `result-track:f22d911d444c30545a5d82b676f82e31db2b1eabe5305c7a6f0590edf02b9af8` |
| 31 | `theorem` | [coordinatePermutation_sacCount](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-saccount--4ec1e1ca0ec79e443cee3ebf.md) | 242 | `result-track:4ec1e1ca0ec79e443cee3ebf6b54564c216f873a799824f22c0abde551a9a841` |
| 32 | `theorem` | [coordinatePermutation_sacEntry](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-sacentry--7af6b8302a04d7866d6136f5.md) | 254 | `result-track:7af6b8302a04d7866d6136f5277f228cc6e650979678b4bb4bfc6fe062d4e3d5` |
| 33 | `theorem` | [coordinatePermutation_sacScore](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-sacscore--53d8138ad8be2ead3b37851b.md) | 264 | `result-track:53d8138ad8be2ead3b37851bd85e7f6de5177794d86f2873072eb59ca23e74dc` |
| 34 | `theorem` | [coordinatePermutation_varianceScore](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/coordinatepermutation-variancescore--124593d1f9bd7652356ac593.md) | 279 | `result-track:124593d1f9bd7652356ac59322d6841c192b56194e6b6be52db8ecce63ac9a45` |
| 35 | `structure` | [XorLinearEquiv](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/xorlinearequiv--c636b607cae2051f0aee2580.md) | 288 | `declaration-track:c636b607cae2051f0aee2580055e39d0f4c8c0aa7253f52fb58e41c0fea18e8a` |
| 36 | `def` | [XorLinearEquiv.ofCoordinatePermutation](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/xorlinearequiv-ofcoordinatepermutation--522ab8f25548db1e0fe7b7ed.md) | 293 | `declaration-track:522ab8f25548db1e0fe7b7edc661c8e1bae3939f7c8f29aa0d3a5935ff2bf7aa` |
| 37 | `theorem` | [XorLinearEquiv.map_zero](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/xorlinearequiv-map-zero--b3340f1ace8ea4ce0e5d8882.md) | 300 | `result-track:b3340f1ace8ea4ce0e5d888272c5109750e99a1d63abd187351779a7e4a2b162` |
| 38 | `def` | [activities](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/activities--45ddd512d73f2f4f2c69361c.md) | 305 | `declaration-track:45ddd512d73f2f4f2c69361c9b8aabb2f77f3f3f80829cbc291e8858089ec1cc` |
| 39 | `theorem` | [activities_nonempty](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/activities-nonempty--01946b4d31f533b141280d36.md) | 309 | `result-track:01946b4d31f533b141280d36e71a5ad6bbf1eea191a02280a062b9405693871a` |
| 40 | `def` | [branchNumber](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/branchnumber--ae660037dd2f9f5549e29213.md) | 322 | `declaration-track:ae660037dd2f9f5549e29213bb1615a24a25b567305d648f236354de90cd1606` |
| 41 | `theorem` | [branchNumber_zero](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/branchnumber-zero--bf5d192f2f1f6283dc0df380.md) | 330 | `result-track:bf5d192f2f1f6283dc0df3800b0f9702d9688bc62f6c1a2e20c95d38f615dcc3` |
| 42 | `theorem` | [branchNumber_le_activity](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/branchnumber-le-activity--94fc9ee4ebaaa68d046a44cb.md) | 334 | `result-track:94fc9ee4ebaaa68d046a44cb31f2167e8fcb00ac3abea30434f782ca13d2457b` |
| 43 | `theorem` | [hammingWeight_basisBit](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/hammingweight-basisbit--921487bc857b1090c5f0417e.md) | 342 | `result-track:921487bc857b1090c5f0417eb91f0f2fc3020d2559dfa7acbddbe9386e8febc1` |
| 44 | `theorem` | [two_le_branchNumber](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/two-le-branchnumber--05fc51605c1dd4e5e4e0e321.md) | 351 | `result-track:05fc51605c1dd4e5e4e0e321f1536c06835887d9485e6079d2f0bf173b59e5d0` |
| 45 | `theorem` | [branchNumber_coordinatePermutation](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/branchnumber-coordinatepermutation--345ad2c64356bd64bb189026.md) | 375 | `result-track:345ad2c64356bd64bb189026c59f64e9a199e94d299d0ccbc44a6e8d448d3cc5` |
| 46 | `def` | [addCorrection](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/addcorrection--7dec6506d0dcf183bcd3269f.md) | 397 | `declaration-track:7dec6506d0dcf183bcd3269f7367b9137491b4d8e015842b0f54e8ce95c60c11` |
| 47 | `theorem` | [identity_add_identity_correction](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identity-add-identity-correction--9c91f9fafa9b993c8fb0c46a.md) | 401 | `result-track:9c91f9fafa9b993c8fb0c46a34a2f2a6fcae4b62027d0d37dd9cdccce6ea6317` |
| 48 | `theorem` | [identity_add_identity_not_injective](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identity-add-identity-not-injective--a0da71082f8a9bbbf1bf63f5.md) | 410 | `result-track:a0da71082f8a9bbbf1bf63f5eacecb8e15bd3efdce7586ce1866598b16c687c3` |
| 49 | `theorem` | [state_dependent_correction_can_destroy_bijectivity](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/state-dependent-correction-can-destroy-bijectivity--a9b9bab2dfac5490d4214bad.md) | 423 | `result-track:a9b9bab2dfac5490d4214bad99c1f5a70f24367ab1c437c921f05e66dafa4fb6` |
| 50 | `theorem` | [constant_translation_preserves_bijectivity](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/constant-translation-preserves-bijectivity--d664b923f71d2a01ce872b34.md) | 432 | `result-track:d664b923f71d2a01ce872b34d02e6184ffb541a022f9cf0c540ed6068eb78113` |
| 51 | `structure` | [TwoStepComplex](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/twostepcomplex--cd07dcc5e1b52543a967f19d.md) | 441 | `declaration-track:cd07dcc5e1b52543a967f19d7f8dab50c0a25f5000e6f389c91a574955653aea` |
| 52 | `def` | [TwoStepComplex.Closed₁](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/twostepcomplex-closed--6ea469dc5e13e99955ff54e5.md) | 448 | `declaration-track:6ea469dc5e13e99955ff54e51f15395b20c6d30312e752fded3581dc9b803e39` |
| 53 | `def` | [TwoStepComplex.Exact₁](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/twostepcomplex-exact--2b5527364a642c9a52838a1d.md) | 452 | `declaration-track:2b5527364a642c9a52838a1dbca16eaa90c5084ca10453bc47a2afccef7151ea` |
| 54 | `def` | [TwoStepComplex.H1Trivial](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/twostepcomplex-h1trivial--8c0c67e9f8d8de5284a1e2b9.md) | 456 | `declaration-track:8c0c67e9f8d8de5284a1e2b9cf26767e0b129012a7a2a742f458706a1b2229d6` |
| 55 | `def` | [identityZeroComplex](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identityzerocomplex--56ed93a72d901d2bbc5a1d9f.md) | 460 | `declaration-track:56ed93a72d901d2bbc5a1d9f4a15089e85f206dfcf1764448e4ab6e80131c45b` |
| 56 | `theorem` | [identityZeroComplex_h1Trivial](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identityzerocomplex-h1trivial--8cf4e02396a95b9656c59010.md) | 469 | `result-track:8cf4e02396a95b9656c59010729ffb0055fb746f36a56fe58986b294f92d1920` |
| 57 | `abbrev` | [EndMap](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/endmap--b36e77ccdd39446e13776f5c.md) | 475 | `declaration-track:b36e77ccdd39446e13776f5cf619910364d9bfdf8c10aa7c8773f9a0909087e4` |
| 58 | `def` | [zeroEndMap](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/zeroendmap--083b256c32b85a98d9b0e542.md) | 478 | `declaration-track:083b256c32b85a98d9b0e542ea4655d5d23262325412e8b176375bc8cf779df0` |
| 59 | `def` | [endMapComplex](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/endmapcomplex--f69d8a4babf9a9a134637291.md) | 482 | `declaration-track:f69d8a4babf9a9a13463729137884dd6e117f649b296317b0963f2015da2ae8d` |
| 60 | `theorem` | [identityCorrection_closed](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identitycorrection-closed--f0e07b72e82fdb60407770f3.md) | 485 | `result-track:f0e07b72e82fdb60407770f34e4156aa62c8fe112ca46b713350806fbb0117cc` |
| 61 | `theorem` | [identityCorrection_exact](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/identitycorrection-exact--6f4ebe3cf4ee71922c7d1fb0.md) | 489 | `result-track:6f4ebe3cf4ee71922c7d1fb0f9127206a901aada16006c8e2ac44daca267690f` |
| 62 | `theorem` | [trivial_H1_does_not_preserve_bijectivity](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/trivial-h1-does-not-preserve-bijectivity--07f435d6969bb3c34c6acb61.md) | 497 | `result-track:07f435d6969bb3c34c6acb61bdaaecee94b5e74c71cb8083d258b1a6eeeec4e5` |
| 63 | `theorem` | [not_injective_of_square_zero](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/not-injective-of-square-zero--765e5b204c5c0474e6d48f1d.md) | 515 | `result-track:765e5b204c5c0474e6d48f1de667c49716f83ec5c07c8f4b8b7a48fced6c6da7` |
| 64 | `theorem` | [not_bijective_of_square_zero](../../../../mathematics/Algebra/Permutation/Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a.lean/declarations/not-bijective-of-square-zero--5a3bb15f00499316f6ce1fc8.md) | 532 | `result-track:5a3bb15f00499316f6ce1fc871ccf1b00f58b4dddd84bc328cb8e6b0c55c1bc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
