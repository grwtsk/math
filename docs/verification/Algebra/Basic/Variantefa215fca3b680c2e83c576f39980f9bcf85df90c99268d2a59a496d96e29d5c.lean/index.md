# Verification target: GRWTSK.Algebra.Basic.Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d59c70e61fd985b94a907ae1feb9ae6707696542",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d59c70e61fd985b94a907ae1feb9ae6707696542`.

Source path: `GRWTSK/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [residue_def](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/residue-def--30489bf43862ca12f26d84b4.md) | 32 | `result-track:30489bf43862ca12f26d84b41cf887d6202336a3bc2ebe0c4e6e2552a32493cd` |
| 2 | `lemma` | [ker_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/ker-residue--9aec4d32859a28516dac9440.md) | 34 | `result-track:9aec4d32859a28516dac9440748019b74777cfa0642da18bdb618197bc827eb0` |
| 3 | `lemma` | [residue_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/residue-eq-zero-iff--b4e439eb392e164d0cc25f08.md) | 38 | `result-track:b4e439eb392e164d0cc25f08747f667ecc67779ffbe984442a397e0bbdb6a1e2` |
| 4 | `lemma` | [residue_ne_zero_iff_isUnit](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/residue-ne-zero-iff-isunit--870937fc80dc398c3cc95092.md) | 41 | `result-track:870937fc80dc398c3cc95092e755c34ae96c8f3855e7794d16483dea1a421f9a` |
| 5 | `lemma` | [residue_surjective](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/residue-surjective--969f76fd92cfc6fb00de7fb8.md) | 44 | `result-track:969f76fd92cfc6fb00de7fb887e777eb0d46f9bd831e6b24f68dfa9680d39c2b` |
| 6 | `instance` | [ResidueField.algebra](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/residuefield-algebra--c61c5818361106a78e1f0e63.md) | 50 | `declaration-track:c61c5818361106a78e1f0e6340ceb062313db49237f780e2d0e81a7c92a46472` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--3286ee2f668ba2909150bdfe.md) | 54 | `declaration-track:3286ee2f668ba2909150bdfe3ad81d018df1f91d14127caacbd3bfe4add20a23` |
| 8 | `theorem` | [ResidueField.algebraMap_eq](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/residuefield-algebramap-eq--c3f6abfb9f0ba0715bd685e3.md) | 60 | `result-track:c3f6abfb9f0ba0715bd685e378b76599c30c1d4e87041ca622172d6c4da73f30` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--2aa1463d307bb2f4186ff859.md) | 63 | `declaration-track:2aa1463d307bb2f4186ff85902c93be8bc805b8e6e99ff4c72cfa6fdc2c31a01` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--6c14f48cd5cc3c39a5b34c5c.md) | 68 | `declaration-track:6c14f48cd5cc3c39a5b34c5cfbedece8a4a8239954977623f89037ee6ffde65c` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--9804a13d6e37dc40a4bd1546.md) | 71 | `declaration-track:9804a13d6e37dc40a4bd1546f2b38860244c39d954c12f5d2de3e106b72eb5d1` |
| 12 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/lift--704439a88649c311013b56df.md) | 80 | `declaration-track:704439a88649c311013b56df0fb86ec5fbf10b2396ec083d0d57b37fc51a2a42` |
| 13 | `theorem` | [lift_comp_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/lift-comp-residue--2a942ca0a4cd29011beb7eef.md) | 85 | `result-track:2a942ca0a4cd29011beb7eef8cf785ea5e176fedc6d6117b5ff1351196363518` |
| 14 | `theorem` | [lift_residue_apply](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/lift-residue-apply--a86eaad01d22928d81387be6.md) | 90 | `result-track:a86eaad01d22928d81387be640168d2796d555f033f4e83e474eee9bbe48e326` |
| 15 | `def` | [map](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/map--8e3025da765b7447f5583157.md) | 96 | `declaration-track:8e3025da765b7447f5583157efd59bdc997d2938f3b0c3f7c12a35fdbceaa1bc` |
| 16 | `theorem` | [map_id](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/map-id--d288939a1c3a90da46ec8d01.md) | 105 | `result-track:d288939a1c3a90da46ec8d01df3876ac316790ac29e465f1653d84d2226767d7` |
| 17 | `theorem` | [map_comp](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/map-comp--f3aa4d5b1e311c27f6539b90.md) | 111 | `result-track:f3aa4d5b1e311c27f6539b90243eec84bad2cf1526c19a235e7690cb4e268118` |
| 18 | `theorem` | [map_comp_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/map-comp-residue--3b00921c8f7941d794f89d56.md) | 116 | `result-track:3b00921c8f7941d794f89d56f905b59032d5e9c3b3fe0607dda87feb2a70a357` |
| 19 | `theorem` | [map_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/map-residue--e1b9264b0be6e85701eb7089.md) | 121 | `result-track:e1b9264b0be6e85701eb708965fa1b7058dd2130bbdc29a59b237cef95936066` |
| 20 | `theorem` | [map_id_apply](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/map-id-apply--70162927755b789a12f72747.md) | 125 | `result-track:70162927755b789a12f72747db662fbf04ce69f429142b99f01ca7d55a2b9310` |
| 21 | `theorem` | [map_map](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/map-map--4f838c6348cf4c79fca408ab.md) | 129 | `result-track:4f838c6348cf4c79fca408ab9549122fa51c015cffb1f5969d6d6cb77e42a992` |
| 22 | `def` | [mapEquiv](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapequiv--3f5fd579baabbcd48930083d.md) | 135 | `declaration-track:3f5fd579baabbcd48930083dbb3b9cf1cd9f6f8a2ea178503b7d8014e9f63023` |
| 23 | `theorem` | [mapEquiv.symm](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapequiv-symm--6d193c0e28fe992a040b8b00.md) | 145 | `result-track:6d193c0e28fe992a040b8b00fcc488acef049feca8a673b3177ccb8e81fa0e6e` |
| 24 | `theorem` | [mapEquiv_trans](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapequiv-trans--c1d74929a75dd766f6246610.md) | 149 | `result-track:c1d74929a75dd766f6246610d56b655ee4df31a9a60fc5f2f16dfea035b2ac3a` |
| 25 | `theorem` | [mapEquiv_refl](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapequiv-refl--790cc2910a2aaec17c5ea256.md) | 154 | `result-track:790cc2910a2aaec17c5ea2563d0213d3ae356832ace425ed5148d0b0da212c4a` |
| 26 | `def` | [mapAut](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapaut--de6433ec53ddb147a67d990d.md) | 160 | `declaration-track:de6433ec53ddb147a67d990daef8680115567935964aca2ae33bee2e91e7970e` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--d3d9b138dfb3b97fd50480a3.md) | 171 | `declaration-track:d3d9b138dfb3b97fd50480a3c005473f9caa7486ce57488909667bf33388f0f0` |
| 28 | `theorem` | [residue_smul](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/residue-smul--4210b834ac298d3ae759a87c.md) | 175 | `result-track:4210b834ac298d3ae759a87c3106084c80537570d8c053b1d8f2130f1c82a1ee` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--623e2b14bcf929c516ff9f78.md) | 184 | `declaration-track:623e2b14bcf929c516ff9f78374e6279ea13fe785d2c7fdf12d9bef9d9553571` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--4c27ca1ad92748c614316c7c.md) | 187 | `declaration-track:4c27ca1ad92748c614316c7ce27f8d435975b5580024c4652ffc71875954b43f` |
| 31 | `lemma` | [algebraMap_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/algebramap-residue--0c83d92a2f16556cfd06f4ce.md) | 190 | `result-track:0c83d92a2f16556cfd06f4ce22f5b70a145d165866b64708be14134b5a01f748` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--7c622780562c6f6592dee0cc.md) | 194 | `declaration-track:7c622780562c6f6592dee0cc67b898aded33d78e56fc4ea5593d8b1f73c55ae2` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--0bafa143ca38d2933ef1d5a9.md) | 198 | `declaration-track:0bafa143ca38d2933ef1d5a9eb4f82b7e00a51cca39335c623e4b77858df1001` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/instance--4aacb1f06d6df2f5c7e3748e.md) | 206 | `declaration-track:4aacb1f06d6df2f5c7e3748eef0a6d3ae163cf376cc9f255f22f34b58925f98a` |
| 35 | `instance` | [finite_of_module_finite](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/finite-of-module-finite--7a470f4e2ea413ef3607d333.md) | 209 | `declaration-track:7a470f4e2ea413ef3607d3338a2fce6697ddc03f632486b3f6cd3cd709759d09` |
| 36 | `lemma` | [finite_of_finite](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/finite-of-finite--07913ae29c7462b771b82a16.md) | 213 | `result-track:07913ae29c7462b771b82a16bb1df35239d649a1c32b9bd1c443f29eb17babaa` |
| 37 | `def` | [mapAlgHom](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalghom--9cf0d668bd9dc01aed8c2371.md) | 225 | `declaration-track:9cf0d668bd9dc01aed8c2371d1992ac3bdde1febd115ddd15500ebfefd629756` |
| 38 | `theorem` | [mapAlgHom_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalghom-residue--f084e7db61d43bfd2336e771.md) | 233 | `result-track:f084e7db61d43bfd2336e7712750abcb2e2d7f1c243ac041ff6b5a86e6394acf` |
| 39 | `def` | [mapAlgEquiv](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalgequiv--03ecfafeb1ec15832be29236.md) | 240 | `declaration-track:03ecfafeb1ec15832be2923610772b965b46804716ef22adddfd7e8440b64a90` |
| 40 | `theorem` | [mapAlgEquiv_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalgequiv-residue--0d0570e2b642a6c8017d3be9.md) | 245 | `result-track:0d0570e2b642a6c8017d3be903f51e5b4640cc1d0cd0ee818de03be1f236769d` |
| 41 | `def` | [mapAlgHom'](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalghom--91d92b73055f97112e95c51e.md) | 254 | `declaration-track:91d92b73055f97112e95c51edec23953affb613265301f9baf13b449ab816608` |
| 42 | `theorem` | [mapAlgHom'_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalghom-residue--7c900481376685b4232138ba.md) | 259 | `result-track:7c900481376685b4232138ba124da30f9a881bef342beda0ad8a25dae2a3a166` |
| 43 | `def` | [mapAlgEquiv'](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalgequiv--4df3716c01d4eb7bcdbaf681.md) | 266 | `declaration-track:4df3716c01d4eb7bcdbaf681ad34f0e751dd195dfca83dd9799bf66135fb6cf4` |
| 44 | `theorem` | [mapAlgEquiv'_residue](../../../../mathematics/Algebra/Basic/Variantefa215fca3b680c2e83c576f39980f9bcf85df90c99268d2a59a496d96e29d5c.lean/declarations/mapalgequiv-residue--37de9aebc4aa887e3e4a6ecf.md) | 271 | `result-track:37de9aebc4aa887e3e4a6ecf5ec4716d12012bf4b9d71a92016d1cbce7a9dae5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
