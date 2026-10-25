# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sign.Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dbd8f0cf4feaba620e7e66006c7e667527c2852",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dbd8f0cf4feaba620e7e66006c7e667527c2852`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Conj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Units` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Ineq` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modSwap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/modswap--298664a17d97026e4c30d583.md) | 52 | `declaration-track:298664a17d97026e4c30d5831cd6410e694c3dcab690ec958b5b6d8bfbff6ce2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/instance--d6759f3b5717e7b0fbd5bd1a.md) | 60 | `declaration-track:d6759f3b5717e7b0fbd5bd1ac558e6dca72a1dfe7912e02040021cf1a16fd085` |
| 3 | `def` | [swapFactorsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/swapfactorsaux--0855b7a9bab5f3d0dc3df90f.md) | 66 | `declaration-track:0855b7a9bab5f3d0dc3df90fe22d278e1fa565f45de743e63d879897da57ba3e` |
| 4 | `def` | [swapFactors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/swapfactors--2fd47485125cb147e063e988.md) | 92 | `declaration-track:2fd47485125cb147e063e9880ac5a492f6bee0db9aacf7f31db134232a5c941e` |
| 5 | `def` | [truncSwapFactors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/truncswapfactors--923a8b6446d97dbf488fc11a.md) | 98 | `declaration-track:923a8b6446d97dbf488fc11a3929fa2d9ca591a9044efed39fd64a739ec51582` |
| 6 | `theorem` | [swap_induction_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/swap-induction-on--5acf2a8b0111e3dd0e247811.md) | 106 | `result-track:5acf2a8b0111e3dd0e24781196b2c90e944f0c7750723b0bef0a851fa335fe2d` |
| 7 | `theorem` | [mclosure_isSwap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/mclosure-isswap--2b4b02c30c874c2078340de7.md) | 118 | `result-track:2b4b02c30c874c2078340de72c1db4cc1cc95f3c52fa7e323eb11ea314b83cde` |
| 8 | `theorem` | [closure_isSwap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/closure-isswap--1bdcae81d1988490839f91c3.md) | 125 | `result-track:1bdcae81d1988490839f91c3781679135541e471c596b0383e8ed78a15f572b4` |
| 9 | `theorem` | [mclosure_swap_castSucc_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/mclosure-swap-castsucc-succ--c0636c5f2577f2e187e7cdec.md) | 129 | `result-track:c0636c5f2577f2e187e7cdec0b4276a7869f1579320229eb16e896048dddbbdd` |
| 10 | `theorem` | [swap_induction_on'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/swap-induction-on--773d842eba94d304b73a4e21.md) | 150 | `result-track:773d842eba94d304b73a4e21ced5a8be7f667eb74666c06d5e3bb4738dba2f63` |
| 11 | `theorem` | [isConj_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/isconj-swap--7ddcef5aada0b04b617c246b.md) | 154 | `result-track:7ddcef5aada0b04b617c246b2bced703941295c399aa129a8b3c6e86dabd69e3` |
| 12 | `def` | [finPairsLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/finpairslt--64eaa3a364371a4e8fc8f8a0.md) | 169 | `declaration-track:64eaa3a364371a4e8fc8f8a0064ff61d760914f92955c7929934b50d1327706e` |
| 13 | `theorem` | [mem_finPairsLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/mem-finpairslt--fc8cf696761c004baaa95b34.md) | 172 | `result-track:fc8cf696761c004baaa95b3465afd8d6154f4e5c6a1c808d6c23c164e685f02c` |
| 14 | `def` | [signAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux--c82aa2b77854481e35f0180b.md) | 178 | `declaration-track:c82aa2b77854481e35f0180b85a0c5631513fc3c58a61451332ee44f457d571f` |
| 15 | `theorem` | [signAux_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux-one--fbed04bd56704c5622e7d9e2.md) | 182 | `result-track:fbed04bd56704c5622e7d9e2a531d432dcf2986532cee626faf5cef8e989e905` |
| 16 | `def` | [signBijAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signbijaux--c3fb2b0f29bf6263ce34b4e5.md) | 188 | `declaration-track:c3fb2b0f29bf6263ce34b4e516664f0897c81a2d7bd4078565e2fbe8f4d14af5` |
| 17 | `theorem` | [signBijAux_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signbijaux-injon--b563c1fbab62db8000477584.md) | 191 | `result-track:b563c1fbab62db8000477584cfbe4f507d228a92378b0a8cb55de7d008753f38` |
| 18 | `theorem` | [signBijAux_surj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signbijaux-surj--6295ab41a9eebede5f9d56ca.md) | 202 | `result-track:6295ab41a9eebede5f9d56ca37a2559c37f359411c7af0f3d0753e79fa9f2313` |
| 19 | `theorem` | [signBijAux_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signbijaux-mem--57bf8222dbda9ec53867bc07.md) | 217 | `result-track:57bf8222dbda9ec53867bc07eddaccf94a193d7b0b1170ff1d0203bda52e2434` |
| 20 | `theorem` | [signAux_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux-inv--2e428f50ef77fe62a8592a84.md) | 227 | `result-track:2e428f50ef77fe62a8592a8414b8d8cb0f871cc5fde6635df6304f6592bdff1a` |
| 21 | `theorem` | [signAux_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux-mul--49b00a96c1fa9f67e3823398.md) | 236 | `result-track:49b00a96c1fa9f67e3823398a5667e187ebfb0ad2da84f7bf46952d70aa807c3` |
| 22 | `theorem` | [signAux_swap_zero_one'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux-swap-zero-one--ad867288bbbb61cfd3800912.md) | 258 | `result-track:ad867288bbbb61cfd38009128529b9c17b799095d26d5cb138e2fdfad56a69fe` |
| 23 | `theorem` | [signAux_swap_zero_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux-swap-zero-one--0d2bb8acd46f4001dbe60159.md) | 282 | `result-track:0d2bb8acd46f4001dbe60159e44db853a0b4b46f63d04684ca3ef44d710ac628` |
| 24 | `theorem` | [signAux_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux-swap--0f9f769d9a8a09e7ce25c0a6.md) | 290 | `result-track:0f9f769d9a8a09e7ce25c0a6624d83db24c83726df71b5c6ee7af4132723e788` |
| 25 | `def` | [signAux2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux2--c6475325fed0e40bf6d028e1.md) | 304 | `declaration-track:c6475325fed0e40bf6d028e14a5bcf99abac265a8d836bcb87313b3f2be71171` |
| 26 | `theorem` | [signAux_eq_signAux2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux-eq-signaux2--a712fe11b587ce0a15eee803.md) | 308 | `result-track:a712fe11b587ce0a15eee803fdb32c944c2606687d558c397ae1733fb97b8ce7` |
| 27 | `def` | [signAux3](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux3--6fc059423156c70c71024fbd.md) | 337 | `declaration-track:6fc059423156c70c71024fbd231f9bce1bd281e7d9bd612eca565210e72ee9b5` |
| 28 | `theorem` | [signAux3_mul_and_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux3-mul-and-swap--f12ee266b3a684690f6ed3fa.md) | 343 | `result-track:f12ee266b3a684690f6ed3fad95a1bdba27fc1f0ecc323d6e45ba3d72842d423` |
| 29 | `theorem` | [signAux3_symm_trans_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/signaux3-symm-trans-trans--a11e8a19d2d5e17dd9bbd6da.md) | 361 | `result-track:a11e8a19d2d5e17dd9bbd6dac9eba4b055ddf20819059360dee7cf8ca575be88` |
| 30 | `def` | [sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign--54be8714e5454133c629e6bc.md) | 375 | `declaration-track:54be8714e5454133c629e6bcf05ab0de08a0e014723025ce5a583db856702397` |
| 31 | `theorem` | [sign_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-mul--30f730d768b97b34e7ab30f9.md) | 383 | `result-track:30f730d768b97b34e7ab30f918b3b9a320dfa1801579ad61b963bc3a025c6fb7` |
| 32 | `theorem` | [sign_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-trans--8c19705f6d1d723b9cdf25e2.md) | 387 | `result-track:8c19705f6d1d723b9cdf25e20de813fe055ff22ca4225085e15da07fa86feba9` |
| 33 | `theorem` | [sign_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-one--886f9e154734898242fb75ef.md) | 391 | `result-track:886f9e154734898242fb75ef41358e684507fa62af2590dc25d75d22c2b9d2e0` |
| 34 | `theorem` | [sign_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-refl--f90b63b59fd1fcdf68d7b80c.md) | 395 | `result-track:f90b63b59fd1fcdf68d7b80ce471c0dcb23e08474fa553c28831db4217cb25f9` |
| 35 | `theorem` | [sign_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-inv--65545897e4b0d27fb5561d13.md) | 399 | `result-track:65545897e4b0d27fb5561d131dc33871ea526ba44d84285f3badaa819dbc69a6` |
| 36 | `theorem` | [sign_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-symm--558f49fc8ba530faec820529.md) | 403 | `result-track:558f49fc8ba530faec820529b9fea18cd4fc309acaf8f19bfb65c9cd6777f617` |
| 37 | `theorem` | [sign_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-swap--159cc0dfcbd2227c7563ab53.md) | 406 | `result-track:159cc0dfcbd2227c7563ab53c9fdcf896eda76ddde25da9a0652dc619b49cafb` |
| 38 | `theorem` | [sign_swap'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-swap--bdd31df7ca1f2c56978ea62a.md) | 410 | `result-track:bdd31df7ca1f2c56978ea62a1dc19fcb314ee2bbd2d2cefe64732127d3b29963` |
| 39 | `theorem` | [IsSwap.sign_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/isswap-sign-eq--0ef0c6094c71c36fc37c16a2.md) | 413 | `result-track:0ef0c6094c71c36fc37c16a29d913dc78a07a031d0e86912c5ab9224f0e72fd5` |
| 40 | `theorem` | [sign_symm_trans_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-symm-trans-trans--b01383f80b7cd9928e4d753a.md) | 418 | `result-track:b01383f80b7cd9928e4d753abe8a2faa12f1f84e72af16e5bfca2de95cfd51fb` |
| 41 | `theorem` | [sign_trans_trans_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-trans-trans-symm--fa799be781a51d0f165f6a8a.md) | 423 | `result-track:fa799be781a51d0f165f6a8a80d966861e65654dc7ea71d00b4bd41c4bf71c14` |
| 42 | `theorem` | [sign_prod_list_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-prod-list-swap--06b7ec06bd43c76cd2897f94.md) | 427 | `result-track:06b7ec06bd43c76cd2897f944c593d98c8aa386e8a9aae8e32273b6deafd6dc8` |
| 43 | `theorem` | [sign_abs](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-abs--f85923093c844f86956e2247.md) | 437 | `result-track:f85923093c844f86956e2247db5e32bd0630e85b3361d5a6f39ce14eb8dad4d1` |
| 44 | `theorem` | [sign_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-surjective--6a08fd9de625c221f714373b.md) | 442 | `result-track:6a08fd9de625c221f714373be99c0fa33e36685d15ea4ad95b405360a759485f` |
| 45 | `theorem` | [eq_sign_of_surjective_hom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/eq-sign-of-surjective-hom--fdd0200002bf644568630534.md) | 447 | `result-track:fdd0200002bf644568630534147080686fa9d759bffccf49f7c2dfd6a95722ab` |
| 46 | `theorem` | [sign_subtypePerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-subtypeperm--94468e390517e8586fdefbad.md) | 471 | `result-track:94468e390517e8586fdefbad474793cdab59d5d3a1a49f18912d82b9a8a2991e` |
| 47 | `theorem` | [sign_eq_sign_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-eq-sign-of-equiv--f2e1c78445b6f83a657febf6.md) | 485 | `result-track:f2e1c78445b6f83a657febf66288520df59406eae077b605adf3a25ff335ea79` |
| 48 | `theorem` | [sign_bij](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-bij--85b7111735c8d3716975280b.md) | 490 | `result-track:85b7111735c8d3716975280b97c65c612aece5f35184c67c27b5e2f38f0cff4b` |
| 49 | `theorem` | [prod_prodExtendRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/prod-prodextendright--1f988a41b6519fba57ef53e8.md) | 513 | `result-track:1f988a41b6519fba57ef53e86dc28736288f9db01b4e214e7edd1e081b457fe4` |
| 50 | `theorem` | [sign_prodExtendRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-prodextendright--0a0e0cfd1de183654f77f50c.md) | 544 | `result-track:0a0e0cfd1de183654f77f50c8d9a02a441f44db391edfe6e57daa4df7be5a09e` |
| 51 | `theorem` | [sign_prodCongrRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-prodcongrright--efd00349c5e26cc9fa5e7491.md) | 551 | `result-track:efd00349c5e26cc9fa5e749183bf45b36f133f7d167d89af5d989feec525f655` |
| 52 | `theorem` | [sign_prodCongrLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-prodcongrleft--037d6950c913abdde61d12c2.md) | 561 | `result-track:037d6950c913abdde61d12c2522a464f760855d4f0c0e8541a94e07978095516` |
| 53 | `theorem` | [sign_permCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-permcongr--4efd83f76ab2a13097d31930.md) | 567 | `result-track:4efd83f76ab2a13097d31930f9d32ad1257efa08e35644f2399c89a387303629` |
| 54 | `theorem` | [sign_sumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-sumcongr--60bb2121e32a52cd60e46d0f.md) | 571 | `result-track:60bb2121e32a52cd60e46d0f4d69a5f231f47d9b08ea44f9b0191022c39f07d2` |
| 55 | `theorem` | [sign_subtypeCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-subtypecongr--db9b6059ec6794e157bdae89.md) | 587 | `result-track:db9b6059ec6794e157bdae8992a9c44914feb1b44327e0ad0339f9ba73218343` |
| 56 | `theorem` | [sign_extendDomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-extenddomain--3b69ccf171cd75f6202b9af9.md) | 592 | `result-track:3b69ccf171cd75f6202b9af970abba5dfa9a761845482c03df28e30112653104` |
| 57 | `theorem` | [sign_ofSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/sign-ofsubtype--9942713c56bc615d6692fad8.md) | 597 | `result-track:9942713c56bc615d6692fad82e5e367274523c0f6c62c2aa2d122a117c3e6a09` |
| 58 | `theorem` | [viaFintypeEmbedding_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/viafintypeembedding-sign--7019b1f0ba8cc414b8c924b2.md) | 606 | `result-track:7019b1f0ba8cc414b8c924b2b5c6fef90e318bd1c463b24d710fe027650f94d4` |
| 59 | `def` | [ofSign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/ofsign--7196cea2a23c91601dda652b.md) | 616 | `declaration-track:7196cea2a23c91601dda652b40bf61a3ed5ea320296b9ea41f045c1c52b73189` |
| 60 | `lemma` | [mem_ofSign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/mem-ofsign--3941389d609ccf0cc6b6029f.md) | 619 | `result-track:3941389d609ccf0cc6b6029f7df3728f25d54f6805fe799b9cfd6d239ea8a955` |
| 61 | `lemma` | [ofSign_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/ofsign-disjoint--38011a7ea7042b5c4bd1e85b.md) | 622 | `result-track:38011a7ea7042b5c4bd1e85b3e69cbb0272886ff8dd74cc21e5f69091c0bf551` |
| 62 | `lemma` | [ofSign_disjUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/declarations/ofsign-disjunion--46749da934ca1e5340c9eb4f.md) | 629 | `result-track:46749da934ca1e5340c9eb4f6577d6267561ae960dbd8162a6860ecada7bdb0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
