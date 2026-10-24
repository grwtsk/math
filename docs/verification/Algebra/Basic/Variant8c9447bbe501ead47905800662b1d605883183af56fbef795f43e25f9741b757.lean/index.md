# Verification target: GRWTSK.Algebra.Basic.Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4695061faeb54502a8902c55c53c188f64a20c06",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4695061faeb54502a8902c55c53c188f64a20c06`.

Source path: `GRWTSK/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Stability` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FaithfullyFlat](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/faithfullyflat--303463fe742b9318782342eb.md) | 68 | `declaration-track:303463fe742b9318782342eb4cf2ac4e4c3a3dabc8239fd305854f9fbf909609` |
| 2 | `instance` | [self](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/self--374560a97c0e023a3db5b758.md) | 72 | `declaration-track:374560a97c0e023a3db5b7583e7016a4709c61dd0233f2a06de089beac502e1a` |
| 3 | `lemma` | [iff_flat_and_proper_ideal](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-flat-and-proper-ideal--7f456075013de8c18566c23e.md) | 78 | `result-track:7f456075013de8c18566c23efc95666005fa1c9bc85d81f7a89939bda1181788` |
| 4 | `lemma` | [iff_flat_and_ideal_smul_eq_top](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-flat-and-ideal-smul-eq-top--7c6b45f68d5cd31bfeaca2ca.md) | 86 | `result-track:7c6b45f68d5cd31bfeaca2ca72cda8af384285096d0c8e41bda03af4e758213e` |
| 5 | `instance` | [rTensor_nontrivial](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/rtensor-nontrivial--fc10c146108732cb34a7a361.md) | 96 | `declaration-track:fc10c146108732cb34a7a361d19ee8acca9286e73959585d361681fb0720c78d` |
| 6 | `instance` | [lTensor_nontrivial](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/ltensor-nontrivial--9024feb98d686b17887e8bd4.md) | 120 | `declaration-track:9024feb98d686b17887e8bd459039dde8bd9f09f59972888d787a05f441fbb56` |
| 7 | `lemma` | [rTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/rtensor-reflects-triviality--4d0e704af8c316e2bd4cb124.md) | 125 | `result-track:4d0e704af8c316e2bd4cb12456c560d1f77931d6ee21c4f5fb2b6f8d18e259ed` |
| 8 | `lemma` | [lTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/ltensor-reflects-triviality--97d6ff0965d38a754cd7b9a8.md) | 133 | `result-track:97d6ff0965d38a754cd7b9a85c368c8246dd8afd3316bbd7eda0f2111242130a` |
| 9 | `lemma` | [iff_flat_and_rTensor_faithful](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-flat-and-rtensor-faithful--8ad5d6409b5094461f2b8af9.md) | 141 | `result-track:8ad5d6409b5094461f2b8af9dc5361bf54297d2320e34a72e8977584840397bd` |
| 10 | `lemma` | [iff_flat_and_rTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-flat-and-rtensor-reflects-triviality--fe3bdd2967aa12eed99e9522.md) | 158 | `result-track:fe3bdd2967aa12eed99e95222a66d8ed1990ce080481e9963179c96b991c62ff` |
| 11 | `lemma` | [iff_flat_and_lTensor_faithful](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-flat-and-ltensor-faithful--115bde70da4f7e11ccc97620.md) | 167 | `result-track:115bde70da4f7e11ccc97620e650fd92dc4e991c3679dab4dfaa578b7b0ff4de` |
| 12 | `lemma` | [iff_flat_and_lTensor_reflects_triviality](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-flat-and-ltensor-reflects-triviality--5f95b03356d6509e07bcd849.md) | 178 | `result-track:5f95b03356d6509e07bcd8491000573486503acb3c8a3ea231a19f212415c776` |
| 13 | `lemma` | [of_linearEquiv](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/of-linearequiv--3fea3b42b59e0fa8ed518474.md) | 191 | `result-track:3fea3b42b59e0fa8ed518474fbefd9be7bb7f5a66dcc29aba23eb5a65021ffb0` |
| 14 | `instance` | [directSum](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/directsum--d3a8ea5a0652b3410ef8e8bb.md) | 200 | `declaration-track:d3a8ea5a0652b3410ef8e8bbece1f5804396e74e7c25bd7dda9ce39098dc96f7` |
| 15 | `instance` | [finsupp](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/finsupp--f535f9185739a37e7220e954.md) | 212 | `declaration-track:f535f9185739a37e7220e9541113f3220d75266443fc59d21c0615b7e863f1fe` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/instance--4768b2e728e45980cb75ae7d.md) | 218 | `declaration-track:4768b2e728e45980cb75ae7d74593b2a86e005fa41863371afd0257c633ef0fb` |
| 17 | `lemma` | [subsingleton_tensorProduct_iff_right](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/subsingleton-tensorproduct-iff-right--cb3c4cc53b4d9730ada6d9ce.md) | 226 | `result-track:cb3c4cc53b4d9730ada6d9ce7348e3587acf9029176346e13b60e5b611bf8ab5` |
| 18 | `lemma` | [subsingleton_tensorProduct_iff_left](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/subsingleton-tensorproduct-iff-left--d0a33063f9c6785edd5c3bcb.md) | 231 | `result-track:d0a33063f9c6785edd5c3bcb4d0ae046107f2ec3a9104f5d4dfc64df64690096` |
| 19 | `lemma` | [nontrivial_tensorProduct_iff_right](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/nontrivial-tensorproduct-iff-right--f45e376f44eac40bad8426b4.md) | 236 | `result-track:f45e376f44eac40bad8426b4122963f66eb21334b3408757adb4ccff238a916f` |
| 20 | `lemma` | [nontrivial_tensorProduct_iff_left](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/nontrivial-tensorproduct-iff-left--947f84a574dd230082e9f030.md) | 241 | `result-track:947f84a574dd230082e9f030ce05bc7d9c1c325c0aaecc7e8aa3cb95d02d4455` |
| 21 | `lemma` | [range_le_ker_of_exact_rTensor](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/range-le-ker-of-exact-rtensor--27d347fb41bdd03e088c9f27.md) | 284 | `result-track:27d347fb41bdd03e088c9f271d445b116bcd1a1d7c908ccbe7561fd8fb1dea4b` |
| 22 | `lemma` | [rTensor_reflects_exact](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/rtensor-reflects-exact--668c839d49ff25c34c8306f0.md) | 328 | `result-track:668c839d49ff25c34c8306f004bc15e527ab5f6e774a9020cb44cecdc7aa2544` |
| 23 | `lemma` | [lTensor_reflects_exact](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/ltensor-reflects-exact--ccb398cd97c6cc35d1b74025.md) | 374 | `result-track:ccb398cd97c6cc35d1b740253b172fa155cfffa31b6c90a9b6caac391045c1c0` |
| 24 | `lemma` | [rTensor_exact_iff_exact](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/rtensor-exact-iff-exact--b4df007b21ed3d14579e67bb.md) | 382 | `result-track:b4df007b21ed3d14579e67bbf343ac8fbf5bea990e26ad82cbf1d7101034979b` |
| 25 | `lemma` | [lTensor_exact_iff_exact](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/ltensor-exact-iff-exact--0ae7cb512e5909074574a5c3.md) | 387 | `result-track:0ae7cb512e5909074574a5c37a6b972615944bd3ca1a872bfa7b2d24b23a61e6` |
| 26 | `lemma` | [lTensor_injective_iff_injective](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/ltensor-injective-iff-injective--73baafe4ee8891d283bf3db2.md) | 397 | `result-track:73baafe4ee8891d283bf3db224a427ad8f521b418bcfc246c7540cb511c2a3a5` |
| 27 | `lemma` | [lTensor_surjective_iff_surjective](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/ltensor-surjective-iff-surjective--5edf6a40cc2fa54b709900c3.md) | 404 | `result-track:5edf6a40cc2fa54b709900c3b30f53d557c3d2cefdfe3e56583b77ef05838236` |
| 28 | `lemma` | [iff_exact_iff_rTensor_exact](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-exact-iff-rtensor-exact--830a82e70d56586ca1433db3.md) | 417 | `result-track:830a82e70d56586ca1433db33f0c47ed3f1e3cdc3d08cafb89f1a319f18fa6c5` |
| 29 | `lemma` | [iff_exact_iff_lTensor_exact](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-exact-iff-ltensor-exact--377af514d1b4060fb1bf60f9.md) | 431 | `result-track:377af514d1b4060fb1bf60f9973267337fd35598f718b32fba92edcba71cd0bc` |
| 30 | `lemma` | [zero_iff_lTensor_zero](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/zero-iff-ltensor-zero--eb30c2801513e3c1b0b4d997.md) | 461 | `result-track:eb30c2801513e3c1b0b4d9971b24157cd37a4eb5c065f0d5f2b8b67f7e228bf9` |
| 31 | `lemma` | [zero_iff_rTensor_zero](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/zero-iff-rtensor-zero--d1da7965bff820f0afdcb578.md) | 476 | `result-track:d1da7965bff820f0afdcb578b44337fc7916e3c5b78fea3a48b5efd2cd6c7311` |
| 32 | `theorem` | [one_tmul_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/one-tmul-eq-zero-iff--9fb847f85cb2f1f6a4e42ac6.md) | 489 | `result-track:9fb847f85cb2f1f6a4e42ac600eee90a48a13e05ec16064a2cbe44c227bd81d9` |
| 33 | `lemma` | [iff_zero_iff_lTensor_zero](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-zero-iff-ltensor-zero--ecb28d5905d339cd66eecc5c.md) | 509 | `result-track:ecb28d5905d339cd66eecc5cfb206e931d201278dc3c8d980b413249e9374625` |
| 34 | `lemma` | [iff_zero_iff_rTensor_zero](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/iff-zero-iff-rtensor-zero--eefae5aaad90b454bc129653.md) | 524 | `result-track:eefae5aaad90b454bc129653439151c337bad748dc55153e8ea5d995bfd3b278` |
| 35 | `theorem` | [trans](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/trans--e14f11c13193e381fbd211ac.md) | 552 | `result-track:e14f11c13193e381fbd211acf70ffbfc8e8aa1f4cdfb345f65c5e981b59fed84` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/instance--2ad6473a96b8d93893fdddc8.md) | 568 | `declaration-track:2ad6473a96b8d93893fdddc85bd8b24c16c70fb92769e8d5464f28845f662d09` |
| 37 | `lemma` | [Flat.of_flat_tensorProduct](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/flat-of-flat-tensorproduct--e8fa009e8ca890a8df3818d1.md) | 580 | `result-track:e8fa009e8ca890a8df3818d13b0bff5514248c91946d8426a896ca075af4b596` |
| 38 | `lemma` | [Flat.iff_flat_tensorProduct](../../../../mathematics/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/declarations/flat-iff-flat-tensorproduct--8e7dcd55db18483986f6d931.md) | 593 | `result-track:8e7dcd55db18483986f6d931dbf729292633254294f8f2426a0466e4b7e430c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
