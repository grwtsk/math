# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinOrd.Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b844dfa6d660c3709ee2967d99b24b59add5c51",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b844dfa6d660c3709ee2967d99b24b59add5c51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.Lat` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/linord--cf85aa6d9ad8f163ea5106d0.md) | 28 | `declaration-track:cf85aa6d9ad8f163ea5106d06d1b968c3faaaa57336b00f0419b9aad742c7295` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/instance--6b75f9e00650200aa0f18cec.md) | 39 | `declaration-track:6b75f9e00650200aa0f18cec659e71b44c212ee19f107be22170198ba1e6e32e` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/of--55685356a104108885667274.md) | 45 | `declaration-track:55685356a1041088856672741daa0fe7ce8c906a176495b91766904e27879aaa` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom--097222ae2318e99761783940.md) | 49 | `declaration-track:097222ae2318e9976178394013e36f1860c581df96031424e4439330ce1c49a9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/instance--67c6896459508a60479ef16a.md) | 54 | `declaration-track:67c6896459508a60479ef16a6d1029ce11f9c289f994a95cf6e1041ad2d5d782` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/instance--c6359348e3960542f50c2d28.md) | 59 | `declaration-track:c6359348e3960542f50c2d28f88fd72b8d88bcca59dd96289c66b57a15d634c1` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom-hom--0aeee1a039a8eb5935df831c.md) | 64 | `declaration-track:0aeee1a039a8eb5935df831ca8898382dcd24ee3d1eaab5be73b95fe2b966dd3` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/ofhom--3e9459e09d7910c52525c3d9.md) | 68 | `declaration-track:3e9459e09d7910c52525c3d9391e9fe34819159755feb75c456f5ebfc7bd900a` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom-simps-hom--cfa3f055e6f8be0c603aa73d.md) | 73 | `declaration-track:cfa3f055e6f8be0c603aa73d59ebce07c05e3bc404b23cfc5a207a3cf14b53ca` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/coe-id--5b47e863d2fc8f5adb8da277.md) | 83 | `result-track:5b47e863d2fc8f5adb8da27777f221684c3314650e6d883d34ad76661ee78c70` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/coe-comp--3b9e7a7e4b25b7439fa6efca.md) | 86 | `result-track:3b9e7a7e4b25b7439fa6efca569239df59e13a19242239a50e1de3b8fd4df33d` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/forget-map--2e1ffc4f34ab6494500c8bc5.md) | 89 | `result-track:2e1ffc4f34ab6494500c8bc544330d3a7b0a292219101cfe7713071cdaa6c80d` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/ext--83b5b82f5e26bf3251ec0aba.md) | 93 | `result-track:83b5b82f5e26bf3251ec0abad3f0f159c0e53a57bb3cb86926035d54f8de5ba8` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/coe-of--5a9c6dc3baca4f34ba1b41c9.md) | 97 | `result-track:5a9c6dc3baca4f34ba1b41c91d2502ab9123fc711bb493fc9e337223fc309bbe` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom-id--76d468246c1b26c8193e07cf.md) | 100 | `result-track:76d468246c1b26c8193e07cfd00d0ec3138c763a8df9e83f307e01cafe88ba98` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/id-apply--9958cbdcf758f963f199443e.md) | 103 | `result-track:9958cbdcf758f963f199443e5dd1c9d7ec1f3b0cf9c29317d3de3887006c2d3c` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom-comp--af2ba10f712e5be6391b74d4.md) | 107 | `result-track:af2ba10f712e5be6391b74d4a40741e7f891439339f687055ff7c18381629156` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/comp-apply--36cc4f507346a9aecd45826d.md) | 111 | `result-track:36cc4f507346a9aecd45826d529d68606e52a97cd28c9644859c6f74bc6f65c2` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom-ext--c8e7283dfce5b45738263459.md) | 115 | `result-track:c8e7283dfce5b45738263459a51c82653290197b7062020bf75542649a1c6c6e` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom-ofhom--9dbf6281852ec2774427f424.md) | 119 | `result-track:9dbf6281852ec2774427f424693a941361e677d5b977342594c5f6984954374e` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/ofhom-hom--23fb7d8ff34063a290dd1e0e.md) | 123 | `result-track:23fb7d8ff34063a290dd1e0e84b99105b0d3ecbf1c7a00a8ced41c21e80767e8` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/ofhom-id--de89c8013f9b5c99e6b0d317.md) | 127 | `result-track:de89c8013f9b5c99e6b0d31772c192b3cd9582cfa11703639f0a61aed7a8a17a` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/ofhom-comp--edab14eee2012bb2605f57d9.md) | 130 | `result-track:edab14eee2012bb2605f57d993f91f169f720a5bb0ce97ac839d74aad1052d70` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/ofhom-apply--0439f317286f433ae6aa88df.md) | 135 | `result-track:0439f317286f433ae6aa88dfa3a59be096ccf43992acb53f3abb61771c971f27` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/inv-hom-apply--b691c6d332ce198f16849d2d.md) | 138 | `result-track:b691c6d332ce198f16849d2dc253bdb431e23a2a6aa5326aea8f0ba95a66c477` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hom-inv-apply--1074553bd3591f29bc6b033f.md) | 141 | `result-track:1074553bd3591f29bc6b033fe9784ab84f8b356be7f78866cb15d2e723df7352` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/instance--8d9fe1e84d036fab8373cebe.md) | 144 | `declaration-track:8d9fe1e84d036fab8373cebe0090ed788e742d7bf971b2436b88a74e8fce6050` |
| 28 | `instance` | [hasForgetToLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/hasforgettolat--0734a33006f3c6f8181d8679.md) | 147 | `declaration-track:0734a33006f3c6f8181d8679f4b4ccd400236418eba0f1413eb50ed7863f119d` |
| 29 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/iso-mk--bf1e894ed1eb21e8b0d4f253.md) | 153 | `declaration-track:bf1e894ed1eb21e8b0d4f253659ba5e2dea6209d07a94758b24adb904ff978a5` |
| 30 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/dual--8ead71171ad69a2440e428c8.md) | 159 | `declaration-track:8ead71171ad69a2440e428c8e5fa93b33ac41ecc63e1ffa23873b3eb6bc89def` |
| 31 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/dualequiv--8495428102f1b42edd7338b7.md) | 165 | `declaration-track:8495428102f1b42edd7338b70059ed04a62f45351c0836733f8df20251daef6d` |
| 32 | `theorem` | [linOrd_dual_comp_forget_to_Lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Varianta13a6a9199247b28781a3a44ec7257cd570dc61b7ddec69d220079e120a2f8a6.lean/declarations/linord-dual-comp-forget-to-lat--7a9fc01fe45d7f7e0df176de.md) | 173 | `result-track:7a9fc01fe45d7f7e0df176de70ab8aca49a9496cfdb3fd73bb018b243cac88fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
