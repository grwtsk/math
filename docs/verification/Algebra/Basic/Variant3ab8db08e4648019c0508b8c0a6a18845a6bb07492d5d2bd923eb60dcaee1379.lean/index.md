# Verification target: GRWTSK.Algebra.Basic.Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bb616b1943f511b299747ba3251c88694e8f9bd",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bb616b1943f511b299747ba3251c88694e8f9bd`.

Source path: `GRWTSK/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Forall2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_eq_foldl](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-eq-foldl--1f368f5b2e183a4ce61ba39c.md) | 36 | `result-track:1f368f5b2e183a4ce61ba39c6008ff5e2468bbcb5ce6a9d8d9d49032b1165934` |
| 2 | `theorem` | [prod_append](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-append--60a86c0f4478beadb29e049f.md) | 43 | `result-track:60a86c0f4478beadb29e049f339828eeee402e68b3a9cf476533bb912564c074` |
| 3 | `theorem` | [prod_concat](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-concat--c7ebdb59e776e987c74fd086.md) | 49 | `result-track:c7ebdb59e776e987c74fd086d50dcaabd69512a7ad82d979ecaad0e6c6d3cc11` |
| 4 | `theorem` | [prod_flatten](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-flatten--18d1dac8ad62fbd7ad2354cb.md) | 53 | `result-track:18d1dac8ad62fbd7ad2354cbbf2aebfba45cb3f09f01e52a2602cf23b828b7e5` |
| 5 | `theorem` | [rel_prod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/rel-prod--9d856ddc520632cc61515a71.md) | 60 | `result-track:9d856ddc520632cc61515a71873878e5d46ad7b570f728bc8434fa31bbf60e65` |
| 6 | `theorem` | [prod_hom_nonempty](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-hom-nonempty--052527392e7235421f0b10a6.md) | 65 | `result-track:052527392e7235421f0b10a6b3fdb993c6fe993e9c704f9d5611c21f5ce072d9` |
| 7 | `theorem` | [prod_hom](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-hom--241d45dd6a0dcb6f0da434b8.md) | 70 | `result-track:241d45dd6a0dcb6f0da434b8adeba494e6f95703a8dfea40bfa173dac092a6fe` |
| 8 | `theorem` | [prod_hom₂_nonempty](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-hom-nonempty--f7101ec73fd5e2a2ad935831.md) | 76 | `result-track:f7101ec73fd5e2a2ad935831647039f3cd5507380c67788a7eb08439d80850dd` |
| 9 | `theorem` | [prod_hom₂](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-hom--01908501dcaf00689f36c607.md) | 82 | `result-track:01908501dcaf00689f36c6074ee465821d86b0ba862056da4381849f786ebc1e` |
| 10 | `theorem` | [prod_map_mul](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-map-mul--f763c6afbcd4176b0c359399.md) | 89 | `result-track:f763c6afbcd4176b0c359399f25a290c0ca88f0938097b9811398adf5930b246` |
| 11 | `theorem` | [prod_map_hom](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-map-hom--778f688004512fc3018224d0.md) | 94 | `result-track:778f688004512fc3018224d074415ab033fab2c98f5bc408f0e5d2b8f5a8ec20` |
| 12 | `theorem` | [prod_take_mul_prod_drop](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-take-mul-prod-drop--182b468091fabc9027425bb9.md) | 99 | `result-track:182b468091fabc9027425bb97aa5154d1b9927e5dd01f86c0baba71b0a5c0c21` |
| 13 | `theorem` | [prod_take_succ](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-take-succ--ab775fc8345dd92584e386c3.md) | 104 | `result-track:ab775fc8345dd92584e386c3c50d57489b8593973d5e8e685455ef2ad1d7dba0` |
| 14 | `theorem` | [length_pos_of_prod_ne_one](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/length-pos-of-prod-ne-one--99dc29caade44f714e889c4f.md) | 111 | `result-track:99dc29caade44f714e889c4f3ca0dbad7bd43a034cc5edd9ccdd65f265e0d84c` |
| 15 | `theorem` | [length_pos_of_one_lt_prod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/length-pos-of-one-lt-prod--5eb300b1149fafa66f43da04.md) | 118 | `result-track:5eb300b1149fafa66f43da04841c92fb289c02ff5c7eaa71cc2996ca987cbb28` |
| 16 | `theorem` | [length_pos_of_prod_lt_one](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/length-pos-of-prod-lt-one--f21e4ba5ad59ac1059471267.md) | 123 | `result-track:f21e4ba5ad59ac10594712676d544a540e4bd3ba791aa2f4c0f681691b533b49` |
| 17 | `theorem` | [prod_set](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-set--9e404ff952f56b48911d0097.md) | 127 | `result-track:9e404ff952f56b48911d00973d45b238a9a3d9b4c681fccb18090d4da341c86d` |
| 18 | `theorem` | [getElem?_zero_mul_tail_prod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/getelem-zero-mul-tail-prod--b2afdaa55670b523ced41f5a.md) | 143 | `result-track:b2afdaa55670b523ced41f5a7cdd3c26d7f28f2f9636c19cf98c8fe93fe712ac` |
| 19 | `theorem` | [headI_mul_tail_prod_of_ne_nil](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/headi-mul-tail-prod-of-ne-nil--c3adc2fd1d652d85275520a6.md) | 153 | `result-track:c3adc2fd1d652d85275520a669155f559aa899f15c8cbef79be393f5bc8520e8` |
| 20 | `theorem` | [_root_.Commute.list_prod_right](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/root-commute-list-prod-right--3d29ef0cb610f04f4d142ef7.md) | 157 | `result-track:3d29ef0cb610f04f4d142ef7669510feb0bfdd69ffc31a63f0db6295587d2abd` |
| 21 | `theorem` | [_root_.Commute.list_prod_left](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/root-commute-list-prod-left--acf0b86237fcba856ce16470.md) | 167 | `result-track:acf0b86237fcba856ce1647098c2292759aea9c4384ccba877971233f27a8d53` |
| 22 | `lemma` | [prod_range_succ](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-range-succ--7f3c7c274c1a15dac816b5c0.md) | 171 | `result-track:7f3c7c274c1a15dac816b5c020cf31e0390b7829c5b57cf6e9fdd432ca627a61` |
| 23 | `lemma` | [prod_range_succ'](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-range-succ--5fc7e0ac878b779bf2087ed5.md) | 179 | `result-track:5fc7e0ac878b779bf2087ed5c4686b6b77a2b36fece4c92e09b9baa91bb9589c` |
| 24 | `lemma` | [prod_eq_one](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-eq-one--01ad1bc8aa21143e44fc6e6a.md) | 184 | `result-track:01ad1bc8aa21143e44fc6e6a93a0b428db2bf9b75b5fb0a1d0f480bc2ac29eb5` |
| 25 | `lemma` | [exists_mem_ne_one_of_prod_ne_one](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/exists-mem-ne-one-of-prod-ne-one--18d6b4bb0a9eb6aa5fabfcbd.md) | 191 | `result-track:18d6b4bb0a9eb6aa5fabfcbd634c2ae4884ba4b63c273307f7619f26b4017c97` |
| 26 | `lemma` | [prod_erase_of_comm](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-erase-of-comm--8726d42e55b05e37a9d519fe.md) | 195 | `result-track:8726d42e55b05e37a9d519fecae4695c273d2ce782f8b137fe99603bd6bf00a7` |
| 27 | `lemma` | [prod_map_eq_pow_single](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-map-eq-pow-single--c6f4101d18f28eec05c88cd3.md) | 207 | `result-track:c6f4101d18f28eec05c88cd3c470fd29e0d0b3e22d40704b6ba8f267a9d0e605` |
| 28 | `lemma` | [prod_eq_pow_single](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-eq-pow-single--43377498b291f22861140318.md) | 220 | `result-track:43377498b291f228611403180809985ebbdd43909f385254d484de9fabce3fc0` |
| 29 | `lemma` | [prod_erase](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-erase--c822eecfb34fbf4b9d33a9d7.md) | 230 | `result-track:c822eecfb34fbf4b9d33a9d7f1657ba27ddb224429590bbd7bea6ae98fa2b11e` |
| 30 | `lemma` | [prod_map_erase](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-map-erase--4e1fc740ffd5f8bd0088e651.md) | 234 | `result-track:4e1fc740ffd5f8bd0088e651c7d4549db70b1bc79bcf90db6104b66108fefb92` |
| 31 | `lemma` | [Perm.prod_eq](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/perm-prod-eq--d39273509c1d740cb32106de.md) | 242 | `result-track:d39273509c1d740cb32106de8df877dd70b62e7d65a20b35361f3ce8aec374af` |
| 32 | `lemma` | [prod_reverse](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-reverse--92ab6927c1b243ea1fce1e0e.md) | 245 | `result-track:92ab6927c1b243ea1fce1e0eac9e0cd4d9dfc80c631c6e53509bba4e42575210` |
| 33 | `lemma` | [prod_mul_prod_eq_prod_zipWith_mul_prod_drop](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-mul-prod-eq-prod-zipwith-mul-prod-drop--fc05914964e3dc0b13d2a5f6.md) | 248 | `result-track:fc05914964e3dc0b13d2a5f617fb9ac28dd64d672373fcbcec8ca7bb0a20ea1a` |
| 34 | `lemma` | [prod_mul_prod_eq_prod_zipWith_of_length_eq](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-mul-prod-eq-prod-zipwith-of-length-eq--906fa0c86b9d6e668f1fa7c4.md) | 262 | `result-track:906fa0c86b9d6e668f1fa7c4196a2aa8e498db344d842adedd19214287bff3d8` |
| 35 | `lemma` | [prod_map_ite](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-map-ite--91b46e6e34de5ca3c2df3846.md) | 268 | `result-track:91b46e6e34de5ca3c2df384606f5af4817e3fceb5f9630de1263584624449b8e` |
| 36 | `lemma` | [prod_map_filter_mul_prod_map_filter_not](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-map-filter-mul-prod-map-filter-not--cb2c0798cccc83decc1e76c4.md) | 284 | `result-track:cb2c0798cccc83decc1e76c4a63d1e39c3c89c8fb7f475ed4ebf339404eef592` |
| 37 | `lemma` | [eq_of_prod_take_eq](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/eq-of-prod-take-eq--e8abd0340362724c8b3b07d7.md) | 293 | `result-track:e8abd0340362724c8b3b07d7678dda4de21a67bed3fd45450068870eea82b7b3` |
| 38 | `theorem` | [prod_inv_reverse](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-inv-reverse--001beb4e1214278f0fe6ab29.md) | 306 | `result-track:001beb4e1214278f0fe6ab29bc4ab422f21462fd0fe50f1c870b2bf9c69133b1` |
| 39 | `theorem` | [prod_reverse_noncomm](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-reverse-noncomm--5265ea2bc57cb28b4a2f6d9a.md) | 312 | `result-track:5265ea2bc57cb28b4a2f6d9ad7579a7ee5ce3b9786c74cc3e3a176575cd3b93d` |
| 40 | `theorem` | [prod_drop_succ](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-drop-succ--59a30e17ca3472323018d1d1.md) | 318 | `result-track:59a30e17ca3472323018d1d1f66f3b2c9c514aa727c3633bde68df041f24d50e` |
| 41 | `theorem` | [prod_range_div'](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-range-div--17bc5ec91f84268239ec0e71.md) | 326 | `result-track:17bc5ec91f84268239ec0e710b35f53326f71f8a26cc058b5b49c56dd1325cd0` |
| 42 | `theorem` | [prod_inv](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-inv--30a7c57340e40bfaac2713ab.md) | 341 | `result-track:30a7c57340e40bfaac2713ab141d168eeeec1bbd1d253d2ace75d8b1c7a75b70` |
| 43 | `theorem` | [prod_range_div](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-range-div--7f8ca26d01f241b0e5671faa.md) | 347 | `result-track:7f8ca26d01f241b0e5671faa771f36d5811a6cc7a3efc613c21cef04eb9f8bf0` |
| 44 | `theorem` | [prod_set'](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-set--445c055260c61ab65db79f80.md) | 354 | `result-track:445c055260c61ab65db79f8080ad699b527dc7a5419613edb0c5095fc1083d1f` |
| 45 | `lemma` | [prod_map_ite_eq](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-map-ite-eq--446136fc5fdd84d6d5fc4739.md) | 364 | `result-track:446136fc5fdd84d6d5fc4739d24870fc7854149cd7eee37b0da30240c14aa017` |
| 46 | `theorem` | [sum_const_nat](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/sum-const-nat--ddb515583768872874d3a11c.md) | 380 | `result-track:ddb515583768872874d3a11c3d3ccda3e4ce7004b724a808fa1a848367c82d11` |
| 47 | `theorem` | [headI_add_tail_sum](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/headi-add-tail-sum--53350f6bae1374bc3f747405.md) | 390 | `result-track:53350f6bae1374bc3f747405b0d8f0a4cec23541ad65884d1be27d11a1a3c92f` |
| 48 | `theorem` | [headI_le_sum](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/headi-le-sum--4fe604387b9733eba8c2b62e.md) | 394 | `result-track:4fe604387b9733eba8c2b62e46b2d0a76a4c8815ef5edc4529582c7ad0a857a8` |
| 49 | `theorem` | [tail_sum](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/tail-sum--a5ca4d76357b99d39d8196b5.md) | 398 | `result-track:a5ca4d76357b99d39d8196b5818194fa8cc1bd4592603630bc497ff06bc2a82a` |
| 50 | `theorem` | [alternatingProd_nil](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/alternatingprod-nil--7d6471b0c59e19f41e60b7f3.md) | 408 | `result-track:7d6471b0c59e19f41e60b7f371c51020f6464522469cf4572edbdac16145c1cc` |
| 51 | `theorem` | [alternatingProd_singleton](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/alternatingprod-singleton--883bd996faf886fa9c320eab.md) | 412 | `result-track:883bd996faf886fa9c320eabc82624645289252c277bc438743300459ff16914` |
| 52 | `theorem` | [alternatingProd_cons_cons'](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/alternatingprod-cons-cons--870efe750185f39c0d9f0d37.md) | 416 | `result-track:870efe750185f39c0d9f0d37728588a46ef9f53128b78ed4f2713a6c97a5b6e2` |
| 53 | `theorem` | [alternatingProd_cons_cons](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/alternatingprod-cons-cons--09e3569ba9a279d91b1c96b4.md) | 423 | `result-track:09e3569ba9a279d91b1c96b41809ec424c0f175a65779c259ab8f660b2612697` |
| 54 | `theorem` | [alternatingProd_cons'](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/alternatingprod-cons--a05f44f3ea81f4c93e9f8cc3.md) | 430 | `result-track:a05f44f3ea81f4c93e9f8cc3bb2e63ab2b27bd68f90a48eedc29722a706d4212` |
| 55 | `theorem` | [alternatingProd_cons](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/alternatingprod-cons--23bec22e667ac0abc7355ee8.md) | 437 | `result-track:23bec22e667ac0abc7355ee8e4c33c82eca3bc2f8024d92882ba56bad0b3d933` |
| 56 | `lemma` | [sum_nat_mod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/sum-nat-mod--2bfceec38632d24eb746e6db.md) | 443 | `result-track:2bfceec38632d24eb746e6db0f3d8ff145e0bfa1bc2c694ea39ea549dd27b672` |
| 57 | `lemma` | [prod_nat_mod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-nat-mod--aa88c35b657fd0ca31b558c6.md) | 449 | `result-track:aa88c35b657fd0ca31b558c6f3a0c9a7bd49885766686fb9a3d003f2fc19982e` |
| 58 | `lemma` | [sum_int_mod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/sum-int-mod--3a9eed7f8ba0f2978fff0960.md) | 455 | `result-track:3a9eed7f8ba0f2978fff0960f8e547ec1754994c8f69942b8f89d9d8dd17e921` |
| 59 | `lemma` | [prod_int_mod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/prod-int-mod--b8bac9f7612c1975a89f542d.md) | 458 | `result-track:b8bac9f7612c1975a89f542d3cef2ca679ef26522d7c08ff12459b712ebfe3eb` |
| 60 | `theorem` | [map_list_prod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/map-list-prod--7287e52cd18ceec8a8cbbce3.md) | 468 | `result-track:7287e52cd18ceec8a8cbbce3722f0919420fb688631bfcf1478230bc0e7e5d35` |
| 61 | `theorem` | [map_list_prod](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/map-list-prod--7a33cea43deaac8c6cf5f0cb.md) | 475 | `result-track:7a33cea43deaac8c6cf5f0cba4c3108c8a96231cfb510246fb798fd83111bb60` |
| 62 | `lemma` | [take_sum_flatten](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/take-sum-flatten--a2a2dcd4ccc67d540a51f9cb.md) | 486 | `result-track:a2a2dcd4ccc67d540a51f9cb06af32f0c2c2f3f211968e4a69a8f9ce5a5d2e9a` |
| 63 | `lemma` | [drop_sum_flatten](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/drop-sum-flatten--e628418262970b37a5d2f956.md) | 494 | `result-track:e628418262970b37a5d2f956dc3989133b68e4e67fd8c16dbed305fe1507b91a` |
| 64 | `theorem` | [length_le_sum_of_one_le](../../../../mathematics/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/declarations/length-le-sum-of-one-le--7325c1614236c3c61cd3a926.md) | 510 | `result-track:7325c1614236c3c61cd3a926289f31af866db53aca3c227526f29163ee9ff1b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
