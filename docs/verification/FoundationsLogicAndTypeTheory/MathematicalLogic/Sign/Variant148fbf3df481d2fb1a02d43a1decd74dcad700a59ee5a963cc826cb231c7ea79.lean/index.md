# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sign.Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4dc3c2703d805168a0b8fb8791b69f61096c532",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4dc3c2703d805168a0b8fb8791b69f61096c532`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Conj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Ineq` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modSwap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/modswap--c432bbe78610b653501cf613.md) | 44 | `declaration-track:c432bbe78610b653501cf61349c9945698d27b80f6f34b714442aa825c56c84f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/instance--de8040d5ddb677fa019af895.md) | 52 | `declaration-track:de8040d5ddb677fa019af8953baa61ec9caaed8e9900c4c8f94963463e0e7035` |
| 3 | `def` | [swapFactorsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/swapfactorsaux--798fb7c29be65e25824c8d6a.md) | 58 | `declaration-track:798fb7c29be65e25824c8d6a03acd5f143a81909f034efbcaf19e65ecaa93025` |
| 4 | `def` | [swapFactors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/swapfactors--5639b80f411708c3e2b1de29.md) | 84 | `declaration-track:5639b80f411708c3e2b1de29e5187373cf3ab65acdf606912940b4f14dcfba9c` |
| 5 | `def` | [truncSwapFactors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/truncswapfactors--f6cb42c918828386f045a713.md) | 90 | `declaration-track:f6cb42c918828386f045a71340b1415b2cb20af8a88b671c2c3a1792f8768f2d` |
| 6 | `theorem` | [swap_induction_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/swap-induction-on--fcbf78d0ab709805d32b27b7.md) | 98 | `result-track:fcbf78d0ab709805d32b27b7d5ab4c359e6b60543b6d52db12e7ad0c4fee1290` |
| 7 | `theorem` | [mclosure_isSwap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/mclosure-isswap--6f038fcdaf759cd957051fde.md) | 110 | `result-track:6f038fcdaf759cd957051fde77533fa92c926a3bdc6bb2a2f7c86556c5dc1bb0` |
| 8 | `theorem` | [closure_isSwap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/closure-isswap--ad215e6ac9bc4771ac9d713e.md) | 117 | `result-track:ad215e6ac9bc4771ac9d713ed35620d219de919948f1e5b47c30eb494cf6e2b4` |
| 9 | `theorem` | [mclosure_swap_castSucc_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/mclosure-swap-castsucc-succ--67edc9c58ce0fed8c011ebf9.md) | 121 | `result-track:67edc9c58ce0fed8c011ebf98de28d24d0f8e39ef2425b652c83265b6d831f46` |
| 10 | `theorem` | [swap_induction_on'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/swap-induction-on--2c89afc4e7dac106643f24c1.md) | 142 | `result-track:2c89afc4e7dac106643f24c1f367ebc0244aed32714bfb8d231924f6181b3fac` |
| 11 | `theorem` | [isConj_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/isconj-swap--446014b1fda50a3f39c643d1.md) | 146 | `result-track:446014b1fda50a3f39c643d1cce78caf2e3a7301ead71601bc38771162c7ef58` |
| 12 | `def` | [finPairsLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/finpairslt--802c9450a38709e199a03550.md) | 161 | `declaration-track:802c9450a38709e199a0355050e5c3e0ee2d82af2f5d17b2d65a493a1ebe8297` |
| 13 | `theorem` | [mem_finPairsLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/mem-finpairslt--91f90deac8ee76bad07a6b2b.md) | 164 | `result-track:91f90deac8ee76bad07a6b2bf8fe732729b0a377474ec89c8c4286f2191033bc` |
| 14 | `def` | [signAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux--c950783c5db43fe285b6b01b.md) | 170 | `declaration-track:c950783c5db43fe285b6b01b340c67ef20570d8db56e5feced8a62ef933cfd0e` |
| 15 | `theorem` | [signAux_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux-one--3fbb140569baa862a2fb2a05.md) | 174 | `result-track:3fbb140569baa862a2fb2a0582a7455f000aac947b480e4570a92ae73dcc2de8` |
| 16 | `def` | [signBijAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signbijaux--44b84b96d7d5106f6aaaf43d.md) | 180 | `declaration-track:44b84b96d7d5106f6aaaf43d6119464c5b6bf8ea3773250bf1ce5a1792d16b3c` |
| 17 | `theorem` | [signBijAux_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signbijaux-injon--cc5aaed244d555860db668fa.md) | 183 | `result-track:cc5aaed244d555860db668fa812b86e7dea4e5b2bccc5e64e69d39e89cafd48b` |
| 18 | `theorem` | [signBijAux_surj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signbijaux-surj--bfdbc68f526c41c457270d59.md) | 194 | `result-track:bfdbc68f526c41c457270d59a6a9fb1136c1c9f79db2b1f8cf819776aaefa82c` |
| 19 | `theorem` | [signBijAux_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signbijaux-mem--a195571918bf39eb77691028.md) | 209 | `result-track:a195571918bf39eb7769102843ca2e260107406a48dca4cdf54ebbd8580e0a77` |
| 20 | `theorem` | [signAux_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux-inv--b6eeb6f87acde3650c2e3c60.md) | 219 | `result-track:b6eeb6f87acde3650c2e3c6029935392f1001fc3919fc901e6ef4ca396903acd` |
| 21 | `theorem` | [signAux_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux-mul--f30e2a993299de0053bbda75.md) | 228 | `result-track:f30e2a993299de0053bbda75061e8271c501b0a9d3a9fdf0c07d286a737e3c54` |
| 22 | `theorem` | [signAux_swap_zero_one'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux-swap-zero-one--c549733014f5fc4bbb66f3b5.md) | 250 | `result-track:c549733014f5fc4bbb66f3b589489ee759f89d4b3c5176b333eee677c42e1453` |
| 23 | `theorem` | [signAux_swap_zero_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux-swap-zero-one--34ff3ef3e938140a1073677c.md) | 274 | `result-track:34ff3ef3e938140a1073677ce427f8a4f4db1730ca1ab9befd7e5f8bedc971a4` |
| 24 | `theorem` | [signAux_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux-swap--a501e2132c7d3d543f64ce83.md) | 282 | `result-track:a501e2132c7d3d543f64ce8328bd9d4cfceca7138d6c699cbe9d740ae7f4723f` |
| 25 | `def` | [signAux2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux2--c89e2e5dd0041691d3aea585.md) | 296 | `declaration-track:c89e2e5dd0041691d3aea58587ba2dd541886c185a8b64b07be20ef56a145cd1` |
| 26 | `theorem` | [signAux_eq_signAux2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux-eq-signaux2--8fbf78f658455132bfab5889.md) | 300 | `result-track:8fbf78f658455132bfab58899e328fab074355ed209b2a6d8f3c2be1d61c7d5a` |
| 27 | `def` | [signAux3](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux3--ad3be6cb55cd51c5c983fa1a.md) | 329 | `declaration-track:ad3be6cb55cd51c5c983fa1a2ea706ae7a6d1bf3a4e11b1978a9c9e232658f88` |
| 28 | `theorem` | [signAux3_mul_and_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux3-mul-and-swap--1d6b05726043861e42d4bdcc.md) | 335 | `result-track:1d6b05726043861e42d4bdcc930b0a06e34c945b083e0fe9da36b7ff625b3874` |
| 29 | `theorem` | [signAux3_symm_trans_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/signaux3-symm-trans-trans--1005c7c0be4aea70de36b0bd.md) | 353 | `result-track:1005c7c0be4aea70de36b0bdd464c5f50c6d64f5422c337edd567c5560c8c28e` |
| 30 | `def` | [sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign--493272be2df53f4e5f5a882e.md) | 367 | `declaration-track:493272be2df53f4e5f5a882e0710f1d8e1ac4d931168afb3b6dc17ff8395e25f` |
| 31 | `theorem` | [sign_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-mul--408e0c34e3c1af77190f9f49.md) | 375 | `result-track:408e0c34e3c1af77190f9f490286db0f0a3375a916cb48e35d57263cb1da44d0` |
| 32 | `theorem` | [sign_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-trans--095865a244cd04c9cab1372f.md) | 379 | `result-track:095865a244cd04c9cab1372fda009d5746b6513a714206fcb878f6ce4de46b66` |
| 33 | `theorem` | [sign_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-one--5d612f7f6fe768ddeaca405c.md) | 383 | `result-track:5d612f7f6fe768ddeaca405c035b2eaf2fdf3bdca52bc3166fd5f72d0842e45a` |
| 34 | `theorem` | [sign_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-refl--6f2dda82ddf122de9a18f020.md) | 387 | `result-track:6f2dda82ddf122de9a18f02089878c3bebf4f06a6b65db1a23c06dc28dd72581` |
| 35 | `theorem` | [sign_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-inv--2d1e3d985cbe1aebd3bed3e3.md) | 391 | `result-track:2d1e3d985cbe1aebd3bed3e3c6661b66bdd325567dbae703c64af4c650dd4440` |
| 36 | `theorem` | [sign_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-symm--9646ba8c100657a54e89b640.md) | 395 | `result-track:9646ba8c100657a54e89b640c039565e3ccfdf481a34b5c64a45dd1dc6dca140` |
| 37 | `theorem` | [sign_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-swap--39a8b73bdab63655fbb987a3.md) | 398 | `result-track:39a8b73bdab63655fbb987a388e32490072db3fff9b672d3df36adef1fea35a8` |
| 38 | `theorem` | [sign_swap'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-swap--387a5eb2065d5529bde7e5c9.md) | 402 | `result-track:387a5eb2065d5529bde7e5c9423b0eab10fcf725c606b17dd6ac3ab124df4e41` |
| 39 | `theorem` | [IsSwap.sign_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/isswap-sign-eq--0e0ab591dee66ed83bd866ba.md) | 405 | `result-track:0e0ab591dee66ed83bd866ba1f60ebe6f7f34671a474b7f7bd4931efc9f20798` |
| 40 | `theorem` | [sign_symm_trans_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-symm-trans-trans--d72b475cb6e1a8d2803ad453.md) | 410 | `result-track:d72b475cb6e1a8d2803ad4535e534a9acce302bc97a784ac76bd2d6ee9602caf` |
| 41 | `theorem` | [sign_trans_trans_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-trans-trans-symm--7d49284ec373f13d0433f03c.md) | 415 | `result-track:7d49284ec373f13d0433f03ca4bec271dc789e2e1bbe5fe44c53fd065093eda1` |
| 42 | `theorem` | [sign_prod_list_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-prod-list-swap--7f60693f1478fba4d5a38229.md) | 419 | `result-track:7f60693f1478fba4d5a3822912b73bd427d5c4fe6aef9bc47bd3ca6d347f0292` |
| 43 | `theorem` | [sign_abs](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-abs--0877a67a9d8ef1a198b8bd71.md) | 429 | `result-track:0877a67a9d8ef1a198b8bd7113c7a1c8ff24310751dd88d72e500311fd8c9d36` |
| 44 | `theorem` | [sign_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-surjective--1f9005c00c2cf691ea71e608.md) | 434 | `result-track:1f9005c00c2cf691ea71e608056b000a6808cb87089e049a6d146bbaa2589e2b` |
| 45 | `theorem` | [eq_sign_of_surjective_hom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/eq-sign-of-surjective-hom--d14fb457efd76a0a839c39a6.md) | 439 | `result-track:d14fb457efd76a0a839c39a64ace2756ddac5d985e4f41cd22408477b81d1ad5` |
| 46 | `theorem` | [sign_subtypePerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-subtypeperm--a57151af8c8201daa2ae9eab.md) | 463 | `result-track:a57151af8c8201daa2ae9eab882917a5325aaf6060c8aa989f8a58f0848fc7e6` |
| 47 | `theorem` | [sign_eq_sign_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-eq-sign-of-equiv--4d492c35dff0aed4a1b8ff89.md) | 477 | `result-track:4d492c35dff0aed4a1b8ff89b2f3d72d5ccde8218ce6d364b669ec610a4b58c8` |
| 48 | `theorem` | [sign_bij](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-bij--fa0a5f402c232bdd28fcbac0.md) | 482 | `result-track:fa0a5f402c232bdd28fcbac03158a288ecee3845bb458ff4f40a9797ca71ef26` |
| 49 | `theorem` | [prod_prodExtendRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/prod-prodextendright--f9cbade14dbd4e850dc3dc3d.md) | 505 | `result-track:f9cbade14dbd4e850dc3dc3d47ac10de889fafb0cab47fc8b685103dbbd9b79a` |
| 50 | `theorem` | [sign_prodExtendRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-prodextendright--d627c9c69b9e94aaa88dd3e6.md) | 536 | `result-track:d627c9c69b9e94aaa88dd3e6ecf5ef4326b89465aa3cfd5b8725380d1f35ba9e` |
| 51 | `theorem` | [sign_prodCongrRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-prodcongrright--cb89ea101ad74498a9394730.md) | 543 | `result-track:cb89ea101ad74498a9394730983966a9c32f113cbd4ae902121f70eb348f26ce` |
| 52 | `theorem` | [sign_prodCongrLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-prodcongrleft--9be75d32424879584dcd4f92.md) | 553 | `result-track:9be75d32424879584dcd4f925b3e1702153e2b59313d387492f993a95aaeddb6` |
| 53 | `theorem` | [sign_permCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-permcongr--18673a1e3914d06960eaaf64.md) | 559 | `result-track:18673a1e3914d06960eaaf646947f744189b52fa300ab4361fe81a7f4bce2cbb` |
| 54 | `theorem` | [sign_sumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-sumcongr--b8fe534fb53b51c6e397d5cd.md) | 563 | `result-track:b8fe534fb53b51c6e397d5cd981475d1bc47e5b19e4c84cd1bc7eee8a08c9f68` |
| 55 | `theorem` | [sign_subtypeCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-subtypecongr--95cfeb6744a086d61c14fa50.md) | 579 | `result-track:95cfeb6744a086d61c14fa50b9d4a0a11de487e40ba70043df45910dfc4d6610` |
| 56 | `theorem` | [sign_extendDomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-extenddomain--9e2d73aedefcb19d0b81cc70.md) | 584 | `result-track:9e2d73aedefcb19d0b81cc70ae8361277eae60fa570f3ce3ef50285a95d872fe` |
| 57 | `theorem` | [sign_ofSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/sign-ofsubtype--3c76f14ccc7c88b109480550.md) | 589 | `result-track:3c76f14ccc7c88b109480550590db4f62159f7a2cf037927caeebc3f6dbb0c8a` |
| 58 | `theorem` | [viaFintypeEmbedding_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/viafintypeembedding-sign--45aab262d9df1e06e0363fa3.md) | 598 | `result-track:45aab262d9df1e06e0363fa3e7856199db6538f81546da63598bb5f6405ff4ad` |
| 59 | `def` | [ofSign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/ofsign--86d8b970eb60f23b1fc33fd1.md) | 608 | `declaration-track:86d8b970eb60f23b1fc33fd15e3e900dcba4beac805383d088e0e9c2ef1bb8e2` |
| 60 | `lemma` | [mem_ofSign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/mem-ofsign--9689876a4c5513c78a290017.md) | 611 | `result-track:9689876a4c5513c78a2900172d2b6b8a0895e06ec91d9aab56ac96e229d070d1` |
| 61 | `lemma` | [ofSign_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/ofsign-disjoint--bd229aa543e749987f15eee5.md) | 614 | `result-track:bd229aa543e749987f15eee5615e75f75094db529d3eecd52c59a9cb7a4cacbd` |
| 62 | `lemma` | [ofSign_disjUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/declarations/ofsign-disjunion--1836d75919ebd61afbecc0f9.md) | 621 | `result-track:1836d75919ebd61afbecc0f9e504bf991b2aae508bc3a09d702d4f661af124ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
