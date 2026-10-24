# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "078dd7986007ac6c665d6255501918a9a1668514",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `078dd7986007ac6c665d6255501918a9a1668514`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Group.isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/group-isunit--8fefe70e24246cb39dbad5cf.md) | 35 | `result-track:8fefe70e24246cb39dbad5cfb63043ea579f3c0ad0c0312ab9770708a5a735c1` |
| 2 | `theorem` | [IsUnit.eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/isunit-eq-on-inv--3734a07b4ef07bdd8d9477bf.md) | 47 | `result-track:3734a07b4ef07bdd8d9477bfb0a3aa8c8c87a7283412ffc5d0338816383e304b` |
| 3 | `theorem` | [eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/eq-on-inv--49ef84de7e940d9a3c7fdc96.md) | 58 | `result-track:49ef84de7e940d9a3c7fdc9696872f7a06a9515882bb1f78078b729af775f061` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/map--be450f1504884295f0ecff97.md) | 72 | `declaration-track:be450f1504884295f0ecff972fb06b44501eb1406b91e5a969dca0dc3b83545d` |
| 5 | `theorem` | [coe_map](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/coe-map--596b02ecc40cca9f2c3b7019.md) | 82 | `result-track:596b02ecc40cca9f2c3b70195d5164321aed38054cb677f9e13b248d680eb95c` |
| 6 | `theorem` | [coe_map_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/coe-map-inv--d6b0f6982daad5ca4c5a7cca.md) | 87 | `result-track:d6b0f6982daad5ca4c5a7ccaf516d23c76706902f59f4ec6db3761d2e4d1ba65` |
| 7 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/map-comp--0cb0d050f718c228052d454c.md) | 92 | `result-track:0cb0d050f718c228052d454c2375e680df49202b29ea6412ae8f874012eea290` |
| 8 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/map-id--a60fd387bf899e593e9f6383.md) | 99 | `result-track:a60fd387bf899e593e9f638318ead16283021862b5aa6fa3dd4c417deb1bcf6a` |
| 9 | `def` | [coeHom](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/coehom--085cfde08e89454052469b1e.md) | 105 | `declaration-track:085cfde08e89454052469b1e6ac13021ab4cae21298a39b238cafeea28a07337` |
| 10 | `theorem` | [coeHom_apply](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/coehom-apply--4d32ff95326085e302b85271.md) | 113 | `result-track:4d32ff95326085e302b852713ccb48d199d99731a36e465a3e482879cbc35a8d` |
| 11 | `theorem` | [val_pow_eq_pow_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/val-pow-eq-pow-val--5f943263396a277a08efa8cf.md) | 118 | `result-track:5f943263396a277a08efa8cf45a2dca3eb49cb99d631563f55440811da631256` |
| 12 | `theorem` | [val_div_eq_div_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/val-div-eq-div-val--6c79be02094c48d13ce9c928.md) | 128 | `result-track:6c79be02094c48d13ce9c928f49ecc15f81d9cea2355b0f1e42325209b6285b9` |
| 13 | `theorem` | [val_zpow_eq_zpow_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/val-zpow-eq-zpow-val--bbca6078f91dd0fd580b8e2e.md) | 134 | `result-track:bbca6078f91dd0fd580b8e2ec030bbfabeb2fc0fca35bb5230c924699e2eca7a` |
| 14 | `theorem` | [_root_.divp_eq_div](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/root-divp-eq-div--bec2d735419a56529c59baac.md) | 140 | `result-track:bec2d735419a56529c59baaca0dec597bd6f8d12240cd075d26dc3b25e94e132` |
| 15 | `theorem` | [_root_.map_units_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/root-map-units-inv--dfd8367fdb67e42ae427f051.md) | 145 | `result-track:dfd8367fdb67e42ae427f051f48ce2cb27b1c9007d7c4592aa93d723661560b1` |
| 16 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/liftright--f2b29ff2760ba15e527623c6.md) | 157 | `declaration-track:f2b29ff2760ba15e527623c63aaa669dc00079daac7a021ff613569b0c797cea` |
| 17 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/coe-liftright--8947987c3981a4c3c728df36.md) | 165 | `result-track:8947987c3981a4c3c728df36936dbf552f2c6bc3378efc734f1096c981c69884` |
| 18 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-liftright-inv--614413e612dd3b4d5a5cb60d.md) | 171 | `result-track:614413e612dd3b4d5a5cb60d31c27e97b8f7d2d8047c04eef771f6adb734bdf0` |
| 19 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/liftright-inv-mul--32ecb8b41a1b07e2b42e70f3.md) | 178 | `result-track:32ecb8b41a1b07e2b42e70f3aa387f290dca51c42a08015cb201c6b491cc6a94` |
| 20 | `def` | [toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/tohomunits--1c255cf54bd426b49f60a6d0.md) | 195 | `declaration-track:1c255cf54bd426b49f60a6d0329233a73da036d6ac0e743176e4ef7ea949c1ad` |
| 21 | `theorem` | [coe_toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/coe-tohomunits--e274a027f6b96600bc4a3387.md) | 203 | `result-track:e274a027f6b96600bc4a33876eb04375dc5e9d35cee85156b023bb57171da8f7` |
| 22 | `theorem` | [map](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/map--830e3eaf8765cbf8c6e92839.md) | 219 | `result-track:830e3eaf8765cbf8c6e928392124710e2d62d2361c197573f65786a10b626be3` |
| 23 | `theorem` | [of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/of-leftinverse--92b02a90be526e0bfc98dc6f.md) | 225 | `result-track:92b02a90be526e0bfc98dc6f5da54769ac27cb73013bf0c743e2b3f665c79ecd` |
| 24 | `theorem` | [_root_.isUnit_map_of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/root-isunit-map-of-leftinverse--2adf8b1168225fb8c7138628.md) | 232 | `result-track:2adf8b1168225fb8c7138628af58bf870302326a0b7086ba84d316f7e160cc4b` |
| 25 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/liftright--74b56a7fc51ec85069b01f96.md) | 243 | `declaration-track:74b56a7fc51ec85069b01f96b50c8e456f4ed446e491eefa5fc66816245adb27` |
| 26 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/coe-liftright--2b22953be0fe39823f7181bd.md) | 249 | `result-track:2b22953be0fe39823f7181bdf3e910d947b338fecb9f2c952bfd363b85fcbf8b` |
| 27 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-liftright-inv--a6830e27fc52c65991d89789.md) | 255 | `result-track:a6830e27fc52c65991d89789465166d3799fb4a95ae60a7b67e9635610df0b87` |
| 28 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/liftright-inv-mul--971b8e6229c3f9f371b7a7f1.md) | 261 | `result-track:971b8e6229c3f9f371b7a7f1a91c7b07ae759db6622d09fa1317f9d854ec103b` |
| 29 | `def` | [unit'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/unit--95b55a4fc4fac37b41c1f819.md) | 280 | `declaration-track:95b55a4fc4fac37b41c1f819e6d6894aef46714a9ca1b7ac1b9053f80c55af5f` |
| 30 | `theorem` | [val_inv_unit'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/val-inv-unit--ca8dcff453214df94dc6e10d.md) | 288 | `result-track:ca8dcff453214df94dc6e10dc94e4afb4dce64ae3bc23f06e9dc2c6ed46ad499` |
| 31 | `theorem` | [mul_inv_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-inv-cancel-left--8e9ebc7fb65af92ebdb73447.md) | 293 | `result-track:8e9ebc7fb65af92ebdb7344737e438e765c87783c0ddc85226c67ec70df21d87` |
| 32 | `theorem` | [inv_mul_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/inv-mul-cancel-left--8a6b19b4d7f3a42ec90e4c33.md) | 299 | `result-track:8a6b19b4d7f3a42ec90e4c33017e3c8833da38d824cd01fade225b4426da3d7d` |
| 33 | `theorem` | [mul_inv_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-inv-cancel-right--6ebf3f2dff0e527f80dd708e.md) | 305 | `result-track:6ebf3f2dff0e527f80dd708e3a3fdc2b54bc0aba73705a37d7bb93f91d7c8359` |
| 34 | `theorem` | [inv_mul_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/inv-mul-cancel-right--6a822f710b771f1116dfa8e6.md) | 311 | `result-track:6a822f710b771f1116dfa8e619c79e0136718c7d94d5073d37ca0292c464d7c8` |
| 35 | `theorem` | [div_self](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-self--e47da7581f89391bd996e358.md) | 317 | `result-track:e47da7581f89391bd996e358a2021d101b683a18e4a08560882dce2c659d6277` |
| 36 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/eq-mul-inv-iff-mul-eq--8fe04916b3dcced4f1a5c738.md) | 322 | `result-track:8fe04916b3dcced4f1a5c7388756c289de75df7462bd6b0916a8f791c1085ab3` |
| 37 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/eq-inv-mul-iff-mul-eq--23024e7e7b4b0845fc8da004.md) | 328 | `result-track:23024e7e7b4b0845fc8da004742f8a25c5f676750eeb9d342718d20bbef53613` |
| 38 | `theorem` | [inv_mul_eq_iff_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/inv-mul-eq-iff-eq-mul--e88b8328fc5152bed984bc91.md) | 334 | `result-track:e88b8328fc5152bed984bc91ce5b29878837fd959f7efb972c59d2db204b848c` |
| 39 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-inv-eq-iff-eq-mul--43ef57206326ce93a777c000.md) | 340 | `result-track:43ef57206326ce93a777c000fdffcbb382097e41d3f142fb3c1a3df02130e991` |
| 40 | `theorem` | [mul_inv_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-inv-eq-one--b2e5e94b8c828242ca087fd6.md) | 346 | `result-track:b2e5e94b8c828242ca087fd60ce1cee05b82d0157fd7103f15cce09f534aed5c` |
| 41 | `theorem` | [inv_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/inv-mul-eq-one--e6f2781d16bc1dd24cec5b62.md) | 352 | `result-track:e6f2781d16bc1dd24cec5b6222837290894a26ed0639614e31d04a40b88b41ba` |
| 42 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-eq-one-iff-eq-inv--9d792b4a1f55e8b968b0b6ef.md) | 358 | `result-track:9d792b4a1f55e8b968b0b6ef2a82528fb2f4433825acd8c6975feb1fc51b435e` |
| 43 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-eq-one-iff-inv-eq--367f8b852df7d372b9d8c1be.md) | 364 | `result-track:367f8b852df7d372b9d8c1be23043254839211c295b27d3311367ca59af7d8ef` |
| 44 | `theorem` | [div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-mul-cancel--d7026684e2c51f709b498b4f.md) | 370 | `result-track:d7026684e2c51f709b498b4fbd6ec558e29c2e77fd7ea2a9913e82dc078cb627` |
| 45 | `theorem` | [mul_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-div-cancel--7081604f92a0062323e1c298.md) | 376 | `result-track:7081604f92a0062323e1c2981fc3b9c4237e8a2f704b7e2983b42ae9004ce8a4` |
| 46 | `theorem` | [mul_one_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-one-div-cancel--883aec709e681cbbd91646a6.md) | 382 | `result-track:883aec709e681cbbd91646a6a4b00efa6d19cdd82f494e33746c658c7cf57c48` |
| 47 | `theorem` | [one_div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/one-div-mul-cancel--45abec56917172e69f4948f4.md) | 387 | `result-track:45abec56917172e69f4948f4aa50e0bb5b908a73eec804a8cdefaa0c0c8d662d` |
| 48 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/inv--12910fc151fa3fe45f6f9a77.md) | 392 | `result-track:12910fc151fa3fe45f6f9a77a4689869597b202da53d9cc91ac415b9a26c2faf` |
| 49 | `theorem` | [div](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div--04cf0c5dfe9b8cf575ee9969.md) | 400 | `result-track:04cf0c5dfe9b8cf575ee9969edeb2262d2ca55d879533cf0f1540fae96995821` |
| 50 | `theorem` | [div_left_inj](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-left-inj--7b04fa208e040090251ae42a.md) | 407 | `result-track:7b04fa208e040090251ae42a056e125a976e73265af1693ee483186d8f4b4f92` |
| 51 | `theorem` | [div_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-eq-iff--23e6f8d8dba23ffe8800ece5.md) | 414 | `result-track:23e6f8d8dba23ffe8800ece53041508a6035cf61635104d7a7e9916406f1eb9a` |
| 52 | `theorem` | [eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/eq-div-iff--8344676012e015afcd35030e.md) | 420 | `result-track:8344676012e015afcd35030e54d5c21835a8be96326240dbf523d6658a307277` |
| 53 | `theorem` | [div_eq_of_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-eq-of-eq-mul--66b5f48d273162536a001fbc.md) | 426 | `result-track:66b5f48d273162536a001fbc743e200084ff76e0aea4b5f01523e8ac944aaca3` |
| 54 | `theorem` | [eq_div_of_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/eq-div-of-mul-eq--230daaa377e2a1e2ec57aef4.md) | 432 | `result-track:230daaa377e2a1e2ec57aef498f7eafda1f4c7bc924286b0f677b386f157aea1` |
| 55 | `theorem` | [div_eq_one_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-eq-one-iff-eq--771409106917e062efb71c01.md) | 438 | `result-track:771409106917e062efb71c0149fef2efcc179cf120b94c9b67ec29dea4fd5a2b` |
| 56 | `theorem` | [div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-mul-left--a70eadad1d711cea1cda112c.md) | 445 | `result-track:a70eadad1d711cea1cda112c18d1053a92247ac70d38096762010dd2d93043b2` |
| 57 | `theorem` | [mul_div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-div-mul-right--0a7e28ec80dcb8b88f1f9cf3.md) | 451 | `result-track:0a7e28ec80dcb8b88f1f9cf36ea50606a635c0ec2ea323e1e2c207096763390a` |
| 58 | `theorem` | [mul_mul_div](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-mul-div--4ec309b8b99c572953e0a6c8.md) | 457 | `result-track:4ec309b8b99c572953e0a6c8b77650d020621f222bff9c3d417c9441f79ad75d` |
| 59 | `theorem` | [div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-mul-right--a6b3ed261cb9d6b3ca118b13.md) | 468 | `result-track:a6b3ed261cb9d6b3ca118b13191ab4e0255ac4a2ebf397edd9d2b21a356db5f4` |
| 60 | `theorem` | [mul_div_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-div-cancel-left--7fcdd86bcafd3b2243289c09.md) | 474 | `result-track:7fcdd86bcafd3b2243289c09b4317c5011bedd3f1781a239ed865a0d80a5067b` |
| 61 | `theorem` | [mul_div_cancel'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-div-cancel--03846d3d576b0e64b2fea769.md) | 480 | `result-track:03846d3d576b0e64b2fea769c8cc5106e7d3db1863a42e35006547f7baa3dbb6` |
| 62 | `theorem` | [mul_div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-div-mul-left--ddce719a6c2827ebf65c301f.md) | 486 | `result-track:ddce719a6c2827ebf65c301f124f527f0af35a792517e614f3348cbd48a9faa6` |
| 63 | `theorem` | [mul_eq_mul_of_div_eq_div](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/mul-eq-mul-of-div-eq-div--9bdfabecbb2ef128d40ecb73.md) | 492 | `result-track:9bdfabecbb2ef128d40ecb736f588f139164ca1303fc5d203154819c6b4cf137` |
| 64 | `theorem` | [div_eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-eq-div-iff--141c6bcefdeac4c8d51b5ca6.md) | 499 | `result-track:141c6bcefdeac4c8d51b5ca6d1933ee129305878b99cab6102d3c001a652e5b3` |
| 65 | `theorem` | [div_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-div-cancel--faef8076e744c070d4f5d2a9.md) | 507 | `result-track:faef8076e744c070d4f5d2a91c8c19808398f2803dd1b0ffbb0ab7df31d2fa64` |
| 66 | `theorem` | [div_div_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/declarations/div-div-cancel-left--30312af0b511e7069f2d97a4.md) | 513 | `result-track:30312af0b511e7069f2d97a406d54da032de1943435c1baba0de367e85f36c0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
