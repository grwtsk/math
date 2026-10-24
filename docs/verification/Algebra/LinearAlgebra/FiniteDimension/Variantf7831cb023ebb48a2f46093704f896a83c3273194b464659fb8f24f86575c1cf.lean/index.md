# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimension.Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecdb3f4c4524b36a028a8fa3ceb08ce79c69a35a",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecdb3f4c4524b36a028a8fa3ceb08ce79c69a35a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Determinant` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Simple` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/instance--7b366367c1d01cf83b4911ee.md) | 67 | `declaration-track:7b366367c1d01cf83b4911eeb7cdd6a263127b7bc5846decba0fc51c8382a5b4` |
| 2 | `theorem` | [unique_topology_of_t2](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/unique-topology-of-t2--1989ad6aba9fcd713a636604.md) | 83 | `result-track:1989ad6aba9fcd713a636604c9bcc6308c93fccc24e871228282f9ab2a0d725a` |
| 3 | `theorem` | [LinearMap.continuous_of_isClosed_ker](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/linearmap-continuous-of-isclosed-ker--b94a69644055a32f1972cbc7.md) | 136 | `result-track:b94a69644055a32f1972cbc7d1d52b67409bd0439244a68ffce4cc5d7e1a5688` |
| 4 | `theorem` | [LinearMap.continuous_iff_isClosed_ker](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/linearmap-continuous-iff-isclosed-ker--9d33b872cf439fd85e55a5e9.md) | 180 | `result-track:9d33b872cf439fd85e55a5e924d8ab02d84d03c0a3e987ca1cf47ce252883d6c` |
| 5 | `theorem` | [LinearMap.continuous_of_nonzero_on_open](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/linearmap-continuous-of-nonzero-on-open--82bfe54c2fd764a9586d7fbf.md) | 186 | `result-track:82bfe54c2fd764a9586d7fbfb671e5c33cc19480245e14d6141fc84d87b4c327` |
| 6 | `theorem` | [continuous_equivFun_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/continuous-equivfun-basis-aux--d8a59a7f9d95edeac74db7ea.md) | 199 | `result-track:d8a59a7f9d95edeac74db7ea3c32121f10b08997cc9cc6dd3bb4449b6096fc9c` |
| 7 | `theorem` | [LinearMap.continuous_of_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/linearmap-continuous-of-finitedimensional--226cbc5f49e3b0a0f3f68415.md) | 249 | `result-track:226cbc5f49e3b0a0f3f68415c4c4131d600e574813417c4050c633e9cf4530e2` |
| 8 | `instance` | [LinearMap.continuousLinearMapClassOfFiniteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/linearmap-continuouslinearmapclassoffinitedimensional--8cc8fad494dadd8612b3277f.md) | 266 | `declaration-track:8cc8fad494dadd8612b3277fe62f2a72f7c7a262c61230d157eee4efe22b3424` |
| 9 | `theorem` | [continuous_equivFun_basis](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/continuous-equivfun-basis--c1eb48060e9ae2667a85e978.md) | 275 | `result-track:c1eb48060e9ae2667a85e978036712901b3ea6c74fdb99f22b0c971a9d7834c4` |
| 10 | `def` | [toContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/tocontinuouslinearmap--fe030045e9503b7d60a72049.md) | 285 | `declaration-track:fe030045e9503b7d60a720491bd03373d4054048f96899a1b8175c03ecf01359` |
| 11 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.UniqueTopologyOfT2.Variant858199fcee78bf6180872593f527e826d5ae3d8ad6743cea8567c9c80692b613.Module.End.toContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/root-grwtsk-algebra-linearalgebra-uniquetopologyoft2-variant858199fcee78--d0df8ee6840753bfe748ca55.md) | 295 | `declaration-track:d0df8ee6840753bfe748ca559edc2a1c3d5412069e0bd428fece456fd387565b` |
| 12 | `theorem` | [coe_toContinuousLinearMap'](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearmap--a7e31a8d9388b7f44631187f.md) | 302 | `result-track:a7e31a8d9388b7f44631187f57758051387408434433bfd6782e544ce44ef68d` |
| 13 | `theorem` | [coe_toContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearmap--e6fa8f46b978c5d8fab2ee09.md) | 306 | `result-track:e6fa8f46b978c5d8fab2ee09467752f8047c64c00b4df49bc3e9a86038455cba` |
| 14 | `theorem` | [coe_toContinuousLinearMap_symm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearmap-symm--2d4709a3d7bda39dea7dc4aa.md) | 311 | `result-track:2d4709a3d7bda39dea7dc4aa943830806ea433110a5927c63b1b80c7a7a70c55` |
| 15 | `theorem` | [det_toContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/det-tocontinuouslinearmap--b17da8bbbf64b6964f26f1ec.md) | 317 | `result-track:b17da8bbbf64b6964f26f1ec1bd14b219a4f6a6723687eaa492fb27ce7bedf58` |
| 16 | `theorem` | [ker_toContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/ker-tocontinuouslinearmap--714dd695e4e8dd15572bfccb.md) | 322 | `result-track:714dd695e4e8dd15572bfccb3de5efa2ead1d821eabc5ce5a7fb65812745bd38` |
| 17 | `theorem` | [range_toContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/range-tocontinuouslinearmap--84de01cec542a8c91b5d64f6.md) | 327 | `result-track:84de01cec542a8c91b5d64f6dc033edd1c193ee3688c2ea98d22df76c7ffdc10` |
| 18 | `theorem` | [isOpenMap_of_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/isopenmap-of-finitedimensional--5cc99eb009980e70ed6f2ca8.md) | 332 | `result-track:5cc99eb009980e70ed6f2ca84c245fd40fcc3d8c977d739364dea10e768c3aba` |
| 19 | `instance` | [canLiftContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/canliftcontinuouslinearmap--f77bf5ec5f1fa208b4b338be.md) | 343 | `declaration-track:f77bf5ec5f1fa208b4b338bedbe08b4fb14e5519113f9ce8d61a18dd02f22e12` |
| 20 | `def` | [toContinuousLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/tocontinuouslinearequiv--af1a40bfa4007eb6e3435a77.md) | 356 | `declaration-track:af1a40bfa4007eb6e3435a7708d2f01b46f043e302c98e5f6d47d8dbbd329098` |
| 21 | `theorem` | [coe_toContinuousLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearequiv--e91b17f644d71bb856458330.md) | 364 | `result-track:e91b17f644d71bb856458330cb3e07617e1574eb1753f06f7add1810c6935c82` |
| 22 | `theorem` | [coe_toContinuousLinearEquiv'](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearequiv--46e05ab5466024ce2cc03a6d.md) | 368 | `result-track:46e05ab5466024ce2cc03a6d68b8e0468d935fd99cf18bf8e6498005df4f0c1a` |
| 23 | `theorem` | [coe_toContinuousLinearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearequiv-symm--e8d6f7ea7d7ea50f5de9e9e7.md) | 372 | `result-track:e8d6f7ea7d7ea50f5de9e9e7ac4400956d6fe6bb2c582a303b483f83fba3c471` |
| 24 | `theorem` | [coe_toContinuousLinearEquiv_symm'](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearequiv-symm--f18f6ad97a60b47731e57db1.md) | 377 | `result-track:f18f6ad97a60b47731e57db172c7945b3182342a01a6e076ed225ffbc04e618b` |
| 25 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/tolinearequiv-tocontinuouslinearequiv--38d6413bae99ce693534b468.md) | 382 | `result-track:38d6413bae99ce693534b468ba20a777dedeae076f158d8368987199ce748a0d` |
| 26 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/tolinearequiv-tocontinuouslinearequiv-symm--eca81d59cf8e30fe24b8cf60.md) | 387 | `result-track:eca81d59cf8e30fe24b8cf606635215f8de4b4d18c8801ae5ac69793b85a273a` |
| 27 | `instance` | [canLiftContinuousLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/canliftcontinuouslinearequiv--ca3e3a5d430f8fb0e56ff34f.md) | 392 | `declaration-track:ca3e3a5d430f8fb0e56ff34ff8cef879a9694be50eed6ee633e3ee939a04f008` |
| 28 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-of-finrank-eq--baeed373a0c243a59a8e28c3.md) | 402 | `result-track:baeed373a0c243a59a8e28c38294ca4b5e135573a0c91e1bb7c00eadf6b650e0` |
| 29 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_iff_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-iff-finrank-eq--9a072041418bedb1e6733cb8.md) | 408 | `result-track:9a072041418bedb1e6733cb8f0cef786d379766e1661b18e8207d68687134a88` |
| 30 | `def` | [ContinuousLinearEquiv.ofFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/continuouslinearequiv-offinrankeq--81c7ca62968f9762f7f6b967.md) | 415 | `declaration-track:81c7ca62968f9762f7f6b96783d71c37a538142859bac1077d2d39d428131150` |
| 31 | `def` | [constrL](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/constrl--4dc909991136b94bbd353bc4.md) | 426 | `declaration-track:4dc909991136b94bbd353bc41ca6980c99a9c1ce9e7a025bac87adeb00d78348` |
| 32 | `theorem` | [coe_constrL](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-constrl--393df01fe8735115e8d1360b.md) | 431 | `result-track:393df01fe8735115e8d1360b9207b91662c434c664d1f1d88a0be30acd97a634` |
| 33 | `def` | [equivFunL](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/equivfunl--8dbae6adb15d298edf8f81bb.md) | 437 | `declaration-track:8dbae6adb15d298edf8f81bb7f6babd9a97bbe412749c4991d7aaf3bb03833b7` |
| 34 | `lemma` | [equivFunL_symm_apply_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/equivfunl-symm-apply-repr--eea5be9c2901d7f1bf52fa31.md) | 447 | `result-track:eea5be9c2901d7f1bf52fa310478d5380ba86f7e446e710333b6a360f1c11952` |
| 35 | `theorem` | [constrL_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/constrl-apply--f804a0e2ecf31693c34df2b9.md) | 452 | `result-track:f804a0e2ecf31693c34df2b9eb9ca642f27589b59c4e9aaaf9a8f41eb565dfa4` |
| 36 | `theorem` | [constrL_basis](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/constrl-basis--41485ac2ca0f26abb1dda011.md) | 457 | `result-track:41485ac2ca0f26abb1dda0116cbd827003a65ab2284d81c32dac6cbe2e3892f8` |
| 37 | `def` | [toContinuousLinearEquivOfDetNeZero](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/tocontinuouslinearequivofdetnezero--14277aeb790eb40cbc2057e8.md) | 468 | `declaration-track:14277aeb790eb40cbc2057e8b38450fc43f7b63d67490d9808a1fc9a4c734b8c` |
| 38 | `theorem` | [coe_toContinuousLinearEquivOfDetNeZero](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/coe-tocontinuouslinearequivofdetnezero--2a1cd9f61ee8c98cd5b0433d.md) | 472 | `result-track:2a1cd9f61ee8c98cd5b0433da2e07ad1cfa0fa6304e577321016e99c685474c0` |
| 39 | `theorem` | [toContinuousLinearEquivOfDetNeZero_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/tocontinuouslinearequivofdetnezero-apply--a73aa72852d51f84331aa0db.md) | 478 | `result-track:a73aa72852d51f84331aa0db5ab57d748e08ee3d2b4bf76bf274b78177438467` |
| 40 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.UniqueTopologyOfT2.Variant858199fcee78bf6180872593f527e826d5ae3d8ad6743cea8567c9c80692b613.Matrix.toLin_finTwoProd_toContinuousLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/root-grwtsk-algebra-linearalgebra-uniquetopologyoft2-variant858199fcee78--48f8f1e823545dba6f6d6369.md) | 482 | `result-track:48f8f1e823545dba6f6d636954c18e93e6e46d8485e3788e51746428415b38ed` |
| 41 | `theorem` | [FiniteDimensional.complete](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/finitedimensional-complete--7bf5a177f7a08a049d844e3c.md) | 500 | `result-track:7bf5a177f7a08a049d844e3c10004db1b1864951ae5a50d05721557c607ca0cf` |
| 42 | `theorem` | [Submodule.complete_of_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/submodule-complete-of-finitedimensional--09f8b620045b56e6aaee252f.md) | 508 | `result-track:09f8b620045b56e6aaee252ff14e59aed8d3fbd4e1e1bff61d6c13131e477a6f` |
| 43 | `theorem` | [Submodule.closed_of_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/submodule-closed-of-finitedimensional--636b16f84b709327d8e9017c.md) | 522 | `result-track:636b16f84b709327d8e9017c379967f757bc2b7819805167b70405d9fe5088ba` |
| 44 | `theorem` | [LinearMap.isClosedEmbedding_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/linearmap-isclosedembedding-of-injective--36ad0fe8dfd4a0ccd9d63425.md) | 530 | `result-track:36ad0fe8dfd4a0ccd9d634255a432df2b36261c3f67dbde34b180710cfc61a34` |
| 45 | `theorem` | [isClosedEmbedding_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/isclosedembedding-smul-left--26692d5d5a5505a3b6d07cd0.md) | 538 | `result-track:26692d5d5a5505a3b6d07cd0c3f92331201744cc5170e3c4e7b9abfd8c63b217` |
| 46 | `theorem` | [isClosedMap_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/isclosedmap-smul-left--4195b703ecfdc75b4b1d4c08.md) | 543 | `result-track:4195b703ecfdc75b4b1d4c080f2191fbad6bdee5c4ba4ac3d7e34c81644ac54f` |
| 47 | `theorem` | [ContinuousLinearMap.exists_right_inverse_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimension/Variantf7831cb023ebb48a2f46093704f896a83c3273194b464659fb8f24f86575c1cf.lean/declarations/continuouslinearmap-exists-right-inverse-of-surjective--ca960de0ebbd1f76086d9285.md) | 549 | `result-track:ca960de0ebbd1f76086d9285d4def2f2a5c80ee482614632f4ae6ea9380bc890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
